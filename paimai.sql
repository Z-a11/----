/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020-03-13 00:00:13                          */
/*==============================================================*/


drop table if exists jl;

drop table if exists pmp;

drop table if exists user;

/*==============================================================*/
/* Table: jl                                                    */
/*==============================================================*/
create table jl
(
   jlid                 int not null auto_increment,
   pmpid                int,
   uid                  int,
   pid                  int,
   jpsj                 date,
   jpjg                 int,
   primary key (jlid)
);

/*==============================================================*/
/* Table: pmp                                                   */
/*==============================================================*/
create table pmp
(
   pmpid                int not null auto_increment,
   jlid                 int,
   用户id                 int,
   pmpname              varchar(50),
   pmpqpj               varchar(50),
   pmpdj                varchar(50),
   pmpkssj              date,
   pmpjssj              date,
   pmptplj              varchar(50),
   pmptpkzm             text,
   pmpms                varchar(50),
   primary key (pmpid)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   用户id                 int not null auto_increment,
   pmpid                int,
   username             varchar(50),
   usermm               varchar(50),
   usersfz              varchar(50),
   userdh               varchar(50),
   userdz               varchar(50),
   useryzbh             varchar(50),
   usersf               int,
   userwt               varchar(50),
   userda               varchar(50),
   primary key (用户id)
);

alter table jl add constraint FK_Relationship_4 foreign key (pmpid)
      references pmp (pmpid) on delete restrict on update restrict;

alter table pmp add constraint FK_Relationship_2 foreign key (用户id)
      references user (用户id) on delete restrict on update restrict;

alter table pmp add constraint FK_Relationship_3 foreign key (jlid)
      references jl (jlid) on delete restrict on update restrict;

alter table user add constraint FK_Relationship_1 foreign key (pmpid)
      references pmp (pmpid) on delete restrict on update restrict;

