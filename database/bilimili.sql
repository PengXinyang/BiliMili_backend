create database BiliMili;
use BiliMili;
DROP TABLE IF EXISTS `user`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
CREATE TABLE `user` (
                        `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户uID',
                        `account` varchar(50) NOT NULL COMMENT '账号',
                        `password` varchar(255) NOT NULL COMMENT '密码',
                        `name` varchar(32) NOT NULL COMMENT '用户昵称',
                        `description` varchar(100) DEFAULT NULL COMMENT '个性签名',
                        `head` varchar(500) DEFAULT NULL COMMENT '头像链接',
                        `background` varchar(500) DEFAULT NULL COMMENT '背景图链接',
                        `gender` tinyint(4) NOT NULL DEFAULT '2' COMMENT '性别 0女 1男 2未知',
                        `experience` int(11) NOT NULL DEFAULT '0' COMMENT '经验值',
                        `threshold` int(11) NOT NULL DEFAULT '0' COMMENT '经验阈值',
                        `level` tinyint(4) NOT NULL DEFAULT '0' COMMENT '等级',
                        `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0正常 1注销',
                        `role` tinyint(4) NOT NULL DEFAULT '0' COMMENT '角色类型 0普通用户 1管理员',
                        `create_date` datetime NOT NULL COMMENT '创建时间',
                        `delete_date` datetime DEFAULT NULL COMMENT '注销时间',
                        `login_state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '登录状态 0未登录 1已登录',
                        PRIMARY KEY (`uid`),
                        UNIQUE KEY `uid` (`uid`),
                        UNIQUE KEY `username` (`account`),
                        UNIQUE KEY `nickname` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='用户表';
SET character_set_client = @saved_cs_client;