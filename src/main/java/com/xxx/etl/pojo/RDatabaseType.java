package com.xxx.etl.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName 类名 : RDatabaseType
 * @Description 作用 : 数据库类型--码值表
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年4月27日 下午1:00:06
 * @Version 版本 : V1.0
 */
@Table(name = "R_DATABASE_TYPE")
public class RDatabaseType implements Serializable {

	private static final long serialVersionUID = 1L;

	// 表名称
	public static final String TABLENAME = "R_DATABASE_TYPE";
	public static final String ID_DATABASE_TYPE = "idDatabaseType";
	public static final String CODE = "code";
	public static final String DESCRIPTION = "description";

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "ID_DATABASE_TYPE")
	private Integer idDatabaseType;

	@Column(name = "CODE")
	private String code;

	@Column(name = "DESCRIPTION")
	private String description;

	public Integer getIdDatabaseType() {
		return idDatabaseType;
	}

	public void setIdDatabaseType(Integer idDatabaseType) {
		this.idDatabaseType = idDatabaseType;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
