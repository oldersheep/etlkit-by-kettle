package com.xxx.etl.service.impl;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.xxx.etl.pojo.RDirectory;
import com.xxx.etl.service.IRDirectorySrv;

/** 
  * @ClassName   类名 : RDirectorySrv
  * @Description 作用 :  
  * @Author  作者 : Lilg
  * @Date 创建时间 : 2017年5月26日 下午5:23:20 
  * @Version 版本 : V1.0  
  */
@Service("rDirectorySrv")
@Scope("prototype")
public class RDirectorySrv extends BaseSrv<RDirectory> implements IRDirectorySrv {

}
