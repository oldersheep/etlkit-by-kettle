package com.xxx.etl.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName 类名 : RDatabaseContype
 * @Description 作用 : 数据库连接方式--码值表，只用来关联即可
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年4月27日 下午12:51:54
 * @Version 版本 : V1.0
 */
@Table(name = "R_DATABASE_CONTYPE")
public class RDatabaseContype implements Serializable {

	private static final long serialVersionUID = 1L;

	// 表名称
	public static final String TABLENAME = "R_DATABASE_CONTYPE";
	public static final String ID_DATABASE_CONTYPE = "idDatabaseContype";
	public static final String CODE = "code";
	public static final String DESCRIPTION = "description";

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "ID_DATABASE_CONTYPE")
	private Integer idDatabaseContype;
	
	@Column(name = "CODE")
	private String code;
	
	@Column(name = "DESCRIPTION")
	private String description;

	public Integer getIdDatabaseContype() {
		return idDatabaseContype;
	}

	public void setIdDatabaseContype(Integer idDatabaseContype) {
		this.idDatabaseContype = idDatabaseContype;
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
