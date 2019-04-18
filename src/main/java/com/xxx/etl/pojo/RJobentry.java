package com.xxx.etl.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName 类名 : RJobentry
 * @Description 作用 : 作业实体表
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月6日 下午2:24:13
 * @Version 版本 : V1.0
 */
@Table(name = "R_JOBENTRY")
public class RJobentry implements Serializable {

	private static final long serialVersionUID = 1L;
	// 表名称
	public static final String TABLENAME = "R_JOBENTRY";
	// ID
	public static final String ID_JOBENTRY = "idJobentry";
	// 作业ID
	public static final String ID_JOB = "idJob";
	// 作业类型ID
	public static final String ID_JOBENTRY_TYPE = "idJobentryType";
	// 作业名称
	public static final String NAME = "name";
	// 作业描述，可为空，因为没啥用
	public static final String DESCRIPTION = "description";

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_JOBENTRY")
	private Integer idJobentry;

	@Column(name = "ID_JOB")
	private Integer idJob;

	@Column(name = "ID_JOBENTRY_TYPE")
	private Integer idJobentryType;

	@Column(name = "NAME")
	private String name;

	@Column(name = "DESCRIPTION")
	private String description;

	public Integer getIdJobentry() {
		return idJobentry;
	}

	public void setIdJobentry(Integer idJobentry) {
		this.idJobentry = idJobentry;
	}

	public Integer getIdJob() {
		return idJob;
	}

	public void setIdJob(Integer idJob) {
		this.idJob = idJob;
	}

	public Integer getIdJobentryType() {
		return idJobentryType;
	}

	public void setIdJobentryType(Integer idJobentryType) {
		this.idJobentryType = idJobentryType;
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

}
