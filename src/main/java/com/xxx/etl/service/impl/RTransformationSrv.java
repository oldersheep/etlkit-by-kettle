package com.xxx.etl.service.impl;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.xxx.etl.pojo.RTransformation;
import com.xxx.etl.service.IRTransformationSrv;

/** 
  * @ClassName   类名 : RTransformationSrv
  * @Description 作用 : TODO(这里用一句话描述这个类的作用) 
  * @Author  作者 : Lilg
  * @Date 创建时间 : 2017年5月18日 下午3:17:55 
  * @Version 版本 : V1.0  
  */
@Service
@Scope("prototype")
public class RTransformationSrv extends BaseSrv<RTransformation> implements IRTransformationSrv {

}
