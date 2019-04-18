package com.xxx.etl.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.xxx.etl.mapper.RJobentryCopyMapper;
import com.xxx.etl.pojo.RJobentryCopy;
import com.xxx.etl.service.IRJobentryCopySrv;

/**
 * @ClassName 类名 : RJobentryCopySrv
 * @Description 作用 :
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年6月26日 下午12:12:33
 * @Version 版本 : V1.0
 */
@Service
@Scope("prototype")
public class RJobentryCopySrv extends BaseSrv<RJobentryCopy> implements IRJobentryCopySrv {

	@Autowired
	private RJobentryCopyMapper rJobentryCopyMapper;

	public Integer getMinXByIdJob(Integer idJob) {

		return rJobentryCopyMapper.getMinXByIdJob(idJob);
	}

	public Integer getMaxXByIdJob(Integer idJob) {
		
		return rJobentryCopyMapper.getMaxXByIdJob(idJob);
	}

}
