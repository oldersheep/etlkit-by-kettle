package com.xxx.etl.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName 类名 : RJobHop
 * @Description 作用 : 作业跳转的表
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月5日 上午11:19:05
 * @Version 版本 : V1.0
 */
@Table(name = "R_JOB_HOP")
public class RJobHop implements Serializable {

	private static final long serialVersionUID = 1L;
	/*
	 * evaluation为1时且unconditional为0时是一条线上一个对勾，成功时无条件走
	 * evaluation为0时且unconditional为0时是一条线上一个红叉，失败时无条件
	 * evaluation为1时且unconditional为1时是一条线上一个黄锁，无条件
	 */
	// 表名称
	public static final String TABLENAME = "R_JOB_HOP";
	// ID
	public static final String ID_JOB_HOP = "idJobHop";
	// 作业ID
	public static final String ID_JOB = "idJob";
	// 作业实体的开始节点ID
	public static final String ID_JOBENTRY_COPY_FROM = "idJobentryCopyFrom";
	// 作业实体的结束节点ID
	public static final String ID_JOBENTRY_COPY_TO = "idJobentryCopyTo";
	// 是否失效
	public static final String ENABLED = "enabled";
	// 为1时正确，为0时错误
	public static final String EVALUATION = "evaluation";
	// 为1时无条件，为0时有条件
	public static final String UNCONDITIONAL = "unconditional";

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_JOB_HOP")
	private Integer idJobHop;

	@Column(name = "ID_JOB")
	private Integer idJob;

	@Column(name = "ID_JOBENTRY_COPY_FROM")
	private Integer idJobentryCopyFrom;

	@Column(name = "ID_JOBENTRY_COPY_TO")
	private Integer idJobentryCopyTo;

	@Column(name = "ENABLED")
	private Integer enabled;

	@Column(name = "EVALUATION")
	private Integer evaluation;

	@Column(name = "UNCONDITIONAL")
	private Integer unconditional;

	public Integer getIdJobHop() {
		return idJobHop;
	}

	public void setIdJobHop(Integer idJobHop) {
		this.idJobHop = idJobHop;
	}

	public Integer getIdJob() {
		return idJob;
	}

	public void setIdJob(Integer idJob) {
		this.idJob = idJob;
	}

	public Integer getIdJobentryCopyFrom() {
		return idJobentryCopyFrom;
	}

	public void setIdJobentryCopyFrom(Integer idJobentryCopyFrom) {
		this.idJobentryCopyFrom = idJobentryCopyFrom;
	}

	public Integer getIdJobentryCopyTo() {
		return idJobentryCopyTo;
	}

	public void setIdJobentryCopyTo(Integer idJobentryCopyTo) {
		this.idJobentryCopyTo = idJobentryCopyTo;
	}

	public Integer getEnabled() {
		return enabled;
	}

	public void setEnabled(Integer enabled) {
		this.enabled = enabled;
	}

	public Integer getEvaluation() {
		return evaluation;
	}

	public void setEvaluation(Integer evaluation) {
		this.evaluation = evaluation;
	}

	public Integer getUnconditional() {
		return unconditional;
	}

	public void setUnconditional(Integer unconditional) {
		this.unconditional = unconditional;
	}

	@Override
	public String toString() {
		return "RJobHop [idJobHop=" + idJobHop + ", idJob=" + idJob + ", idJobentryCopyFrom=" + idJobentryCopyFrom
				+ ", idJobentryCopyTo=" + idJobentryCopyTo + ", enabled=" + enabled + ", evaluation=" + evaluation
				+ ", unconditional=" + unconditional + "]";
	}

}
