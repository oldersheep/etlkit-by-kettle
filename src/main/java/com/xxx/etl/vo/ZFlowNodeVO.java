package com.xxx.etl.vo;

/**
 * @ClassName 类名 : ZFlowNodeVO
 * @Description 作用 : 流程图节点的VO类
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年6月6日 上午9:54:37
 * @Version 版本 : V1.0
 */

public class ZFlowNodeVO {

	/*
	 * "demo_node_1": { "name": "登记", "left": 20, "top": 59, "type":
	 * "start round", "width": 24, "height": 24 }
	 */
	// 对应JSON里面的key
	private Integer key;

	// 对应JSON里面的name、left、top
	private String name;
	private Integer left;
	private Integer top;

	private String type;

	// 组件的宽高，sql查出来全是35
	private Integer width;
	private Integer height;

	public Integer getKey() {
		return key;
	}

	public void setKey(Integer key) {
		this.key = key;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getLeft() {
		return left;
	}

	public void setLeft(Integer left) {
		this.left = left;
	}

	public Integer getTop() {
		return top;
	}

	public void setTop(Integer top) {
		this.top = top;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getWidth() {
		return width;
	}

	public void setWidth(Integer width) {
		this.width = width;
	}

	public Integer getHeight() {
		return height;
	}

	public void setHeight(Integer height) {
		this.height = height;
	}

	@Override
	public String toString() {
		return "ZFlowNodeVO [key=" + key + ", name=" + name + ", left=" + left + ", top=" + top + ", type=" + type
				+ ", width=" + width + ", height=" + height + "]";
	}

}
