CREATE TABLE T_OOZIE_JOB (
  JOB_NAME           VARCHAR(255)  NOT NULL,
  APP_NAME           VARCHAR(255)  NOT NULL,
  SCHEDULE_INFO      VARCHAR(255)          COMMENT 'crontab notation',
  JOB_PARAMS         TEXT                  COMMENT 'json', 
  USER_NAME			 VARCHAR(255),
  MAIL_TO			 VARCHAR(255),
  MAIL_ONLY_FAIL     VARCHAR(  1)          COMMENT 'Y/N',    
  DESCRIPTION        VARCHAR(255)          ,
  LAST_JOB_ID        VARCHAR(255)          ,
  LAST_STATUS        VARCHAR( 10)          COMMENT 'last execution status',
  LAST_EXEC_TIME     DATETIME              ,
  PRIMARY KEY (JOB_NAME)
) DEFAULT CHARSET='utf8' ; 

CREATE TABLE T_OOZIE_JOB_HISTORY (
  JOB_NAME          VARCHAR(255)  NOT NULL,
  JOB_ID        	VARCHAR(50)   NOT NULL,
  EXEC_TIME     	DATETIME   ,
  PRIMARY KEY (JOB_NAME, JOB_ID)
) DEFAULT CHARSET='utf8' ; 
