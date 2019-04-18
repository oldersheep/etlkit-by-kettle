package com.xxx.etl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.xxx.etl.mapper.RJobentryMapper;
import com.xxx.etl.pojo.RJobentry;
import com.xxx.etl.service.IRJobentrySrv;
import com.xxx.etl.vo.ZFlowNodeVO;

/**
 * @ClassName 类名 : RJobentrySrv
 * @Description 作用 : 作业实体的服务实现类
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月6日 下午2:31:43
 * @Version 版本 : V1.0
 */
@Service("rJobentrySrv")
@Scope("prototype")
public class RJobentrySrv extends BaseSrv<RJobentry> implements IRJobentrySrv {

	@Autowired
	private RJobentryMapper rJobentryMapper;

	@Override
	public List<ZFlowNodeVO> getFlowNodes(Integer idJob) {

		return rJobentryMapper.getFlowNodes(idJob);
	}

}
