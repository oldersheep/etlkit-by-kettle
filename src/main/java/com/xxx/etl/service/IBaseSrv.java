package com.xxx.etl.service;

import java.util.List;

/**
 * @className   类名 : IBaseSrv
 * @description 作用 : 抽取公用的service层方法
 * @author  作者 : Lilg
 * @date 创建时间 : 2018年2月1日 上午11:34:54 
 * @version 版本 : V1.0
 */
public interface IBaseSrv<T> {
	
    /**
     * 根据主键查询数据
     * 
     * @param id
     * @return
     */
    public T queryById(Object id);

    /**
     * 根据条件查询，多条件之间是 and 关系
     * 
     * @param t
     * @return
     */
    public List<T> queryListByWhere(T t);

    /**
     * 根据条件查询单条数据
     * 
     * @param t
     * @return
     */
    public T queryByWhere(T t);

    /**
     * 查询所有数据
     * 
     * @return
     */
    public List<T> queryAll();

    /**
     * 新增数据，使用全部字段
     * 
     * @param t
     */
    public void save(T t);

    /**
     * 新增数据，使用不为null的字段
     * 
     * @param t
     */
    public void saveSelective(T t);

    /**
     * 根据id删除
     * 
     * @param id
     * @return
     */
    public Integer deleteById(Object id);

    /**
     * 根据ids删除
     * 
     * @param ids
     * @return
     */
    public Integer deleteByIds(Object[] ids);

    /**
     * 根据条件删除
     * 
     * @param t
     */
    public Integer deleteByWhere(T t);

    /**
     * 根据主键id更新数据
     * 
     * @param t
     */
    public Integer update(T t);
    
    /**
     * 根据主键id更新数据,更新不为空的字段值
     * 
     * @param t
     */
    public Integer updateSelective(T t) ;
    
    /**
	 *  查询数目:属性都为null,则查询所有记录数量，属性有值则查询有对应值的属性的记录条数
	 * @author：孙文通
	 * @创建时间：2016年8月17日 上午11:03:19
	 */
	public int selectCount(T t);

}
