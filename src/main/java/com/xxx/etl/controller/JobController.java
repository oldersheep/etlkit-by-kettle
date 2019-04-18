package com.xxx.etl.controller;

import java.io.IOException;
import java.util.List;

import org.pentaho.di.core.exception.KettleException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.xxx.etl.constant.BaseConstant;
import com.xxx.etl.pojo.RDirectory;
import com.xxx.etl.pojo.RJob;
import com.xxx.etl.service.impl.RDirectorySrv;
import com.xxx.etl.service.impl.RJobSrv;
import com.xxx.etl.utils.RunMethodUtil;
import com.xxx.etl.vo.RJobentryVO;

/**
 * @ClassName 类名 : RJobController
 * @Description 作用 : TODO(这里用一句话描述这个类的作用)
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月24日 下午4:16:39
 * @Version 版本 : V1.0
 */
@Controller
@RequestMapping("/job")
public class JobController {

	@Autowired
	private RJobSrv rJobSrv;

	@Autowired
	private RDirectorySrv rDirectorySrv;

	/**
	 * 查看配置的所有job任务，数据库中的也没多少可以展示的
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年5月26日 上午11:39:22
	 * @Version: V1.0
	 */
	@RequestMapping("/list")
	public String list(Model model, Integer pageNum) {
		// 每页展示的条数
		Integer pageSize = BaseConstant.DEFAULT_PAGE_NUM;

		PageHelper.startPage(pageNum, pageSize);
		List<RJob> jobs = rJobSrv.queryAll();

		PageInfo<RJob> pageInfo = new PageInfo<RJob>(jobs);

		model.addAttribute("pageInfo", pageInfo);

		return "job_list";
	}

	/**
	 * 查看任务里面的作业项
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年5月26日 上午11:43:02
	 * @Version: V1.0
	 */
	@RequestMapping("/detail/{idJob}")
	public String detail(Model model, @PathVariable Integer idJob, Integer pageNum) {
		// 每页展示的条数
		Integer pageSize = BaseConstant.DEFAULT_PAGE_NUM;

		PageHelper.startPage(pageNum, pageSize);
		
		List<RJobentryVO> jobentrys = rJobSrv.queryJobEntryVOById(idJob);

		PageInfo<RJobentryVO> pageInfo = new PageInfo<RJobentryVO>(jobentrys);
		
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("idJob", idJob);

		return "jobentry_list";
	}

	/**
	 * 启动作业，并展示日志，作业在后台运行。前台页面显示日志
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年5月26日 上午11:44:02
	 * @Version: V1.0
	 */
	@RequestMapping("/run/{idJob}")
	public String runJob(Model model, @PathVariable Integer idJob) {

		RJob rJob = rJobSrv.queryById(idJob);
		String name = rJob.getName();
		Integer idDirectory = rJob.getIdDirectory();

		String dir = getDir(idDirectory);

		try {
			RunMethodUtil.executeJob(name, dir);
			// System.out.println(KettleLogStore.getAppender().getBuffer().toString());
		} catch (KettleException e) {
			e.printStackTrace();
		} catch (IOException ie) {
			ie.printStackTrace();
		}
		return "jobLog";
	}

	/**
	 * 获取作业所在的路径，如果作业的路径ID为0，代表在根路径，如果不为0，则一直循环找父目录为0的那个
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年5月27日 下午3:25:05
	 * @Version: V1.0
	 */
	private String getDir(Integer idDirectory) {

		String separator = "/";
		String dir = new String("/");

		while (idDirectory != 0) {
			RDirectory rDirectory = rDirectorySrv.queryById(idDirectory);
			String tmp = rDirectory.getDirectoryName();

			dir = separator + tmp + dir;

			idDirectory = rDirectory.getIdDirectoryParent();
		}

		if (dir.length() > 1 && dir.endsWith("/")) {
			dir = dir.substring(0, dir.length() - 1);
		}

		return dir;

	}

}
