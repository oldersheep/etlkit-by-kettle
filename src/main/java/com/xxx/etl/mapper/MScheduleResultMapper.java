package com.xxx.etl.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xxx.etl.mapper.base.SysMapper;
import com.xxx.etl.pojo.MScheduleResult;
import com.xxx.etl.vo.ZTaskLogDetailVO;

/** 
  * @ClassName   类名 : MScheduleResultMapper
  * @Description 作用 : 调度执行后的结果
  * @Author  作者 : Lilg
  * @Date 创建时间 : 2017年6月23日 上午10:53:10 
  * @Version 版本 : V1.0  
  */

public interface MScheduleResultMapper extends SysMapper<MScheduleResult> {

	/**
	 * 查询调度任务的执行日志，返回固定需求的字段
	 *   
	 * @Author: Lilg 
	 * @Date 创建时间 : 2017年6月28日 下午12:03:49 
	 * @Version: V1.0
	 */
	List<ZTaskLogDetailVO> getTaskLog(@Param("startTime") String startTime, @Param("endTime") String endTime, @Param("taskName") String taskName);
	
	/**
	 * 查询所有日志的条数
	 *   
	 * @Author: Lilg 
	 * @Date 创建时间 : 2017年6月29日 上午9:31:55 
	 * @Version: V1.0
	 */
	Integer getLogTotalCount(@Param("startTime") String startTime, @Param("endTime") String endTime, @Param("taskName") String taskName);

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
	 * @Date 创建时间 : 2017年6月29日 下午6:07:49 
	 * @Version: V1.0
	 */
	MScheduleResult getNewestResultByTaskId(Integer taskId);
}
