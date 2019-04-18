package com.xxx.etl.pojo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName 类名 : RJob
 * @Description 作用 : 作业记录，如果用于展示都有哪些作业，那么只需要作业ID、目录ID、作业名
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月24日 下午3:43:13
 * @Version 版本 : V1.0
 */
@Table(name = "R_JOB")
public class RJob implements Serializable {

	private static final long serialVersionUID = 1L;

	// 表名称
	public static final String TABLENAME = "R_JOB";
	// 主键ID
	public static final String ID_JOB = "idJob";
	// 作业所在目录的ID
	public static final String ID_DIRECTORY = "idDirectory";
	// 作业名
	public static final String NAME = "name";
	// 作业描述
	public static final String DESCRIPTION = "description";
	// 作业扩展描述
	public static final String EXTENDED_DESCRIPTION = "extendedDescription";
	// 作业版本
	public static final String JOB_VERSION = "jobVersion";
	// 作业状态：1--草案   2--产品
	public static final String JOB_STATUS = "jobStatus";
	// 日志数据库的ID
	public static final String ID_DATABASE_LOG = "idDatabaseLog";
	// 日志表表名
	public static final String TABLE_NAME_LOG = "tableNameLog";
	// 创建者
	public static final String CREATED_USER = "createdUser";
	// 创建时间
	public static final String CREATED_DATE = "createdDate";
	// 最近修改者
	public static final String MODIFIED_USER = "modifiedUser";
	// 最近修改时间
	public static final String MODIFIED_DATE = "modifiedDate";

	public static final String USE_BATCH_ID = "useBatchId";
	public static final String PASS_BATCH_ID = "passBatchId";
	public static final String USE_LOGFIELD = "useLogfield";
	
	public static final String SHARED_FILE = "sharedFile";
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idJob;
	private Integer idDirectory;
	private String name;
	private String description;
	private String extendedDescription;
	private String jobVersion;
	private String jobStatus;
	private Integer idDatabaseLog;
	private String tableNameLog;
	private String createdUser;
	private Date createdDate;
	private String modifiedUser;
	private Date modifiedDate;
	private Integer useBatchId;
	private Integer passBatchId;
	private Integer useLogfield;
	private String sharedFile;

	public Integer getIdJob() {
		return idJob;
	}

	public void setIdJob(Integer idJob) {
		this.idJob = idJob;
	}

	public Integer getIdDirectory() {
		return idDirectory;
	}

	public void setIdDirectory(Integer idDirectory) {
		this.idDirectory = idDirectory;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getExtendedDescription() {
		return extendedDescription;
	}

	public void setExtendedDescription(String extendedDescription) {
		this.extendedDescription = extendedDescription;
	}

	public String getJobVersion() {
		return jobVersion;
	}

	public void setJobVersion(String jobVersion) {
		this.jobVersion = jobVersion;
	}

	public String getJobStatus() {
		return jobStatus;
	}

	public void setJobStatus(String jobStatus) {
		this.jobStatus = jobStatus;
	}

	public Integer getIdDatabaseLog() {
		return idDatabaseLog;
	}

	public void setIdDatabaseLog(Integer idDatabaseLog) {
		this.idDatabaseLog = idDatabaseLog;
	}

	public String getTableNameLog() {
		return tableNameLog;
	}

	public void setTableNameLog(String tableNameLog) {
		this.tableNameLog = tableNameLog;
	}

	public String getCreatedUser() {
		return createdUser;
	}

	public void setCreatedUser(String createdUser) {
		this.createdUser = createdUser;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public String getModifiedUser() {
		return modifiedUser;
	}

	public void setModifiedUser(String modifiedUser) {
		this.modifiedUser = modifiedUser;
	}

	public Date getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	public Integer getUseBatchId() {
		return useBatchId;
	}

	public void setUseBatchId(Integer useBatchId) {
		this.useBatchId = useBatchId;
	}

	public Integer getPassBatchId() {
		return passBatchId;
	}

	public void setPassBatchId(Integer passBatchId) {
		this.passBatchId = passBatchId;
	}

	public Integer getUseLogfield() {
		return useLogfield;
	}

	public void setUseLogfield(Integer useLogfield) {
		this.useLogfield = useLogfield;
	}

	public String getSharedFile() {
		return sharedFile;
	}

	public void setSharedFile(String sharedFile) {
		this.sharedFile = sharedFile;
	}

}
