package com.xxx.etl.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @ClassName 类名 : RDatabase
 * @Description 作用 : 数据库配置实体，存储用户名密码以及与其他表的关联关系
 * 比数据库中多了一个字段，用以存储连接类型的英文
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年4月27日 上午11:53:29
 * @Version 版本 : V1.0
 */
@Table(name = "R_DATABASE")
public class RDatabase implements Serializable {

	private static final long serialVersionUID = 1L;
	// 表名称
	public static final String TABLENAME = "R_DATABASE";
	// 数据库ID
	public static final String ID_DATABASE = "idDatabase";
	// 连接名称
	public static final String NAME = "name";
	// 数据库类型ID
	public static final String ID_DATABASE_TYPE = "idDatabaseType";
	// 数据库连接方式ID
	public static final String ID_DATABASE_CONTYPE = "idDatabaseContype";
	// 主机地址
	public static final String HOST_NAME = "hostName";
	// 数据库名称
	public static final String DATABASE_NAME = "databaseName";
	// 端口
	public static final String PORT = "port";
	// 数据库用户名
	public static final String USERNAME = "username";
	// 数据库密码
	public static final String PASSWORD = "password";
	// 服务名称，默认null就行
	public static final String SERVERNAME = "servername";
	// 数据表空间，默认null
	public static final String DATA_TBS = "dataTbs";
	// 索引表空间，默认null
	public static final String INDEX_TBS = "indexTbs";

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_DATABASE")
	private Integer idDatabase;

	@Column(name = "NAME")
	private String name;

	@Column(name = "ID_DATABASE_TYPE")
	private Integer idDatabaseType;

	// 前台展示时用，标注不用持久化
	@Transient
	private String dbType;

	@Column(name = "ID_DATABASE_CONTYPE")
	private Integer idDatabaseContype;

	@Column(name = "HOST_NAME")
	private String hostName;

	@Column(name = "DATABASE_NAME")
	private String databaseName;

	@Column(name = "PORT")
	private Integer port;

	@Column(name = "USERNAME")
	private String username;

	@Column(name = "PASSWORD")
	private String password;

	@Column(name = "SERVERNAME")
	private String servername;

	@Column(name = "DATA_TBS")
	private String dataTbs;

	@Column(name = "INDEX_TBS")
	private String indexTbs;

	public Integer getIdDatabase() {
		return idDatabase;
	}

	public void setIdDatabase(Integer idDatabase) {
		this.idDatabase = idDatabase;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getIdDatabaseType() {
		return idDatabaseType;
	}

	public void setIdDatabaseType(Integer idDatabaseType) {
		this.idDatabaseType = idDatabaseType;
	}

	public Integer getIdDatabaseContype() {
		return idDatabaseContype;
	}

	public void setIdDatabaseContype(Integer idDatabaseContype) {
		this.idDatabaseContype = idDatabaseContype;
	}

	public String getHostName() {
		return hostName;
	}

	public void setHostName(String hostName) {
		this.hostName = hostName;
	}

	public String getDatabaseName() {
		return databaseName;
	}

	public void setDatabaseName(String databaseName) {
		this.databaseName = databaseName;
	}

	public Integer getPort() {
		return port;
	}

	public void setPort(Integer port) {
		this.port = port;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getServername() {
		return servername;
	}

	public void setServername(String servername) {
		this.servername = servername;
	}

	public String getDataTbs() {
		return dataTbs;
	}

	public void setDataTbs(String dataTbs) {
		this.dataTbs = dataTbs;
	}

	public String getIndexTbs() {
		return indexTbs;
	}

	public void setIndexTbs(String indexTbs) {
		this.indexTbs = indexTbs;
	}

	public String getDbType() {
		return dbType;
	}

	public void setDbType(String dbType) {
		this.dbType = dbType;
	}

	@Override
	public String toString() {
		return "RDatabase [idDatabase=" + idDatabase + ", name=" + name + ", idDatabaseType=" + idDatabaseType
				+ ", dbType=" + dbType + ", idDatabaseContype=" + idDatabaseContype + ", hostName=" + hostName
				+ ", databaseName=" + databaseName + ", port=" + port + ", username=" + username + ", password="
				+ password + ", servername=" + servername + ", dataTbs=" + dataTbs + ", indexTbs=" + indexTbs + "]";
	}

}
