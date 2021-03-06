--------------------------------------------------------
--  File created - Tuesday-June-23-2020   
--------------------------------------------------------
DROP SEQUENCE "FITRIARISQINA_07032"."ID_DETAIL_TRANSAKSI";
DROP SEQUENCE "FITRIARISQINA_07032"."ID_PEGAWAI";
DROP SEQUENCE "FITRIARISQINA_07032"."ID_PRODUK";
DROP SEQUENCE "FITRIARISQINA_07032"."ID_TRANSAKSI";
DROP TABLE "FITRIARISQINA_07032"."LOGIN_07032" cascade constraints;
DROP TABLE "FITRIARISQINA_07032"."PEGAWAI_07032" cascade constraints;
DROP TABLE "FITRIARISQINA_07032"."PRODUK_07032" cascade constraints;
DROP TABLE "FITRIARISQINA_07032"."TRANSAKSI_07032" cascade constraints;
DROP TABLE "FITRIARISQINA_07032"."TRANSAKSI_DETAIL_07032" cascade constraints;
--------------------------------------------------------
--  DDL for Sequence ID_DETAIL_TRANSAKSI
--------------------------------------------------------

   CREATE SEQUENCE  "FITRIARISQINA_07032"."ID_DETAIL_TRANSAKSI"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ID_PEGAWAI
--------------------------------------------------------

   CREATE SEQUENCE  "FITRIARISQINA_07032"."ID_PEGAWAI"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ID_PRODUK
--------------------------------------------------------

   CREATE SEQUENCE  "FITRIARISQINA_07032"."ID_PRODUK"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ID_TRANSAKSI
--------------------------------------------------------

   CREATE SEQUENCE  "FITRIARISQINA_07032"."ID_TRANSAKSI"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table LOGIN_07032
--------------------------------------------------------

  CREATE TABLE "FITRIARISQINA_07032"."LOGIN_07032" 
   (	"ID_USER" NUMBER(*,0), 
	"USERNAME" VARCHAR2(150 BYTE), 
	"PASSWORD" VARCHAR2(150 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PEGAWAI_07032
--------------------------------------------------------

  CREATE TABLE "FITRIARISQINA_07032"."PEGAWAI_07032" 
   (	"ID_PEGAWAI" NUMBER(*,0), 
	"ID_USER" NUMBER(*,0), 
	"NAMA_PEGAWAI" VARCHAR2(150 BYTE), 
	"ALAMAT" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUK_07032
--------------------------------------------------------

  CREATE TABLE "FITRIARISQINA_07032"."PRODUK_07032" 
   (	"ID_PRODUK" NUMBER(*,0), 
	"NAMA_PRODUK" VARCHAR2(150 BYTE), 
	"HARGA" NUMBER(11,2), 
	"STOK" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TRANSAKSI_07032
--------------------------------------------------------

  CREATE TABLE "FITRIARISQINA_07032"."TRANSAKSI_07032" 
   (	"ID_TRANSAKSI" NUMBER(*,0), 
	"ID_USER" NUMBER(*,0), 
	"JUMLAH_PRODUK" NUMBER(*,0), 
	"TGL_MASUK" TIMESTAMP (6), 
	"TGL_KELUAR" TIMESTAMP (6), 
	"JML_PRODUK_KEMBALI" NUMBER(*,0), 
	"TOTAL" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TRANSAKSI_DETAIL_07032
--------------------------------------------------------

  CREATE TABLE "FITRIARISQINA_07032"."TRANSAKSI_DETAIL_07032" 
   (	"ID_TRANSAKSI_DETAIL" NUMBER(*,0), 
	"ID_TRANSAKSI" NUMBER(*,0), 
	"ID_PRODUK" NUMBER(*,0), 
	"QTY_PRODUK" NUMBER(*,0), 
	"HARGA_PRODUK" NUMBER(11,2), 
	"TOTAL_HARGA" NUMBER(11,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into FITRIARISQINA_07032.LOGIN_07032
SET DEFINE OFF;
Insert into FITRIARISQINA_07032.LOGIN_07032 (ID_USER,USERNAME,PASSWORD) values (1,'admin','admin');
REM INSERTING into FITRIARISQINA_07032.PEGAWAI_07032
SET DEFINE OFF;
Insert into FITRIARISQINA_07032.PEGAWAI_07032 (ID_PEGAWAI,ID_USER,NAMA_PEGAWAI,ALAMAT) values (1,1,'Subekti','Surabaya');
Insert into FITRIARISQINA_07032.PEGAWAI_07032 (ID_PEGAWAI,ID_USER,NAMA_PEGAWAI,ALAMAT) values (4,1,'Doni Susanto','Surabaya');
Insert into FITRIARISQINA_07032.PEGAWAI_07032 (ID_PEGAWAI,ID_USER,NAMA_PEGAWAI,ALAMAT) values (5,1,'Adi','Surabya');
REM INSERTING into FITRIARISQINA_07032.PRODUK_07032
SET DEFINE OFF;
Insert into FITRIARISQINA_07032.PRODUK_07032 (ID_PRODUK,NAMA_PRODUK,HARGA,STOK) values (1,'Kerupuk',12000,12);
Insert into FITRIARISQINA_07032.PRODUK_07032 (ID_PRODUK,NAMA_PRODUK,HARGA,STOK) values (2,'Kerupuk Sapi',120000,2);
REM INSERTING into FITRIARISQINA_07032.TRANSAKSI_07032
SET DEFINE OFF;
REM INSERTING into FITRIARISQINA_07032.TRANSAKSI_DETAIL_07032
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_PEGAWAI
--------------------------------------------------------

  CREATE UNIQUE INDEX "FITRIARISQINA_07032"."PK_PEGAWAI" ON "FITRIARISQINA_07032"."PEGAWAI_07032" ("ID_PEGAWAI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_TRANSAKSI
--------------------------------------------------------

  CREATE UNIQUE INDEX "FITRIARISQINA_07032"."PK_TRANSAKSI" ON "FITRIARISQINA_07032"."TRANSAKSI_07032" ("ID_TRANSAKSI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_PRODUK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FITRIARISQINA_07032"."PK_PRODUK" ON "FITRIARISQINA_07032"."PRODUK_07032" ("ID_PRODUK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_LOGIN
--------------------------------------------------------

  CREATE UNIQUE INDEX "FITRIARISQINA_07032"."PK_LOGIN" ON "FITRIARISQINA_07032"."LOGIN_07032" ("ID_USER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_TRANSAKSI_DETAIL
--------------------------------------------------------

  CREATE UNIQUE INDEX "FITRIARISQINA_07032"."PK_TRANSAKSI_DETAIL" ON "FITRIARISQINA_07032"."TRANSAKSI_DETAIL_07032" ("ID_TRANSAKSI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table LOGIN_07032
--------------------------------------------------------

  ALTER TABLE "FITRIARISQINA_07032"."LOGIN_07032" ADD CONSTRAINT "PK_LOGIN" PRIMARY KEY ("ID_USER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FITRIARISQINA_07032"."LOGIN_07032" MODIFY ("ID_USER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TRANSAKSI_DETAIL_07032
--------------------------------------------------------

  ALTER TABLE "FITRIARISQINA_07032"."TRANSAKSI_DETAIL_07032" ADD CONSTRAINT "PK_TRANSAKSI_DETAIL" PRIMARY KEY ("ID_TRANSAKSI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FITRIARISQINA_07032"."TRANSAKSI_DETAIL_07032" MODIFY ("ID_TRANSAKSI_DETAIL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TRANSAKSI_07032
--------------------------------------------------------

  ALTER TABLE "FITRIARISQINA_07032"."TRANSAKSI_07032" ADD CONSTRAINT "PK_TRANSAKSI" PRIMARY KEY ("ID_TRANSAKSI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FITRIARISQINA_07032"."TRANSAKSI_07032" MODIFY ("ID_TRANSAKSI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUK_07032
--------------------------------------------------------

  ALTER TABLE "FITRIARISQINA_07032"."PRODUK_07032" ADD CONSTRAINT "PK_PRODUK" PRIMARY KEY ("ID_PRODUK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FITRIARISQINA_07032"."PRODUK_07032" MODIFY ("ID_PRODUK" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PEGAWAI_07032
--------------------------------------------------------

  ALTER TABLE "FITRIARISQINA_07032"."PEGAWAI_07032" ADD CONSTRAINT "PK_PEGAWAI" PRIMARY KEY ("ID_PEGAWAI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FITRIARISQINA_07032"."PEGAWAI_07032" MODIFY ("ID_USER" NOT NULL ENABLE);
  ALTER TABLE "FITRIARISQINA_07032"."PEGAWAI_07032" MODIFY ("ID_PEGAWAI" NOT NULL ENABLE);
