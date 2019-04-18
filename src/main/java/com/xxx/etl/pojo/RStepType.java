package com.xxx.etl.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName 类名 : RStepType
 * @Description 作用 : 步骤类型码值，数量一定，但是顺序不一致，针对此表，另做了一张表，用于填充R_STEP_ATTRIBUTE
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月3日 上午9:54:15
 * @Version 版本 : V1.0
 */
@Table(name = "R_STEP_TYPE")
public class RStepType implements Serializable {

	private static final long serialVersionUID = 1L;

	// 表名称
	public static final String TABLENAME = "R_STEP_TYPE";
	// 步骤类型ID
	public static final String ID_STEP_TYPE = "idStepType";
	// 步骤类型码
	public static final String CODE = "code";
	// 步骤描述
	public static final String DESCRIPTION = "description";
	// 步骤帮助文档
	public static final String HELPTEXT = "helptext";

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_STEP_TYPE")
	private Integer idStepType;

	@Column(name = "CODE")
	private String code;

	@Column(name = "DESCRIPTION")
	private String description;

	@Column(name = "HELPTEXT")
	private String helptext;

	public Integer getIdStepType() {
		return idStepType;
	}

	public void setIdStepType(Integer idStepType) {
		this.idStepType = idStepType;
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

	public String getHelptext() {
		return helptext;
	}

	public void setHelptext(String helptext) {
		this.helptext = helptext;
	}

}
