package com.xxx.etl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.xxx.etl.mapper.RDatabaseMapper;
import com.xxx.etl.pojo.RDatabase;
import com.xxx.etl.service.IRDatabaseSrv;

/** 
 * @ClassName   类名 : RDatabaseTypeSrv
 * @Description 作用 : TODO(这里用一句话描述这个类的作用) 
 * @Author  作者 : Lilg
 * @Date 创建时间 : 2017年6月7日 下午12:25:16 
 * @Version 版本 : V1.0  
 */
@Service
@Scope("prototype")
public class RDatabaseSrv extends BaseSrv<RDatabase> implements IRDatabaseSrv {

	@Autowired
	private RDatabaseMapper rDatabaseMapper;

	@Override
	public List<RDatabase> queryListByWhere(RDatabase rDatabase){
		return rDatabaseMapper.selectByNameOrNull(rDatabase);
	}

	@Override
	public Integer saveDatabaseAndAttribute(RDatabase rDatabase) {

		Integer first = rDatabaseMapper.insertSelective(rDatabase);
		rDatabaseMapper.saveDbAttr(rDatabase);
		Integer third = rDatabaseMapper.updateDbAttrPort(rDatabase);

		return first + third;
	}
	
	@Override
	public Integer updateDatabaseAndAttribute(RDatabase rDatabase) {
		Integer first = rDatabaseMapper.updateByPrimaryKeySelective(rDatabase);
		rDatabaseMapper.deleteDbAttrByIdDatabase(rDatabase.getIdDatabase());
		rDatabaseMapper.saveDbAttr(rDatabase);
		Integer fourth = rDatabaseMapper.updateDbAttrPort(rDatabase);
		return first + fourth;
	}

	@Override
	public Integer deleteDatabaseAndAttributeByIds(String[] ids){
		Integer first = rDatabaseMapper.deleteByIDS(ids);
		rDatabaseMapper.deleteDbAttrByIdDatabases(ids);
		
		return first;
	}
	
}
