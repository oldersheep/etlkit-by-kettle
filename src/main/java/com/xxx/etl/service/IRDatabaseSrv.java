package com.xxx.etl.service;

import java.util.List;

import com.xxx.etl.pojo.RDatabase;

/**
 * 
 * @ClassName   类名 : IRDatabaseSrv
 * @Description 作用 : 针对数据源插入的特殊操作，同步r_database与r_database_attribute 
 * @Author  作者 : Lilg
 * @Date 创建时间 : 2017年6月7日 下午4:34:40 
 * @Version 版本 : V1.0
 */
public interface IRDatabaseSrv extends IBaseSrv<RDatabase>{
	
	/**
	 * 自定义SQL查询所有满足条件的列表
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月7日 下午8:17:19
	 * @Version: V1.0
	 */
	List<RDatabase> queryListByWhere(RDatabase rDatabase);
	
	/**
	 * 保存数据源以及属性，其实是同步存储r_database_attribute和r_database的数据 包装为一个事务，具体操作步骤为：
	 * 1、保存数据源的基本配置到r_database表
	 * 2、通过m_database_attribute插入r_database_attribute
	 * 3、根据r_database中port的属性，更新r_database_attribute中CODE='PORT_NUMBER'的VALUE_STR的值
	 * 如果返回值为2则表名事务成功
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月7日 下午8:17:19
	 * @Version: V1.0
	 */
	Integer saveDatabaseAndAttribute(RDatabase rDatabase);
	
	/**
	 * 更新数据源以及属性，其实是同步更新r_database_attribute和r_database的数据
	 * 包装为一个事务，具体操作步骤为：
	 * <!-- 由于是对两张表的操作，且r_database_attribute中的数据要根据r_database的idDatabaseTyp而变，
	 * 故以下两步存在致命伤害，要改。
	 * 	* 1、更新数据源的基本配置到r_database表
	 * 	* 2、根据r_database中port的属性，更新r_database_attribute中CODE='PORT_NUMBER'的VALUE_STR的值
	 * 	如果返回值为2则表名事务成功
	 * -->
	 * 
	 * 1、更新数据源的基本配置到r_database表
	 * 2、根据idDatabase删除r_database_attribute表中所有相关属性
	 * 3、通过m_database_attribute插入r_database_attribute
	 * 4、根据r_database中port的属性，更新r_database_attribute中CODE='PORT_NUMBER'的VALUE_STR的值
	 * 
	 * @author: Lilg
	 * @创建时间: 2017年6月9日 下午5:31:33
	 * @修改时间: 2017年7月3日 下午4:26:42
	 */
	Integer updateDatabaseAndAttribute(RDatabase rDatabase);
	
	/**
	 * 批量删除数据源，亦可单条，同步删除r_database_attribute表中所有相关属性
	 * 
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月8日 上午11:56:43
	 * @Version: V1.0
	 */
	Integer deleteDatabaseAndAttributeByIds(String[] ids);
}
