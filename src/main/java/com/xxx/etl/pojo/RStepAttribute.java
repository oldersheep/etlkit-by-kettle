package com.xxx.etl.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName 类名 : RStepAttribute
 * @Description 作用 : 步骤的属性表，记录了每一个小步骤的内在配置，至关重要
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月3日 上午9:44:12
 * @Version 版本 : V1.0
 */
@Table(name = "R_STEP_ATTRIBUTE")
public class RStepAttribute implements Serializable {

	private static final long serialVersionUID = 1L;
	// 表名称
	public static final String TABLENAME = "R_STEP_ATTRIBUTE";
	// 步骤属性ID
	public static final String ID_STEP_ATTRIBUTE = "idStepAttribute";
	// 转换ID
	public static final String ID_TRANSFORMATION = "idTransformation";
	// 步骤ID
	public static final String ID_STEP = "idStep";
	// 
	public static final String NR = "nr";
	// 
	public static final String CODE = "code";
	// 
	public static final String VALUE_NUM = "valueNum";
	// 
	public static final String VALUE_STR = "valueStr";
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_STEP_ATTRIBUTE")
	private Integer idStepAttribute;
	
	@Column(name = "ID_TRANSFORMATION")
	private Integer idTransformation;
	
	@Column(name = "ID_STEP")
	private Integer idStep;
	
	@Column(name = "NR")
	private Integer nr;
	
	@Column(name = "CODE")
	private String code;
	
	@Column(name = "VALUE_NUM")
	private Integer valueNum;
	
	@Column(name = "VALUE_STR")
	private String valueStr;

	public Integer getIdStepAttribute() {
		return idStepAttribute;
	}

	public void setIdStepAttribute(Integer idStepAttribute) {
		this.idStepAttribute = idStepAttribute;
	}

	public Integer getIdTransformation() {
		return idTransformation;
	}

	public void setIdTransformation(Integer idTransformation) {
		this.idTransformation = idTransformation;
	}

	public Integer getIdStep() {
		return idStep;
	}

	public void setIdStep(Integer idStep) {
		this.idStep = idStep;
	}

	public Integer getNr() {
		return nr;
	}

	public void setNr(Integer nr) {
		this.nr = nr;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Integer getValueNum() {
		return valueNum;
	}

	public void setValueNum(Integer valueNum) {
		this.valueNum = valueNum;
	}

	public String getValueStr() {
		return valueStr;
	}

	public void setValueStr(String valueStr) {
		this.valueStr = valueStr;
	}

}
