package com.xxx.etl.pojo;

import java.io.Serializable;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName 类名 : RDirectory
 * @Description 作用 : TODO(这里用一句话描述这个类的作用)
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月26日 下午5:10:38
 * @Version 版本 : V1.0
 */
@Table(name = "R_DIRECTORY")
public class RDirectory implements Serializable {

	private static final long serialVersionUID = 1L;

	// 表名称
	public static final String TABLENAME = "R_DIRECTORY";
	// 目录ID
	public static final String ID_DIRECTORY = "idDirectory";
	
	// 父目录ID
	public static final String ID_DIRECTORY_PARENT = "idDirectoryParent";
	
	// 目录名称
	public static final String DIRECTORY_NAME = "directoryName";

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idDirectory;

	private Integer idDirectoryParent;

	private String directoryName;

	public Integer getIdDirectory() {
		return idDirectory;
	}

	public void setIdDirectory(Integer idDirectory) {
		this.idDirectory = idDirectory;
	}

	public Integer getIdDirectoryParent() {
		return idDirectoryParent;
	}

	public void setIdDirectoryParent(Integer idDirectoryParent) {
		this.idDirectoryParent = idDirectoryParent;
	}

	public String getDirectoryName() {
		return directoryName;
	}

	public void setDirectoryName(String directoryName) {
		this.directoryName = directoryName;
	}

}
