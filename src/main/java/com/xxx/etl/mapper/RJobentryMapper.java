package com.xxx.etl.mapper;

import java.util.List;

import com.xxx.etl.mapper.base.SysMapper;
import com.xxx.etl.pojo.RJobentry;
import com.xxx.etl.vo.ZFlowNodeVO;

/**
 * @ClassName 类名 : RJobentryMapper
 * @Description 作用 : 作业实体的映射
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月6日 下午2:34:49
 * @Version 版本 : V1.0
 */

public interface RJobentryMapper extends SysMapper<RJobentry> {
	
	List<ZFlowNodeVO> getFlowNodes(Integer idJob);
}
