package com.xxx.etl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.xxx.etl.mapper.RJobHopMapper;
import com.xxx.etl.pojo.RJobHop;
import com.xxx.etl.service.IRJobHopSrv;

/**
 * @ClassName 类名 : RJobHopSrv
 * @Description 作用 : RJobHop服务的实现类
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月5日 上午11:32:52
 * @Version 版本 : V1.0
 */

@Service("rJobHopSrv")
@Scope("prototype")
public class RJobHopSrv extends BaseSrv<RJobHop> implements IRJobHopSrv {
	
	@Autowired
	private RJobHopMapper rJobHopMapper;

	@Override
	public Integer getFlowStart(Integer idJob) {

		return rJobHopMapper.getFlowStart(idJob);
	}

	@Override
	public Integer getFlowEnd(Integer idJob) {

		return rJobHopMapper.getFlowEnd(idJob);
	}

	@Override
	public List<RJobHop> getMiddleNode(Integer idJob, Integer idJobentryCopyFrom) {

		return rJobHopMapper.getMiddleNode(idJob, idJobentryCopyFrom);
	}

	@Override
	public List<Integer> getLRFroms(Integer idJob) {
		
		return rJobHopMapper.getLRFroms(idJob);
	}

	@Override
	public List<Integer> getLRTos(Integer idJob) {

		return rJobHopMapper.getLRTos(idJob);
	}

}
