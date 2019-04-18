package com.xxx.etl.service;

import java.util.List;

import com.xxx.etl.pojo.RJob;
import com.xxx.etl.vo.RJobentryVO;

/**
 * @ClassName 类名 : IRJobSrv
 * @Description 作用 : TODO(这里用一句话描述这个类的作用)
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月24日 下午4:09:17
 * @Version 版本 : V1.0
 */

public interface IRJobSrv extends IBaseSrv<RJob> {

	List<RJobentryVO> queryJobEntryVOById(Integer idJob);
	
	List<RJob> queryJobByIdDirectory(Integer idDirectory);
	
}
