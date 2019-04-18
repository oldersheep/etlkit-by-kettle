package com.xxx.etl.utils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

import org.apache.log4j.FileAppender;
import org.apache.log4j.Logger;
import org.apache.log4j.SimpleLayout;
import org.pentaho.di.core.KettleEnvironment;
import org.pentaho.di.core.Result;
import org.pentaho.di.core.database.DatabaseMeta;
import org.pentaho.di.core.exception.KettleException;
import org.pentaho.di.core.logging.LogLevel;
import org.pentaho.di.job.Job;
import org.pentaho.di.job.JobMeta;
import org.pentaho.di.repository.Repository;
import org.pentaho.di.repository.RepositoryDirectoryInterface;
import org.pentaho.di.repository.kdr.KettleDatabaseRepository;
import org.pentaho.di.repository.kdr.KettleDatabaseRepositoryMeta;
import org.pentaho.di.trans.Trans;
import org.pentaho.di.trans.TransMeta;

/**
 * @ClassName 类名 : RunMethodUtil
 * @Description 作用 : java调取kettle的作业的方法
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月4日 下午5:49:43
 * @Version 版本 : V1.0
 */

public class RunMethodUtil {

	/**
	 * Kettle执行作业，并将结果的日志返回 list.get(0)是日志信息，list.get(1)是任务状态0--失败、1--成功
	 * 依赖库的信息存放在repositories.properties中，如果发生变化，只需改此配置文件即可
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月23日 上午10:16:35
	 * @Version: V1.0
	 */
	public static List<String> executeJob(String jobName, String dir) throws KettleException, IOException {
		// 初始化kettle环境
		KettleEnvironment.init();

		// 创建资源库对象，此时的对象还是一个空对象
		KettleDatabaseRepository repository = new KettleDatabaseRepository();

		ResourceBundle resource = ResourceBundle.getBundle("repositories");

		// 创建资源库数据库对象，即kettle的资源库
		// 这个类似于项目的依赖库，可以从kettle.properties中取
		DatabaseMeta dataMeta = new DatabaseMeta("lilg", // name
				resource.getString("kettle.type"), // type
				resource.getString("kettle.access"), // access
				resource.getString("kettle.host"), // host
				resource.getString("kettle.db"), // db
				resource.getString("kettle.port"), // port
				resource.getString("kettle.user"), // user
				resource.getString("kettle.pass")); // pass
		// 资源库元对象
		// 类似在电脑上C:\Users\Administrator\.kettle\repositories.xml中<repository>标签的内容
		KettleDatabaseRepositoryMeta kettleDatabaseMeta = new KettleDatabaseRepositoryMeta("ETL", // id
				"ETL", // name
				"ETL description", // description
				dataMeta); // connection
		// 给资源库赋值
		repository.init(kettleDatabaseMeta);
		// 连接资源库
		repository.connect("admin", "admin");
		// 根据变量查找到模型所在的目录对象,此步骤很重要。
		RepositoryDirectoryInterface directory = repository.findDirectory(dir);

		JobMeta jobmeta = ((Repository) repository).loadJob(jobName, directory, null, null);

		Job job = new Job(repository, jobmeta);
		job.setLogLevel(LogLevel.DETAILED);
		job.start();

		// 等待执行完毕
		job.waitUntilFinished();
		// 获取执行结果
		Result result = job.getResult();

		List<String> ret = new ArrayList<String>();
		ret.add(result.getLogText());

		if (job.getErrors() > 0) {
			System.err.println("job run Failure!");
			ret.add("0");
		} else {
			System.out.println("job run successfully!");
			ret.add("1");
		}

		return ret;
	}

	/**
	 * 执行trans的方法，参数为转换的名称与路径，
	 * 
	 * @throws IOException
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年5月4日 下午6:10:15
	 * @Version: V1.0
	 */
	public static void executeTrans(String transName, String dir) throws KettleException, IOException {
		// 初始化kettle环境
		KettleEnvironment.init();

		// 创建资源库对象，此时的对象还是一个空对象
		KettleDatabaseRepository repository = new KettleDatabaseRepository();

		// 创建资源库数据库对象，即kettle的资源库
		DatabaseMeta dataMeta = new DatabaseMeta("lilg", // name
				"MySQL", // type
				"Native", // access
				"127.0.0.1", // host
				"kettle", // db
				"3306", // port
				"root", // user
				"root"); // pass
		// 资源库元对象
		// 类似在电脑上C:\Users\Administrator\.kettle\repositories.xml中<repository>标签的内容
		KettleDatabaseRepositoryMeta kettleDatabaseMeta = new KettleDatabaseRepositoryMeta("ETL", // id
				"ETL", // name
				"ETL description", // description
				dataMeta); // connection
		// 给资源库赋值
		repository.init(kettleDatabaseMeta);

		// 连接资源库，资源库默认用户名密码为admin/admin
		repository.connect("admin", "admin");

		// 根据变量查找到模型所在的目录对象,此步骤很重要。
		RepositoryDirectoryInterface directory = repository.findDirectory(dir);
		// 创建ktr元对象
		TransMeta transMeta = ((Repository) repository).loadTransformation(transName, directory, null, true, null);
		// 执行参数
		// String[] params = { "1", "07bb40f7200448", "d:\\haha.txt" };
		// 创建ktr
		Trans trans = new Trans(transMeta);
		// 设置日志级别，详细日志，这个只是控制输出到控制台的日志
		trans.setLogLevel(LogLevel.DETAILED);
		// 执行ktr
		trans.execute(null);
		// 等待执行完毕
		trans.waitUntilFinished();

		Logger.getLogger("org.pentaho.di").addAppender(new FileAppender(new SimpleLayout(), "E:\\logger.log"));

		if (trans.getErrors() > 0) {
			System.err.println("Transformation run Failure!");
		} else {
			System.out.println("Transformation run successfully!");
		}
	}

}
