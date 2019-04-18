package com.xxx.etl.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName 类名 : RTransHop
 * @Description 作用 : 记录了节点连接信息，这张表里面没有信息的话，转换中的步骤就是一个个单独的
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月3日 上午11:10:08
 * @Version 版本 : V1.0
 */
@Table(name = "R_TRANS_HOP")
public class RTransHop implements Serializable {

	private static final long serialVersionUID = 1L;

	// 表名称
	public static final String TABLENAME = "R_TRANS_HOP";
	// 转换线ID
	public static final String ID_TRANS_HOP = "idTransHop";
	// 转换ID
	public static final String ID_TRANSFORMATION = "idTransformation";
	// 步骤开始，step的id
	public static final String ID_STEP_FROM = "idStepFrom";
	// 步骤结束，step的id
	public static final String ID_STEP_TO = "idStepTo";
	// 连接是否生效，生效是1，默认为1
	public static final String ENABLED = "enabled";

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_TRANS_HOP")
	private Integer idTransHop;

	@Column(name = "ID_TRANSFORMATION")
	private Integer idTransformation;

	@Column(name = "ID_STEP_FROM")
	private Integer idStepFrom;

	@Column(name = "ID_STEP_TO")
	private Integer idStepTo;

	@Column(name = "ENABLED")
	private Integer enabled;

	public Integer getIdTransHop() {
		return idTransHop;
	}

	public void setIdTransHop(Integer idTransHop) {
		this.idTransHop = idTransHop;
	}

	public Integer getIdTransformation() {
		return idTransformation;
	}

	public void setIdTransformation(Integer idTransformation) {
		this.idTransformation = idTransformation;
	}

	public Integer getIdStepFrom() {
		return idStepFrom;
	}

	public void setIdStepFrom(Integer idStepFrom) {
		this.idStepFrom = idStepFrom;
	}

	public Integer getIdStepTo() {
		return idStepTo;
	}

	public void setIdStepTo(Integer idStepTo) {
		this.idStepTo = idStepTo;
	}

	public Integer getEnabled() {
		return enabled;
	}

	public void setEnabled(Integer enabled) {
		this.enabled = enabled;
	}

}
