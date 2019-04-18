package com.xxx.etl.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xxx.etl.mapper.base.SysMapper;
import com.xxx.etl.pojo.RDatabase;

/**
 * @ClassName 类名 : RDatabaseMapper
 * @Description 作用 : 对数据库的配置进行存储
 * 主要使用到m_database_attribute
 * 如果数据库类型增加，要同步添加此表中的内容
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年4月27日 下午5:25:02
 * @Version 版本 : V1.0
 */
public interface RDatabaseMapper extends SysMapper<RDatabase> {

	
	/**
	 * 条件查询所有的数据源，根据名字模糊查询
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月7日 下午4:36:55
	 * @Version: V1.0
	 */
	List<RDatabase> selectByNameOrNull(RDatabase rDatabase);

	/**
	 * 数据库连接信息更新
	 * 更新表r_database
	 * @author: 韩帅
	 * @创建时间: 2017年6月9日 下午5:39:22
	 */
	Integer updateSelective(RDatabase rDatabase);
	
	/**
	 * 同步保存r_database_attribute的配置
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月7日 下午4:36:55
	 * @Version: V1.0
	 */
	Integer saveDbAttr(RDatabase rDatabase);

	/**
	 * 更新r_database_attribute的端口，与r_database中的保持一致
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月7日 下午4:37:00
	 * @Version: V1.0
	 */
	Integer updateDbAttrPort(RDatabase rDatabase);

	/**
	 * 根据id_database删除r_database_attribute中相关属性
	 *   
	 * @Author: Lilg 
	 * @Date 创建时间 : 2017年6月8日 下午12:12:08 
	 * @Version: V1.0
	 */
	Integer deleteDbAttrByIdDatabase(Integer idDatabase);

	/**
	 * 根据id_database批量删除r_database_attribute中相关属性
	 *   
	 * @Author: Lilg 
	 * @Date 创建时间 : 2017年6月8日 下午12:12:08 
	 * @Version: V1.0
	 */
	Integer deleteDbAttrByIdDatabases(@Param("array") Object[] idDatabases);

}
