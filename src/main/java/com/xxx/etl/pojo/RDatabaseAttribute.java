package com.xxx.etl.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName 类名 : RDatabaseAttribute
 * @Description 作用 : 数据库属性值，需要填充
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年4月27日 下午12:21:34
 * @Version 版本 : V1.0
 */
@Table(name = "R_DATABASE_ATTRIBUTE")
public class RDatabaseAttribute implements Serializable {

	private static final long serialVersionUID = 1L;
	// 表名称
	public static final String TABLENAME = "R_DATABASE_ATTRIBUTE";
	// 数据库ID
	public static final String ID_DATABASE_ATTRIBUTE = "idDatabaseAttribute";
	// 数据库ID
	public static final String ID_DATABASE = "idDatabase";
	// 属性名
	public static final String CODE = "code";
	// 对应值
	public static final String VALUE_STR = "valueStr";
	/*
	 * ID_DATABASE_ATTRIBUTE ID_DATABASE CODE VALUE_STR
	 */

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "ID_DATABASE_ATTRIBUTE")
	private Integer idDatabaseAttribute;
	
	@Column(name = "ID_DATABASE")
	private Integer idDatabase;
	
	@Column(name = "CODE")
	private String code;
	
	@Column(name = "VALUE_STR")
	private String valueStr;

	public Integer getIdDatabaseAttribute() {
		return idDatabaseAttribute;
	}

	public void setIdDatabaseAttribute(Integer idDatabaseAttribute) {
		this.idDatabaseAttribute = idDatabaseAttribute;
	}

	public Integer getIdDatabase() {
		return idDatabase;
	}

	public void setIdDatabase(Integer idDatabase) {
		this.idDatabase = idDatabase;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getValueStr() {
		return valueStr;
	}

	public void setValueStr(String valueStr) {
		this.valueStr = valueStr;
	}

}
