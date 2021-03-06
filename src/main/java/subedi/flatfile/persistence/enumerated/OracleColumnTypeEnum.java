package subedi.flatfile.persistence.enumerated;

import java.sql.Types;

/**
 * Enum to hold the data type of a oracle column.
 * 
 * @author vivek.subedi
 *
 */

public enum OracleColumnTypeEnum {

	INTEGER(Types.INTEGER),
	NUMBER(Types.NUMERIC),
	
	CHAR(Types.CHAR),
	LONGVAR(Types.LONGVARCHAR),
	VARCHAR(Types.VARCHAR),
	NCHAR(Types.NCHAR),
	NVARCHAR2(Types.NVARCHAR),
	VARCHAR2(Types.VARCHAR),
	VARBIN(Types.VARBINARY),
	
	CLOB(Types.CLOB),
	BLOB(Types.BLOB),
	
	DATE(Types.DATE),
	TIME(Types.TIME),
	TIMESTMP(Types.TIMESTAMP),
	TIMESTAMP(Types.TIMESTAMP),
	TIMESTAMP6(Types.TIMESTAMP),
	
	XML(Types.SQLXML);
	
	private Integer sqlType;
	
	OracleColumnTypeEnum(Integer sqlType) {
		this.sqlType = sqlType;
	}
	
	public Integer getSqlType() {
		return sqlType;
	}
	
	public void setSqlType(Integer sqlType) {
		this.sqlType = sqlType;
	}
}
