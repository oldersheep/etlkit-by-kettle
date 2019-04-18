package com.xxx.etl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.xxx.etl.mapper.RJobMapper;
import com.xxx.etl.pojo.RJob;
import com.xxx.etl.service.IRJobSrv;
import com.xxx.etl.vo.RJobentryVO;

/**
 * @ClassName 类名 : RJobSrv
 * @Description 作用 : 作业记录的service的实现类
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月24日 下午4:10:09
 * @Version 版本 : V1.0
 */
@Service
@Scope("prototype")
public class RJobSrv extends BaseSrv<RJob> implements IRJobSrv {

	@Autowired
	private RJobMapper rJobMapper;

	@Override
	public List<RJobentryVO> queryJobEntryVOById(Integer idJob) {
		
		return rJobMapper.queryJobEntryVOById(idJob);
	}

	/**
	 * 根据作业所在的路径，查询作业所有属性
	 *   
	 * @Author: Lilg 
	 * @Date 创建时间 : 2017年6月9日 下午1:05:05 
	 * @Version: V1.0
	 */
	public List<RJob> queryJobByIdDirectory(Integer idDirectory) {
		
		return rJobMapper.queryJobByIdDirectory(idDirectory);
	}

}
