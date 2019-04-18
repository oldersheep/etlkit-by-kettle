package com.xxx.etl.vo;

import java.util.List;

/**
 * @ClassName 类名 : ZLayTreeNodeVO
 * @Description 作用 : 按照LayUI的Tree中node节点的属性构造的VO，用于封装对象后转换为json
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年6月9日 上午11:16:29
 * @Version 版本 : V1.0
 */

public class ZLayTreeNodeVO {

	// 如果是job，则为id_job，如果是directory，则为id_directory
	private Integer id;

	// 如果是job，则为name，如果是directory，则为directory_name
	private String name;

	// 如果是job，则为flow/show/{idJob}，如果是directory，则为null
	private String href;

	private Boolean spread;

	// 如果是job，则为null，如果是directory，则为此目录下所有的集合
	private List<ZLayTreeNodeVO> children;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getHref() {
		return href;
	}

	public void setHref(String href) {
		this.href = href;
	}

	public Boolean getSpread() {
		return spread;
	}

	public void setSpread(Boolean spread) {
		this.spread = spread;
	}

	public List<ZLayTreeNodeVO> getChildren() {
		return children;
	}

	public void setChildren(List<ZLayTreeNodeVO> children) {
		this.children = children;
	}

}
