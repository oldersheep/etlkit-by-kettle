package com.xxx.etl.service;

import com.xxx.etl.pojo.RJobentryCopy;

/**
 * @ClassName 类名 : IRJobentryCopySrv
 * @Description 作用 : TODO(这里用一句话描述这个类的作用)
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年6月26日 下午12:11:22
 * @Version 版本 : V1.0
 */

public interface IRJobentryCopySrv extends IBaseSrv<RJobentryCopy> {

	/**
	 * 根据ID_JOB查询表r_jobentry_copy中GUI_LOCATION_X最小的一个
	 *   
	 * @Author: Lilg 
	 * @Date 创建时间 : 2017年6月26日 下午3:07:07 
	 * @Version: V1.0
	 */
	Integer getMinXByIdJob(Integer idJob);

	/**
	 * 根据ID_JOB查询表r_jobentry_copy中GUI_LOCATION_X最大的一个
	 *   
	 * @Author: Lilg 
	 * @Date 创建时间 : 2017年6月26日 下午3:10:19 
	 * @Version: V1.0
	 */
	Integer getMaxXByIdJob(Integer idJob);

}
