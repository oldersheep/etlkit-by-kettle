package com.xxx.etl.service;

import java.util.List;

import com.xxx.etl.pojo.RJobentry;
import com.xxx.etl.vo.ZFlowNodeVO;

/** 
  * @ClassName   类名 : IRJobentrySrv
  * @Description 作用 : TODO(这里用一句话描述这个类的作用) 
  * @Author  作者 : Lilg
  * @Date 创建时间 : 2017年5月6日 下午2:30:49 
  * @Version 版本 : V1.0  
  */

public interface IRJobentrySrv extends IBaseSrv<RJobentry> {

	public List<ZFlowNodeVO> getFlowNodes(Integer idJob);
}
