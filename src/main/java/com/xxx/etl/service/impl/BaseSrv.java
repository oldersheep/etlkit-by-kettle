package com.xxx.etl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xxx.etl.mapper.base.SysMapper;
import com.xxx.etl.service.IBaseSrv;

@Service("baseSrv")
public abstract class BaseSrv<T> implements IBaseSrv<T>{
	
    @Autowired
    private SysMapper<T> sysMapper;

    /**
     * 根据主键查询数据
     * 
     * @param id
     * @return
     */
    public T queryById(Object id) {
        return this.sysMapper.selectByPrimaryKey(id);
    }

    /**
     * 根据条件查询，多条件之间是 and 关系
     * 
     * @param t
     * @return
     */
    public List<T> queryListByWhere(T t) {
        return this.sysMapper.select(t);
    }

    /**
     * 根据条件查询单条数据
     * 
     * @param t
     * @return
     */
    public T queryByWhere(T t) {
        List<T> list = queryListByWhere(t);
        if (list != null && !list.isEmpty()) {
            return list.get(0);
        }
        return null;
    }

    /**
     * 查询所有数据
     * 
     * @return
     */
    public List<T> queryAll() {
        return this.sysMapper.select(null);
    }

    /**
     * 新增数据，使用全部字段
     * 
     * @param t
     */
    public void save(T t) {
    	
        this.sysMapper.insert(t);
    }

    /**
     * 新增数据，使用不为null的字段
     * 
     * @param t
     */
    public void saveSelective(T t) {
        this.sysMapper.insertSelective(t);
    }

    /**
     * 根据id删除
     * 
     * @param id
     * @return
     */
    public Integer deleteById(Object id) {
        return this.sysMapper.deleteByPrimaryKey(id);
    }

    /**
     * 根据ids删除
     * 
     * @param ids
     * @return
     */
    public Integer deleteByIds(Object[] ids) {
        return this.sysMapper.deleteByIDS(ids);
    }

    /**
     * 根据条件删除
     * 
     * @param t
     */
    public Integer deleteByWhere(T t) {
        return this.sysMapper.delete(t);
    }

    /**
     * 根据主键id更新数据
     * 
     * @param t
     */
    public Integer update(T t) {
        return this.sysMapper.updateByPrimaryKey(t);
    }
    
    /**
     * 根据主键id更新数据,更新不为空的字段值
     * 
     * @param t
     */
    public Integer updateSelective(T t) {
        return this.sysMapper.updateByPrimaryKeySelective(t);
    }
    
    /**
	 *  查询数目:属性都为null,则查询所有记录数量，属性有值则查询有对应值的属性的记录条数
	 * @author：孙文通
	 * @创建时间：2016年8月17日 上午11:03:19
	 */
	public int selectCount(T t){
			int num = sysMapper.selectCount(t);
			return num;
	}
}
