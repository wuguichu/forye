-- 数据库操作都放在这里

create database if not exists `project_forye`;
use `project_forye`;
-- ------------------------------------------------------------------------------------------------
-- 后台的数据库操作
-- ------------------------------------------------------------------------------------------------
drop table if exists `t_admin`;
create table if not exists `t_admin`
(
    `id`          int          not null auto_increment comment '主键',
    `login_acct`  varchar(255) not null comment '登陆账号',
    `login_pwd`   char(32)     not null comment '登陆密码',
    `user_name`   varchar(255) not null comment '昵称',
    `email`       varchar(255) not null comment '邮箱',
    `create_time` char(19) comment '创建时间',
    primary key (`id`)
) engine InnoDB
  charset UTF8MB4 comment '管理员';