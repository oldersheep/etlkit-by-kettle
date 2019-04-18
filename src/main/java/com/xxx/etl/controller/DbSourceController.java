package com.xxx.etl.controller;

import java.util.List;

import org.pentaho.di.core.encryption.KettleTwoWayPasswordEncoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.xxx.etl.constant.BaseConstant;
import com.xxx.etl.dto.SysResult;
import com.xxx.etl.pojo.RDatabase;
import com.xxx.etl.service.impl.RDatabaseSrv;
import com.xxx.etl.utils.DBConnectionUtil;

/**
 * @ClassName 类名 : DbSourceController
 * @Description 作用 : 数据源的controller，包括展示，增、删、改
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年6月7日 上午11:20:22
 * @Version 版本 : V1.0
 */
@Controller
@RequestMapping("/dbsource")
public class DbSourceController {

	@Autowired
	private RDatabaseSrv rDatabaseSrv;

	/**
	 * 列表页展示
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月7日 下午8:17:19
	 * @Version: V1.0
	 */
	@RequestMapping("/list/{pageNum}")
	public String list(Model model,@PathVariable Integer pageNum,RDatabase rDatabase) {
		// 每页展示的条数
		Integer pageSize = BaseConstant.DEFAULT_PAGE_NUM;
		
		PageHelper.startPage(pageNum, pageSize);	//分页
		
		List<RDatabase> dbSources = rDatabaseSrv.queryListByWhere(rDatabase);   //查询所有数据源
		
		PageInfo<RDatabase> pageInfo = new PageInfo<RDatabase>(dbSources);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("rDatabase",rDatabase);
		return "db_source";
	}
	
	/**
	 * 跳转到“新建数据源”的页面，并回显当前页码
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月7日 下午8:17:19
	 * @Version: V1.0
	 */
	@RequestMapping("/insert/{pageNum}")
	public String insertDbSource(Model model,@PathVariable Integer pageNum){
		model.addAttribute("pageNum", pageNum);	//当前页码回传
		return "db_source_new";
	}
	
	/**
	 * 跳转到“编辑数据源”的页面，并回显当前页码
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月7日 下午8:17:19
	 * @Version: V1.0
	 */
	@RequestMapping("/edit/{idDatabase}/{pageNum}")
	public String getDbSource(Model model, @PathVariable Integer idDatabase, @PathVariable Integer pageNum){
		RDatabase rDatabase=rDatabaseSrv.queryById(idDatabase);
		
		//密码回显解密，防止密码未修改而再次加密
		String passwd = KettleTwoWayPasswordEncoder.decryptPasswordOptionallyEncrypted(rDatabase.getPassword());
		rDatabase.setPassword(passwd);
		
		model.addAttribute("rDatabase", rDatabase);
		model.addAttribute("pageNum", pageNum);	//当前页码回传
		return "db_source_update";
	}
	
	/**
	 * 修改（更新）数据源数据，针对r_database和r_database_attribute同步操作
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月7日 下午8:17:19
	 * @Version: V1.0
	 */
	@RequestMapping("/updateDbSource")
	@ResponseBody
	public SysResult updateDbSource(RDatabase rDatabase){
		
		// 密码加密
		String obfuscated = KettleTwoWayPasswordEncoder.encryptPasswordIfNotUsingVariables(rDatabase.getPassword());
		// 设置默认连接方式为JDBC，所以默认Contype类型ID为1
		rDatabase.setIdDatabaseContype(1);
		rDatabase.setPassword(obfuscated);
		
		Integer result = rDatabaseSrv.updateDatabaseAndAttribute(rDatabase);
		if(result != null && result == 2){
			return SysResult.ok();
		}else{
			return SysResult.build(202, "保存失败");
		}
	}

	/**
	 * 添加存数据源并保存，针对r_database和r_database_attribute同步操作
	 * @Author: Lilg 
	 * @Date 创建时间 : 2017年6月8日 下午1:01:53 
	 * @Version: V1.0
	 */
	@RequestMapping("/saveDbSource")
	@ResponseBody
	public SysResult saveDbSource(RDatabase rDatabase) {
		
		// 设置默认连接方式为JDBC，所以默认Contype类型ID为1
		rDatabase.setIdDatabaseContype(1);
		// 密码加密
		String obfuscated = KettleTwoWayPasswordEncoder.encryptPasswordIfNotUsingVariables(rDatabase.getPassword());

		rDatabase.setPassword(obfuscated);
		
		Integer result = rDatabaseSrv.saveDatabaseAndAttribute(rDatabase);
		if(result != null && result == 2){
			return SysResult.ok();
		}else{
			return SysResult.build(202, "保存失败");
		}
	}
	
	/**
	 * 根据 idDatabase 删除数据源，单条删除及批量删除,
	 * 针对r_database和r_database_attribute同步操作
	 * @author: Lilg
	 * @创建时间: 2017年6月20日 上午11:17:33
	 */
	@RequestMapping("/delDbSource")
	@ResponseBody
	public SysResult delDbSource(String id){
		
		String[] ids=id.split(",");
		
		Integer result=rDatabaseSrv.deleteDatabaseAndAttributeByIds(ids);
		
		if(result != null && result == ids.length){
			return SysResult.ok();
		}
		return SysResult.build(202, "删除失败！");
	}
	
	/**
	 * 测试数据库连接
	 * @author: 韩帅
	 * @创建时间: 2017年6月20日 下午3:14:16
	 */
	@RequestMapping("/testDbConnection")
	@ResponseBody
	public SysResult testDbConnection(RDatabase rDatabase){
		
		String driver = null;	//加载
		String url = null;		//url
		if(rDatabase.getIdDatabaseType()==39){
			driver="com.mysql.jdbc.Driver";
			url="jdbc:mysql://"+rDatabase.getHostName()+":" +rDatabase.getPort()+"/"+rDatabase.getDatabaseName();
		}else if(rDatabase.getIdDatabaseType()==4){
			driver="oracle.jdbc.driver.OracleDriver";
			url="jdbc:oracle:thin:@"+rDatabase.getHostName()+":"
			+rDatabase.getPort()+":"+rDatabase.getDatabaseName();
		}else if(rDatabase.getIdDatabaseType()==16){
			driver="com.microsoft.sqlserver.jdbc.SQLServerDriver";
			url="jdbc:sqlserver://"+rDatabase.getHostName()+":"
			+rDatabase.getPort()+";DatabaseName="+rDatabase.getDatabaseName();
		}
		
		try{
			DBConnectionUtil.getConnection(driver, url, rDatabase.getUsername(), rDatabase.getPassword());
			
			return SysResult.ok();
		} catch (Exception e) {
			return SysResult.build(202, "连接失败！");
		}
		
	}
}
