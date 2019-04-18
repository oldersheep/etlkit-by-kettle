package com.xxx.etl.service.impl;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.pentaho.di.core.exception.KettleException;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;

import com.xxx.etl.pojo.MScheduleResult;
import com.xxx.etl.pojo.MScheduleTask;
import com.xxx.etl.utils.RunMethodUtil;


/**
 * @ClassName 类名 : KettleJobExecutor
 * @Description 作用 : 配合spring quartz来执行的任务，主要是kettle的任务吊起，并将日志记录
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年6月21日 上午9:49:37
 * @Version 版本 : V1.0
 */
public class KettleJobExecutor implements Job {
	
	@Autowired
	private MScheduleResultSrv mScheduleResultSrv;

	@Override
	public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {

		MScheduleTask mScheduleTask = (MScheduleTask) jobExecutionContext.getMergedJobDataMap().get("task");
		
		DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String startTime = formatter.format(new Date());
		MScheduleResult mScheduleResult = new MScheduleResult();
		
		try {
			List<String> result = RunMethodUtil.executeJob(mScheduleTask.getJobName(), mScheduleTask.getDirName());
			
			String endTime = formatter.format(new Date());
			
			
			mScheduleResult.setTaskId(mScheduleTask.getTaskId());
			mScheduleResult.setTaskName(mScheduleTask.getTaskName());
			mScheduleResult.setIdJob(mScheduleTask.getIdJob());
			mScheduleResult.setStartTime(startTime);
			mScheduleResult.setEndTime(endTime);
			mScheduleResult.setResult(result.get(1));
			mScheduleResult.setExcuteMessage(result.get(0).replaceAll("\r\nnull", ""));
			
		} catch (KettleException | IOException e) {
			e.printStackTrace();
			String endTime = formatter.format(new Date());
			mScheduleResult.setTaskId(mScheduleTask.getTaskId());
			mScheduleResult.setTaskName(mScheduleTask.getTaskName());
			mScheduleResult.setStartTime(startTime);
			mScheduleResult.setEndTime(endTime);
			mScheduleResult.setResult("0");
			mScheduleResult.setExcuteMessage(e.getMessage());
		} 
		
		mScheduleResultSrv.save(mScheduleResult);

	}

}
