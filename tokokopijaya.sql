/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     18/06/2023 13:41:53                          */
/*==============================================================*/


drop table if exists KATEGORI_MENU;

drop table if exists MEMILIKI;

drop table if exists MENU;

drop table if exists OUTLET;

/*==============================================================*/
/* Table: KATEGORI_MENU                                         */
/*==============================================================*/
create table KATEGORI_MENU
(
   NAMA_KATEGORI        varchar(20) not null,
   FORB                 varchar(20),
   primary key (NAMA_KATEGORI)
);

/*==============================================================*/
/* Table: MEMILIKI                                              */
/*==============================================================*/
create table MEMILIKI
(
   ID_MEMILIKI          varchar(20) not null,
   NAMA_OUTLET          varchar(20) not null,
   NAMA_MENU            varchar(50) not null,
   primary key (ID_MEMILIKI)
);

/*==============================================================*/
/* Table: MENU                                                  */
/*==============================================================*/
create table MENU
(
   NAMA_MENU            varchar(50) not null,
   NAMA_KATEGORI        varchar(20) not null,
   DESKRIPSI            text,
   primary key (NAMA_MENU)
);

/*==============================================================*/
/* Table: OUTLET                                                */
/*==============================================================*/
create table OUTLET
(
   NAMA_OUTLET          varchar(20) not null,
   LINK_GMAPS           varchar(100),
   primary key (NAMA_OUTLET)
);

alter table MEMILIKI add constraint FK_MEMILIKI foreign key (NAMA_OUTLET)
      references OUTLET (NAMA_OUTLET) on delete restrict on update restrict;

alter table MEMILIKI add constraint FK_MEMILIKI2 foreign key (NAMA_MENU)
      references MENU (NAMA_MENU) on delete restrict on update restrict;

alter table MENU add constraint FK_DIPUNYAI foreign key (NAMA_KATEGORI)
      references KATEGORI_MENU (NAMA_KATEGORI) on delete restrict on update restrict;

