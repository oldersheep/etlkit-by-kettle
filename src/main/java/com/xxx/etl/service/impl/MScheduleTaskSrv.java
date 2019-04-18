package com.xxx.etl.service.impl;

import java.util.List;

import org.quartz.CronScheduleBuilder;
import org.quartz.CronTrigger;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.JobKey;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.TriggerBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.scheduling.quartz.SchedulerFactoryBean;
import org.springframework.stereotype.Service;

import com.xxx.etl.pojo.MScheduleTask;
import com.xxx.etl.service.IMScheduleTaskSrv;

/**
 * @ClassName 类名 : MSchedulTaskSrv
 * @Description 作用 : TODO(这里用一句话描述这个类的作用)
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年6月16日 下午4:16:46
 * @Version 版本 : V1.0
 */
@Service
@Scope("prototype")
public class MScheduleTaskSrv extends BaseSrv<MScheduleTask> implements IMScheduleTaskSrv {

	@Autowired
	private SchedulerFactoryBean schedulerFactoryBean; // 依赖在spring-context-support

	private static Logger logger = LoggerFactory.getLogger(MScheduleTaskSrv.class);

	/**
	 * 开启一个调度任务，同时将数据库中的状态进行更新
	 * 
	 * 目前操作流程：将scheduler中的内容清空，
	 * 然后数据库中状态为1的任务全部拿来，同时将要开启的任务添加到列表中
	 * 然后判断任务开始时间与结束时间，调度重新吊起
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月21日 上午11:31:03
	 * @Version: V1.0
	 */
	public Integer startScheduler(MScheduleTask mScheduleTask) {
		Scheduler scheduler = schedulerFactoryBean.getScheduler();

		try {
            scheduler.clear();
        } catch (SchedulerException e) {
            e.printStackTrace();
        }
		
		MScheduleTask formerTask = new MScheduleTask();
		formerTask.setCurrentState("1");

		List<MScheduleTask> tasks = queryListByWhere(formerTask);
		tasks.add(mScheduleTask);
		for (MScheduleTask task : tasks) {
			try {
				/*
				调度的开始时间与结束时间判断，目前并未添加，以后会完善
				long startTimeStamp = job.getStartDate().getTime();
                long endTimeStamp = job.getEndDate().getTime();
                if (endTimeStamp < System.currentTimeMillis()) {
                    // Skip expired job
                    continue;
                }
                */
                
				StringBuffer cron = new StringBuffer("0 ");
				cron.append(task.getMinute()).append(" ") //
						.append(task.getHour()).append(" ") // 
						.append(task.getDayofmonth()).append(" ") //
						.append(task.getMonth()).append(" ") //
						.append(task.getDayofweek());

				JobDetail jobDetail = JobBuilder.newJob(KettleJobExecutor.class)
						.withIdentity(task.getTaskId().toString(), task.getTaskName()).build();

				jobDetail.getJobDataMap().put("task", task);

				CronTrigger trigger = TriggerBuilder.newTrigger()
						// .startAt(new Date())
						.withSchedule(CronScheduleBuilder.cronSchedule(cron.toString()))
						// .endAt(job.getEndDate())
						.build();

				scheduler.scheduleJob(jobDetail, trigger);
			} catch (SchedulerException e) {
				logger.error("{} Job id: {}", e.getMessage(), task.getTaskId());
				e.printStackTrace();
			}
		}
		mScheduleTask.setCurrentState("1");

		return updateSelective(mScheduleTask);
	}

	public Integer pauseScheduler(MScheduleTask mScheduleTask) {

		Scheduler scheduler = schedulerFactoryBean.getScheduler();
		
		try {
			JobKey jobKey = JobKey.jobKey(mScheduleTask.getTaskId().toString(), mScheduleTask.getTaskName());

			scheduler.pauseJob(jobKey);

		} catch (SchedulerException e) {
			logger.error("{} Job id: {}", e.getMessage(), mScheduleTask.getTaskId());
			e.printStackTrace();
		}
		mScheduleTask.setCurrentState("0");

		return updateSelective(mScheduleTask);
	}

	 
}
