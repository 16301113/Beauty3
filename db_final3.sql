--------------------------------------------------------
--  文件已创建 - 星期二-十一月-14-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table HWUA_CART
--------------------------------------------------------

  CREATE TABLE HWUA_CART 
   (	"ID" NUMBER(10,0), 
	"PID" NUMBER(10,0), 
	"QUANTITY" NUMBER(10,0), 
	"USERID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HWUA_COMMENT
--------------------------------------------------------

  CREATE TABLE HWUA_COMMENT 
   (	"HC_ID" NUMBER(10,0), 
	"HC_REPLY" VARCHAR2(200 BYTE), 
	"HC_CONTENT" VARCHAR2(200 BYTE), 
	"HC_CREATE_TIME" DATE, 
	"HC_REPLY_TIME" DATE, 
	"HC_NICK_NAME" VARCHAR2(50 BYTE), 
	"HC_STATE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HWUA_NEWS
--------------------------------------------------------

  CREATE TABLE HWUA_NEWS 
   (	"HN_ID" NUMBER(10,0), 
	"HN_TITLE" VARCHAR2(80 BYTE), 
	"HN_CONTENT" VARCHAR2(1000 BYTE), 
	"HN_CREATE_TIME" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HWUA_ORDER
--------------------------------------------------------

  CREATE TABLE HWUA_ORDER 
   (	"HO_ID" NUMBER(10,0), 
	"HO_USER_ID" NUMBER(10,0), 
	"HO_USER_NAME" VARCHAR2(50 BYTE), 
	"HO_USER_ADDRESS" VARCHAR2(200 BYTE), 
	"HO_CREATE_TIME" DATE, 
	"HO_COST" NUMBER(10,2), 
	"HO_STATUS" NUMBER(6,0), 
	"HO_TYPE" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HWUA_ORDER_DETAIL
--------------------------------------------------------

  CREATE TABLE HWUA_ORDER_DETAIL 
   (	"HOD_ID" NUMBER(10,0), 
	"HO_ID" NUMBER(10,0), 
	"HP_ID" NUMBER(10,0), 
	"HOD_QUANTITY" NUMBER(10,0), 
	"HOD_COST" NUMBER(10,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HWUA_PRODUCT
--------------------------------------------------------

  CREATE TABLE HWUA_PRODUCT 
   (	"HP_ID" NUMBER(10,0), 
	"HP_NAME" VARCHAR2(50 BYTE), 
	"HP_DESCRIPTION" VARCHAR2(100 BYTE), 
	"HP_PRICE" NUMBER(10,2), 
	"HP_STOCK" NUMBER(10,0), 
	"HPC_ID" NUMBER(10,0), 
	"HPC_CHILD_ID" NUMBER(10,0), 
	"HP_FILE_NAME" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HWUA_PRODUCT_CATEGORY
--------------------------------------------------------

  CREATE TABLE HWUA_PRODUCT_CATEGORY 
   (	"HPC_ID" NUMBER(10,0), 
	"HPC_NAME" VARCHAR2(50 BYTE), 
	"HPC_PARENT_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HWUA_USER
--------------------------------------------------------

  CREATE TABLE HWUA_USER 
   (	"HU_USER_ID" NUMBER(10,0), 
	"HU_USER_NAME" VARCHAR2(20 BYTE), 
	"HU_PASSWORD" VARCHAR2(20 BYTE), 
	"HU_SEX" CHAR(2 BYTE), 
	"HU_BIRTHDAY" DATE, 
	"HU_IDENTITY_CODE" VARCHAR2(60 BYTE), 
	"HU_EMAIL" VARCHAR2(80 BYTE), 
	"HU_MOBILE" VARCHAR2(11 BYTE), 
	"HU_ADDRESS" VARCHAR2(200 BYTE), 
	"HU_STATUS" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Sequence INDENTLISTID
--------------------------------------------------------

   CREATE SEQUENCE  "INDENTLISTID"  MINVALUE 1 MAXVALUE 10000000 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_COMMENT
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_COMMENT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_DETAIL
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_DETAIL"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_HWUA_CART
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_HWUA_CART"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_NEWS
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_NEWS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ORDER
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_ORDER"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PRODUCT
--------------------------------------------------------

   CREATE SEQUENCE "SEQ_PRODUCT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PRODUCT_CATEGORY
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_PRODUCT_CATEGORY"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 100 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_USER
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_USER"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1100 CACHE 20 NOORDER  NOCYCLE ;
REM INSERTING into HWUA_CART
SET DEFINE OFF;
Insert into HWUA_CART (ID,PID,QUANTITY,USERID) values (42,3,1,1000);
Insert into HWUA_CART (ID,PID,QUANTITY,USERID) values (102,31,2,1040);
Insert into HWUA_CART (ID,PID,QUANTITY,USERID) values (44,3,1,1020);
Insert into HWUA_CART (ID,PID,QUANTITY,USERID) values (103,1,3,1040);
Insert into HWUA_CART (ID,PID,QUANTITY,USERID) values (104,3,3,1040);
REM INSERTING into HWUA_COMMENT
SET DEFINE OFF;
Insert into HWUA_COMMENT (HC_ID,HC_REPLY,HC_CONTENT,HC_CREATE_TIME,HC_REPLY_TIME,HC_NICK_NAME,HC_STATE) values (1,'Claude Elwood Shannon','Super bien configuré, comme!',to_date('08-3月 -18','DD-MON-RR'),to_date('08-3月 -18','DD-MON-RR'),'svaki dan',null);
Insert into HWUA_COMMENT (HC_ID,HC_REPLY,HC_CONTENT,HC_CREATE_TIME,HC_REPLY_TIME,HC_NICK_NAME,HC_STATE) values (2,'George Washington','Achat de groupe, main dans la main, achat de groupe',to_date('08-3月 -18','DD-MON-RR'),to_date('08-3月 -18','DD-MON-RR'),'Hold hands',null);
Insert into HWUA_COMMENT (HC_ID,HC_REPLY,HC_CONTENT,HC_CREATE_TIME,HC_REPLY_TIME,HC_NICK_NAME,HC_STATE) values (3,'Denny Dillon','Les points reviennent, la machine ne peut pas être Perdue et ne peut pas revenir!',to_date('08-3月 -18','DD-MON-RR'),to_date('08-3月 -18','DD-MON-RR'),'VIP',null);
Insert into HWUA_COMMENT (HC_ID,HC_REPLY,HC_CONTENT,HC_CREATE_TIME,HC_REPLY_TIME,HC_NICK_NAME,HC_STATE) values (4,'Terry Gilliam','Je suis membre, je suis heureux, la la la la',to_date('09-3月 -18','DD-MON-RR'),to_date('09-3月 -18','DD-MON-RR'),'I am God',null);
Insert into HWUA_COMMENT (HC_ID,HC_REPLY,HC_CONTENT,HC_CREATE_TIME,HC_REPLY_TIME,HC_NICK_NAME,HC_STATE) values (5,'Valery Afanassiev','Le jour de lan, le super paquet cadeau de no?l vous attend pour le prendre.',to_date('09-3月 -18','DD-MON-RR'),to_date('09-3月 -18','DD-MON-RR'),'Double sheets',null);
Insert into HWUA_COMMENT (HC_ID,HC_REPLY,HC_CONTENT,HC_CREATE_TIME,HC_REPLY_TIME,HC_NICK_NAME,HC_STATE) values (6,'De loxygène','New Years Day is not a night and summer, but also an all-night opening.',to_date('09-3月 -18','DD-MON-RR'),to_date('09-3月 -18','DD-MON-RR'),'New year',null);
Insert into HWUA_COMMENT (HC_ID,HC_REPLY,HC_CONTENT,HC_CREATE_TIME,HC_REPLY_TIME,HC_NICK_NAME,HC_STATE) values (7,'Nourriture délicieuse','Points exchange begins. Points exchange begins. Points exchange begins',to_date('09-3月 -18','DD-MON-RR'),to_date('09-3月 -18','DD-MON-RR'),'Exchange',null);
Insert into HWUA_COMMENT (HC_ID,HC_REPLY,HC_CONTENT,HC_CREATE_TIME,HC_REPLY_TIME,HC_NICK_NAME,HC_STATE) values (8,'Grace à la nature','Start distributing, start distributing, start distributing!',to_date('10-3月 -18','DD-MON-RR'),to_date('10-3月 -18','DD-MON-RR'),'Delivery','Delivering');
Insert into HWUA_COMMENT (HC_ID,HC_REPLY,HC_CONTENT,HC_CREATE_TIME,HC_REPLY_TIME,HC_NICK_NAME,HC_STATE) values (9,'Bonjour, à bient?t','Group buying adi 1 fold up group buying adi 1 fold up group buying adi 1 fold up!',to_date('10-3月 -18','DD-MON-RR'),to_date('10-3月 -18','DD-MON-RR'),'group purchase',null);
Insert into HWUA_COMMENT (HC_ID,HC_REPLY,HC_CONTENT,HC_CREATE_TIME,HC_REPLY_TIME,HC_NICK_NAME,HC_STATE) values (10,'Les devoirs sont aga?ants','Gladan, gladan, kao da jede?.',to_date('21-3月 -18','DD-MON-RR'),to_date('21-3月 -18','DD-MON-RR'),'Flying',null);
Insert into HWUA_COMMENT (HC_ID,HC_REPLY,HC_CONTENT,HC_CREATE_TIME,HC_REPLY_TIME,HC_NICK_NAME,HC_STATE) values (21,null,'Moi',to_date('04-12月-18','DD-MON-RR'),null,'Moi',null);
REM INSERTING into HWUA_NEWS
SET DEFINE OFF;
Insert into HWUA_NEWS (HN_ID,HN_TITLE,HN_CONTENT,HN_CREATE_TIME) values (1,'Membership preference month','Opportunity knocks but once',to_date('08-03 -18','DD-MON-RR'));
Insert into HWUA_NEWS (HN_ID,HN_TITLE,HN_CONTENT,HN_CREATE_TIME) values (2,'Be VIP and win the gift package','VIP month start',to_date('19-10 -18','DD-MON-RR'));
Insert into HWUA_NEWS (HN_ID,HN_TITLE,HN_CONTENT,HN_CREATE_TIME) values (3,'Makeup sharing party','Gather together and share',to_date('08-05 -18','DD-MON-RR'));
Insert into HWUA_NEWS (HN_ID,HN_TITLE,HN_CONTENT,HN_CREATE_TIME) values (4,'Delivery release','Start shipping!',to_date('08-11 -18','DD-MON-RR'));
Insert into HWUA_NEWS (HN_ID,HN_TITLE,HN_CONTENT,HN_CREATE_TIME) values (5,'New products launch','Famous brand products buy first！',to_date('18-11 -18','DD-MON-RR'));
Insert into HWUA_NEWS (HN_ID,HN_TITLE,HN_CONTENT,HN_CREATE_TIME) values (6,'Beauty makeup guide','Live celebrity teaching',to_date('01-09 -18','DD-MON-RR'));
Insert into HWUA_NEWS (HN_ID,HN_TITLE,HN_CONTENT,HN_CREATE_TIME) values (7,'Reduce price ','No money',to_date('11-11 -18','DD-MON-RR'));
REM INSERTING into HWUA_ORDER
SET DEFINE OFF;
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (1,1000,'234','123',to_date('19-3月 -18','DD-MON-RR'),100,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (2,1001,'Lily','Chongqing',to_date('20-3月 -18','DD-MON-RR'),22191,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (3,1000,'234','123',to_date('19-3月 -18','DD-MON-RR'),100,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (4,1000,'234','123',to_date('19-3月 -18','DD-MON-RR'),100,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (5,1000,'234','123',to_date('19-3月 -18','DD-MON-RR'),100,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (6,1000,'234','123',to_date('19-3月 -18','DD-MON-RR'),100,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (7,1000,'234','123',to_date('19-3月 -18','DD-MON-RR'),100,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (8,1000,'234','123',to_date('19-3月 -18','DD-MON-RR'),100,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (9,1000,'234','123',to_date('19-3月 -18','DD-MON-RR'),100,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (10,1000,'234','123',to_date('19-3月 -18','DD-MON-RR'),100,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (21,1040,'wenhonghao','11',to_date('11-11月-18','DD-MON-RR'),479,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (22,1040,'wenhonghao','11',to_date('11-11月-18','DD-MON-RR'),479,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (23,1040,'wenhonghao','11',to_date('11-11月-18','DD-MON-RR'),479,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (24,1040,'wenhonghao','11',to_date('11-11月-18','DD-MON-RR'),479,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (25,1040,'wenhonghao','11',to_date('11-11月-18','DD-MON-RR'),479,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (26,1004,'admin','Shanghai',to_date('11-11月-18','DD-MON-RR'),279,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (27,1040,'wenhonghao','11',to_date('11-11月-18','DD-MON-RR'),69,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (28,1040,'wenhonghao','11',to_date('11-11月-18','DD-MON-RR'),479,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (41,1040,'wenhonghao','11',to_date('12-11月-18','DD-MON-RR'),69,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (61,1040,'wenhonghao','11',to_date('13-11月-18','DD-MON-RR'),648,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (62,1040,'wenhonghao','11',to_date('13-11月-18','DD-MON-RR'),300,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (63,1040,'wenhonghao','11',to_date('13-11月-18','DD-MON-RR'),600,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (64,1040,'wenhonghao','11',to_date('13-11月-18','DD-MON-RR'),600,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (65,1040,'wenhonghao','11',to_date('13-11月-18','DD-MON-RR'),0,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (66,1040,'wenhonghao','11',to_date('13-11月-18','DD-MON-RR'),207,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (67,1040,'wenhonghao','11',to_date('13-11月-18','DD-MON-RR'),276,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (68,1040,'wenhonghao','11',to_date('13-11月-18','DD-MON-RR'),276,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (69,1040,'wenhonghao','11',to_date('13-11月-18','DD-MON-RR'),69,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (70,1040,'wenhonghao','11',to_date('13-11月-18','DD-MON-RR'),69,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (81,1040,'wenhonghao','11',to_date('14-11月-18','DD-MON-RR'),100,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (82,1040,'wenhonghao','11',to_date('14-11月-18','DD-MON-RR'),500,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (83,1040,'wenhonghao','11',to_date('14-11月-18','DD-MON-RR'),400,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (84,1040,'wenhonghao','11',to_date('14-11月-18','DD-MON-RR'),500,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (85,1040,'wenhonghao','11',to_date('14-11月-18','DD-MON-RR'),598,1,1);
Insert into HWUA_ORDER (HO_ID,HO_USER_ID,HO_USER_NAME,HO_USER_ADDRESS,HO_CREATE_TIME,HO_COST,HO_STATUS,HO_TYPE) values (86,1040,'wenhonghao','11',to_date('14-11月-18','DD-MON-RR'),13402,1,1);
REM INSERTING into HWUA_ORDER_DETAIL
SET DEFINE OFF;
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (1,1,1,10,1111);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (2,2,1,10,1111);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (3,3,1,10,1111);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (4,4,1,10,1111);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (5,5,1,10,1111);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (6,6,1,10,1111);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (7,21,4,2,200);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (8,21,2,1,279);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (9,22,4,2,200);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (10,22,2,1,279);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (11,23,4,2,200);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (12,23,2,1,279);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (13,24,4,2,200);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (14,24,2,1,279);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (15,25,4,2,200);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (16,25,2,1,279);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (17,26,2,1,279);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (18,27,1,1,69);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (19,28,4,2,200);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (20,28,2,1,279);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (21,41,1,1,69);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (41,61,4,3,300);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (42,61,2,1,279);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (43,61,1,1,69);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (44,62,4,3,300);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (45,63,4,6,600);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (46,64,4,6,600);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (47,66,1,3,207);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (48,67,1,4,276);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (49,68,1,4,276);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (50,69,1,1,69);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (51,70,1,1,69);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (61,81,4,1,100);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (62,82,4,5,500);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (63,83,4,4,400);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (64,84,4,5,500);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (65,85,31,2,598);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (66,86,31,2,598);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (67,86,1,3,207);
Insert into HWUA_ORDER_DETAIL (HOD_ID,HO_ID,HP_ID,HOD_QUANTITY,HOD_COST) values (68,86,3,3,12597);
REM INSERTING into HWUA_PRODUCT
SET DEFINE OFF;
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (1,'Bo?te de conserve en forme de bouton universel no?l 7 pièces','Christmas 7-daim teev',69,1981,2,7,'images/product/2.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (2,'Aupres Balanced tshuaj lotion los plaub-daim teev','Balanced moisturizing four-piece set',279,42,2,8,'images/product/3.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (3,'Lenovo notebook computer high-speed independent display memory','High - speed independent display memory i7 processor',4199,47,2,16,'images/product/4.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (4,'Delphine chocolate','108.00',100,66,1,4,'images/product/1.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (5,'Genius 925 sterling silver Swarovski crystal pendant','Swarovski crystal pendant',69,50,2,12,'images/product/6.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (6,'Li ren 2018 m fumantang electric cake pan is easy to use and affordable','Fu mantang electric cake pan is easy to use and affordable',268,50,2,15,'images/product/7.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (7,'Da Pai High - grade luggage case 20 " Classic Style','Top grade luggage case 20 inch classic style',198,50,2,14,'images/product/8.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (8,'Patriot MP4 Full Screen Touch Multi - Format Play 4G','Full screen touch multi-format playback 4g',289,50,2,11,'images/product/0.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (9,'Dumex gold shield 3 - stage infant formula milk powder','Golden shield 3 - stage infant formula',186,50,1,10,'images/product/10.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (10,'Delphine chocolate','Chocolate 500 g / box',108,100,1,10,'images/product/1.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (11,'Bo?te de conserve en forme de bouton universel no?l 7 pièces','Christmas 7-daim teev',69,2000,2,7,'images/product/2.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (12,'Aupres Balanced tshuaj lotion los plaub-daim teev','Balanced moisturizing four-piece set',279,50,2,8,'images/product/3.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (13,'Lenovo notebook computer high-speed independent display memory','High - speed independent display memory i7 processor',4199,50,2,16,'images/product/4.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (14,'Tsho tiv no','Liab Tsho tiv no',199,100,2,19,'images/product/clothes2.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (15,'Genius 925 sterling silver Swarovski crystal pendant','Swarovski crystal pendant',69,50,2,12,'images/product/6.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (16,'Li ren 2018 m fumantang electric cake pan is easy to use and affordable','Fu mantang electric cake pan is easy to use and affordable',268,50,2,15,'images/product/7.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (17,'Da Pai High - grade luggage case 20 " Classic Style','Top grade luggage case 20 inch classic style',198,50,2,14,'images/product/8.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (18,'Patriot MP4 Full Screen Touch Multi - Format Play 4G','Full screen touch multi-format playback 4g',289,50,2,11,'images/product/0.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (19,'Dumex gold shield 3 - stage infant formula milk powder','Golden shield 3 - stage infant formula',186,50,1,10,'images/product/10.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (20,'Tsho tiv no','Tsho',99,100,2,19,'images/product/clothes3.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (21,'Tsho tiv no','Liab dawb Tsho tiv no',96,100,2,19,'images/product/clothes5.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (22,'Tsho tiv no','Grey Tsho tiv no',299,100,2,19,'images/product/clothes6.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (23,'Tsho tiv no','Liab Tsho tiv no',199,100,2,19,'images/product/clothes7.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (24,'Tsho tiv no','Nyiaj dawb Tsho tiv no',599,100,2,19,'images/product/clothes8.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (25,'Tsho tiv no','Xiav Tsho tiv no',399,100,2,19,'images/product/clothes9.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (26,'Tsho tiv no','Ntiav Xiav Tsho tiv no',499,100,2,19,'images/product/clothes10.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (27,'Tsho tiv no','Dawb Tsho tiv no',68,100,2,19,'images/product/clothes4.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (28,'Nkawm khau','Dub nciab Nkawm khau',299,100,21,14,'images/product/shoes1.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (29,'Nkawm khau','Grey Nkawm khau',299,100,21,14,'images/product/shoes2.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (30,'Nkawm khau','Xiav Nkawm khau',299,100,21,14,'images/product/shoes3.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (31,'Nkawm khau','Grey Nkawm khau',299,96,21,14,'images/product/shoes4.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (32,'Nkawm khau','Xim av Nkawm khau',299,100,21,14,'images/product/shoes5.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (33,'Nkawm khau','Dub nciab Nkawm khau',299,100,21,14,'images/product/shoes6.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (34,'Nkawm khau','Dub nciab Nkawm khau',299,100,21,14,'images/product/shoes7.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (35,'Nkawm khau','Dub nciab Nkawm khau',299,100,21,14,'images/product/shoes8.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (36,'Nkawm khau','Dub nciab Nkawm khau',299,100,21,14,'images/product/shoes9.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (37,'Nkawm khau','Dub nciab Nkawm khau',299,100,21,14,'images/product/shoes10.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (38,'Tsom iav','Looj tsom iav dub',299,100,2,12,'images/product/sunglass1.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (39,'Tsom iav','Looj tsom iav dub',299,100,2,12,'images/product/sunglass2.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (40,'Tsom iav','Looj tsom iav dub',299,100,2,12,'images/product/sunglass3.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (41,'Tsom iav','Looj tsom iav dub',299,100,2,12,'images/product/sunglass4.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (42,'Tsom iav','Looj tsom iav dub',299,100,2,12,'images/product/sunglass5.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (43,'Tsom iav','Looj tsom iav dub',299,100,2,12,'images/product/sunglass6.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (44,'Tsom iav','Looj tsom iav dub',299,100,2,12,'images/product/sunglass7.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (45,'Tsom iav','Looj tsom iav dub',299,100,2,12,'images/product/sunglass8.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (46,'Tsom iav','Looj tsom iav dub',299,100,2,12,'images/product/sunglass9.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (47,'Tsom iav','Looj tsom iav dub',299,100,2,12,'images/product/sunglass10.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (48,'La télé','Tv couleur',1299,100,2,15,'images/product/television1.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (49,'La télé','Tv couleur',1299,100,2,15,'images/product/television2.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (50,'La télé','Tv couleur',2299,100,2,15,'images/products/television3.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (51,'La télé','Tv couleur',2299,100,2,15,'images/product/television4.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (52,'La télé','Tv couleur',3299,100,2,15,'images/product/television5.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (53,'La télé','Tv couleur',2299,100,2,15,'images/product/television6.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (54,'La télé','Tv couleur',4299,100,2,15,'images/product/television7.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (55,'La télé','Tv couleur',5299,100,2,15,'images/product/television8.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (56,'La télé','Tv couleur',2299,100,2,15,'images/product/television9.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (57,'La télé','Tv couleur',6299,100,2,15,'images/product/television10.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (58,'Cartier.','Témoin de ton amour',22122,100,2,13,'images/product/20.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (59,'Cartier.','Témoin de ton amour',22122,100,22,22,'images/product/20.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (60,'Boule bicolore','Allez.',2,1000,2,20,'images/product/21.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (61,'Transformer-Diamant','Bumblebee.',222,1000,21,17,'images/product/23.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (62,'GPS','Navigatoren',2222,1000,21,18,'images/product/24.jpg');
Insert into HWUA_PRODUCT (HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_ID,HPC_CHILD_ID,HP_FILE_NAME) values (63,'123',null,100,111,2,9,'images\product\133214492473826.jpg');
REM INSERTING into HWUA_PRODUCT_CATEGORY
SET DEFINE OFF;
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (1,'Skin Care Product',1);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (6,'Facial Cleanser',1);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (3,'Toner',1);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (4,'Firming Lotion',1);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (5,'Moisturizer',1);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (7,'Sun Block',1);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (8,'Facial Mask',1);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (9,'Body Wash',1);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (2,'Cosmetics',2);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (10,'Brow Pencil',2);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (11,'Eye Liner',2);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (12,'Eye Shadow',2);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (13,'Mascara',2);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (14,'Blush',21);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (15,'Lipstick',2);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (16,'Loose Powder',2);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (0,'Other Products',0);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (17,'Nail Polish',0);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (18,'Make up Tools',0);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (19,'Shampoo',0);
Insert into HWUA_PRODUCT_CATEGORY (HPC_ID,HPC_NAME,HPC_PARENT_ID) values (20,'Perfume',0);
REM INSERTING into HWUA_USER
SET DEFINE OFF;
Insert into HWUA_USER (HU_USER_ID,HU_USER_NAME,HU_PASSWORD,HU_SEX,HU_BIRTHDAY,HU_IDENTITY_CODE,HU_EMAIL,HU_MOBILE,HU_ADDRESS,HU_STATUS) values (1000,'Ethan','1234','0 ',to_date('02-7月 -18','DD-MON-RR'),'500235198907026299','sa@sina.com','13011092066','London',1);
Insert into HWUA_USER (HU_USER_ID,HU_USER_NAME,HU_PASSWORD,HU_SEX,HU_BIRTHDAY,HU_IDENTITY_CODE,HU_EMAIL,HU_MOBILE,HU_ADDRESS,HU_STATUS) values (1001,'Lucas','1234','1 ',to_date('02-7月 -18','DD-MON-RR'),'500235198907026299','sa@sina.com','13011092066','Bismarck',1);
Insert into HWUA_USER (HU_USER_ID,HU_USER_NAME,HU_PASSWORD,HU_SEX,HU_BIRTHDAY,HU_IDENTITY_CODE,HU_EMAIL,HU_MOBILE,HU_ADDRESS,HU_STATUS) values (1002,'Matthew','1234','1 ',to_date('02-9月 -18','DD-MON-RR'),'123123123123123','web@sohu.com','12312312312','Boston',1);
Insert into HWUA_USER (HU_USER_ID,HU_USER_NAME,HU_PASSWORD,HU_SEX,HU_BIRTHDAY,HU_IDENTITY_CODE,HU_EMAIL,HU_MOBILE,HU_ADDRESS,HU_STATUS) values (1003,'Liam','1234','0 ',to_date('02-7月 -18','DD-MON-RR'),'500235198907026299','sa@sina.com','13011092066','Alaska',1);
Insert into HWUA_USER (HU_USER_ID,HU_USER_NAME,HU_PASSWORD,HU_SEX,HU_BIRTHDAY,HU_IDENTITY_CODE,HU_EMAIL,HU_MOBILE,HU_ADDRESS,HU_STATUS) values (1004,'admin','1234','0 ',to_date('02-7月 -18','DD-MON-RR'),'12345678912345612X','sa@sina.com','13011092066','Baton Rouge',1);
Insert into HWUA_USER (HU_USER_ID,HU_USER_NAME,HU_PASSWORD,HU_SEX,HU_BIRTHDAY,HU_IDENTITY_CODE,HU_EMAIL,HU_MOBILE,HU_ADDRESS,HU_STATUS) values (1020,'wwww','090501','0 ',to_date('01-9月 -18','DD-MON-RR'),'450325199509010315','284334906@qq.com','15577117739','我',0);
Insert into HWUA_USER (HU_USER_ID,HU_USER_NAME,HU_PASSWORD,HU_SEX,HU_BIRTHDAY,HU_IDENTITY_CODE,HU_EMAIL,HU_MOBILE,HU_ADDRESS,HU_STATUS) values (1021,'wwww','090501','0 ',to_date('01-9月 -18','DD-MON-RR'),'450325199509010315','284324906@qq.com','15577117739','11111',0);
Insert into HWUA_USER (HU_USER_ID,HU_USER_NAME,HU_PASSWORD,HU_SEX,HU_BIRTHDAY,HU_IDENTITY_CODE,HU_EMAIL,HU_MOBILE,HU_ADDRESS,HU_STATUS) values (1040,'wenhonghao','090501','0 ',to_date('01-9月 -18','DD-MON-RR'),'450325199509010315','2239777689@qq.com','15577117739','11',0);
Insert into HWUA_USER (HU_USER_ID,HU_USER_NAME,HU_PASSWORD,HU_SEX,HU_BIRTHDAY,HU_IDENTITY_CODE,HU_EMAIL,HU_MOBILE,HU_ADDRESS,HU_STATUS) values (1060,'wen123','090501','0 ',to_date('01-9月 -18','DD-MON-RR'),'450325199509010315','2843249063@qq.com','15577117739','11111',0);
Insert into HWUA_USER (HU_USER_ID,HU_USER_NAME,HU_PASSWORD,HU_SEX,HU_BIRTHDAY,HU_IDENTITY_CODE,HU_EMAIL,HU_MOBILE,HU_ADDRESS,HU_STATUS) values (1080,'admin','090501','0 ',to_date('01-9月 -18','DD-MON-RR'),'450325199509010315','28433490622@qq.com','15577117739','11',0);
--------------------------------------------------------
--  Constraints for Table HWUA_PRODUCT
--------------------------------------------------------

  ALTER TABLE HWUA_PRODUCT ADD PRIMARY KEY ("HP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE HWUA_PRODUCT MODIFY ("HP_FILE_NAME" NOT NULL ENABLE);
  ALTER TABLE HWUA_PRODUCT MODIFY ("HP_STOCK" NOT NULL ENABLE);
  ALTER TABLE HWUA_PRODUCT MODIFY ("HP_PRICE" NOT NULL ENABLE);
  ALTER TABLE HWUA_PRODUCT MODIFY ("HP_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HWUA_ORDER
--------------------------------------------------------

  ALTER TABLE HWUA_ORDER ADD PRIMARY KEY ("HO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE HWUA_ORDER MODIFY ("HO_TYPE" NOT NULL ENABLE);
  ALTER TABLE HWUA_ORDER MODIFY ("HO_STATUS" NOT NULL ENABLE);
  ALTER TABLE HWUA_ORDER MODIFY ("HO_COST" NOT NULL ENABLE);
  ALTER TABLE HWUA_ORDER MODIFY ("HO_CREATE_TIME" NOT NULL ENABLE);
  ALTER TABLE HWUA_ORDER MODIFY ("HO_USER_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE HWUA_ORDER MODIFY ("HO_USER_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HWUA_USER
--------------------------------------------------------

  ALTER TABLE HWUA_USER ADD PRIMARY KEY ("HU_USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE HWUA_USER MODIFY ("HU_STATUS" NOT NULL ENABLE);
  ALTER TABLE HWUA_USER MODIFY ("HU_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE HWUA_USER MODIFY ("HU_SEX" NOT NULL ENABLE);
  ALTER TABLE HWUA_USER MODIFY ("HU_PASSWORD" NOT NULL ENABLE);
  ALTER TABLE HWUA_USER MODIFY ("HU_USER_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HWUA_NEWS
--------------------------------------------------------

  ALTER TABLE HWUA_NEWS ADD PRIMARY KEY ("HN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE HWUA_NEWS MODIFY ("HN_CREATE_TIME" NOT NULL ENABLE);
  ALTER TABLE HWUA_NEWS MODIFY ("HN_CONTENT" NOT NULL ENABLE);
  ALTER TABLE HWUA_NEWS MODIFY ("HN_TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HWUA_ORDER_DETAIL
--------------------------------------------------------

  ALTER TABLE HWUA_ORDER_DETAIL ADD PRIMARY KEY ("HOD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE HWUA_ORDER_DETAIL MODIFY ("HOD_COST" NOT NULL ENABLE);
  ALTER TABLE HWUA_ORDER_DETAIL MODIFY ("HOD_QUANTITY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HWUA_PRODUCT_CATEGORY
--------------------------------------------------------

  ALTER TABLE HWUA_PRODUCT_CATEGORY ADD PRIMARY KEY ("HPC_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE HWUA_PRODUCT_CATEGORY MODIFY ("HPC_PARENT_ID" NOT NULL ENABLE);
  ALTER TABLE HWUA_PRODUCT_CATEGORY MODIFY ("HPC_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HWUA_CART
--------------------------------------------------------

  ALTER TABLE HWUA_CART ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HWUA_COMMENT
--------------------------------------------------------

  ALTER TABLE HWUA_COMMENT ADD PRIMARY KEY ("HC_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE HWUA_COMMENT MODIFY ("HC_NICK_NAME" NOT NULL ENABLE);
  ALTER TABLE HWUA_COMMENT MODIFY ("HC_CREATE_TIME" NOT NULL ENABLE);
  ALTER TABLE HWUA_COMMENT MODIFY ("HC_CONTENT" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table HWUA_ORDER
--------------------------------------------------------

  ALTER TABLE HWUA_ORDER ADD CONSTRAINT "HO_USER_ID_FK" FOREIGN KEY ("HO_USER_ID")
	  REFERENCES HWUA_USER ("HU_USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HWUA_ORDER_DETAIL
--------------------------------------------------------

  ALTER TABLE HWUA_ORDER_DETAIL ADD CONSTRAINT "HOD_HP_ID_FK" FOREIGN KEY ("HP_ID")
	  REFERENCES HWUA_PRODUCT ("HP_ID") ENABLE;
  ALTER TABLE HWUA_ORDER_DETAIL ADD CONSTRAINT "HOD_ID_FK" FOREIGN KEY ("HO_ID")
	  REFERENCES HWUA_ORDER ("HO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HWUA_PRODUCT
--------------------------------------------------------

  ALTER TABLE HWUA_PRODUCT ADD CONSTRAINT "HPC_CHILD_ID" FOREIGN KEY ("HPC_CHILD_ID")
	  REFERENCES HWUA_PRODUCT_CATEGORY ("HPC_ID") ENABLE;
  ALTER TABLE HWUA_PRODUCT ADD CONSTRAINT "HPC_ID_FK" FOREIGN KEY ("HPC_ID")
	  REFERENCES HWUA_PRODUCT_CATEGORY ("HPC_ID") ENABLE;
    
  
    
   
