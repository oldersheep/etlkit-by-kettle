package com.xxx.etl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.xxx.etl.mapper.MScheduleResultMapper;
import com.xxx.etl.pojo.MScheduleResult;
import com.xxx.etl.service.IMScheduleResultSrv;
import com.xxx.etl.vo.ZTaskLogDetailVO;

/** 
  * @ClassName   类名 : MScheduleResultSrv
  * @Description 作用 : TODO(这里用一句话描述这个类的作用) 
  * @Author  作者 : Lilg
  * @Date 创建时间 : 2017年6月23日 上午10:54:13 
  * @Version 版本 : V1.0  
  */
@Service("mScheduleResultSrv")
@Scope("prototype")
public class MScheduleResultSrv extends BaseSrv<MScheduleResult> implements IMScheduleResultSrv {

	@Autowired
	private MScheduleResultMapper mScheduleResultMapper;
	
	@Override
	public List<ZTaskLogDetailVO> getTaskLog(String startTime, String endTime, String taskName) {
		
		return mScheduleResultMapper.getTaskLog(startTime,endTime,taskName);
	}

	@Override
	public Integer getLogTotalCount(String startTime, String endTime, String taskName) {
		
		return mScheduleResultMapper.getLogTotalCount(startTime, endTime, taskName);
	}

	@Override
	public Integer getErrorLogCount(String startTime, String endTime, String taskName) {

		return mScheduleResultMapper.getErrorLogCount(startTime, endTime, taskName);
	}

	@Override
	public MScheduleResult getNewestResultByTaskId(Integer taskId) {
		
		return mScheduleResultMapper.getNewestResultByTaskId(taskId);
	}

}
