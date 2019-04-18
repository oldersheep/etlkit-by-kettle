package com.xxx.etl.vo;

/**
 * @ClassName 类名 : ZTreeNodeVO
 * @Description 作用 : 按照ZTree的node节点的属性构造的VO，用于封装对象后转换为json
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年6月12日 上午10:41:46
 * @Version 版本 : V1.0
 */

public class ZTreeNodeVO {

	// 当前节点id，使用String类型，为了防止id冲突
	private String id;
	// 父目录id
	private String pId;
	// 节点名称
	private String name;
	// 是否是打开状态
	private Boolean open;
	// 是否是文件夹，true代表是文件夹，即使为空，也是文件夹的样式
	private Boolean isParent;
	// 自定义图标
	private String icon;

	// 点击事件，配合使用，还有一个click，目前没用
	private String url;
	private String target;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getpId() {
		return pId;
	}

	public void setpId(String pId) {
		this.pId = pId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Boolean getOpen() {
		return open;
	}

	public void setOpen(Boolean open) {
		this.open = open;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public Boolean getIsParent() {
		return isParent;
	}

	public void setIsParent(Boolean isParent) {
		this.isParent = isParent;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

}
