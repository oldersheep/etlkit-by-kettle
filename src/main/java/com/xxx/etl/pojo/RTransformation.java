package com.xxx.etl.pojo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName 类名 : RTransformation
 * @Description 作用 : TODO(这里用一句话描述这个类的作用)
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月3日 上午10:49:21
 * @Version 版本 : V1.0
 */
@Table(name = "R_TRANSFORMATION")
public class RTransformation implements Serializable {

	private static final long serialVersionUID = 1L;

	// 表名称
	public static final String TABLENAME = "R_TRANSFORMATION";
	// 转换ID
	public static final String ID_TRANSFORMATION = "idTransformation";
	// 目录ID
	public static final String ID_DIRECTORY = "idDirectory";
	// 转换的名称
	public static final String NAME = "name";
	// 转换的描述
	public static final String DESCRIPTION = "description";
	// 转换的扩展描述
	public static final String EXTENDED_DESCRIPTION = "extendedDescription";
	// 转换的版本
	public static final String TRANS_VERSION = "transVersion";
	// 转换的状态：1--草案；2--产品
	public static final String TRANS_STATUS = "transStatus";
	// 不知何意，几乎全为空
	public static final String ID_STEP_READ = "idStepRead";
	public static final String ID_STEP_WRITE = "idStepWrite";
	public static final String ID_STEP_INPUT = "idStepInput";
	public static final String ID_STEP_OUTPUT = "idStepOutput";
	public static final String ID_STEP_UPDATE = "idStepUpdate";
	// 日志表所在的数据库ID
	public static final String ID_DATABASE_LOG = "idDatabaseLog";
	// 日志表的表名
	public static final String TABLE_NAME_LOG = "tableNameLog";
	
	public static final String USE_BATCHID = "useBatchid";
	public static final String USE_LOGFIELD = "useLogfield";
	public static final String ID_DATABASE_MAXDATE = "idDatabaseMaxdate";
	public static final String TABLE_NAME_MAXDATE = "tableNameMaxdate";
	public static final String FIELD_NAME_MAXDATE = "fieldNameMaxdate";
	public static final String OFFSET_MAXDATE = "offsetMaxdate";
	public static final String DIFF_MAXDATE = "diffMaxdate";
	// 创建者
	public static final String CREATED_USER = "createdUser";
	// 创建日期
	public static final String CREATED_DATE = "createdDate";
	// 最近修改用户
	public static final String MODIFIED_USER = "modifiedUser";
	// 最近修改日期
	public static final String MODIFIED_DATE = "modifiedDate";
	public static final String SIZE_ROWSET = "sizeRowset";

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_TRANSFORMATION")
	private Integer idTransformation;

	@Column(name = "ID_DIRECTORY")
	private Integer idDirectory;

	@Column(name = "NAME")
	private String name;

	@Column(name = "DESCRIPTION")
	private String description;

	@Column(name = "EXTENDED_DESCRIPTION")
	private String extendedDescription;

	@Column(name = "TRANS_VERSION")
	private String transVersion;

	@Column(name = "TRANS_STATUS")
	private Integer transStatus;

	@Column(name = "ID_STEP_READ")
	private Integer idStepRead;

	@Column(name = "ID_STEP_WRITE")
	private Integer idStepWrite;

	@Column(name = "ID_STEP_INPUT")
	private Integer idStepInput;

	@Column(name = "ID_STEP_OUTPUT")
	private Integer idStepOutput;

	@Column(name = "ID_STEP_UPDATE")
	private Integer idStepUpdate;

	@Column(name = "ID_DATABASE_LOG")
	private Integer idDatabaseLog;

	@Column(name = "TABLE_NAME_LOG")
	private String tableNameLog;

	@Column(name = "USE_BATCHID")
	private Integer useBatchid;

	@Column(name = "USE_LOGFIELD")
	private Integer useLogfield;

	@Column(name = "ID_DATABASE_MAXDATE")
	private Integer idDatabaseMaxdate;

	@Column(name = "TABLE_NAME_MAXDATE")
	private String tableNameMaxdate;

	@Column(name = "FIELD_NAME_MAXDATE")
	private String fieldNameMaxdate;

	@Column(name = "OFFSET_MAXDATE")
	private Double offsetMaxdate;

	@Column(name = "DIFF_MAXDATE")
	private Double diffMaxdate;

	@Column(name = "CREATED_USER")
	private String createdUser;

	@Column(name = "CREATED_DATE")
	private Date createdDate;

	@Column(name = "MODIFIED_USER")
	private String modifiedUser;

	@Column(name = "MODIFIED_DATE")
	private Date modifiedDate;

	@Column(name = "SIZE_ROWSET")
	private Integer sizeRowset;

	public Integer getIdTransformation() {
		return idTransformation;
	}

	public void setIdTransformation(Integer idTransformation) {
		this.idTransformation = idTransformation;
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

	public String getTransVersion() {
		return transVersion;
	}

	public void setTransVersion(String transVersion) {
		this.transVersion = transVersion;
	}

	public Integer getTransStatus() {
		return transStatus;
	}

	public void setTransStatus(Integer transStatus) {
		this.transStatus = transStatus;
	}

	public Integer getIdStepRead() {
		return idStepRead;
	}

	public void setIdStepRead(Integer idStepRead) {
		this.idStepRead = idStepRead;
	}

	public Integer getIdStepWrite() {
		return idStepWrite;
	}

	public void setIdStepWrite(Integer idStepWrite) {
		this.idStepWrite = idStepWrite;
	}

	public Integer getIdStepInput() {
		return idStepInput;
	}

	public void setIdStepInput(Integer idStepInput) {
		this.idStepInput = idStepInput;
	}

	public Integer getIdStepOutput() {
		return idStepOutput;
	}

	public void setIdStepOutput(Integer idStepOutput) {
		this.idStepOutput = idStepOutput;
	}

	public Integer getIdStepUpdate() {
		return idStepUpdate;
	}

	public void setIdStepUpdate(Integer idStepUpdate) {
		this.idStepUpdate = idStepUpdate;
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

	public Integer getUseBatchid() {
		return useBatchid;
	}

	public void setUseBatchid(Integer useBatchid) {
		this.useBatchid = useBatchid;
	}

	public Integer getUseLogfield() {
		return useLogfield;
	}

	public void setUseLogfield(Integer useLogfield) {
		this.useLogfield = useLogfield;
	}

	public Integer getIdDatabaseMaxdate() {
		return idDatabaseMaxdate;
	}

	public void setIdDatabaseMaxdate(Integer idDatabaseMaxdate) {
		this.idDatabaseMaxdate = idDatabaseMaxdate;
	}

	public String getTableNameMaxdate() {
		return tableNameMaxdate;
	}

	public void setTableNameMaxdate(String tableNameMaxdate) {
		this.tableNameMaxdate = tableNameMaxdate;
	}

	public String getFieldNameMaxdate() {
		return fieldNameMaxdate;
	}

	public void setFieldNameMaxdate(String fieldNameMaxdate) {
		this.fieldNameMaxdate = fieldNameMaxdate;
	}

	public Double getOffsetMaxdate() {
		return offsetMaxdate;
	}

	public void setOffsetMaxdate(Double offsetMaxdate) {
		this.offsetMaxdate = offsetMaxdate;
	}

	public Double getDiffMaxdate() {
		return diffMaxdate;
	}

	public void setDiffMaxdate(Double diffMaxdate) {
		this.diffMaxdate = diffMaxdate;
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

	public Integer getSizeRowset() {
		return sizeRowset;
	}

	public void setSizeRowset(Integer sizeRowset) {
		this.sizeRowset = sizeRowset;
	}

	@Override
	public String toString() {
		return "RTransformation [idTransformation=" + idTransformation + ", idDirectory=" + idDirectory + ", name="
				+ name + ", description=" + description + ", extendedDescription=" + extendedDescription
				+ ", transVersion=" + transVersion + ", transStatus=" + transStatus + ", idStepRead=" + idStepRead
				+ ", idStepWrite=" + idStepWrite + ", idStepInput=" + idStepInput + ", idStepOutput=" + idStepOutput
				+ ", idStepUpdate=" + idStepUpdate + ", idDatabaseLog=" + idDatabaseLog + ", tableNameLog="
				+ tableNameLog + ", useBatchid=" + useBatchid + ", useLogfield=" + useLogfield + ", idDatabaseMaxdate="
				+ idDatabaseMaxdate + ", tableNameMaxdate=" + tableNameMaxdate + ", fieldNameMaxdate="
				+ fieldNameMaxdate + ", offsetMaxdate=" + offsetMaxdate + ", diffMaxdate=" + diffMaxdate
				+ ", createdUser=" + createdUser + ", createdDate=" + createdDate + ", modifiedUser=" + modifiedUser
				+ ", modifiedDate=" + modifiedDate + ", sizeRowset=" + sizeRowset + "]";
	}

}
