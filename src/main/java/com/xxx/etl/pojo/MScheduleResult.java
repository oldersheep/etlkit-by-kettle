package com.xxx.etl.pojo;

import java.io.Serializable;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName 类名 : MScheduleResult
 * @Description 作用 : TODO(这里用一句话描述这个类的作用)
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年6月23日 上午10:48:22
 * @Version 版本 : V1.0
 */
@Table(name = "M_SCHEDULE_RESULT")
public class MScheduleResult implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer resultId;
	private Integer taskId;
	private String taskName;

	private Integer idJob;

	private String startTime;
	private String endTime;
	private String result;
	private String excuteMessage;

	public Integer getResultId() {
		return resultId;
	}

	public void setResultId(Integer resultId) {
		this.resultId = resultId;
	}

	public Integer getTaskId() {
		return taskId;
	}

	public void setTaskId(Integer taskId) {
		this.taskId = taskId;
	}

	public String getTaskName() {
		return taskName;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getExcuteMessage() {
		return excuteMessage;
	}

	public void setExcuteMessage(String excuteMessage) {
		this.excuteMessage = excuteMessage;
	}

	public Integer getIdJob() {
		return idJob;
	}

	public void setIdJob(Integer idJob) {
		this.idJob = idJob;
	}

}
