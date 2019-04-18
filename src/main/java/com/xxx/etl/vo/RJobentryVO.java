package com.xxx.etl.vo;

/**
 * @ClassName 类名 : RJobentry
 * @Description 作用 : 作业内容的VO类
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月24日 下午5:40:56
 * @Version 版本 : V1.0
 */

public class RJobentryVO {

	private Integer idJobentry;
	private Integer idJob;
	private String jobname;
	private String code;
	private String description;
	private String jobentryname;

	public String getJobname() {
		return jobname;
	}

	public void setJobname(String jobname) {
		this.jobname = jobname;
	}

	public String getJobentryname() {
		return jobentryname;
	}

	public void setJobentryname(String jobentryname) {
		this.jobentryname = jobentryname;
	}

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
