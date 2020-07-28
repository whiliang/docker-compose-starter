CREATE DATABASE `test` DEFAULT CHARACTER SET utf8;
USE test;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_apk_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_apk_info`;
CREATE TABLE `t_apk_info` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

