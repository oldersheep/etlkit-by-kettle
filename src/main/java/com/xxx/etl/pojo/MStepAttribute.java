package com.xxx.etl.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName 类名 : MStepAttribute
 * @Description 作用 : 此表是根据RStepAttribute需要插入的值做的一张码值表，
 *                   针对每一个steptype所需的值做的表，用于关联查询后填充RStepAttribute
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月3日 上午10:09:25
 * @Version 版本 : V1.0
 */
@Table(name = "M_STEP_ATTRIBUTE")
public class MStepAttribute implements Serializable {

	private static final long serialVersionUID = 1L;
	// 表名称
	public static final String TABLENAME = "M_STEP_ATTRIBUTE";
	// ID
	public static final String ID = "id";
	// 步骤类型ID
	public static final String ID_STEP_TYPE = "idStepType";
	// 步骤描述
	public static final String STEP_DESCRIPTION = "stepDescription";
	// 
	public static final String NR = "nr";
	// 步骤码
	public static final String CODE = "code";
	// 属性数字
	public static final String VALUE_NUM = "valueNum";
	// 属性值
	public static final String VALUE_STR = "valueStr";
	// 步骤解释
	public static final String CODE_EXPLAIN = "codeExplain";
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private Integer id;

	@Column(name = "ID_STEP_TYPE")
	private Integer idStepType;

	@Column(name = "STEP_DESCRIPTION")
	private Integer stepDescription;

	@Column(name = "NR")
	private Integer nr;

	@Column(name = "CODE")
	private String code;

	@Column(name = "VALUE_NUM")
	private Integer valueNum;

	@Column(name = "VALUE_STR")
	private String valueStr;

	@Column(name = "CODE_EXPLAIN")
	private String codeExplain;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getIdStepType() {
		return idStepType;
	}

	public void setIdStepType(Integer idStepType) {
		this.idStepType = idStepType;
	}

	public Integer getStepDescription() {
		return stepDescription;
	}

	public void setStepDescription(Integer stepDescription) {
		this.stepDescription = stepDescription;
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

	public String getCodeExplain() {
		return codeExplain;
	}

	public void setCodeExplain(String codeExplain) {
		this.codeExplain = codeExplain;
	}

}
