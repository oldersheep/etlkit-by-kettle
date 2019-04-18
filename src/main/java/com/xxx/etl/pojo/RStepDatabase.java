package com.xxx.etl.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Table;

/**
 * @ClassName 类名 : RStepDatabase
 * @Description 作用 : 记录了每个转换中每一步骤所用到的数据库，如果用到的话就进行存储
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月3日 上午9:30:50
 * @Version 版本 : V1.0
 */
@Table(name = "R_STEP_DATABASE")
public class RStepDatabase implements Serializable {

	private static final long serialVersionUID = 1L;
	// 表名称
	public static final String TABLENAME = "R_STEP_DATABASE";
	// 转换ID
	public static final String ID_TRANSFORMATION = "idTransformation";
	// 步骤ID
	public static final String ID_STEP = "idStep";
	// 数据库ID
	public static final String ID_DATABASE = "idDatabase";
	
	@Column(name = "ID_TRANSFORMATION")
	private Integer idTransformation;
	@Column(name = "ID_STEP")
	private Integer idStep;
	@Column(name = "ID_DATABASE")
	private Integer idDatabase;

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

	public Integer getIdDatabase() {
		return idDatabase;
	}

	public void setIdDatabase(Integer idDatabase) {
		this.idDatabase = idDatabase;
	}

}
