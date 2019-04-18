package com.xxx.etl.pojo;

import java.io.Serializable;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName 类名 : RJobentryCopy
 * @Description 作用 : 主要是记录了R_JOBENTRY里面的内容的位置信息，用也一般只查询这些信息
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年6月26日 下午12:05:54
 * @Version 版本 : V1.0
 */
@Table(name="R_JOBENTRY_COPY")
public class RJobentryCopy implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idJobentryCopy;
	private Integer idJobentry;
	private Integer idJob;
	private Integer idJobentryType;
	private Integer nr;
	private Integer guiLocationX;
	private Integer guiLocationY;
	private Integer guiDraw;
	private Integer parallel;

	public Integer getIdJobentryCopy() {
		return idJobentryCopy;
	}

	public void setIdJobentryCopy(Integer idJobentryCopy) {
		this.idJobentryCopy = idJobentryCopy;
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

	public Integer getIdJobentryType() {
		return idJobentryType;
	}

	public void setIdJobentryType(Integer idJobentryType) {
		this.idJobentryType = idJobentryType;
	}

	public Integer getNr() {
		return nr;
	}

	public void setNr(Integer nr) {
		this.nr = nr;
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

	public Integer getParallel() {
		return parallel;
	}

	public void setParallel(Integer parallel) {
		this.parallel = parallel;
	}

}
