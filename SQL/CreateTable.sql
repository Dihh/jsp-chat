--------------------------------------------------------
--  Arquivo criado - Segunda-feira-Outubro-28-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CHAT_USER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CHAT_USER" 
   (	"USER_ID" NUMBER, 
	"USER_EMAIL" VARCHAR2(500 BYTE), 
	"USER_PASSWORD" VARCHAR2(500 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.CHAT_USER
SET DEFINE OFF;
Insert into SYSTEM.CHAT_USER (USER_ID,USER_EMAIL,USER_PASSWORD) values ('1','DIEGTON@GMAIL.COM','ae5515e371a599b8d82b244212209283');
--------------------------------------------------------
--  DDL for Index CHAT_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."CHAT_USER_PK" ON "SYSTEM"."CHAT_USER" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger CHAT_USER_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."CHAT_USER_TRG" 
BEFORE INSERT ON CHAT_USER 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.USER_ID IS NULL THEN
      SELECT CHAT_USER_SEQ.NEXTVAL INTO :NEW.USER_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SYSTEM"."CHAT_USER_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table CHAT_USER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CHAT_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CHAT_USER" ADD CONSTRAINT "CHAT_USER_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
