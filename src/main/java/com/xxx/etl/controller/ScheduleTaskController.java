package com.xxx.etl.controller;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.xxx.etl.constant.BaseConstant;
import com.xxx.etl.dto.SysResult;
import com.xxx.etl.pojo.MScheduleResult;
import com.xxx.etl.pojo.MScheduleTask;
import com.xxx.etl.pojo.RDirectory;
import com.xxx.etl.pojo.RJob;
import com.xxx.etl.service.impl.MScheduleResultSrv;
import com.xxx.etl.service.impl.MScheduleTaskSrv;
import com.xxx.etl.service.impl.RDirectorySrv;
import com.xxx.etl.service.impl.RJobSrv;

/**
 * @ClassName 类名 : ScheduleTaskController
 * @Description 作用 : 作业调度管理，包含调度的list展示、关联作业、添加调度、停止调度、删除调度
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年6月14日 下午2:38:53
 * @Version 版本 : V1.0
 */

@Controller
@RequestMapping("/schedule")
public class ScheduleTaskController {

	@Autowired
	private RJobSrv rJobSrv;

	@Autowired
	private RDirectorySrv rDirectorySrv;

	@Autowired
	private MScheduleTaskSrv mScheduleTaskSrv;
	
	@Autowired
	private MScheduleResultSrv mScheduleResultSrv;
	
	/**
	 * 查询所有的调度信息，暂时不考虑条件查询
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月19日 下午2:41:46
	 * @Version: V1.0
	 */
	@RequestMapping("/list")
	public String list(Model model, Integer pageNum) {
		// 每页展示的条数
		Integer pageSize = BaseConstant.DEFAULT_PAGE_NUM;

		PageHelper.startPage(pageNum, pageSize);

		List<MScheduleTask> scheduls = mScheduleTaskSrv.queryAll();

		PageInfo<MScheduleTask> pageInfo = new PageInfo<MScheduleTask>(scheduls);

		model.addAttribute("pageInfo", pageInfo);

		return "schedule_list";
	}

	/**
	 * 右侧弹出层内嵌页面跳转
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月19日 下午2:44:44
	 * @Version: V1.0
	 */
	@RequestMapping("/addSchedule")
	public String addSchedule() {
		return "schedule_task_new";
	}

	/**
	 * 保存调度，其实不是所有的都是必填项，如果每个框都有值则不对
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月19日 下午2:45:25
	 * @Version: V1.0
	 */
	@RequestMapping("/saveSchedule")
	@ResponseBody
	public SysResult saveSchedule(MScheduleTask mScheduleTask) {

		if (!StringUtils.isEmpty(mScheduleTask.getMinute()))
			mScheduleTask.setMinute("*");

		if (!StringUtils.isEmpty(mScheduleTask.getHour()))
			mScheduleTask.setHour("*");

		if (!StringUtils.isEmpty(mScheduleTask.getDayofmonth()))
			mScheduleTask.setDayofmonth("*");

		if (!StringUtils.isEmpty(mScheduleTask.getMonth()))
			mScheduleTask.setMonth("*");
		
		if (!StringUtils.isEmpty(mScheduleTask.getDayofweek()))
			mScheduleTask.setDayofweek("?");

		// 设置状态未启用
		mScheduleTask.setCurrentState("0");

		mScheduleTaskSrv.saveSelective(mScheduleTask);

		return SysResult.build(200, "调度已保存成功！");
	}

	/**
	 * 调度关联作业，其实就是更新一条数据
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月20日 上午11:48:05
	 * @Version: V1.0
	 */
	@RequestMapping("/linkToJob")
	@ResponseBody
	public SysResult linkToJob(Integer taskId, Integer idJob) {

		RJob rJob = rJobSrv.queryById(idJob);
		String dir = this.getDir(rJob.getIdDirectory());

		MScheduleTask mScheduleTask = new MScheduleTask();
		mScheduleTask.setTaskId(taskId);
		mScheduleTask.setIdJob(rJob.getIdJob());
		mScheduleTask.setJobName(rJob.getName());
		mScheduleTask.setDirName(dir);

		Integer ret = mScheduleTaskSrv.updateSelective(mScheduleTask);
		if (ret != null && ret == 1)
			return SysResult.build(200, "调度已与作业" + rJob.getName() + "进行关联");
		return SysResult.build(201, "调度与作业关联失败");
	}

	/**
	 * 获取作业所在的路径，如果作业的路径ID为0，代表在根路径，如果不为0，则一直循环找父目录为0的那个
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月20日 下午12:06:57
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

	/**
	 * 开启调度任务，如果此调度已经开启，则返回错误，否则，将调度开启，同时更新状态为已启动，至于返回值的问题，再说
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月21日 上午11:29:46
	 * @Version: V1.0
	 */
	@RequestMapping("/openSchedule")
	@ResponseBody
	public SysResult openSchedule(Integer taskId) {

		MScheduleTask mScheduleTask = mScheduleTaskSrv.queryById(taskId);

		if (StringUtils.isEmpty(mScheduleTask.getJobName()))
			return SysResult.build(201, "调度还未关联作业，无法正常启动！");

		Integer result = mScheduleTaskSrv.startScheduler(mScheduleTask);

		if (result != null && result == 1)
			return SysResult.build(200, "调度" + mScheduleTask.getTaskName() + "启动成功");
		
		// 暂定
		return SysResult.build(201, "调度启动失败！");
	}

	/**
	 * 暂停调度任务
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月21日 下午5:27:21
	 * @Version: V1.0
	 */
	@RequestMapping("/pauseSchedule")
	@ResponseBody
	public SysResult pauseSchedule(Integer taskId) {

		MScheduleTask mScheduleTask = mScheduleTaskSrv.queryById(taskId);

		Integer result = mScheduleTaskSrv.pauseScheduler(mScheduleTask);

		if (result != null && result == 1) {
			return SysResult.build(200, "调度" + mScheduleTask.getTaskName() + "已暂停...");
		}
		// 暂定
		return SysResult.build(201, "调度暂停失败！");
	}

	/**
	 * 删除调度，调度必须在停止的状态下，主要是删除表中记录
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月22日 下午3:29:14
	 * @Version: V1.0
	 */
	@RequestMapping("/deleteSchedule")
	@ResponseBody
	public SysResult deleteSchedule(Integer taskId) {

		Integer result = mScheduleTaskSrv.deleteById(taskId);

		if (result != null && result == 1) {
			return SysResult.build(200, "调度已成功删除...");
		}
		// 暂定
		return SysResult.build(201, "调度删除失败！");
	}
	
	/**
	 * 查看调度执行的日志，最近一次的
	 *   
	 * @Author: Lilg 
	 * @Date 创建时间 : 2017年7月3日 上午11:09:58 
	 * @Version: V1.0
	 */
	@RequestMapping("/viewLog")
	public String viewLog(Model model, Integer taskId){
		MScheduleResult mScheduleResult = mScheduleResultSrv.getNewestResultByTaskId(taskId);

		model.addAttribute("taskName", mScheduleResult.getTaskName());
		model.addAttribute("message", mScheduleResult.getExcuteMessage().replaceAll("\r\n", "<br />"));
		model.addAttribute("startTime", mScheduleResult.getStartTime());
		model.addAttribute("endTime", mScheduleResult.getEndTime());
		model.addAttribute("result", "1".equals(mScheduleResult.getResult()) ? "成功执行":"错误终止");
		
		return "log_view";
	}
	
	@RequestMapping("/checkLog")
	@ResponseBody
	public SysResult checkLog(Integer taskId){
		
		MScheduleResult mScheduleResult = mScheduleResultSrv.getNewestResultByTaskId(taskId);
		if (mScheduleResult == null)
			return SysResult.build(201, "调度未曾吊起，暂时没有日志！");
		
		return SysResult.ok();
	}
	
}
