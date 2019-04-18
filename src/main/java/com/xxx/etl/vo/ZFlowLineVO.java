package com.xxx.etl.vo;

/**
 * @ClassName 类名 : ZFlowLineVO
 * @Description 作用 : 流程图连线的VO
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年6月6日 下午3:34:59
 * @Version 版本 : V1.0
 */

public class ZFlowLineVO {

	// 直线为sl，折线为lr
	private String type;
	// ID_JOBENTRY_COPY_FROM
	private String from;
	// ID_JOBENTRY_COPY_TO
	private String to;
	// 默认为空即可
	private String name;

	// 折线时，折线的弯曲点的X轴值，需要算
	private Integer M;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getM() {
		return M;
	}

	public void setM(Integer M) {
		this.M = M;
	}

}
