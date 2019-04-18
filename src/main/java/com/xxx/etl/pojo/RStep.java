package com.xxx.etl.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName 类名 : RStep
 * @Description 作用 : 步骤实体，类似于每一个小模块，里面有四个字段，都是值为1，默认的
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月3日 上午9:19:48
 * @Version 版本 : V1.0
 */
@Table(name = "R_STEP")
public class RStep implements Serializable {

	private static final long serialVersionUID = 1L;
	// 表名称
	public static final String TABLENAME = "R_STEP";
	// 步骤ID
	public static final String ID_STEP = "idStep";
	// 转换ID
	public static final String ID_TRANSFORMATION = "idTransformation";
	// 步骤名称
	public static final String NAME = "name";
	// 步骤描述
	public static final String DESCRIPTION = "description";
	// 步骤类型
	public static final String ID_STEP_TYPE = "idStepType";
	// 默认1，而且保存了之后只能是1，看不出来是别的值的时候的区别
	public static final String DISTRIBUTE = "distribute";
	// 默认1，而且保存了之后只能是1，看不出来是别的值的时候的区别
	public static final String COPIES = "copies";
	// X轴的坐标
	public static final String GUI_LOCATION_X = "guiLocationX";
	// Y轴坐标
	public static final String GUI_LOCATION_Y = "guiLocationY";
	// 默认1，而且保存了之后只能是1，看不出来是别的值的时候的区别
	public static final String GUI_DRAW = "guiDraw";
	// 默认1，而且保存了之后只能是1，看不出来是别的值的时候的区别
	public static final String COPIES_STRING = "copiesString";

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_STEP")
	private Integer idStep;
	
	@Column(name = "ID_TRANSFORMATION")
	private Integer idTransformation;
	
	@Column(name = "NAME")
	private String name;
	
	@Column(name = "DESCRIPTION")
	private String description;
	
	@Column(name = "ID_STEP_TYPE")
	private Integer idStepType;
	
	@Column(name = "DISTRIBUTE")
	private Integer distribute;
	
	@Column(name = "COPIES")
	private Integer copies;
	
	@Column(name = "GUI_LOCATION_X")
	private Integer guiLocationX;
	
	@Column(name = "GUI_LOCATION_Y")
	private Integer guiLocationY;
	
	@Column(name = "GUI_DRAW")
	private Integer guiDraw;
	
	@Column(name = "COPIES_STRING")
	private String copiesString;

	public Integer getIdStep() {
		return idStep;
	}

	public void setIdStep(Integer idStep) {
		this.idStep = idStep;
	}

	public Integer getIdTransformation() {
		return idTransformation;
	}

	public void setIdTransformation(Integer idTransformation) {
		this.idTransformation = idTransformation;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getIdStepType() {
		return idStepType;
	}

	public void setIdStepType(Integer idStepType) {
		this.idStepType = idStepType;
	}

	public Integer getDistribute() {
		return distribute;
	}

	public void setDistribute(Integer distribute) {
		this.distribute = distribute;
	}

	public Integer getCopies() {
		return copies;
	}

	public void setCopies(Integer copies) {
		this.copies = copies;
	}

	public Integer getGuiLocationX() {
		return guiLocationX;
	}

	public void setGuiLocationX(Integer guiLocationX) {
		this.guiLocationX = guiLocationX;
	}

	public Integer getGuiLocationY() {
		return guiLocationY;
	}

	public void setGuiLocationY(Integer guiLocationY) {
		this.guiLocationY = guiLocationY;
	}

	public Integer getGuiDraw() {
		return guiDraw;
	}

	public void setGuiDraw(Integer guiDraw) {
		this.guiDraw = guiDraw;
	}

	public String getCopiesString() {
		return copiesString;
	}

	public void setCopiesString(String copiesString) {
		this.copiesString = copiesString;
	}

}
