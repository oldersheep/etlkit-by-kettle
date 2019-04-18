package com.xxx.etl.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xxx.etl.pojo.MScheduleResult;
import com.xxx.etl.vo.ZTaskLogDetailVO;


/** 
  * @ClassName   类名 : IMScheduleResultSrv
  * @Description 作用 : TODO(这里用一句话描述这个类的作用) 
  * @Author  作者 : Lilg
  * @Date 创建时间 : 2017年6月23日 上午10:53:41 
  * @Version 版本 : V1.0  
  */

public interface IMScheduleResultSrv extends IBaseSrv<MScheduleResult> {
	
	/**
	 * 按照固定格式查询任务执行日志，封装到list中
	 *   
	 * @Author: Lilg 
	 * @Date 创建时间 : 2017年6月28日 下午12:02:09 
	 * @Version: V1.0
	 */
	List<ZTaskLogDetailVO> getTaskLog(String startTime, String endTime, String taskName);
	
	/**
	 * 查询日志总条数
	 *   
	 * @Author: Lilg 
	 * @Date 创建时间 : 2017年6月29日 上午9:34:12 
	 * @Version: V1.0
	 */
	Integer getLogTotalCount(String startTime, String endTime, String taskName);
	
	/**
	 * 查询日志表中错误数
	 *   
	 * @Author: Lilg 
	 * @Date 创建时间 : 2017年6月29日 上午9:36:13 
	 * @Version: V1.0
	 */
	Integer getErrorLogCount(@Param("startTime") String startTime, @Param("endTime") String endTime, @Param("taskName") String taskName);

	/**
	 * 根据taskId查询表中最新的一条记录
	 *   
	 * @Author: Lilg 
	 * @Date 创建时间 : 2017年6月29日 下午6:06:35 
	 * @Version: V1.0
	 */
	MScheduleResult getNewestResultByTaskId(Integer taskId);
}
