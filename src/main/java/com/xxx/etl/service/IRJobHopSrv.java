package com.xxx.etl.service;

import java.util.List;

import com.xxx.etl.pojo.RJobHop;

/**
 * @ClassName 类名 : IRJobHopSrv
 * @Description 作用 : 作业跳转的服务接口
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月5日 上午11:31:31
 * @Version 版本 : V1.0
 */

public interface IRJobHopSrv extends IBaseSrv<RJobHop> {
	
	/**
	 * 获取流程开始的节点，得到的是r_jobentry_copy的id_jobentry_copy
	 *   
	 * @Author: Lilg 
	 * @Date 创建时间 : 2017年5月6日 下午4:26:48 
	 * @Version: V1.0
	 */
	Integer getFlowStart(Integer idJob);

	/**
	 *  获取流程结束的节点，得到的是r_jobentry_copy的id_jobentry_copy
	 *   
	 * @Author: Lilg 
	 * @Date 创建时间 : 2017年5月6日 下午4:49:24 
	 * @Version: V1.0
	 */
	Integer getFlowEnd(Integer idJob);

	/**
	 *  获取流程中间的节点，即，根据前面的节点得到后面的节点的内容
	 *  意义不大，暂时没啥用，而且，还有些问题
	 *   
	 * @Author: Lilg 
	 * @Date 创建时间 : 2017年5月6日 下午4:49:58 
	 * @Version: V1.0
	 */
	List<RJobHop> getMiddleNode(Integer idJob, Integer idJobentryCopyFrom);
	
	/**
	 * 此方法为了获得流程中开始并行的起点
	 * 此方法不一定需要，因为可以从r_jobentry_copy中取parallel为1的值
	 *   
	 * @Author: Lilg 
	 * @Date 创建时间 : 2017年6月6日 下午4:57:01 
	 * @Version: V1.0
	 */
	List<Integer> getLRFroms(Integer idJob);
	
	/**
	 * 与上面方法对应，取并行结束后合并的终点
	 *   
	 * @Author: Lilg 
	 * @Date 创建时间 : 2017年6月6日 下午4:57:28 
	 * @Version: V1.0
	 */
	List<Integer> getLRTos(Integer idJob);
}
