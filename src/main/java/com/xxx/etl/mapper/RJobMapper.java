package com.xxx.etl.mapper;

import java.util.List;

import com.xxx.etl.mapper.base.SysMapper;
import com.xxx.etl.pojo.RJob;
import com.xxx.etl.vo.RJobentryVO;

/** 
  * @ClassName   类名 : RJobMapper
  * @Description 作用 : 作业记录的mapper
  * @Author  作者 : Lilg
  * @Date 创建时间 : 2017年5月24日 下午4:12:35 
  * @Version 版本 : V1.0  
  */

public interface RJobMapper extends SysMapper<RJob> {
	
	List<RJobentryVO> queryJobEntryVOById(Integer idJob);
	
	List<RJob> queryJobByIdDirectory(Integer idDirectory);
	
}
