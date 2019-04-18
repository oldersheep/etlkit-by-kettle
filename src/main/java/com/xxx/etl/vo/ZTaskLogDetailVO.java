package com.xxx.etl.vo;

/**
 * @ClassName 类名 : ZTaskLogDetailVO
 * @Description 作用 : 任务运行的结果明细，用以封装数据
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年6月28日 上午11:48:13
 * @Version 版本 : V1.0
 */

public class ZTaskLogDetailVO {

	private String taskName;
	private String endTime;
	private String result;
	private String stepname;
	private Integer linesInput;
	private Integer linesOutput;
	private Integer errors;

	public String getTaskName() {
		return taskName;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
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

	public String getStepname() {
		return stepname;
	}

	public void setStepname(String stepname) {
		this.stepname = stepname;
	}

	public Integer getLinesInput() {
		return linesInput;
	}

	public void setLinesInput(Integer linesInput) {
		this.linesInput = linesInput;
	}

	public Integer getLinesOutput() {
		return linesOutput;
	}

	public void setLinesOutput(Integer linesOutput) {
		this.linesOutput = linesOutput;
	}

	public Integer getErrors() {
		return errors;
	}

	public void setErrors(Integer errors) {
		this.errors = errors;
	}

}
