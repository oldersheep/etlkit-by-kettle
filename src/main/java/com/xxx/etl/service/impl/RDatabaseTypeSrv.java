package com.xxx.etl.service.impl;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.xxx.etl.pojo.RDatabaseType;
import com.xxx.etl.service.IRDatabaseTypeSrv;

/** 
  * @ClassName   类名 : RDatabaseTypeSrv
  * @Description 作用 : TODO(这里用一句话描述这个类的作用) 
  * @Author  作者 : Lilg
  * @Date 创建时间 : 2017年6月7日 下午12:25:16 
  * @Version 版本 : V1.0  
  */
@Service
@Scope("prototype")
public class RDatabaseTypeSrv extends BaseSrv<RDatabaseType> implements IRDatabaseTypeSrv {
	
}
