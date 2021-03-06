  CREATE TABLE CCT001.CCM_ICM_AGNT 
   (	
   SKILL_TGT_ID NUMBER(10,0) NOT NULL ENABLE, 
	PERSON_ID NUMBER(10,0), 
	AGNT_DESK_SETTINGS_ID NUMBER(10,0), 
	SCHEDULE_ID NUMBER(10,0), 
	PERIPHERAL_ID NUMBER(5,0), 
	ENTERPRISE_NAM VARCHAR2(32 CHAR), 
	PERIPHERAL_NBR VARCHAR2(32 CHAR), 
	CONFIG_PARAM VARCHAR2(255 CHAR), 
	DESCRIPTION VARCHAR2(255 CHAR), 
	DELETED_FLG VARCHAR2(1 CHAR), 
	PERIPHERAL_NAM VARCHAR2(32 CHAR), 
	TEMP_AGNT_FLG VARCHAR2(1 CHAR), 
	AGNT_STATE_TRACE VARCHAR2(1 CHAR), 
	SUPERV_AGNT_FLG VARCHAR2(1 CHAR), 
	CHANGE_STAMP NUMBER(10,0), 
	USER_DELETABLE_FLG VARCHAR2(1 CHAR), 
	DEF_SKILL_GRP NUMBER(10,0)
   );

  CREATE UNIQUE INDEX CCT001.CCM_ICM_AGNT_UIX01 ON CCT001.CCM_ICM_AGNT (SKILL_TGT_ID);
  
  CREATE TABLE CCT001.CCM_REF
(
	REF_GROUP_NAME VARCHAR2(500 CHAR),
	REF_GROUP_KEY1 VARCHAR2(500 CHAR),
	REF_GROUP_KEY2 VARCHAR2(500 CHAR),
	REF_GROUP_KEY3 VARCHAR2(500 CHAR),
	FIELD_NAME1 VARCHAR2(500 CHAR),
	FIELD_NAME2 VARCHAR2(500 CHAR),
	ACTIVE_FLG VARCHAR2(1 CHAR)
);

CREATE TABLE CCT001.JOB_CTRL_TXN
(
   JOB_CTRL_TXN_ID NUMBER(10,0) PRIMARY KEY NOT NULL,
   JOB_CTRL_ID NUMBER(10,0) NOT NULL,
   STATUS VARCHAR(1 CHAR) NOT NULL,
   START_DTM timestamp,
   END_DTM timestamp,
   START_ID NUMBER(10,0),
   END_ID NUMBER(10,0),
   MAINT_APP VARCHAR(8 CHAR),
   ACTIVITY_DT DATE NULL
);

CREATE SEQUENCE CCT001.JOB_CTRL_SEQ START WITH 100;
CREATE SEQUENCE CCT001.JOB_CTRL_TXN_SEQ AS INTEGER START WITH 1;
CREATE TABLE CCT001.JOB_CTRL
(
   JOB_CTRL_ID NUMBER(10,0) PRIMARY KEY NOT NULL,
   JOB_NAM varchar2(20 CHAR) NOT NULL,
   DB_CD varchar2(4 CHAR) NOT NULL,
   TBL_NAM varchar2(20 CHAR) NOT NULL,
   FREQ_CD VARCHAR2(1 CHAR),
   BEHAV_CD VARCHAR2(1CHAR),
   ID_COL_NAM varchar2(20 CHAR),
   UPDT_COL_NAM varchar2(20 CHAR),
   CRTD_COL_NAM varchar2(20 CHAR),
   MAINT_APP VARCHAR2(8 CHAR)
);