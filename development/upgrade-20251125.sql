/*
 Navicat Premium Dump SQL

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80403 (8.4.3)
 Source Host           : localhost:3306
 Source Schema         : upgrade

 Target Server Type    : MySQL
 Target Server Version : 80403 (8.4.3)
 File Encoding         : 65001

 Date: 25/11/2025 16:48:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for casbin_rules
-- ----------------------------
DROP TABLE IF EXISTS `casbin_rules`;
CREATE TABLE `casbin_rules` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ptype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `v0` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `v1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `v2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `v3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `v4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `v5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1165246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of casbin_rules
-- ----------------------------
BEGIN;
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164738, 'p', '003', '/user/login', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164739, 'p', '003', '/user/register', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164740, 'p', '003', '/user/change_password', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164741, 'p', '003', '/user/info', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164742, 'p', '003', '/user/perm', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164743, 'p', '003', '/user/profile', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164744, 'p', '003', '/user/profile', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164745, 'p', '003', '/user/logout', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164746, 'p', '003', '/menu/role/list', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164747, 'p', '003', '/captcha', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164748, 'p', '003', '/oauth/login', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164749, 'p', '003', '/upgrade_url/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164750, 'p', '003', '/upgrade_dashboard', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164751, 'p', '002', '/user/login', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164752, 'p', '002', '/user/register', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164753, 'p', '002', '/user/change_password', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164754, 'p', '002', '/user/info', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164755, 'p', '002', '/user/perm', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164756, 'p', '002', '/user/profile', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164757, 'p', '002', '/user/profile', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164758, 'p', '002', '/user/logout', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164759, 'p', '002', '/menu/role/list', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164760, 'p', '002', '/captcha', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164761, 'p', '002', '/oauth/login', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164762, 'p', '002', '/upgrade_url/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164763, 'p', '002', '/upgrade_url/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164764, 'p', '002', '/upgrade_url/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164765, 'p', '002', '/upgrade_url/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164766, 'p', '002', '/upgrade_url', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164767, 'p', '002', '/upgrade_dev_model', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164768, 'p', '002', '/upgrade_dev_model/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164769, 'p', '002', '/upgrade_dev_model/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164770, 'p', '002', '/upgrade_dev_model/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164771, 'p', '002', '/upgrade_dev_model/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164772, 'p', '002', '/upgrade_url_upgrade_strategy', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164773, 'p', '002', '/upgrade_url_upgrade_strategy/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164774, 'p', '002', '/upgrade_url_upgrade_strategy/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164775, 'p', '002', '/upgrade_url_upgrade_strategy/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164776, 'p', '002', '/upgrade_url_upgrade_strategy/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164777, 'p', '002', '/upgrade_url_version', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164778, 'p', '002', '/upgrade_url_version/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164779, 'p', '002', '/upgrade_url_version/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164780, 'p', '002', '/upgrade_url_version/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164781, 'p', '002', '/upgrade_url_version/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164782, 'p', '002', '/company_secret', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164783, 'p', '002', '/company_secret/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164784, 'p', '002', '/company_secret/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164785, 'p', '002', '/company_secret/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164786, 'p', '002', '/company_secret/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164787, 'p', '002', '/upgrade_dev_swarm', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164788, 'p', '002', '/upgrade_dev_swarm/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164789, 'p', '002', '/upgrade_dev_swarm/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164790, 'p', '002', '/upgrade_dev_swarm/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164791, 'p', '002', '/upgrade_dev_swarm/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164792, 'p', '002', '/upgrade_file', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164793, 'p', '002', '/upgrade_file/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164794, 'p', '002', '/upgrade_file/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164795, 'p', '002', '/upgrade_file/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164796, 'p', '002', '/upgrade_file/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164797, 'p', '002', '/upgrade_dashboard', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164798, 'p', '002', '/upgrade_file_version', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164799, 'p', '002', '/upgrade_file_version/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164800, 'p', '002', '/upgrade_file_version/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164801, 'p', '002', '/upgrade_file_version/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164802, 'p', '002', '/upgrade_file_version/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164803, 'p', '002', '/upgrade_file_upgrade_strategy', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164804, 'p', '002', '/upgrade_file_upgrade_strategy/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164805, 'p', '002', '/upgrade_file_upgrade_strategy/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164806, 'p', '002', '/upgrade_file_upgrade_strategy/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164807, 'p', '002', '/upgrade_file_upgrade_strategy/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164808, 'p', '002', '/upgrade_dev', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164809, 'p', '002', '/upgrade_dev/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164810, 'p', '002', '/upgrade_dev/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164811, 'p', '002', '/upgrade_dev/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164812, 'p', '002', '/upgrade_dev/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164813, 'p', '002', '/upgrade_dev_group', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164814, 'p', '002', '/upgrade_dev_group/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164815, 'p', '002', '/upgrade_dev_group/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164816, 'p', '002', '/upgrade_dev_group/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164817, 'p', '002', '/upgrade_dev_group/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164818, 'p', '002', '/upgrade_tauri', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164819, 'p', '002', '/upgrade_tauri/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164820, 'p', '002', '/upgrade_tauri/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164821, 'p', '002', '/upgrade_tauri/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164822, 'p', '002', '/upgrade_tauri/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164823, 'p', '002', '/upgrade_tauri_version', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164824, 'p', '002', '/upgrade_tauri_version/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164825, 'p', '002', '/upgrade_tauri_version/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164826, 'p', '002', '/upgrade_tauri_version/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164827, 'p', '002', '/upgrade_tauri_version/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164828, 'p', '002', '/upgrade_tauri_upgrade_strategy', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164829, 'p', '002', '/upgrade_tauri_upgrade_strategy/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164830, 'p', '002', '/upgrade_tauri_upgrade_strategy/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164831, 'p', '002', '/upgrade_tauri_upgrade_strategy/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164832, 'p', '002', '/upgrade_tauri_upgrade_strategy/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164833, 'p', '002', '/upgrade_configuration', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164834, 'p', '002', '/upgrade_configuration/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164835, 'p', '002', '/upgrade_configuration/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164836, 'p', '002', '/upgrade_configuration/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164837, 'p', '002', '/upgrade_configuration/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164838, 'p', '002', '/upgrade_configuration_version', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164839, 'p', '002', '/upgrade_configuration_version/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164840, 'p', '002', '/upgrade_configuration_version/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164841, 'p', '002', '/upgrade_configuration_version/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164842, 'p', '002', '/upgrade_configuration_version/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164843, 'p', '002', '/upgrade_configuration_upgrade_strategy', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164844, 'p', '002', '/upgrade_configuration_upgrade_strategy/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164845, 'p', '002', '/upgrade_configuration_upgrade_strategy/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164846, 'p', '002', '/upgrade_configuration_upgrade_strategy/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164847, 'p', '002', '/upgrade_configuration_upgrade_strategy/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164848, 'p', '002', '/upgrade_apk', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164849, 'p', '002', '/upgrade_apk/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164850, 'p', '002', '/upgrade_apk/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164851, 'p', '002', '/upgrade_apk/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164852, 'p', '002', '/upgrade_apk/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164853, 'p', '002', '/upgrade_apk_version', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164854, 'p', '002', '/upgrade_apk_version/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164855, 'p', '002', '/upgrade_apk_version/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164856, 'p', '002', '/upgrade_apk_version/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164857, 'p', '002', '/upgrade_apk_version/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164858, 'p', '002', '/upgrade_apk_upgrade_strategy', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164859, 'p', '002', '/upgrade_apk_upgrade_strategy/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164860, 'p', '002', '/upgrade_apk_upgrade_strategy/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164861, 'p', '002', '/upgrade_apk_upgrade_strategy/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164862, 'p', '002', '/upgrade_apk_upgrade_strategy/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164863, 'p', '002', '/upgrade_electron', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164864, 'p', '002', '/upgrade_electron/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164865, 'p', '002', '/upgrade_electron/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164866, 'p', '002', '/upgrade_electron/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164867, 'p', '002', '/upgrade_electron/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164868, 'p', '002', '/upgrade_electron_version', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164869, 'p', '002', '/upgrade_electron_version/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164870, 'p', '002', '/upgrade_electron_version/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164871, 'p', '002', '/upgrade_electron_version/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164872, 'p', '002', '/upgrade_electron_version/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164873, 'p', '002', '/upgrade_electron_upgrade_strategy', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164874, 'p', '002', '/upgrade_electron_upgrade_strategy/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164875, 'p', '002', '/upgrade_electron_upgrade_strategy/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164876, 'p', '002', '/upgrade_electron_upgrade_strategy/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164877, 'p', '002', '/upgrade_electron_upgrade_strategy/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164878, 'p', '002', '/upgrade_company_income', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164879, 'p', '002', '/upgrade_company_income/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164880, 'p', '002', '/upgrade_company_traffic_packet', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164881, 'p', '002', '/upgrade_company_traffic_packet/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164882, 'p', '002', '/upgrade_company_traffic_packet/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164883, 'p', '002', '/upgrade_company_traffic_packet/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164884, 'p', '002', '/upgrade_company_traffic_packet/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164885, 'p', '002', '/upgrade_win', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164886, 'p', '002', '/upgrade_win/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164887, 'p', '002', '/upgrade_win/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164888, 'p', '002', '/upgrade_win/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164889, 'p', '002', '/upgrade_win/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164890, 'p', '002', '/upgrade_win_version', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164891, 'p', '002', '/upgrade_win_version/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164892, 'p', '002', '/upgrade_win_version/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164893, 'p', '002', '/upgrade_win_version/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164894, 'p', '002', '/upgrade_win_version/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164895, 'p', '002', '/upgrade_win_upgrade_strategy', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164896, 'p', '002', '/upgrade_win_upgrade_strategy/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164897, 'p', '002', '/upgrade_win_upgrade_strategy/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164898, 'p', '002', '/upgrade_win_upgrade_strategy/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164899, 'p', '002', '/upgrade_win_upgrade_strategy/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164900, 'p', '002', '/upgrade_lnx', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164901, 'p', '002', '/upgrade_lnx/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164902, 'p', '002', '/upgrade_lnx/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164903, 'p', '002', '/upgrade_lnx/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164904, 'p', '002', '/upgrade_lnx/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164905, 'p', '002', '/upgrade_lnx_version', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164906, 'p', '002', '/upgrade_lnx_version/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164907, 'p', '002', '/upgrade_lnx_version/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164908, 'p', '002', '/upgrade_lnx_version/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164909, 'p', '002', '/upgrade_lnx_version/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164910, 'p', '002', '/upgrade_lnx_upgrade_strategy', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164911, 'p', '002', '/upgrade_lnx_upgrade_strategy/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164912, 'p', '002', '/upgrade_lnx_upgrade_strategy/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164913, 'p', '002', '/upgrade_lnx_upgrade_strategy/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164914, 'p', '002', '/upgrade_lnx_upgrade_strategy/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164915, 'p', '002', '/upgrade_mac', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164916, 'p', '002', '/upgrade_mac/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164917, 'p', '002', '/upgrade_mac/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164918, 'p', '002', '/upgrade_mac/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164919, 'p', '002', '/upgrade_mac/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164920, 'p', '002', '/upgrade_mac_version', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164921, 'p', '002', '/upgrade_mac_version/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164922, 'p', '002', '/upgrade_mac_version/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164923, 'p', '002', '/upgrade_mac_version/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164924, 'p', '002', '/upgrade_mac_version/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164925, 'p', '002', '/upgrade_mac_upgrade_strategy', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164926, 'p', '002', '/upgrade_mac_upgrade_strategy/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164927, 'p', '002', '/upgrade_mac_upgrade_strategy/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164928, 'p', '002', '/upgrade_mac_upgrade_strategy/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164929, 'p', '002', '/upgrade_mac_upgrade_strategy/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164930, 'p', '001', '/user/login', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164931, 'p', '001', '/user/register', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164932, 'p', '001', '/user/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164933, 'p', '001', '/user/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164934, 'p', '001', '/user/change_password', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164935, 'p', '001', '/user/info', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164936, 'p', '001', '/user/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164937, 'p', '001', '/user/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164938, 'p', '001', '/user/perm', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164939, 'p', '001', '/user/profile', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164940, 'p', '001', '/user/profile', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164941, 'p', '001', '/user/logout', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164942, 'p', '001', '/user', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164943, 'p', '001', '/user/refresh_token', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164944, 'p', '001', '/user/access_token', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164945, 'p', '001', '/role/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164946, 'p', '001', '/role/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164947, 'p', '001', '/role/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164948, 'p', '001', '/role/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164949, 'p', '001', '/role', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164950, 'p', '001', '/menu/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164951, 'p', '001', '/menu/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164952, 'p', '001', '/menu/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164953, 'p', '001', '/menu/list', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164954, 'p', '001', '/menu/role/list', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164955, 'p', '001', '/menu_param/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164956, 'p', '001', '/menu_param/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164957, 'p', '001', '/menu_param/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164958, 'p', '001', '/menu_param/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164959, 'p', '001', '/menu_param', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164960, 'p', '001', '/menu', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164961, 'p', '001', '/captcha', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164962, 'p', '001', '/authority/api/create_or_update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164963, 'p', '001', '/authority/api/role', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164964, 'p', '001', '/authority/menu/create_or_update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164965, 'p', '001', '/authority/menu/role', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164966, 'p', '001', '/api/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164967, 'p', '001', '/api/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164968, 'p', '001', '/api/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164969, 'p', '001', '/api/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164970, 'p', '001', '/api', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164971, 'p', '001', '/dictionary', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164972, 'p', '001', '/dictionary/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164973, 'p', '001', '/dictionary/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164974, 'p', '001', '/dictionary/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164975, 'p', '001', '/dictionary_detail/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164976, 'p', '001', '/dictionary_detail', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164977, 'p', '001', '/dictionary_detail/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164978, 'p', '001', '/dictionary_detail/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164979, 'p', '001', '/dictionary_detail/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164980, 'p', '001', '/dictionary/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164981, 'p', '001', '/dict/:name', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164982, 'p', '001', '/oauth_provider/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164983, 'p', '001', '/oauth_provider/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164984, 'p', '001', '/oauth_provider/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164985, 'p', '001', '/oauth_provider/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164986, 'p', '001', '/oauth/login', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164987, 'p', '001', '/oauth_provider', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164988, 'p', '001', '/token/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164989, 'p', '001', '/token/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164990, 'p', '001', '/token/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164991, 'p', '001', '/token/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164992, 'p', '001', '/token/logout', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164993, 'p', '001', '/token', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164994, 'p', '001', '/department/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164995, 'p', '001', '/department/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164996, 'p', '001', '/department/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164997, 'p', '001', '/department/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164998, 'p', '001', '/department', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1164999, 'p', '001', '/position/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165000, 'p', '001', '/position/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165001, 'p', '001', '/position/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165002, 'p', '001', '/position/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165003, 'p', '001', '/position', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165004, 'p', '001', '/task/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165005, 'p', '001', '/task/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165006, 'p', '001', '/task/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165007, 'p', '001', '/task/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165008, 'p', '001', '/task', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165009, 'p', '001', '/task_log/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165010, 'p', '001', '/task_log/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165011, 'p', '001', '/task_log/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165012, 'p', '001', '/task_log/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165013, 'p', '001', '/task_log', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165014, 'p', '001', '/configuration/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165015, 'p', '001', '/configuration/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165016, 'p', '001', '/configuration/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165017, 'p', '001', '/configuration/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165018, 'p', '001', '/configuration', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165019, 'p', '001', '/email_log/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165020, 'p', '001', '/email_log/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165021, 'p', '001', '/email_log/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165022, 'p', '001', '/email_log/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165023, 'p', '001', '/email_log', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165024, 'p', '001', '/email_provider/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165025, 'p', '001', '/email_provider/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165026, 'p', '001', '/email_provider/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165027, 'p', '001', '/email_provider/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165028, 'p', '001', '/email_provider', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165029, 'p', '001', '/sms_log/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165030, 'p', '001', '/sms_log/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165031, 'p', '001', '/sms_log/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165032, 'p', '001', '/sms_log/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165033, 'p', '001', '/sms_log', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165034, 'p', '001', '/sms_provider/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165035, 'p', '001', '/sms_provider/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165036, 'p', '001', '/sms_provider/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165037, 'p', '001', '/sms_provider/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165038, 'p', '001', '/sms_provider', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165039, 'p', '001', '/sms/send', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165040, 'p', '001', '/email/send', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165041, 'p', '001', '/member/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165042, 'p', '001', '/member/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165043, 'p', '001', '/member/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165044, 'p', '001', '/member/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165045, 'p', '001', '/member', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165046, 'p', '001', '/member_rank/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165047, 'p', '001', '/member_rank/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165048, 'p', '001', '/member_rank/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165049, 'p', '001', '/member_rank/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165050, 'p', '001', '/member_rank', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165051, 'p', '001', '/upgrade_url/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165052, 'p', '001', '/upgrade_url/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165053, 'p', '001', '/upgrade_url/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165054, 'p', '001', '/upgrade_url/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165055, 'p', '001', '/upgrade_url', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165056, 'p', '001', '/upgrade_dev_model', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165057, 'p', '001', '/upgrade_dev_model/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165058, 'p', '001', '/upgrade_dev_model/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165059, 'p', '001', '/upgrade_dev_model/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165060, 'p', '001', '/upgrade_dev_model/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165061, 'p', '001', '/upgrade_url_upgrade_strategy', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165062, 'p', '001', '/upgrade_url_upgrade_strategy/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165063, 'p', '001', '/upgrade_url_upgrade_strategy/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165064, 'p', '001', '/upgrade_url_upgrade_strategy/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165065, 'p', '001', '/upgrade_url_upgrade_strategy/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165066, 'p', '001', '/upgrade_url_version', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165067, 'p', '001', '/upgrade_url_version/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165068, 'p', '001', '/upgrade_url_version/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165069, 'p', '001', '/upgrade_url_version/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165070, 'p', '001', '/upgrade_url_version/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165071, 'p', '001', '/company_secret', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165072, 'p', '001', '/company_secret/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165073, 'p', '001', '/company_secret/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165074, 'p', '001', '/company_secret/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165075, 'p', '001', '/company_secret/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165076, 'p', '001', '/upgrade_dev_swarm', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165077, 'p', '001', '/upgrade_dev_swarm/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165078, 'p', '001', '/upgrade_dev_swarm/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165079, 'p', '001', '/upgrade_dev_swarm/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165080, 'p', '001', '/upgrade_dev_swarm/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165081, 'p', '001', '/upgrade_file', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165082, 'p', '001', '/upgrade_file/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165083, 'p', '001', '/upgrade_file/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165084, 'p', '001', '/upgrade_file/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165085, 'p', '001', '/upgrade_file/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165086, 'p', '001', '/upgrade_dashboard', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165087, 'p', '001', '/upload', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165088, 'p', '001', '/file/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165089, 'p', '001', '/file/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165090, 'p', '001', '/file/status', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165091, 'p', '001', '/file/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165092, 'p', '001', '/file/download/:id', 'GET', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165093, 'p', '001', '/file_tag/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165094, 'p', '001', '/file_tag/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165095, 'p', '001', '/file_tag/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165096, 'p', '001', '/file_tag/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165097, 'p', '001', '/file_tag', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165098, 'p', '001', '/storage_provider/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165099, 'p', '001', '/storage_provider/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165100, 'p', '001', '/storage_provider/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165101, 'p', '001', '/storage_provider/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165102, 'p', '001', '/storage_provider', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165103, 'p', '001', '/cloud_file/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165104, 'p', '001', '/cloud_file/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165105, 'p', '001', '/cloud_file/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165106, 'p', '001', '/cloud_file/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165107, 'p', '001', '/cloud_file', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165108, 'p', '001', '/cloud_file/upload', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165109, 'p', '001', '/cloud_file_tag/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165110, 'p', '001', '/cloud_file_tag/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165111, 'p', '001', '/cloud_file_tag/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165112, 'p', '001', '/cloud_file_tag/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165113, 'p', '001', '/cloud_file_tag', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165114, 'p', '001', '/upgrade_file_version', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165115, 'p', '001', '/upgrade_file_version/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165116, 'p', '001', '/upgrade_file_version/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165117, 'p', '001', '/upgrade_file_version/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165118, 'p', '001', '/upgrade_file_version/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165119, 'p', '001', '/upgrade_file_upgrade_strategy', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165120, 'p', '001', '/upgrade_file_upgrade_strategy/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165121, 'p', '001', '/upgrade_file_upgrade_strategy/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165122, 'p', '001', '/upgrade_file_upgrade_strategy/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165123, 'p', '001', '/upgrade_file_upgrade_strategy/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165124, 'p', '001', '/upgrade_dev', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165125, 'p', '001', '/upgrade_dev/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165126, 'p', '001', '/upgrade_dev/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165127, 'p', '001', '/upgrade_dev/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165128, 'p', '001', '/upgrade_dev/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165129, 'p', '001', '/upgrade_dev_group', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165130, 'p', '001', '/upgrade_dev_group/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165131, 'p', '001', '/upgrade_dev_group/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165132, 'p', '001', '/upgrade_dev_group/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165133, 'p', '001', '/upgrade_dev_group/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165134, 'p', '001', '/upgrade_tauri', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165135, 'p', '001', '/upgrade_tauri/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165136, 'p', '001', '/upgrade_tauri/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165137, 'p', '001', '/upgrade_tauri/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165138, 'p', '001', '/upgrade_tauri/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165139, 'p', '001', '/upgrade_tauri_version', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165140, 'p', '001', '/upgrade_tauri_version/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165141, 'p', '001', '/upgrade_tauri_version/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165142, 'p', '001', '/upgrade_tauri_version/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165143, 'p', '001', '/upgrade_tauri_version/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165144, 'p', '001', '/upgrade_tauri_upgrade_strategy', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165145, 'p', '001', '/upgrade_tauri_upgrade_strategy/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165146, 'p', '001', '/upgrade_tauri_upgrade_strategy/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165147, 'p', '001', '/upgrade_tauri_upgrade_strategy/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165148, 'p', '001', '/upgrade_tauri_upgrade_strategy/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165149, 'p', '001', '/upgrade_configuration', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165150, 'p', '001', '/upgrade_configuration/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165151, 'p', '001', '/upgrade_configuration/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165152, 'p', '001', '/upgrade_configuration/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165153, 'p', '001', '/upgrade_configuration/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165154, 'p', '001', '/upgrade_configuration_version', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165155, 'p', '001', '/upgrade_configuration_version/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165156, 'p', '001', '/upgrade_configuration_version/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165157, 'p', '001', '/upgrade_configuration_version/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165158, 'p', '001', '/upgrade_configuration_version/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165159, 'p', '001', '/upgrade_configuration_upgrade_strategy', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165160, 'p', '001', '/upgrade_configuration_upgrade_strategy/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165161, 'p', '001', '/upgrade_configuration_upgrade_strategy/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165162, 'p', '001', '/upgrade_configuration_upgrade_strategy/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165163, 'p', '001', '/upgrade_configuration_upgrade_strategy/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165164, 'p', '001', '/upgrade_apk', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165165, 'p', '001', '/upgrade_apk/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165166, 'p', '001', '/upgrade_apk/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165167, 'p', '001', '/upgrade_apk/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165168, 'p', '001', '/upgrade_apk/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165169, 'p', '001', '/upgrade_apk_version', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165170, 'p', '001', '/upgrade_apk_version/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165171, 'p', '001', '/upgrade_apk_version/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165172, 'p', '001', '/upgrade_apk_version/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165173, 'p', '001', '/upgrade_apk_version/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165174, 'p', '001', '/upgrade_apk_upgrade_strategy', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165175, 'p', '001', '/upgrade_apk_upgrade_strategy/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165176, 'p', '001', '/upgrade_apk_upgrade_strategy/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165177, 'p', '001', '/upgrade_apk_upgrade_strategy/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165178, 'p', '001', '/upgrade_apk_upgrade_strategy/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165179, 'p', '001', '/upgrade_electron', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165180, 'p', '001', '/upgrade_electron/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165181, 'p', '001', '/upgrade_electron/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165182, 'p', '001', '/upgrade_electron/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165183, 'p', '001', '/upgrade_electron/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165184, 'p', '001', '/upgrade_electron_version', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165185, 'p', '001', '/upgrade_electron_version/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165186, 'p', '001', '/upgrade_electron_version/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165187, 'p', '001', '/upgrade_electron_version/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165188, 'p', '001', '/upgrade_electron_version/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165189, 'p', '001', '/upgrade_electron_upgrade_strategy', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165190, 'p', '001', '/upgrade_electron_upgrade_strategy/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165191, 'p', '001', '/upgrade_electron_upgrade_strategy/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165192, 'p', '001', '/upgrade_electron_upgrade_strategy/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165193, 'p', '001', '/upgrade_electron_upgrade_strategy/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165194, 'p', '001', '/upgrade_company_income', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165195, 'p', '001', '/upgrade_company_income/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165196, 'p', '001', '/upgrade_company_traffic_packet', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165197, 'p', '001', '/upgrade_company_traffic_packet/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165198, 'p', '001', '/upgrade_company_traffic_packet/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165199, 'p', '001', '/upgrade_company_traffic_packet/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165200, 'p', '001', '/upgrade_company_traffic_packet/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165201, 'p', '001', '/upgrade_win', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165202, 'p', '001', '/upgrade_win/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165203, 'p', '001', '/upgrade_win/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165204, 'p', '001', '/upgrade_win/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165205, 'p', '001', '/upgrade_win/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165206, 'p', '001', '/upgrade_win_version', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165207, 'p', '001', '/upgrade_win_version/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165208, 'p', '001', '/upgrade_win_version/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165209, 'p', '001', '/upgrade_win_version/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165210, 'p', '001', '/upgrade_win_version/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165211, 'p', '001', '/upgrade_win_upgrade_strategy', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165212, 'p', '001', '/upgrade_win_upgrade_strategy/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165213, 'p', '001', '/upgrade_win_upgrade_strategy/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165214, 'p', '001', '/upgrade_win_upgrade_strategy/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165215, 'p', '001', '/upgrade_win_upgrade_strategy/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165216, 'p', '001', '/upgrade_lnx', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165217, 'p', '001', '/upgrade_lnx/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165218, 'p', '001', '/upgrade_lnx/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165219, 'p', '001', '/upgrade_lnx/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165220, 'p', '001', '/upgrade_lnx/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165221, 'p', '001', '/upgrade_lnx_version', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165222, 'p', '001', '/upgrade_lnx_version/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165223, 'p', '001', '/upgrade_lnx_version/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165224, 'p', '001', '/upgrade_lnx_version/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165225, 'p', '001', '/upgrade_lnx_version/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165226, 'p', '001', '/upgrade_lnx_upgrade_strategy', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165227, 'p', '001', '/upgrade_lnx_upgrade_strategy/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165228, 'p', '001', '/upgrade_lnx_upgrade_strategy/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165229, 'p', '001', '/upgrade_lnx_upgrade_strategy/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165230, 'p', '001', '/upgrade_lnx_upgrade_strategy/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165231, 'p', '001', '/upgrade_mac', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165232, 'p', '001', '/upgrade_mac/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165233, 'p', '001', '/upgrade_mac/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165234, 'p', '001', '/upgrade_mac/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165235, 'p', '001', '/upgrade_mac/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165236, 'p', '001', '/upgrade_mac_version', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165237, 'p', '001', '/upgrade_mac_version/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165238, 'p', '001', '/upgrade_mac_version/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165239, 'p', '001', '/upgrade_mac_version/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165240, 'p', '001', '/upgrade_mac_version/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165241, 'p', '001', '/upgrade_mac_upgrade_strategy', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165242, 'p', '001', '/upgrade_mac_upgrade_strategy/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165243, 'p', '001', '/upgrade_mac_upgrade_strategy/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165244, 'p', '001', '/upgrade_mac_upgrade_strategy/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES (1165245, 'p', '001', '/upgrade_mac_upgrade_strategy/update', 'POST', '', '', '');
COMMIT;

-- ----------------------------
-- Table structure for cloud_file_tag_cloud_files
-- ----------------------------
DROP TABLE IF EXISTS `cloud_file_tag_cloud_files`;
CREATE TABLE `cloud_file_tag_cloud_files` (
  `cloud_file_tag_id` bigint unsigned NOT NULL,
  `cloud_file_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`cloud_file_tag_id`,`cloud_file_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of cloud_file_tag_cloud_files
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for file_tag_files
-- ----------------------------
DROP TABLE IF EXISTS `file_tag_files`;
CREATE TABLE `file_tag_files` (
  `file_tag_id` bigint unsigned NOT NULL,
  `file_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`file_tag_id`,`file_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of file_tag_files
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for fms_cloud_file_tags
-- ----------------------------
DROP TABLE IF EXISTS `fms_cloud_file_tags`;
CREATE TABLE `fms_cloud_file_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `status` tinyint unsigned DEFAULT '1' COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'CloudFileTag''s name | 标签名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'The remark of tag | 标签的备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cloudfiletag_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of fms_cloud_file_tags
-- ----------------------------
BEGIN;
INSERT INTO `fms_cloud_file_tags` (`id`, `created_at`, `updated_at`, `status`, `name`, `remark`) VALUES (1, '2025-04-25 06:52:26', '2025-04-25 06:52:26', 1, '测试 1', '测试 1');
INSERT INTO `fms_cloud_file_tags` (`id`, `created_at`, `updated_at`, `status`, `name`, `remark`) VALUES (2, '2025-04-25 06:52:30', '2025-04-25 06:52:30', 1, '测试 2', '测试 2');
COMMIT;

-- ----------------------------
-- Table structure for fms_cloud_files
-- ----------------------------
DROP TABLE IF EXISTS `fms_cloud_files`;
CREATE TABLE `fms_cloud_files` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'UUID',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `state` tinyint(1) DEFAULT '1' COMMENT 'State true: normal false: ban | 状态 true 正常 false 禁用',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The file''s name | 文件名',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The file''s url | 文件地址',
  `size` bigint unsigned NOT NULL COMMENT 'The file''s size | 文件大小',
  `file_type` tinyint unsigned NOT NULL COMMENT 'The file''s type | 文件类型',
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The user who upload the file | 上传用户的 ID',
  `cloud_file_storage_providers` bigint unsigned DEFAULT NULL,
  `md5` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'md5',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cloudfile_file_type` (`file_type`) USING BTREE,
  KEY `cloudfile_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of fms_cloud_files
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for fms_file_tags
-- ----------------------------
DROP TABLE IF EXISTS `fms_file_tags`;
CREATE TABLE `fms_file_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `status` tinyint unsigned DEFAULT '1' COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'FileTag''s name | 标签名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'The remark of tag | 标签的备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `filetag_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of fms_file_tags
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for fms_files
-- ----------------------------
DROP TABLE IF EXISTS `fms_files`;
CREATE TABLE `fms_files` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'UUID',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `status` tinyint unsigned DEFAULT '1' COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'File''s name | 文件名称',
  `file_type` tinyint unsigned NOT NULL COMMENT 'File''s type | 文件类型',
  `size` bigint unsigned NOT NULL COMMENT 'File''s size | 文件大小',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'File''s path | 文件路径',
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'User''s UUID | 用户的 UUID',
  `md5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The md5 of the file | 文件的 md5',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `file_user_id` (`user_id`) USING BTREE,
  KEY `file_file_type` (`file_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of fms_files
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for fms_storage_providers
-- ----------------------------
DROP TABLE IF EXISTS `fms_storage_providers`;
CREATE TABLE `fms_storage_providers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `state` tinyint(1) DEFAULT '1' COMMENT 'State true: normal false: ban | 状态 true 正常 false 禁用',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The cloud storage service name | 服务名称',
  `bucket` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The cloud storage bucket name | 云存储服务的存储桶',
  `secret_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The secret ID | 密钥 ID',
  `secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The secret key | 密钥 Key',
  `endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The service URL | 服务器地址',
  `folder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'The folder in cloud | 云服务目标文件夹',
  `region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The service region | 服务器所在地区',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is it the default provider | 是否为默认提供商',
  `use_cdn` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Does it use CDN | 是否使用 CDN',
  `cdn_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CDN URL | CDN 地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of fms_storage_providers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for mcms_email_logs
-- ----------------------------
DROP TABLE IF EXISTS `mcms_email_logs`;
CREATE TABLE `mcms_email_logs` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'UUID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The target email address | 目标邮箱地址',
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The subject | 发送的标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The content | 发送的内容',
  `send_status` tinyint unsigned NOT NULL COMMENT 'The send status, 0 unknown 1 success 2 failed | 发送的状态, 0 未知， 1 成功， 2 失败',
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The sms service provider | 短信服务提供商',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of mcms_email_logs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for mcms_email_providers
-- ----------------------------
DROP TABLE IF EXISTS `mcms_email_providers`;
CREATE TABLE `mcms_email_providers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The email provider name | 电子邮件服务的提供商',
  `auth_type` tinyint unsigned NOT NULL COMMENT 'The auth type, supported plain, CRAMMD5 | 鉴权类型, 支持 plain, CRAMMD5',
  `email_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The email address | 邮箱地址',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'The email''s password | 电子邮件的密码',
  `host_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The host name is the email service''s host address | 电子邮箱服务的服务器地址',
  `identify` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'The identify info, for CRAMMD5 | 身份信息, 支持 CRAMMD5',
  `secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'The secret, for CRAMMD5 | 邮箱密钥, 用于 CRAMMD5',
  `port` int unsigned DEFAULT NULL COMMENT 'The port of the host | 服务器端口',
  `tls` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Whether to use TLS | 是否采用 tls 加密',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is it the default provider | 是否为默认提供商',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of mcms_email_providers
-- ----------------------------
BEGIN;
INSERT INTO `mcms_email_providers` (`id`, `created_at`, `updated_at`, `name`, `auth_type`, `email_addr`, `password`, `host_name`, `identify`, `secret`, `port`, `tls`, `is_default`) VALUES (1, '2025-02-10 09:50:08', '2025-02-10 09:50:08', 'tencent', 1, 'input your email address', 'input your password', 'smtp.qq.com', NULL, NULL, 465, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for mcms_sms_logs
-- ----------------------------
DROP TABLE IF EXISTS `mcms_sms_logs`;
CREATE TABLE `mcms_sms_logs` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'UUID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The target phone number | 目标电话',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The content | 发送的内容',
  `send_status` tinyint unsigned NOT NULL COMMENT 'The send status, 0 unknown 1 success 2 failed | 发送的状态, 0 未知， 1 成功， 2 失败',
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The sms service provider | 短信服务提供商',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of mcms_sms_logs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for mcms_sms_providers
-- ----------------------------
DROP TABLE IF EXISTS `mcms_sms_providers`;
CREATE TABLE `mcms_sms_providers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SMS provider name | 短信服务的提供商',
  `secret_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The secret ID | 密钥 ID',
  `secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The secret key | 密钥 Key',
  `region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The service region | 服务器所在地区',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is it the default provider | 是否为默认提供商',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of mcms_sms_providers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for role_menus
-- ----------------------------
DROP TABLE IF EXISTS `role_menus`;
CREATE TABLE `role_menus` (
  `role_id` bigint unsigned NOT NULL,
  `menu_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of role_menus
-- ----------------------------
BEGIN;
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 1);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 2);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 3);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 4);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 5);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 6);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 7);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 8);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 9);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 10);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 11);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 12);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 13);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 14);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 15);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 16);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 17);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 18);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 24);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 26);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 27);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 28);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 29);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 32);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 33);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 35);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 46);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 47);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 48);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 49);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 50);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 51);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 52);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 53);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 54);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 55);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 56);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 57);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 58);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 59);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 60);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 61);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 62);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 63);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 65);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 66);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 67);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 68);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 69);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 70);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 73);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 74);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 75);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 82);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 88);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 89);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 90);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 91);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 92);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 93);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 94);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 95);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 96);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 97);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (1, 98);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 1);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 9);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 10);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 24);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 26);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 27);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 28);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 29);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 32);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 33);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 35);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 52);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 53);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 54);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 55);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 56);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 57);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 58);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 59);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 60);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 61);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 62);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 63);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 65);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 66);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 67);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 68);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 69);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 70);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 73);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 74);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 75);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 82);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 88);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 89);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 90);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 91);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 92);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 93);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 94);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 95);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 96);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 97);
INSERT INTO `role_menus` (`role_id`, `menu_id`) VALUES (2, 98);
COMMIT;

-- ----------------------------
-- Table structure for sys_apis
-- ----------------------------
DROP TABLE IF EXISTS `sys_apis`;
CREATE TABLE `sys_apis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'API path | API 路径',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'API description | API 描述',
  `api_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'API group | API 分组',
  `service_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'Other' COMMENT 'Service name | 服务名称',
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'POST' COMMENT 'HTTP method | HTTP 请求类型',
  `is_required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Whether is required | 是否必选',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `api_path_method` (`path`,`method`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=359 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_apis
-- ----------------------------
BEGIN;
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (1, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/login', 'apiDesc.userLogin', 'user', 'Core', 'POST', 1);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (2, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/register', 'apiDesc.userRegister', 'user', 'Core', 'POST', 1);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (3, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/create', 'apiDesc.createUser', 'user', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (4, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/update', 'apiDesc.updateUser', 'user', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (5, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/change_password', 'apiDesc.userChangePassword', 'user', 'Core', 'POST', 1);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (6, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/info', 'apiDesc.userInfo', 'user', 'Core', 'GET', 1);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (7, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/list', 'apiDesc.userList', 'user', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (8, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/delete', 'apiDesc.deleteUser', 'user', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (9, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/perm', 'apiDesc.userPermissions', 'user', 'Core', 'GET', 1);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (10, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/profile', 'apiDesc.userProfile', 'user', 'Core', 'GET', 1);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (11, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/profile', 'apiDesc.updateProfile', 'user', 'Core', 'POST', 1);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (12, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/logout', 'apiDesc.logout', 'user', 'Core', 'GET', 1);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (13, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user', 'apiDesc.getUserById', 'user', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (14, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/refresh_token', 'apiDesc.refreshToken', 'user', 'Core', 'GET', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (15, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/access_token', 'apiDesc.accessToken', 'user', 'Core', 'GET', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (16, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/role/create', 'apiDesc.createRole', 'role', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (17, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/role/update', 'apiDesc.updateRole', 'role', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (18, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/role/delete', 'apiDesc.deleteRole', 'role', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (19, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/role/list', 'apiDesc.roleList', 'role', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (20, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/role', 'apiDesc.getRoleById', 'role', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (21, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu/create', 'apiDesc.createMenu', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (22, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu/update', 'apiDesc.updateMenu', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (23, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu/delete', 'apiDesc.deleteMenu', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (24, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu/list', 'apiDesc.menuList', 'menu', 'Core', 'GET', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (25, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu/role/list', 'apiDesc.menuRoleList', 'authority', 'Core', 'GET', 1);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (26, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu_param/create', 'apiDesc.createMenuParam', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (27, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu_param/update', 'apiDesc.updateMenuParam', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (28, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu_param/list', 'apiDesc.menuParamListByMenuId', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (29, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu_param/delete', 'apiDesc.deleteMenuParam', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (30, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu_param', 'apiDesc.getMenuParamById', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (31, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu', 'apiDesc.getMenuById', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (32, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/captcha', 'apiDesc.captcha', 'captcha', 'Core', 'GET', 1);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (33, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/authority/api/create_or_update', 'apiDesc.createOrUpdateApiAuthority', 'authority', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (34, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/authority/api/role', 'apiDesc.APIAuthorityOfRole', 'authority', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (35, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/authority/menu/create_or_update', 'apiDesc.createOrUpdateMenuAuthority', 'authority', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (36, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/authority/menu/role', 'apiDesc.menuAuthorityOfRole', 'authority', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (37, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/api/create', 'apiDesc.createApi', 'api', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (38, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/api/update', 'apiDesc.updateApi', 'api', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (39, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/api/delete', 'apiDesc.deleteAPI', 'api', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (40, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/api/list', 'apiDesc.APIList', 'api', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (41, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/api', 'apiDesc.getApiById', 'api', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (42, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary', 'apiDesc.getDictionaryById', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (43, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary/create', 'apiDesc.createDictionary', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (44, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary/update', 'apiDesc.updateDictionary', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (45, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary/delete', 'apiDesc.deleteDictionary', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (46, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary_detail/delete', 'apiDesc.deleteDictionaryDetail', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (47, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary_detail', 'apiDesc.getDictionaryDetailById', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (48, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary_detail/create', 'apiDesc.createDictionaryDetail', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (49, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary_detail/update', 'apiDesc.updateDictionaryDetail', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (50, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary_detail/list', 'apiDesc.getDictionaryListDetail', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (51, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary/list', 'apiDesc.getDictionaryList', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (52, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dict/:name', 'apiDesc.getDictionaryDetailByDictionaryName', 'dictionary', 'Core', 'GET', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (53, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/oauth_provider/create', 'apiDesc.createProvider', 'oauth', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (54, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/oauth_provider/update', 'apiDesc.updateProvider', 'oauth', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (55, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/oauth_provider/delete', 'apiDesc.deleteProvider', 'oauth', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (56, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/oauth_provider/list', 'apiDesc.getProviderList', 'oauth', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (57, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/oauth/login', 'apiDesc.oauthLogin', 'oauth', 'Core', 'POST', 1);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (58, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/oauth_provider', 'apiDesc.getProviderById', 'oauth', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (59, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/token/create', 'apiDesc.createToken', 'token', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (60, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/token/update', 'apiDesc.updateToken', 'token', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (61, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/token/delete', 'apiDesc.deleteToken', 'token', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (62, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/token/list', 'apiDesc.getTokenList', 'token', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (63, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/token/logout', 'apiDesc.forceLoggingOut', 'token', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (64, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/token', 'apiDesc.getTokenById', 'token', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (65, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/department/create', 'apiDesc.createDepartment', 'department', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (66, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/department/update', 'apiDesc.updateDepartment', 'department', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (67, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/department/delete', 'apiDesc.deleteDepartment', 'department', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (68, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/department/list', 'apiDesc.getDepartmentList', 'department', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (69, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/department', 'apiDesc.getDepartmentById', 'department', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (70, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/position/create', 'apiDesc.createPosition', 'position', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (71, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/position/update', 'apiDesc.updatePosition', 'position', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (72, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/position/delete', 'apiDesc.deletePosition', 'position', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (73, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/position/list', 'apiDesc.getPositionList', 'position', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (74, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/position', 'apiDesc.getPositionById', 'position', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (75, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task/create', 'apiDesc.createTask', 'task', 'Job', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (76, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task/update', 'apiDesc.updateTask', 'task', 'Job', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (77, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task/delete', 'apiDesc.deleteTask', 'task', 'Job', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (78, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task/list', 'apiDesc.getTaskList', 'task', 'Job', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (79, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task', 'apiDesc.getTaskById', 'task', 'Job', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (80, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task_log/create', 'apiDesc.createTaskLog', 'task_log', 'Job', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (81, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task_log/update', 'apiDesc.updateTaskLog', 'task_log', 'Job', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (82, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task_log/delete', 'apiDesc.deleteTaskLog', 'task_log', 'Job', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (83, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task_log/list', 'apiDesc.getTaskLogList', 'task_log', 'Job', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (84, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task_log', 'apiDesc.getTaskLogById', 'task_log', 'Job', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (85, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/configuration/create', 'apiDesc.createConfiguration', 'configuration', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (86, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/configuration/update', 'apiDesc.updateConfiguration', 'configuration', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (87, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/configuration/delete', 'apiDesc.deleteConfiguration', 'configuration', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (88, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/configuration/list', 'apiDesc.getConfigurationList', 'configuration', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (89, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/configuration', 'apiDesc.getConfigurationById', 'configuration', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (90, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_log/create', 'apiDesc.createEmailLog', 'email_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (91, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_log/update', 'apiDesc.updateEmailLog', 'email_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (92, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_log/delete', 'apiDesc.deleteEmailLog', 'email_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (93, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_log/list', 'apiDesc.getEmailLogList', 'email_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (94, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_log', 'apiDesc.getEmailLogById', 'email_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (95, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_provider/create', 'apiDesc.createEmailProvider', 'email_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (96, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_provider/update', 'apiDesc.updateEmailProvider', 'email_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (97, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_provider/delete', 'apiDesc.deleteEmailProvider', 'email_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (98, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_provider/list', 'apiDesc.getEmailProviderList', 'email_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (99, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_provider', 'apiDesc.getEmailProviderById', 'email_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (100, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_log/create', 'apiDesc.createSmsLog', 'sms_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (101, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_log/update', 'apiDesc.updateSmsLog', 'sms_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (102, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_log/delete', 'apiDesc.deleteSmsLog', 'sms_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (103, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_log/list', 'apiDesc.getSmsLogList', 'sms_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (104, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_log', 'apiDesc.getSmsLogById', 'sms_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (105, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_provider/create', 'apiDesc.createSmsProvider', 'sms_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (106, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_provider/update', 'apiDesc.updateSmsProvider', 'sms_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (107, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_provider/delete', 'apiDesc.deleteSmsProvider', 'sms_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (108, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_provider/list', 'apiDesc.getSmsProviderList', 'sms_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (109, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_provider', 'apiDesc.getSmsProviderById', 'sms_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (110, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms/send', 'apiDesc.sendSms', 'message_sender', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (111, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email/send', 'apiDesc.sendEmail', 'message_sender', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (112, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member/create', 'apiDesc.createMember', 'member', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (113, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member/update', 'apiDesc.updateMember', 'member', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (114, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member/delete', 'apiDesc.deleteMember', 'member', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (115, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member/list', 'apiDesc.getMemberList', 'member', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (116, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member', 'apiDesc.getMemberById', 'member', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (117, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member_rank/create', 'apiDesc.createMemberRank', 'member_rank', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (118, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member_rank/update', 'apiDesc.updateMemberRank', 'member_rank', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (119, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member_rank/delete', 'apiDesc.deleteMemberRank', 'member_rank', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (120, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member_rank/list', 'apiDesc.getMemberRankList', 'member_rank', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (121, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member_rank', 'apiDesc.getMemberRankById', 'member_rank', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (122, '2025-02-20 09:25:42', '2025-10-30 15:59:12', '/upgrade_url/list', 'apiDesc.getUrlList', 'upgrade_url', 'Upgrade', 'POST', 1);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (123, '2025-02-20 09:25:42', '2025-10-30 15:59:13', '/upgrade_url/delete', 'apiDesc.deleteUrl', 'upgrade_url', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (127, '2025-02-20 09:25:42', '2025-10-30 15:59:14', '/upgrade_url/create', 'apiDesc.createUrl', 'upgrade_url', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (129, '2025-02-20 09:25:42', '2025-10-30 15:59:16', '/upgrade_url/update', 'apiDesc.updateUrl', 'upgrade_url', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (130, '2025-02-20 09:25:42', '2025-10-30 15:59:17', '/upgrade_url', 'apiDesc.getUrlById', 'upgrade_url', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (131, '2025-02-20 09:25:42', '2025-10-30 15:59:18', '/upgrade_dev_model', 'apiDesc.getDevModelById', 'upgrade_dev_model', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (132, '2025-02-20 09:25:42', '2025-10-30 15:59:19', '/upgrade_dev_model/list', 'apiDesc.getDevModelList', 'upgrade_dev_model', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (133, '2025-02-20 09:25:42', '2025-10-30 15:59:20', '/upgrade_dev_model/delete', 'apiDesc.deleteDevModel', 'upgrade_dev_model', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (134, '2025-02-20 09:25:42', '2025-10-30 15:59:22', '/upgrade_dev_model/create', 'apiDesc.createDevModel', 'upgrade_dev_model', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (135, '2025-02-20 09:25:42', '2025-10-30 15:59:23', '/upgrade_dev_model/update', 'apiDesc.updateDevModel', 'upgrade_dev_model', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (136, '2025-02-20 09:25:42', '2025-10-30 15:59:24', '/upgrade_url_upgrade_strategy', 'apiDesc.getUrlUpgradeStrategyById', 'upgrade_url_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (137, '2025-02-20 09:25:42', '2025-10-30 15:59:25', '/upgrade_url_upgrade_strategy/list', 'apiDesc.getUrlUpgradeStrategyList', 'upgrade_url_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (138, '2025-02-20 09:25:42', '2025-10-30 15:59:26', '/upgrade_url_upgrade_strategy/update', 'apiDesc.updateUrlUpgradeStrategy', 'upgrade_url_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (139, '2025-02-20 09:25:42', '2025-10-30 15:59:27', '/upgrade_url_upgrade_strategy/create', 'apiDesc.createUrlUpgradeStrategy', 'upgrade_url_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (140, '2025-02-20 09:25:42', '2025-10-30 15:59:28', '/upgrade_url_upgrade_strategy/delete', 'apiDesc.deleteUrlUpgradeStrategy', 'upgrade_url_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (141, '2025-02-20 09:25:42', '2025-10-30 15:59:29', '/upgrade_url_version', 'apiDesc.getUrlVersionById', 'upgrade_url_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (142, '2025-02-20 09:25:42', '2025-10-30 15:59:30', '/upgrade_url_version/list', 'apiDesc.getUrlVersionList', 'upgrade_url_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (143, '2025-02-20 09:25:42', '2025-10-30 15:59:31', '/upgrade_url_version/delete', 'apiDesc.deleteUrlVersion', 'upgrade_url_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (144, '2025-02-20 09:25:42', '2025-10-30 15:59:32', '/upgrade_url_version/create', 'apiDesc.createUrlVersion', 'upgrade_url_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (145, '2025-02-20 09:25:42', '2025-10-30 15:59:33', '/upgrade_url_version/update', 'apiDesc.updateUrlVersion', 'upgrade_url_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (146, '2025-02-20 09:25:42', '2025-10-30 15:59:33', '/company_secret', 'apiDesc.getSecretById', 'sys_company_secret', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (147, '2025-02-20 09:25:42', '2025-10-30 15:59:34', '/company_secret/list', 'apiDesc.getSecretList', 'sys_company_secret', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (148, '2025-02-20 09:25:42', '2025-10-30 15:59:35', '/company_secret/delete', 'apiDesc.deleteSecret', 'sys_company_secret', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (149, '2025-02-20 09:25:42', '2025-10-30 15:59:36', '/company_secret/create', 'apiDesc.createSecret', 'sys_company_secret', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (150, '2025-02-20 09:25:42', '2025-10-30 15:59:37', '/company_secret/update', 'apiDesc.updateSecret', 'sys_company_secret', 'Core', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (151, '2025-02-20 09:25:42', '2025-10-30 15:59:38', '/upgrade_dev_swarm', 'apiDesc.getDevSwarmById', 'upgrade_dev_swarm', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (152, '2025-02-20 09:25:42', '2025-10-30 15:59:39', '/upgrade_dev_swarm/list', 'apiDesc.getDevSwarmList', 'upgrade_dev_swarm', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (153, '2025-02-20 09:25:42', '2025-10-30 15:59:40', '/upgrade_dev_swarm/delete', 'apiDesc.deleteDevSwarm', 'upgrade_dev_swarm', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (154, '2025-02-20 09:25:42', '2025-10-30 15:59:41', '/upgrade_dev_swarm/create', 'apiDesc.createDevSwarm', 'upgrade_dev_swarm', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (155, '2025-02-20 09:25:42', '2025-10-30 15:59:42', '/upgrade_dev_swarm/update', 'apiDesc.updateDevSwarm', 'upgrade_dev_swarm', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (156, '2025-02-20 09:25:42', '2025-10-30 15:59:44', '/upgrade_file', 'apiDesc.getFileAppById', 'upgrade_file', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (157, '2025-02-20 09:25:42', '2025-10-30 15:59:45', '/upgrade_file/list', 'apiDesc.getFileAppList', 'upgrade_file', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (158, '2025-02-20 09:25:42', '2025-10-30 15:59:46', '/upgrade_file/delete', 'apiDesc.deleteFileApp', 'upgrade_file', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (159, '2025-02-20 09:25:42', '2025-10-30 15:59:47', '/upgrade_file/update', 'apiDesc.updateFileApp', 'upgrade_file', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (160, '2025-02-20 09:25:42', '2025-10-30 15:59:48', '/upgrade_file/create', 'apiDesc.createFileApp', 'upgrade_file', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (171, '2025-02-20 09:25:42', '2025-10-30 15:59:49', '/upgrade_dashboard', 'apiDesc.upgrade_dashboard', 'upgrade_dashboard', 'Upgrade', 'POST', 1);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (199, '2025-03-10 02:45:02', '2025-03-10 02:45:02', '/upload', 'apiDesc.uploadFile', 'file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (200, '2025-03-10 02:45:02', '2025-03-10 02:45:02', '/file/list', 'apiDesc.fileList', 'file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (201, '2025-03-10 02:45:02', '2025-03-10 02:45:02', '/file/update', 'apiDesc.updateFileInfo', 'file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (202, '2025-03-10 02:45:02', '2025-03-10 02:45:02', '/file/status', 'apiDesc.setPublicStatus', 'file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (203, '2025-03-10 02:45:02', '2025-03-10 02:45:02', '/file/delete', 'apiDesc.deleteFile', 'file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (204, '2025-03-10 02:45:02', '2025-03-10 02:45:02', '/file/download/:id', 'apiDesc.downloadFile', 'file', 'Fms', 'GET', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (205, '2025-03-10 02:45:02', '2025-03-10 02:45:02', '/file_tag/create', 'apiDesc.createFileTag', 'file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (206, '2025-03-10 02:45:02', '2025-03-10 02:45:02', '/file_tag/update', 'apiDesc.updateFileTag', 'file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (207, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/file_tag/delete', 'apiDesc.deleteFileTag', 'file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (208, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/file_tag/list', 'apiDesc.getFileTagList', 'file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (209, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/file_tag', 'apiDesc.getFileTagById', 'file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (210, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/storage_provider/create', 'apiDesc.createStorageProvider', 'storage_provider', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (211, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/storage_provider/update', 'apiDesc.updateStorageProvider', 'storage_provider', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (212, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/storage_provider/delete', 'apiDesc.deleteStorageProvider', 'storage_provider', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (213, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/storage_provider/list', 'apiDesc.getStorageProviderList', 'storage_provider', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (214, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/storage_provider', 'apiDesc.getStorageProviderById', 'storage_provider', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (215, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file/create', 'apiDesc.createCloudFile', 'cloud_file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (216, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file/update', 'apiDesc.updateCloudFile', 'cloud_file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (217, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file/delete', 'apiDesc.deleteCloudFile', 'cloud_file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (218, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file/list', 'apiDesc.getCloudFileList', 'cloud_file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (219, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file', 'apiDesc.getCloudFileById', 'cloud_file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (220, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file/upload', 'apiDesc.uploadFileToCloud', 'cloud_file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (221, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file_tag/create', 'apiDesc.createCloudFileTag', 'cloud_file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (222, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file_tag/update', 'apiDesc.updateCloudFileTag', 'cloud_file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (223, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file_tag/delete', 'apiDesc.deleteCloudFileTag', 'cloud_file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (224, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file_tag/list', 'apiDesc.getCloudFileTagList', 'cloud_file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (225, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file_tag', 'apiDesc.getCloudFileTagById', 'cloud_file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (226, '2025-02-20 09:25:42', '2025-10-30 16:00:03', '/upgrade_file_version', 'apiDesc.getFileVersionById', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (227, '2025-02-20 09:25:42', '2025-10-30 16:00:04', '/upgrade_file_version/list', 'apiDesc.getFileVersionList', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (228, '2025-02-20 09:25:42', '2025-10-30 16:00:05', '/upgrade_file_version/delete', 'apiDesc.deleteFileVersion', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (229, '2025-02-20 09:25:42', '2025-10-30 16:00:06', '/upgrade_file_version/create', 'apiDesc.createFileVersion', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (230, '2025-02-20 09:25:42', '2025-10-30 16:00:07', '/upgrade_file_version/update', 'apiDesc.updateFileVersion', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (231, '2025-02-20 09:25:42', '2025-10-30 16:00:08', '/upgrade_file_upgrade_strategy', 'apiDesc.getFileUpgradeStrategyById', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (232, '2025-02-20 09:25:42', '2025-10-30 16:00:09', '/upgrade_file_upgrade_strategy/list', 'apiDesc.getFileUpgradeStrategyList', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (233, '2025-02-20 09:25:42', '2025-10-30 16:00:11', '/upgrade_file_upgrade_strategy/delete', 'apiDesc.deleteFileUpgradeStrategy', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (234, '2025-02-20 09:25:42', '2025-10-30 16:00:12', '/upgrade_file_upgrade_strategy/create', 'apiDesc.createFileUpgradeStrategy', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (235, '2025-02-20 09:25:42', '2025-10-30 16:00:13', '/upgrade_file_upgrade_strategy/update', 'apiDesc.updateFileUpgradeStrategy', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (236, '2025-02-20 09:25:42', '2025-10-30 16:00:14', '/upgrade_dev', 'apiDesc.getDevById', 'upgrade_dev', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (237, '2025-02-20 09:25:42', '2025-10-30 16:00:15', '/upgrade_dev/list', 'apiDesc.getDevList', 'upgrade_dev', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (238, '2025-02-20 09:25:42', '2025-10-30 16:00:17', '/upgrade_dev/delete', 'apiDesc.deleteDev', 'upgrade_dev', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (239, '2025-02-20 09:25:42', '2025-10-30 16:00:18', '/upgrade_dev/create', 'apiDesc.createDev', 'upgrade_dev', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (240, '2025-02-20 09:25:42', '2025-10-30 16:00:19', '/upgrade_dev/update', 'apiDesc.updateDev', 'upgrade_dev', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (242, '2025-02-20 09:25:42', '2025-10-30 16:00:20', '/upgrade_dev_group', 'apiDesc.getDevGroupById', 'upgrade_dev_group', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (243, '2025-02-20 09:25:42', '2025-10-30 16:00:21', '/upgrade_dev_group/list', 'apiDesc.getDevGroupList', 'upgrade_dev_group', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (244, '2025-02-20 09:25:42', '2025-10-30 16:00:22', '/upgrade_dev_group/delete', 'apiDesc.deleteDevGroup', 'upgrade_dev_group', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (245, '2025-02-20 09:25:42', '2025-10-30 16:00:23', '/upgrade_dev_group/create', 'apiDesc.createDevGroup', 'upgrade_dev_group', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (246, '2025-02-20 09:25:42', '2025-10-30 16:00:26', '/upgrade_dev_group/update', 'apiDesc.updateDevGroup', 'upgrade_dev_group', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (247, '2025-02-20 09:25:42', '2025-10-30 16:00:27', '/upgrade_tauri', 'apiDesc.getTauriAppById', 'upgrade_tauri', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (248, '2025-02-20 09:25:42', '2025-10-30 16:00:28', '/upgrade_tauri/list', 'apiDesc.getTauriAppList', 'upgrade_tauri', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (249, '2025-02-20 09:25:42', '2025-10-30 16:00:29', '/upgrade_tauri/delete', 'apiDesc.deleteTauriApp', 'upgrade_tauri', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (250, '2025-02-20 09:25:42', '2025-10-30 16:00:30', '/upgrade_tauri/update', 'apiDesc.updateTauriApp', 'upgrade_tauri', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (251, '2025-02-20 09:25:42', '2025-10-30 16:00:31', '/upgrade_tauri/create', 'apiDesc.createTauriApp', 'upgrade_tauri', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (252, '2025-02-20 09:25:42', '2025-10-30 16:00:32', '/upgrade_tauri_version', 'apiDesc.getTauriVersionById', 'upgrade_tauri_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (253, '2025-02-20 09:25:42', '2025-10-30 16:00:33', '/upgrade_tauri_version/list', 'apiDesc.getTauriVersionList', 'upgrade_tauri_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (254, '2025-02-20 09:25:42', '2025-10-30 16:00:35', '/upgrade_tauri_version/delete', 'apiDesc.deleteTauriVersion', 'upgrade_tauri_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (255, '2025-02-20 09:25:42', '2025-10-30 16:00:36', '/upgrade_tauri_version/create', 'apiDesc.createTauriVersion', 'upgrade_tauri_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (256, '2025-02-20 09:25:42', '2025-10-30 16:00:37', '/upgrade_tauri_version/update', 'apiDesc.updateTauriVersion', 'upgrade_tauri_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (257, '2025-02-20 09:25:42', '2025-10-30 16:00:38', '/upgrade_tauri_upgrade_strategy', 'apiDesc.getTauriUpgradeStrategyById', 'upgrade_tauri_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (258, '2025-02-20 09:25:42', '2025-10-30 16:00:39', '/upgrade_tauri_upgrade_strategy/list', 'apiDesc.getTauriUpgradeStrategyList', 'upgrade_tauri_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (259, '2025-02-20 09:25:42', '2025-10-30 16:00:40', '/upgrade_tauri_upgrade_strategy/delete', 'apiDesc.deleteTauriUpgradeStrategy', 'upgrade_tauri_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (260, '2025-02-20 09:25:42', '2025-10-30 16:00:41', '/upgrade_tauri_upgrade_strategy/create', 'apiDesc.createTauriUpgradeStrategy', 'upgrade_tauri_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (261, '2025-02-20 09:25:42', '2025-10-30 16:00:42', '/upgrade_tauri_upgrade_strategy/update', 'apiDesc.updateTauriUpgradeStrategy', 'upgrade_tauri_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (262, '2025-02-20 09:25:42', '2025-10-30 16:00:43', '/upgrade_configuration', 'apiDesc.getConfigurationAppById', 'upgrade_configuration', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (263, '2025-02-20 09:25:42', '2025-10-30 16:00:44', '/upgrade_configuration/list', 'apiDesc.getConfigurationAppList', 'upgrade_configuration', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (264, '2025-02-20 09:25:42', '2025-10-30 16:00:45', '/upgrade_configuration/delete', 'apiDesc.deleteConfigurationApp', 'upgrade_configuration', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (265, '2025-02-20 09:25:42', '2025-10-30 16:00:46', '/upgrade_configuration/create', 'apiDesc.createConfigurationApp', 'upgrade_configuration', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (266, '2025-02-20 09:25:42', '2025-10-30 16:00:47', '/upgrade_configuration/update', 'apiDesc.updateConfigurationApp', 'upgrade_configuration', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (267, '2025-02-20 09:25:42', '2025-10-30 16:00:48', '/upgrade_configuration_version', 'apiDesc.getConfigurationVersionById', 'upgrade_configuration_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (268, '2025-02-20 09:25:42', '2025-10-30 16:00:49', '/upgrade_configuration_version/list', 'apiDesc.getConfigurationVersionList', 'upgrade_configuration_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (269, '2025-02-20 09:25:42', '2025-10-30 16:00:50', '/upgrade_configuration_version/delete', 'apiDesc.deleteConfigurationVersion', 'upgrade_configuration_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (270, '2025-02-20 09:25:42', '2025-10-30 16:00:52', '/upgrade_configuration_version/create', 'apiDesc.createConfigurationVersion', 'upgrade_configuration_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (271, '2025-02-20 09:25:42', '2025-10-30 16:00:53', '/upgrade_configuration_version/update', 'apiDesc.updateConfigurationVersion', 'upgrade_configuration_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (272, '2025-02-20 09:25:42', '2025-10-30 16:00:54', '/upgrade_configuration_upgrade_strategy', 'apiDesc.getConfigurationUpgradeStrategyById', 'upgrade_configuration_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (273, '2025-02-20 09:25:42', '2025-10-30 16:00:55', '/upgrade_configuration_upgrade_strategy/list', 'apiDesc.getConfigurationUpgradeStrategyList', 'upgrade_configuration_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (274, '2025-02-20 09:25:42', '2025-10-30 16:00:56', '/upgrade_configuration_upgrade_strategy/delete', 'apiDesc.deleteConfigurationUpgradeStrategy', 'upgrade_configuration_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (275, '2025-02-20 09:25:42', '2025-10-30 16:00:57', '/upgrade_configuration_upgrade_strategy/create', 'apiDesc.createConfigurationUpgradeStrategy', 'upgrade_configuration_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (276, '2025-02-20 09:25:42', '2025-10-30 16:00:58', '/upgrade_configuration_upgrade_strategy/update', 'apiDesc.updateConfigurationUpgradeStrategy', 'upgrade_configuration_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (277, '2025-02-20 09:25:42', '2025-10-30 16:00:59', '/upgrade_apk', 'apiDesc.getApkAppById', 'upgrade_apk', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (278, '2025-02-20 09:25:42', '2025-10-30 16:01:00', '/upgrade_apk/list', 'apiDesc.getApkAppList', 'upgrade_apk', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (279, '2025-02-20 09:25:42', '2025-10-30 16:01:01', '/upgrade_apk/delete', 'apiDesc.deleteApkApp', 'upgrade_apk', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (280, '2025-02-20 09:25:42', '2025-10-30 16:01:02', '/upgrade_apk/create', 'apiDesc.createApkApp', 'upgrade_apk', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (281, '2025-02-20 09:25:42', '2025-10-30 16:01:04', '/upgrade_apk/update', 'apiDesc.updateApkApp', 'upgrade_apk', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (282, '2025-02-20 09:25:42', '2025-10-30 16:01:05', '/upgrade_apk_version', 'apiDesc.getApkVersionById', 'upgrade_apk_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (283, '2025-02-20 09:25:42', '2025-10-30 16:01:06', '/upgrade_apk_version/list', 'apiDesc.getApkVersionList', 'upgrade_apk_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (284, '2025-02-20 09:25:42', '2025-10-30 16:01:07', '/upgrade_apk_version/delete', 'apiDesc.deleteApkVersion', 'upgrade_apk_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (285, '2025-02-20 09:25:42', '2025-10-30 16:01:08', '/upgrade_apk_version/create', 'apiDesc.createApkVersion', 'upgrade_apk_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (286, '2025-02-20 09:25:42', '2025-10-30 16:01:09', '/upgrade_apk_version/update', 'apiDesc.updateApkVersion', 'upgrade_apk_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (287, '2025-02-20 09:25:42', '2025-10-30 16:01:10', '/upgrade_apk_upgrade_strategy', 'apiDesc.getApkUpgradeStrategyById', 'upgrade_apk_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (288, '2025-02-20 09:25:42', '2025-10-30 16:01:11', '/upgrade_apk_upgrade_strategy/list', 'apiDesc.getApkUpgradeStrategyList', 'upgrade_apk_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (289, '2025-02-20 09:25:42', '2025-10-30 16:01:12', '/upgrade_apk_upgrade_strategy/delete', 'apiDesc.deleteApkUpgradeStrategy', 'upgrade_apk_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (290, '2025-02-20 09:25:42', '2025-10-30 16:01:13', '/upgrade_apk_upgrade_strategy/create', 'apiDesc.createApkUpgradeStrategy', 'upgrade_apk_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (291, '2025-02-20 09:25:42', '2025-10-30 16:01:14', '/upgrade_apk_upgrade_strategy/update', 'apiDesc.updateApkUpgradeStrategy', 'upgrade_apk_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (292, '2025-02-20 09:25:42', '2025-10-30 16:01:15', '/upgrade_electron', 'apiDesc.getElectronAppById', 'upgrade_electron', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (293, '2025-02-20 09:25:42', '2025-10-30 16:01:16', '/upgrade_electron/list', 'apiDesc.getElectronAppList', 'upgrade_electron', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (294, '2025-02-20 09:25:42', '2025-10-30 16:01:18', '/upgrade_electron/delete', 'apiDesc.deleteElectronApp', 'upgrade_electron', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (295, '2025-02-20 09:25:42', '2025-10-30 16:01:19', '/upgrade_electron/create', 'apiDesc.createElectronApp', 'upgrade_electron', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (296, '2025-02-20 09:25:42', '2025-10-30 16:01:20', '/upgrade_electron/update', 'apiDesc.updateElectronApp', 'upgrade_electron', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (297, '2025-02-20 09:25:42', '2025-10-30 16:01:21', '/upgrade_electron_version', 'apiDesc.getElectronVersionById', 'upgrade_electron_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (298, '2025-02-20 09:25:42', '2025-10-30 16:01:23', '/upgrade_electron_version/list', 'apiDesc.getElectronVersionList', 'upgrade_electron_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (299, '2025-02-20 09:25:42', '2025-10-30 16:01:24', '/upgrade_electron_version/delete', 'apiDesc.deleteElectronVersion', 'upgrade_electron_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (300, '2025-02-20 09:25:42', '2025-10-30 16:01:25', '/upgrade_electron_version/create', 'apiDesc.createElectronVersion', 'upgrade_electron_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (301, '2025-02-20 09:25:42', '2025-10-30 16:01:26', '/upgrade_electron_version/update', 'apiDesc.updateElectronVersion', 'upgrade_electron_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (302, '2025-02-20 09:25:42', '2025-10-30 16:01:27', '/upgrade_electron_upgrade_strategy', 'apiDesc.getElectronUpgradeStrategyById', 'upgrade_electron_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (303, '2025-02-20 09:25:42', '2025-10-30 16:01:29', '/upgrade_electron_upgrade_strategy/list', 'apiDesc.getElectronUpgradeStrategyList', 'upgrade_electron_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (304, '2025-02-20 09:25:42', '2025-10-30 16:01:30', '/upgrade_electron_upgrade_strategy/delete', 'apiDesc.deleteElectronUpgradeStrategy', 'upgrade_electron_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (305, '2025-02-20 09:25:42', '2025-10-30 16:01:31', '/upgrade_electron_upgrade_strategy/create', 'apiDesc.createElectronUpgradeStrategy', 'upgrade_electron_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (306, '2025-02-20 09:25:42', '2025-10-30 16:01:33', '/upgrade_electron_upgrade_strategy/update', 'apiDesc.updateElectronUpgradeStrategy', 'upgrade_electron_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (307, '2025-02-20 09:25:42', '2025-10-30 16:01:34', '/upgrade_company_income', 'apiDesc.getIncomeById', 'upgrade_company_income', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (308, '2025-02-20 09:25:42', '2025-10-30 16:01:35', '/upgrade_company_income/list', 'apiDesc.getIncomeList', 'upgrade_company_income', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (309, '2025-09-09 09:16:34', '2025-10-30 16:01:36', '/upgrade_company_traffic_packet', 'apiDesc.getTrafficPacketById', 'upgrade_company_traffic_packet', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (310, '2025-09-09 09:16:26', '2025-10-30 16:01:37', '/upgrade_company_traffic_packet/list', 'apiDesc.getTrafficPacketList', 'upgrade_company_traffic_packet', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (311, '2025-09-09 09:16:28', '2025-10-30 16:01:38', '/upgrade_company_traffic_packet/delete', 'apiDesc.deleteTrafficPacket', 'upgrade_company_traffic_packet', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (312, '2025-09-09 09:16:29', '2025-10-30 16:01:39', '/upgrade_company_traffic_packet/create', 'apiDesc.createTrafficPacket', 'upgrade_company_traffic_packet', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (313, '2025-09-09 09:16:32', '2025-10-30 16:01:40', '/upgrade_company_traffic_packet/update', 'apiDesc.updateTrafficPacket', 'upgrade_company_traffic_packet', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (314, '2025-10-27 18:48:13', '2025-10-30 16:01:41', '/upgrade_win', 'apiDesc.getWinAppById', 'upgrade_win', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (315, '2025-10-27 18:48:19', '2025-10-30 16:01:42', '/upgrade_win/list', 'apiDesc.getWinAppList', 'upgrade_win', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (316, '2025-10-27 18:48:26', '2025-10-30 16:01:43', '/upgrade_win/delete', 'apiDesc.deleteWinApp', 'upgrade_win', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (317, '2025-10-27 18:48:31', '2025-10-30 16:01:44', '/upgrade_win/create', 'apiDesc.createWinApp', 'upgrade_win', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (318, '2025-10-27 18:48:37', '2025-10-30 16:01:45', '/upgrade_win/update', 'apiDesc.updateWinApp', 'upgrade_win', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (319, '2025-10-27 18:48:42', '2025-10-30 16:01:46', '/upgrade_win_version', 'apiDesc.getWinVersionById', 'upgrade_win_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (320, '2025-10-27 18:48:46', '2025-10-30 16:01:47', '/upgrade_win_version/list', 'apiDesc.getWinVersionList', 'upgrade_win_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (321, '2025-10-27 18:48:51', '2025-10-30 16:01:48', '/upgrade_win_version/delete', 'apiDesc.deleteWinVersion', 'upgrade_win_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (322, '2025-10-27 18:48:57', '2025-10-30 16:01:49', '/upgrade_win_version/create', 'apiDesc.createWinVersion', 'upgrade_win_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (323, '2025-10-27 18:49:06', '2025-10-30 16:01:50', '/upgrade_win_version/update', 'apiDesc.updateWinVersion', 'upgrade_win_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (324, '2025-10-27 18:49:11', '2025-10-30 16:01:51', '/upgrade_win_upgrade_strategy', 'apiDesc.getWinUpgradeStrategyById', 'upgrade_win_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (325, '2025-10-27 18:49:14', '2025-10-30 16:01:52', '/upgrade_win_upgrade_strategy/list', 'apiDesc.getWinUpgradeStrategyList', 'upgrade_win_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (326, '2025-10-27 18:49:20', '2025-10-30 16:01:53', '/upgrade_win_upgrade_strategy/delete', 'apiDesc.deleteWinUpgradeStrategy', 'upgrade_win_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (327, '2025-10-27 18:49:24', '2025-10-30 16:01:54', '/upgrade_win_upgrade_strategy/create', 'apiDesc.createWinUpgradeStrategy', 'upgrade_win_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (328, '2025-10-27 18:49:29', '2025-10-30 16:01:55', '/upgrade_win_upgrade_strategy/update', 'apiDesc.updateWinUpgradeStrategy', 'upgrade_win_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (329, '2025-10-27 18:49:46', '2025-10-30 16:01:56', '/upgrade_lnx', 'apiDesc.getLnxAppById', 'upgrade_lnx', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (330, '2025-10-27 18:49:51', '2025-10-30 16:01:56', '/upgrade_lnx/list', 'apiDesc.getLnxAppList', 'upgrade_lnx', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (331, '2025-10-27 18:49:56', '2025-10-30 16:01:57', '/upgrade_lnx/delete', 'apiDesc.deleteLnxApp', 'upgrade_lnx', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (332, '2025-10-27 18:50:00', '2025-10-30 16:01:58', '/upgrade_lnx/create', 'apiDesc.createLnxApp', 'upgrade_lnx', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (333, '2025-10-27 18:50:06', '2025-10-30 16:01:59', '/upgrade_lnx/update', 'apiDesc.updateLnxApp', 'upgrade_lnx', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (334, '2025-10-27 18:50:11', '2025-10-30 16:02:00', '/upgrade_lnx_version', 'apiDesc.getLnxVersionById', 'upgrade_lnx_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (335, '2025-10-27 18:50:15', '2025-10-30 16:02:01', '/upgrade_lnx_version/list', 'apiDesc.getLnxVersionList', 'upgrade_lnx_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (336, '2025-10-27 18:50:22', '2025-10-30 16:02:02', '/upgrade_lnx_version/delete', 'apiDesc.deleteLnxVersion', 'upgrade_lnx_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (337, '2025-10-27 18:50:29', '2025-10-30 16:02:03', '/upgrade_lnx_version/create', 'apiDesc.createLnxVersion', 'upgrade_lnx_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (338, '2025-10-27 18:50:36', '2025-10-30 16:02:04', '/upgrade_lnx_version/update', 'apiDesc.updateLnxVersion', 'upgrade_lnx_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (339, '2025-10-27 18:50:52', '2025-10-30 16:02:05', '/upgrade_lnx_upgrade_strategy', 'apiDesc.getLnxUpgradeStrategyById', 'upgrade_lnx_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (340, '2025-10-27 18:50:58', '2025-10-30 16:02:07', '/upgrade_lnx_upgrade_strategy/list', 'apiDesc.getLnxUpgradeStrategyList', 'upgrade_lnx_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (341, '2025-10-27 18:51:04', '2025-10-30 16:02:07', '/upgrade_lnx_upgrade_strategy/delete', 'apiDesc.deleteLnxUpgradeStrategy', 'upgrade_lnx_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (342, '2025-10-27 18:51:07', '2025-10-30 16:02:08', '/upgrade_lnx_upgrade_strategy/create', 'apiDesc.createLnxUpgradeStrategy', 'upgrade_lnx_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (343, '2025-10-27 18:51:12', '2025-10-30 16:02:09', '/upgrade_lnx_upgrade_strategy/update', 'apiDesc.updateLnxUpgradeStrategy', 'upgrade_lnx_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (344, '2025-10-27 18:51:17', '2025-10-30 16:02:10', '/upgrade_mac', 'apiDesc.getMacAppById', 'upgrade_mac', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (345, '2025-10-27 18:51:25', '2025-10-30 16:02:11', '/upgrade_mac/list', 'apiDesc.getMacAppList', 'upgrade_mac', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (346, '2025-10-27 18:51:30', '2025-10-30 16:02:12', '/upgrade_mac/delete', 'apiDesc.deleteMacApp', 'upgrade_mac', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (347, '2025-10-27 18:52:02', '2025-10-30 16:02:13', '/upgrade_mac/create', 'apiDesc.createMacApp', 'upgrade_mac', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (348, '2025-10-27 18:52:06', '2025-10-30 16:02:14', '/upgrade_mac/update', 'apiDesc.updateMacApp', 'upgrade_mac', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (349, '2025-10-27 18:52:10', '2025-10-30 16:02:15', '/upgrade_mac_version', 'apiDesc.getMacVersionById', 'upgrade_mac_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (350, '2025-10-27 18:52:16', '2025-10-30 16:02:16', '/upgrade_mac_version/list', 'apiDesc.getMacVersionList', 'upgrade_mac_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (351, '2025-10-27 18:52:22', '2025-10-30 16:02:17', '/upgrade_mac_version/delete', 'apiDesc.deleteMacVersion', 'upgrade_mac_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (352, '2025-10-27 18:52:29', '2025-10-30 16:02:18', '/upgrade_mac_version/create', 'apiDesc.createMacVersion', 'upgrade_mac_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (353, '2025-10-27 18:52:37', '2025-10-30 16:02:19', '/upgrade_mac_version/update', 'apiDesc.updateMacVersion', 'upgrade_mac_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (354, '2025-10-27 18:52:41', '2025-10-30 16:02:20', '/upgrade_mac_upgrade_strategy', 'apiDesc.getMacUpgradeStrategyById', 'upgrade_mac_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (355, '2025-10-27 18:52:46', '2025-10-30 16:02:21', '/upgrade_mac_upgrade_strategy/list', 'apiDesc.getMacUpgradeStrategyList', 'upgrade_mac_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (356, '2025-10-27 18:52:52', '2025-10-30 16:02:22', '/upgrade_mac_upgrade_strategy/delete', 'apiDesc.deleteMacUpgradeStrategy', 'upgrade_mac_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (357, '2025-10-27 18:52:58', '2025-10-30 16:02:23', '/upgrade_mac_upgrade_strategy/create', 'apiDesc.createMacUpgradeStrategy', 'upgrade_mac_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (358, '2025-10-27 18:53:03', '2025-10-30 16:02:25', '/upgrade_mac_upgrade_strategy/update', 'apiDesc.updateMacUpgradeStrategy', 'upgrade_mac_upgrade_strategy', 'Upgrade', 'POST', 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_apis_copy1
-- ----------------------------
DROP TABLE IF EXISTS `sys_apis_copy1`;
CREATE TABLE `sys_apis_copy1` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'API path | API 路径',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'API description | API 描述',
  `api_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'API group | API 分组',
  `service_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'Other' COMMENT 'Service name | 服务名称',
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'POST' COMMENT 'HTTP method | HTTP 请求类型',
  `is_required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Whether is required | 是否必选',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `api_path_method` (`path`,`method`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_apis_copy1
-- ----------------------------
BEGIN;
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (1, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/login', 'apiDesc.userLogin', 'user', 'Core', 'POST', 1);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (2, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/register', 'apiDesc.userRegister', 'user', 'Core', 'POST', 1);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (3, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/create', 'apiDesc.createUser', 'user', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (4, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/update', 'apiDesc.updateUser', 'user', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (5, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/change_password', 'apiDesc.userChangePassword', 'user', 'Core', 'POST', 1);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (6, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/info', 'apiDesc.userInfo', 'user', 'Core', 'GET', 1);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (7, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/list', 'apiDesc.userList', 'user', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (8, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/delete', 'apiDesc.deleteUser', 'user', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (9, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/perm', 'apiDesc.userPermissions', 'user', 'Core', 'GET', 1);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (10, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/profile', 'apiDesc.userProfile', 'user', 'Core', 'GET', 1);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (11, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/profile', 'apiDesc.updateProfile', 'user', 'Core', 'POST', 1);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (12, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/logout', 'apiDesc.logout', 'user', 'Core', 'GET', 1);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (13, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user', 'apiDesc.getUserById', 'user', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (14, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/refresh_token', 'apiDesc.refreshToken', 'user', 'Core', 'GET', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (15, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/user/access_token', 'apiDesc.accessToken', 'user', 'Core', 'GET', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (16, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/role/create', 'apiDesc.createRole', 'role', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (17, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/role/update', 'apiDesc.updateRole', 'role', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (18, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/role/delete', 'apiDesc.deleteRole', 'role', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (19, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/role/list', 'apiDesc.roleList', 'role', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (20, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/role', 'apiDesc.getRoleById', 'role', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (21, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu/create', 'apiDesc.createMenu', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (22, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu/update', 'apiDesc.updateMenu', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (23, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu/delete', 'apiDesc.deleteMenu', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (24, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu/list', 'apiDesc.menuList', 'menu', 'Core', 'GET', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (25, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu/role/list', 'apiDesc.menuRoleList', 'authority', 'Core', 'GET', 1);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (26, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu_param/create', 'apiDesc.createMenuParam', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (27, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu_param/update', 'apiDesc.updateMenuParam', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (28, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu_param/list', 'apiDesc.menuParamListByMenuId', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (29, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu_param/delete', 'apiDesc.deleteMenuParam', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (30, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu_param', 'apiDesc.getMenuParamById', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (31, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/menu', 'apiDesc.getMenuById', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (32, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/captcha', 'apiDesc.captcha', 'captcha', 'Core', 'GET', 1);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (33, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/authority/api/create_or_update', 'apiDesc.createOrUpdateApiAuthority', 'authority', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (34, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/authority/api/role', 'apiDesc.APIAuthorityOfRole', 'authority', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (35, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/authority/menu/create_or_update', 'apiDesc.createOrUpdateMenuAuthority', 'authority', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (36, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/authority/menu/role', 'apiDesc.menuAuthorityOfRole', 'authority', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (37, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/api/create', 'apiDesc.createApi', 'api', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (38, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/api/update', 'apiDesc.updateApi', 'api', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (39, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/api/delete', 'apiDesc.deleteAPI', 'api', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (40, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/api/list', 'apiDesc.APIList', 'api', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (41, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/api', 'apiDesc.getApiById', 'api', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (42, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary', 'apiDesc.getDictionaryById', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (43, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary/create', 'apiDesc.createDictionary', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (44, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary/update', 'apiDesc.updateDictionary', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (45, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary/delete', 'apiDesc.deleteDictionary', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (46, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary_detail/delete', 'apiDesc.deleteDictionaryDetail', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (47, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary_detail', 'apiDesc.getDictionaryDetailById', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (48, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary_detail/create', 'apiDesc.createDictionaryDetail', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (49, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary_detail/update', 'apiDesc.updateDictionaryDetail', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (50, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary_detail/list', 'apiDesc.getDictionaryListDetail', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (51, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dictionary/list', 'apiDesc.getDictionaryList', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (52, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/dict/:name', 'apiDesc.getDictionaryDetailByDictionaryName', 'dictionary', 'Core', 'GET', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (53, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/oauth_provider/create', 'apiDesc.createProvider', 'oauth', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (54, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/oauth_provider/update', 'apiDesc.updateProvider', 'oauth', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (55, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/oauth_provider/delete', 'apiDesc.deleteProvider', 'oauth', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (56, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/oauth_provider/list', 'apiDesc.getProviderList', 'oauth', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (57, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/oauth/login', 'apiDesc.oauthLogin', 'oauth', 'Core', 'POST', 1);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (58, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/oauth_provider', 'apiDesc.getProviderById', 'oauth', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (59, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/token/create', 'apiDesc.createToken', 'token', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (60, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/token/update', 'apiDesc.updateToken', 'token', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (61, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/token/delete', 'apiDesc.deleteToken', 'token', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (62, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/token/list', 'apiDesc.getTokenList', 'token', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (63, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/token/logout', 'apiDesc.forceLoggingOut', 'token', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (64, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/token', 'apiDesc.getTokenById', 'token', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (65, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/department/create', 'apiDesc.createDepartment', 'department', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (66, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/department/update', 'apiDesc.updateDepartment', 'department', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (67, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/department/delete', 'apiDesc.deleteDepartment', 'department', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (68, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/department/list', 'apiDesc.getDepartmentList', 'department', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (69, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/department', 'apiDesc.getDepartmentById', 'department', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (70, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/position/create', 'apiDesc.createPosition', 'position', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (71, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/position/update', 'apiDesc.updatePosition', 'position', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (72, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/position/delete', 'apiDesc.deletePosition', 'position', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (73, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/position/list', 'apiDesc.getPositionList', 'position', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (74, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/position', 'apiDesc.getPositionById', 'position', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (75, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task/create', 'apiDesc.createTask', 'task', 'Job', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (76, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task/update', 'apiDesc.updateTask', 'task', 'Job', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (77, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task/delete', 'apiDesc.deleteTask', 'task', 'Job', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (78, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task/list', 'apiDesc.getTaskList', 'task', 'Job', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (79, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task', 'apiDesc.getTaskById', 'task', 'Job', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (80, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task_log/create', 'apiDesc.createTaskLog', 'task_log', 'Job', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (81, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task_log/update', 'apiDesc.updateTaskLog', 'task_log', 'Job', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (82, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task_log/delete', 'apiDesc.deleteTaskLog', 'task_log', 'Job', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (83, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task_log/list', 'apiDesc.getTaskLogList', 'task_log', 'Job', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (84, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/task_log', 'apiDesc.getTaskLogById', 'task_log', 'Job', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (85, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/configuration/create', 'apiDesc.createConfiguration', 'configuration', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (86, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/configuration/update', 'apiDesc.updateConfiguration', 'configuration', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (87, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/configuration/delete', 'apiDesc.deleteConfiguration', 'configuration', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (88, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/configuration/list', 'apiDesc.getConfigurationList', 'configuration', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (89, '2025-02-10 09:33:13', '2025-02-10 09:33:13', '/configuration', 'apiDesc.getConfigurationById', 'configuration', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (90, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_log/create', 'apiDesc.createEmailLog', 'email_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (91, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_log/update', 'apiDesc.updateEmailLog', 'email_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (92, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_log/delete', 'apiDesc.deleteEmailLog', 'email_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (93, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_log/list', 'apiDesc.getEmailLogList', 'email_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (94, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_log', 'apiDesc.getEmailLogById', 'email_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (95, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_provider/create', 'apiDesc.createEmailProvider', 'email_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (96, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_provider/update', 'apiDesc.updateEmailProvider', 'email_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (97, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_provider/delete', 'apiDesc.deleteEmailProvider', 'email_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (98, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_provider/list', 'apiDesc.getEmailProviderList', 'email_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (99, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email_provider', 'apiDesc.getEmailProviderById', 'email_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (100, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_log/create', 'apiDesc.createSmsLog', 'sms_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (101, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_log/update', 'apiDesc.updateSmsLog', 'sms_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (102, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_log/delete', 'apiDesc.deleteSmsLog', 'sms_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (103, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_log/list', 'apiDesc.getSmsLogList', 'sms_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (104, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_log', 'apiDesc.getSmsLogById', 'sms_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (105, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_provider/create', 'apiDesc.createSmsProvider', 'sms_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (106, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_provider/update', 'apiDesc.updateSmsProvider', 'sms_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (107, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_provider/delete', 'apiDesc.deleteSmsProvider', 'sms_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (108, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_provider/list', 'apiDesc.getSmsProviderList', 'sms_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (109, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms_provider', 'apiDesc.getSmsProviderById', 'sms_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (110, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/sms/send', 'apiDesc.sendSms', 'message_sender', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (111, '2025-02-10 09:50:08', '2025-02-10 09:50:08', '/email/send', 'apiDesc.sendEmail', 'message_sender', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (112, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member/create', 'apiDesc.createMember', 'member', 'Mms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (113, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member/update', 'apiDesc.updateMember', 'member', 'Mms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (114, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member/delete', 'apiDesc.deleteMember', 'member', 'Mms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (115, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member/list', 'apiDesc.getMemberList', 'member', 'Mms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (116, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member', 'apiDesc.getMemberById', 'member', 'Mms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (117, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member_rank/create', 'apiDesc.createMemberRank', 'member_rank', 'Mms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (118, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member_rank/update', 'apiDesc.updateMemberRank', 'member_rank', 'Mms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (119, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member_rank/delete', 'apiDesc.deleteMemberRank', 'member_rank', 'Mms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (120, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member_rank/list', 'apiDesc.getMemberRankList', 'member_rank', 'Mms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (121, '2025-02-11 02:49:47', '2025-02-11 02:49:47', '/member_rank', 'apiDesc.getMemberRankById', 'member_rank', 'Mms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (122, '2025-02-20 09:25:42', '2025-09-22 14:45:50', '/upgrade_url/list', 'list', 'upgrade_url', 'Upgrade', 'POST', 1);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (123, '2025-02-20 09:25:42', '2025-09-22 14:45:44', '/upgrade_url/delete', 'delete', 'upgrade_url', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (127, '2025-02-20 09:25:42', '2025-09-22 14:45:41', '/upgrade_url/create', 'create', 'upgrade_url', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (129, '2025-02-20 09:25:42', '2025-09-22 14:45:39', '/upgrade_url/update', 'update', 'upgrade_url', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (130, '2025-02-20 09:25:42', '2025-09-22 14:46:53', '/upgrade_url', 'detail', 'upgrade_url', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (131, '2025-02-20 09:25:42', '2025-09-22 14:46:52', '/upgrade_dev_model', 'detail', 'upgrade_dev_model', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (132, '2025-02-20 09:25:42', '2025-09-22 14:45:56', '/upgrade_dev_model/list', 'list', 'upgrade_dev_model', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (133, '2025-02-20 09:25:42', '2025-09-22 14:45:58', '/upgrade_dev_model/delete', 'delete', 'upgrade_dev_model', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (134, '2025-02-20 09:25:42', '2025-09-22 14:46:00', '/upgrade_dev_model/create', 'create', 'upgrade_dev_model', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (135, '2025-02-20 09:25:42', '2025-09-22 14:46:04', '/upgrade_dev_model/update', 'update', 'upgrade_dev_model', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (136, '2025-02-20 09:25:42', '2025-09-22 14:51:42', '/upgrade_url_upgrade_strategy', 'detail', 'upgrade_url_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (137, '2025-02-20 09:25:42', '2025-09-22 14:47:09', '/upgrade_url_upgrade_strategy/list', 'list', 'upgrade_url_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (138, '2025-02-20 09:25:42', '2025-09-22 14:49:34', '/upgrade_url_upgrade_strategy/update', 'update', 'upgrade_url_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (139, '2025-02-20 09:25:42', '2025-09-22 14:51:23', '/upgrade_url_upgrade_strategy/create', 'create', 'upgrade_url_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (140, '2025-02-20 09:25:42', '2025-09-22 14:48:43', '/upgrade_url_upgrade_strategy/delete', 'delete', 'upgrade_url_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (141, '2025-02-20 09:25:42', '2025-09-22 14:51:19', '/upgrade_url_version', 'detail', 'upgrade_url_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (142, '2025-02-20 09:25:42', '2025-09-22 14:47:11', '/upgrade_url_version/list', 'list', 'upgrade_url_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (143, '2025-02-20 09:25:42', '2025-09-22 14:48:46', '/upgrade_url_version/delete', 'delete', 'upgrade_url_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (144, '2025-02-20 09:25:42', '2025-09-22 14:51:25', '/upgrade_url_version/create', 'create', 'upgrade_url_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (145, '2025-02-20 09:25:42', '2025-09-22 14:49:37', '/upgrade_url_version/update', 'update', 'upgrade_url_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (146, '2025-02-20 09:25:42', '2025-09-22 14:51:43', '/company_secret', 'detail', 'sys_company_secret', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (147, '2025-02-20 09:25:42', '2025-09-22 14:47:14', '/company_secret/list', 'list', 'sys_company_secret', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (148, '2025-02-20 09:25:42', '2025-09-22 14:48:48', '/company_secret/delete', 'delete', 'sys_company_secret', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (149, '2025-02-20 09:25:42', '2025-09-22 14:51:28', '/company_secret/create', 'create', 'sys_company_secret', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (150, '2025-02-20 09:25:42', '2025-09-22 14:49:40', '/company_secret/update', 'update', 'sys_company_secret', 'Core', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (151, '2025-02-20 09:25:42', '2025-09-22 14:51:45', '/upgrade_dev_swarm', 'detail', 'upgrade_dev_swarm', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (152, '2025-02-20 09:25:42', '2025-09-22 14:47:16', '/upgrade_dev_swarm/list', 'list', 'upgrade_dev_swarm', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (153, '2025-02-20 09:25:42', '2025-09-22 14:48:50', '/upgrade_dev_swarm/delete', 'delete', 'upgrade_dev_swarm', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (154, '2025-02-20 09:25:42', '2025-09-22 14:51:30', '/upgrade_dev_swarm/create', 'create', 'upgrade_dev_swarm', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (155, '2025-02-20 09:25:42', '2025-09-22 14:49:42', '/upgrade_dev_swarm/update', 'update', 'upgrade_dev_swarm', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (156, '2025-02-20 09:25:42', '2025-09-22 14:51:47', '/upgrade_file', 'detail', 'upgrade_file', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (157, '2025-02-20 09:25:42', '2025-09-22 14:47:19', '/upgrade_file/list', 'list', 'upgrade_file', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (158, '2025-02-20 09:25:42', '2025-09-22 14:48:55', '/upgrade_file/delete', 'delete', 'upgrade_file', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (159, '2025-02-20 09:25:42', '2025-09-22 14:49:46', '/upgrade_file/update', 'update', 'upgrade_file', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (160, '2025-02-20 09:25:42', '2025-09-22 14:51:31', '/upgrade_file/create', 'create', 'upgrade_file', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (171, '2025-02-20 09:25:42', '2025-09-22 14:47:22', '/upgrade_dashboard', 'upgrade_dashboard', 'upgrade_dashboard', 'Upgrade', 'POST', 1);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (199, '2025-03-10 02:45:02', '2025-03-10 02:45:02', '/upload', 'apiDesc.uploadFile', 'file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (200, '2025-03-10 02:45:02', '2025-03-10 02:45:02', '/file/list', 'apiDesc.fileList', 'file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (201, '2025-03-10 02:45:02', '2025-03-10 02:45:02', '/file/update', 'apiDesc.updateFileInfo', 'file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (202, '2025-03-10 02:45:02', '2025-03-10 02:45:02', '/file/status', 'apiDesc.setPublicStatus', 'file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (203, '2025-03-10 02:45:02', '2025-03-10 02:45:02', '/file/delete', 'apiDesc.deleteFile', 'file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (204, '2025-03-10 02:45:02', '2025-03-10 02:45:02', '/file/download/:id', 'apiDesc.downloadFile', 'file', 'Fms', 'GET', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (205, '2025-03-10 02:45:02', '2025-03-10 02:45:02', '/file_tag/create', 'apiDesc.createFileTag', 'file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (206, '2025-03-10 02:45:02', '2025-03-10 02:45:02', '/file_tag/update', 'apiDesc.updateFileTag', 'file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (207, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/file_tag/delete', 'apiDesc.deleteFileTag', 'file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (208, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/file_tag/list', 'apiDesc.getFileTagList', 'file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (209, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/file_tag', 'apiDesc.getFileTagById', 'file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (210, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/storage_provider/create', 'apiDesc.createStorageProvider', 'storage_provider', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (211, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/storage_provider/update', 'apiDesc.updateStorageProvider', 'storage_provider', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (212, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/storage_provider/delete', 'apiDesc.deleteStorageProvider', 'storage_provider', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (213, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/storage_provider/list', 'apiDesc.getStorageProviderList', 'storage_provider', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (214, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/storage_provider', 'apiDesc.getStorageProviderById', 'storage_provider', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (215, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file/create', 'apiDesc.createCloudFile', 'cloud_file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (216, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file/update', 'apiDesc.updateCloudFile', 'cloud_file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (217, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file/delete', 'apiDesc.deleteCloudFile', 'cloud_file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (218, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file/list', 'apiDesc.getCloudFileList', 'cloud_file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (219, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file', 'apiDesc.getCloudFileById', 'cloud_file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (220, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file/upload', 'apiDesc.uploadFileToCloud', 'cloud_file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (221, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file_tag/create', 'apiDesc.createCloudFileTag', 'cloud_file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (222, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file_tag/update', 'apiDesc.updateCloudFileTag', 'cloud_file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (223, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file_tag/delete', 'apiDesc.deleteCloudFileTag', 'cloud_file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (224, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file_tag/list', 'apiDesc.getCloudFileTagList', 'cloud_file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (225, '2025-03-10 02:45:03', '2025-03-10 02:45:03', '/cloud_file_tag', 'apiDesc.getCloudFileTagById', 'cloud_file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (226, '2025-02-20 09:25:42', '2025-09-22 14:51:53', '/upgrade_file_version', 'detail', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (227, '2025-02-20 09:25:42', '2025-09-22 14:48:05', '/upgrade_file_version/list', 'list', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (228, '2025-02-20 09:25:42', '2025-09-22 14:48:56', '/upgrade_file_version/delete', 'delete', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (229, '2025-02-20 09:25:42', '2025-09-22 14:50:53', '/upgrade_file_version/create', 'create', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (230, '2025-02-20 09:25:42', '2025-09-22 14:49:47', '/upgrade_file_version/update', 'update', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (231, '2025-02-20 09:25:42', '2025-09-22 14:51:54', '/upgrade_file_upgrade_strategy', 'detail', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (232, '2025-02-20 09:25:42', '2025-09-22 14:51:10', '/upgrade_file_upgrade_strategy/list', 'list', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (233, '2025-02-20 09:25:42', '2025-09-22 14:48:58', '/upgrade_file_upgrade_strategy/delete', 'delete', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (234, '2025-02-20 09:25:42', '2025-09-22 14:50:51', '/upgrade_file_upgrade_strategy/create', 'create', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (235, '2025-02-20 09:25:42', '2025-09-22 14:49:50', '/upgrade_file_upgrade_strategy/update', 'update', 'upgrade_file_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (236, '2025-02-20 09:25:42', '2025-09-22 14:51:56', '/upgrade_dev', 'detail', 'upgrade_dev', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (237, '2025-02-20 09:25:42', '2025-09-22 14:48:07', '/upgrade_dev/list', 'list', 'upgrade_dev', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (238, '2025-02-20 09:25:42', '2025-09-22 14:49:00', '/upgrade_dev/delete', 'delete', 'upgrade_dev', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (239, '2025-02-20 09:25:42', '2025-09-22 14:50:48', '/upgrade_dev/create', 'create', 'upgrade_dev', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (240, '2025-02-20 09:25:42', '2025-09-22 14:49:51', '/upgrade_dev/update', 'update', 'upgrade_dev', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (242, '2025-02-20 09:25:42', '2025-09-22 14:51:58', '/upgrade_dev_group', 'detail', 'upgrade_dev_group', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (243, '2025-02-20 09:25:42', '2025-09-22 14:48:11', '/upgrade_dev_group/list', 'list', 'upgrade_dev_group', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (244, '2025-02-20 09:25:42', '2025-09-22 14:49:02', '/upgrade_dev_group/delete', 'delete', 'upgrade_dev_group', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (245, '2025-02-20 09:25:42', '2025-09-22 14:50:40', '/upgrade_dev_group/create', 'create', 'upgrade_dev_group', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (246, '2025-02-20 09:25:42', '2025-09-22 14:49:53', '/upgrade_dev_group/update', 'update', 'upgrade_dev_group', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (247, '2025-02-20 09:25:42', '2025-09-22 14:52:00', '/upgrade_tauri', 'detail', 'upgrade_tauri', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (248, '2025-02-20 09:25:42', '2025-09-22 14:48:09', '/upgrade_tauri/list', 'list', 'upgrade_tauri', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (249, '2025-02-20 09:25:42', '2025-09-22 14:49:03', '/upgrade_tauri/delete', 'delete', 'upgrade_tauri', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (250, '2025-02-20 09:25:42', '2025-09-22 14:49:56', '/upgrade_tauri/update', 'update', 'upgrade_tauri', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (251, '2025-02-20 09:25:42', '2025-09-22 14:50:42', '/upgrade_tauri/create', 'create', 'upgrade_tauri', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (252, '2025-02-20 09:25:42', '2025-09-22 14:52:01', '/upgrade_tauri_version', 'detail', 'upgrade_tauri_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (253, '2025-02-20 09:25:42', '2025-09-22 14:48:12', '/upgrade_tauri_version/list', 'list', 'upgrade_tauri_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (254, '2025-02-20 09:25:42', '2025-09-22 14:49:05', '/upgrade_tauri_version/delete', 'delete', 'upgrade_tauri_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (255, '2025-02-20 09:25:42', '2025-09-22 14:50:38', '/upgrade_tauri_version/create', 'create', 'upgrade_tauri_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (256, '2025-02-20 09:25:42', '2025-09-22 14:49:57', '/upgrade_tauri_version/update', 'update', 'upgrade_tauri_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (257, '2025-02-20 09:25:42', '2025-09-22 14:52:03', '/upgrade_tauri_upgrade_strategy', 'detail', 'upgrade_tauri_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (258, '2025-02-20 09:25:42', '2025-09-22 14:48:14', '/upgrade_tauri_upgrade_strategy/list', 'list', 'upgrade_tauri_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (259, '2025-02-20 09:25:42', '2025-09-22 14:49:06', '/upgrade_tauri_upgrade_strategy/delete', 'delete', 'upgrade_tauri_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (260, '2025-02-20 09:25:42', '2025-09-22 14:50:36', '/upgrade_tauri_upgrade_strategy/create', 'create', 'upgrade_tauri_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (261, '2025-02-20 09:25:42', '2025-09-22 14:49:59', '/upgrade_tauri_upgrade_strategy/update', 'update', 'upgrade_tauri_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (262, '2025-02-20 09:25:42', '2025-09-22 14:52:05', '/upgrade_configuration', 'detail', 'upgrade_configuration', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (263, '2025-02-20 09:25:42', '2025-09-22 14:48:15', '/upgrade_configuration/list', 'list', 'upgrade_configuration', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (264, '2025-02-20 09:25:42', '2025-09-22 14:49:08', '/upgrade_configuration/delete', 'delete', 'upgrade_configuration', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (265, '2025-02-20 09:25:42', '2025-09-22 14:52:08', '/upgrade_configuration/create', 'create', 'upgrade_configuration', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (266, '2025-02-20 09:25:42', '2025-09-22 14:50:01', '/upgrade_configuration/update', 'update', 'upgrade_configuration', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (267, '2025-02-20 09:25:42', '2025-09-22 14:52:06', '/upgrade_configuration_version', 'detail', 'upgrade_configuration_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (268, '2025-02-20 09:25:42', '2025-09-22 14:48:17', '/upgrade_configuration_version/list', 'list', 'upgrade_configuration_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (269, '2025-02-20 09:25:42', '2025-09-22 14:49:11', '/upgrade_configuration_version/delete', 'delete', 'upgrade_configuration_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (270, '2025-02-20 09:25:42', '2025-09-22 14:50:34', '/upgrade_configuration_version/create', 'create', 'upgrade_configuration_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (271, '2025-02-20 09:25:42', '2025-09-22 14:50:02', '/upgrade_configuration_version/update', 'update', 'upgrade_configuration_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (272, '2025-02-20 09:25:42', '2025-09-22 14:52:13', '/upgrade_configuration_upgrade_strategy', 'detail', 'upgrade_configuration_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (273, '2025-02-20 09:25:42', '2025-09-22 14:48:18', '/upgrade_configuration_upgrade_strategy/list', 'list', 'upgrade_configuration_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (274, '2025-02-20 09:25:42', '2025-09-22 14:49:14', '/upgrade_configuration_upgrade_strategy/delete', 'delete', 'upgrade_configuration_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (275, '2025-02-20 09:25:42', '2025-09-22 14:50:32', '/upgrade_configuration_upgrade_strategy/create', 'create', 'upgrade_configuration_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (276, '2025-02-20 09:25:42', '2025-09-22 14:50:04', '/upgrade_configuration_upgrade_strategy/update', 'update', 'upgrade_configuration_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (277, '2025-02-20 09:25:42', '2025-09-22 14:52:15', '/upgrade_apk', 'detail', 'upgrade_apk', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (278, '2025-02-20 09:25:42', '2025-09-22 14:48:19', '/upgrade_apk/list', 'list', 'upgrade_apk', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (279, '2025-02-20 09:25:42', '2025-09-22 14:49:17', '/upgrade_apk/delete', 'delete', 'upgrade_apk', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (280, '2025-02-20 09:25:42', '2025-09-22 14:50:30', '/upgrade_apk/create', 'create', 'upgrade_apk', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (281, '2025-02-20 09:25:42', '2025-09-22 14:50:07', '/upgrade_apk/update', 'update', 'upgrade_apk', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (282, '2025-02-20 09:25:42', '2025-09-22 14:52:16', '/upgrade_apk_version', 'detail', 'upgrade_apk_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (283, '2025-02-20 09:25:42', '2025-09-22 14:48:21', '/upgrade_apk_version/list', 'list', 'upgrade_apk_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (284, '2025-02-20 09:25:42', '2025-09-22 14:49:18', '/upgrade_apk_version/delete', 'delete', 'upgrade_apk_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (285, '2025-02-20 09:25:42', '2025-09-22 14:50:28', '/upgrade_apk_version/create', 'create', 'upgrade_apk_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (286, '2025-02-20 09:25:42', '2025-09-22 14:50:09', '/upgrade_apk_version/update', 'update', 'upgrade_apk_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (287, '2025-02-20 09:25:42', '2025-09-22 14:52:18', '/upgrade_apk_upgrade_strategy', 'detail', 'upgrade_apk_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (288, '2025-02-20 09:25:42', '2025-09-22 14:48:23', '/upgrade_apk_upgrade_strategy/list', 'list', 'upgrade_apk_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (289, '2025-02-20 09:25:42', '2025-09-22 14:49:20', '/upgrade_apk_upgrade_strategy/delete', 'delete', 'upgrade_apk_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (290, '2025-02-20 09:25:42', '2025-09-22 14:50:27', '/upgrade_apk_upgrade_strategy/create', 'create', 'upgrade_apk_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (291, '2025-02-20 09:25:42', '2025-09-22 14:52:20', '/upgrade_apk_upgrade_strategy/update', 'update', 'upgrade_apk_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (292, '2025-02-20 09:25:42', '2025-09-22 14:52:23', '/upgrade_electron', 'detail', 'upgrade_electron', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (293, '2025-02-20 09:25:42', '2025-09-22 14:52:24', '/upgrade_electron/list', 'list', 'upgrade_electron', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (294, '2025-02-20 09:25:42', '2025-09-22 14:49:22', '/upgrade_electron/delete', 'delete', 'upgrade_electron', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (295, '2025-02-20 09:25:42', '2025-09-22 14:50:25', '/upgrade_electron/create', 'create', 'upgrade_electron', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (296, '2025-02-20 09:25:42', '2025-09-22 14:50:12', '/upgrade_electron/update', 'update', 'upgrade_electron', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (297, '2025-02-20 09:25:42', '2025-09-22 14:52:31', '/upgrade_electron_version', 'detail', 'upgrade_electron_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (298, '2025-02-20 09:25:42', '2025-09-22 14:48:26', '/upgrade_electron_version/list', 'list', 'upgrade_electron_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (299, '2025-02-20 09:25:42', '2025-09-22 14:49:24', '/upgrade_electron_version/delete', 'delete', 'upgrade_electron_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (300, '2025-02-20 09:25:42', '2025-09-22 14:50:24', '/upgrade_electron_version/create', 'create', 'upgrade_electron_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (301, '2025-02-20 09:25:42', '2025-09-22 14:50:15', '/upgrade_electron_version/update', 'update', 'upgrade_electron_version', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (302, '2025-02-20 09:25:42', '2025-09-22 14:52:33', '/upgrade_electron_upgrade_strategy', 'detail', 'upgrade_electron_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (303, '2025-02-20 09:25:42', '2025-09-22 14:48:27', '/upgrade_electron_upgrade_strategy/list', 'list', 'upgrade_electron_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (304, '2025-02-20 09:25:42', '2025-09-22 14:49:26', '/upgrade_electron_upgrade_strategy/delete', 'delete', 'upgrade_electron_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (305, '2025-02-20 09:25:42', '2025-09-22 14:50:22', '/upgrade_electron_upgrade_strategy/create', 'create', 'upgrade_electron_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (306, '2025-02-20 09:25:42', '2025-09-22 14:52:37', '/upgrade_electron_upgrade_strategy/update', 'update', 'upgrade_electron_upgrade_strategy', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (307, '2025-02-20 09:25:42', '2025-09-22 14:52:40', '/upgrade_company_income', 'detail', 'upgrade_company_income', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (308, '2025-02-20 09:25:42', '2025-09-22 14:48:30', '/upgrade_company_income/list', 'list', 'upgrade_company_income', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (309, '2025-09-09 09:16:34', '2025-09-22 14:52:46', '/upgrade_company_traffic_packet', 'detail', 'upgrade_company_traffic_packet', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (310, '2025-09-09 09:16:26', '2025-09-22 14:48:31', '/upgrade_company_traffic_packet/list', 'list', 'upgrade_company_traffic_packet', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (311, '2025-09-09 09:16:28', '2025-09-22 14:49:30', '/upgrade_company_traffic_packet/delete', 'delete', 'upgrade_company_traffic_packet', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (312, '2025-09-09 09:16:29', '2025-09-22 14:50:19', '/upgrade_company_traffic_packet/create', 'create', 'upgrade_company_traffic_packet', 'Upgrade', 'POST', 0);
INSERT INTO `sys_apis_copy1` (`id`, `created_at`, `updated_at`, `path`, `description`, `api_group`, `service_name`, `method`, `is_required`) VALUES (313, '2025-09-09 09:16:32', '2025-09-22 14:50:16', '/upgrade_company_traffic_packet/update', 'update', 'upgrade_company_traffic_packet', 'Upgrade', 'POST', 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_company_secret
-- ----------------------------
DROP TABLE IF EXISTS `sys_company_secret`;
CREATE TABLE `sys_company_secret` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `access_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '密钥id',
  `secret_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '密钥key',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='公司密钥表';

-- ----------------------------
-- Records of sys_company_secret
-- ----------------------------
BEGIN;
INSERT INTO `sys_company_secret` (`id`, `created_at`, `updated_at`, `company_id`, `access_key`, `secret_key`, `enable`, `is_del`, `description`) VALUES (1, '2025-02-24 07:58:27', '2025-10-28 10:13:11', 1, 'mui2W50H1j-OC4xD6PgQag', 'PEbdHFGC0uO_Pch7XWBQTMsFRxKPQAM2565eP8LJ3gc', 1, 0, '1');
COMMIT;

-- ----------------------------
-- Table structure for sys_companys
-- ----------------------------
DROP TABLE IF EXISTS `sys_companys`;
CREATE TABLE `sys_companys` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '公司名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='公司信息表';

-- ----------------------------
-- Records of sys_companys
-- ----------------------------
BEGIN;
INSERT INTO `sys_companys` (`id`, `created_at`, `updated_at`, `name`) VALUES (1, '2025-02-24 07:55:58', '2025-09-23 09:51:51', '默认');
COMMIT;

-- ----------------------------
-- Table structure for sys_configuration
-- ----------------------------
DROP TABLE IF EXISTS `sys_configuration`;
CREATE TABLE `sys_configuration` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `sort` int unsigned NOT NULL DEFAULT '1' COMMENT 'Sort Number | 排序编号',
  `state` tinyint(1) DEFAULT '1' COMMENT 'State true: normal false: ban | 状态 true 正常 false 禁用',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Configurarion name | 配置名称',
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Configuration key | 配置的键名',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Configuraion value | 配置的值',
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Configuration category | 配置的分类',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Remark | 备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `configuration_key` (`key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_configuration
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_departments
-- ----------------------------
DROP TABLE IF EXISTS `sys_departments`;
CREATE TABLE `sys_departments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `status` tinyint unsigned DEFAULT '1' COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `sort` int unsigned NOT NULL DEFAULT '1' COMMENT 'Sort Number | 排序编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Department name | 部门名称',
  `ancestors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Parents'' IDs | 父级列表',
  `leader` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Department leader | 部门负责人',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Leader''s phone number | 负责人电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Leader''s email | 部门负责人电子邮箱',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Remark | 备注',
  `parent_id` bigint unsigned DEFAULT '0' COMMENT 'Parent department ID | 父级部门ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_departments
-- ----------------------------
BEGIN;
INSERT INTO `sys_departments` (`id`, `created_at`, `updated_at`, `status`, `sort`, `name`, `ancestors`, `leader`, `phone`, `email`, `remark`, `parent_id`) VALUES (1, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 1, 1, 'department.managementDepartment', '', 'admin', '18888888888', 'simpleadmin@gmail.com', 'Super Administrator', 1000000);
COMMIT;

-- ----------------------------
-- Table structure for sys_dictionaries
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionaries`;
CREATE TABLE `sys_dictionaries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `status` tinyint unsigned DEFAULT '1' COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The title shown in the ui | 展示名称 （建议配合i18n）',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The name of dictionary for search | 字典搜索名称',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'The description of dictionary | 字典的描述',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_dictionaries
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_dictionary_details
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionary_details`;
CREATE TABLE `sys_dictionary_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `status` tinyint unsigned DEFAULT '1' COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `sort` int unsigned NOT NULL DEFAULT '1' COMMENT 'Sort Number | 排序编号',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The title shown in the ui | 展示名称 （建议配合i18n）',
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'key | 键',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'value | 值',
  `dictionary_id` bigint unsigned DEFAULT NULL COMMENT 'Dictionary ID | 字典ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_dictionary_details
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_menus`;
CREATE TABLE `sys_menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `sort` int unsigned NOT NULL DEFAULT '1' COMMENT 'Sort Number | 排序编号',
  `menu_level` int unsigned NOT NULL COMMENT 'Menu level | 菜单层级',
  `menu_type` int unsigned NOT NULL COMMENT 'Menu type | 菜单类型 （菜单或目录）0 目录 1 菜单',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT 'Index path | 菜单路由路径',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Index name | 菜单名称',
  `redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT 'Redirect path | 跳转路径 （外链）',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT 'The path of vue file | 组件路径',
  `disabled` tinyint(1) DEFAULT '0' COMMENT 'Disable status | 是否停用',
  `service_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'Other' COMMENT 'Service Name | 服务名称',
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Permission symbol | 权限标识',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Menu name | 菜单显示标题',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Menu icon | 菜单图标',
  `hide_menu` tinyint(1) DEFAULT '0' COMMENT 'Hide menu | 是否隐藏菜单',
  `hide_breadcrumb` tinyint(1) DEFAULT '0' COMMENT 'Hide the breadcrumb | 隐藏面包屑',
  `ignore_keep_alive` tinyint(1) DEFAULT '0' COMMENT 'Do not keep alive the tab | 取消页面缓存',
  `hide_tab` tinyint(1) DEFAULT '0' COMMENT 'Hide the tab header | 隐藏页头',
  `frame_src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT 'Show iframe | 内嵌 iframe',
  `carry_param` tinyint(1) DEFAULT '0' COMMENT 'The route carries parameters or not | 携带参数',
  `hide_children_in_menu` tinyint(1) DEFAULT '0' COMMENT 'Hide children menu or not | 隐藏所有子菜单',
  `affix` tinyint(1) DEFAULT '0' COMMENT 'Affix tab | Tab 固定',
  `dynamic_level` int unsigned DEFAULT '20' COMMENT 'The maximum number of pages the router can open | 能打开的子TAB数',
  `real_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT 'The real path of the route without dynamic part | 菜单路由不包含参数部分',
  `parent_id` bigint unsigned DEFAULT '100000' COMMENT 'Parent menu ID | 父菜单ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `menu_name` (`name`) USING BTREE,
  UNIQUE KEY `menu_path` (`path`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_menus
-- ----------------------------
BEGIN;
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (1, '2025-02-10 09:33:13', '2025-09-22 14:33:07', 0, 1, 1, '/dashboard', 'Dashboard', '', '/dashboard/analytics/index', 0, 'Core', NULL, 'route.dashboard', 'ant-design:dashboard-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (2, '2025-02-10 09:33:13', '2025-09-22 14:56:10', 8, 1, 0, '/system', 'SystemManagement', '', 'LAYOUT', 0, 'Core', NULL, 'route.systemManagementTitle', 'ant-design:tool-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (3, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 1, 2, 1, '/menu', 'MenuManagement', '', '/sys/menu/index', 0, 'Core', NULL, 'route.menuManagementTitle', 'ant-design:bars-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (4, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 2, 2, 1, '/role', 'RoleManagement', '', '/sys/role/index', 0, 'Core', NULL, 'route.roleManagementTitle', 'ant-design:user-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (5, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 3, 2, 1, '/user', 'UserManagement', '', '/sys/user/index', 0, 'Core', NULL, 'route.userManagementTitle', 'ant-design:user-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (6, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 4, 2, 1, '/department', 'DepartmentManagement', '', '/sys/department/index', 0, 'Core', NULL, 'route.departmentManagement', 'ic:outline-people-alt', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (7, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 5, 2, 1, '/api', 'APIManagement', '', '/sys/api/index', 0, 'Core', NULL, 'route.apiManagementTitle', 'ant-design:api-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (8, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 6, 2, 1, '/dictionary', 'DictionaryManagement', '', '/sys/dictionary/index', 0, 'Core', NULL, 'route.dictionaryManagementTitle', 'ant-design:book-outlined', 0, 0, 0, 0, '', 0, 1, 0, 20, '', 2);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (9, '2025-02-10 09:33:13', '2025-09-22 14:56:17', 9, 1, 0, '/other', 'OtherPages', '', 'LAYOUT', 0, 'Core', NULL, 'route.otherPages', 'ant-design:question-circle-outlined', 1, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (10, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 3, 1, 1, '/profile', 'Profile', '', '/sys/profile/index', 0, 'Core', NULL, 'route.userProfileTitle', 'ant-design:profile-outlined', 1, 0, 0, 0, '', 0, 0, 0, 20, '', 9);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (11, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 6, 2, 1, '/oauth', 'OauthManagement', '', '/sys/oauth/index', 0, 'Core', NULL, 'route.oauthManagement', 'ant-design:unlock-filled', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (12, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 7, 2, 1, '/token', 'TokenManagement', '', '/sys/token/index', 0, 'Core', NULL, 'route.tokenManagement', 'ant-design:lock-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (13, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 8, 2, 1, '/position', 'PositionManagement', '', '/sys/position/index', 0, 'Core', NULL, 'route.positionManagement', 'ic:twotone-work-outline', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (14, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 8, 2, 1, '/task', 'TaskManagement', '', '/sys/task/index', 0, 'Job', NULL, 'route.taskManagement', 'ic:baseline-access-alarm', 1, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (15, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 9, 2, 1, '/configuration', 'ConfigurationManagement', '', '/sys/configuration/index', 0, 'Core', NULL, 'route.configurationManagement', 'carbon:data-2', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (16, '2025-02-10 09:50:08', '2025-02-10 09:50:08', 4, 1, 1, '/mcms_dir', 'MessageCenterManagement', '', 'LAYOUT', 0, 'Mcms', NULL, 'route.messageCenterManagement', 'clarity:email-line', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (17, '2025-02-10 09:50:08', '2025-02-10 09:50:08', 1, 2, 2, '/mcms_email_provider', 'EmailProviderManagement', '', '/mcms/emailProvider/index', 0, 'Mcms', NULL, 'route.emailProviderManagement', 'clarity:email-line', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 16);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (18, '2025-02-10 09:50:08', '2025-02-20 09:48:06', 2, 2, 1, '/mcms_sms_provider', 'SmsProviderManagement', '', '/mcms/smsProvider/index', 0, 'Mcms', '', 'route.smsProviderManagement', 'clarity:mobile-line', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 16);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (24, '2025-02-20 09:30:03', '2025-10-30 15:20:10', 400, 1, 1, '/upgrade_url_dir', 'UrlManagement', '', 'LAYOUT', 0, 'Upgrade', '', 'route.urlManagement', 'ant-design:share-alt-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (26, '2025-02-20 09:52:10', '2025-10-30 15:21:04', 1, 2, 1, '/upgrade/url', 'UrlAppManagement', '', '/upgrade/url/index', 0, 'Upgrade', '', 'route.urlAppManagement', 'ant-design:appstore-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 24);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (27, '2025-09-11 11:28:22', '2025-10-30 15:21:09', 2, 2, 1, '/upgrade/url_version', 'UrlVersionManagement', '', '/upgrade/url_version/index', 0, 'Upgrade', NULL, 'route.urlVersionManagement', 'ant-design:appstore-add-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 24);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (28, '2025-09-11 11:28:25', '2025-10-30 15:21:16', 3, 2, 1, '/upgrade/url_upgrade_strategy', 'UrlUpgradeStrategyManagement', '', '/upgrade/url_upgrade_strategy/index', 0, 'Upgrade', NULL, 'route.urlUpgradeStrategyManagement', 'ant-design:paper-clip-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 24);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (29, '2025-02-22 16:00:09', '2025-10-30 15:21:21', 202, 1, 1, '/upgrade/dev_model', 'DevModelManagement', '', '/upgrade/dev_model/index', 0, 'Upgrade', '', 'route.devModelManagement', 'ant-design:laptop-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (32, '2025-02-25 03:11:59', '2025-10-30 15:21:26', 500, 1, 1, '/upgrade_file_dir', 'UpgradeFileManagement', '', 'LAYOUT', 0, 'Upgrade', '', 'route.upgradeFileManagement', 'ant-design:file-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (35, '2025-02-25 03:17:26', '2025-10-30 15:21:37', 100, 1, 1, '/company_secret', 'CompanySecretManagement', '', '/sys/company_secret/index', 0, 'Core', '', 'route.companySecretManagement', 'ant-design:key-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (46, '2025-03-10 03:35:03', '2025-03-10 03:35:03', 3, 1, 1, '/fms_dir', 'FileManagementDirectory', '', 'LAYOUT', 0, 'Fms', NULL, 'route.fileManagement', 'ant-design:folder-open-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (47, '2025-03-10 03:35:03', '2025-03-10 03:35:03', 1, 2, 1, '/fms/file', 'FileManagement', '', '/fms/file/index', 0, 'Fms', NULL, 'route.fileManagement', 'ant-design:folder-open-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 46);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (48, '2025-03-10 03:35:03', '2025-03-10 03:35:03', 2, 2, 1, '/fms/file_tag', 'FileTagManagement', '', '/fms/fileTag/index', 0, 'Fms', NULL, 'route.fileTagManagement', 'ant-design:book-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 46);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (49, '2025-03-10 03:35:03', '2025-03-10 03:35:03', 3, 2, 1, '/fms/storage_provider', 'StorageProviderManagement', '', '/fms/storageProvider/index', 0, 'Fms', NULL, 'route.storageProviderManagement', 'mdi:cloud-outline', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 46);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (50, '2025-03-10 03:35:04', '2025-03-10 03:35:04', 4, 2, 1, '/fms/cloud_file', 'CloudFileManagement', '', '/fms/cloudFile/index', 0, 'Fms', NULL, 'route.cloudFileManagement', 'ant-design:folder-open-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 46);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (51, '2025-03-10 03:35:04', '2025-03-10 03:35:04', 5, 2, 1, '/fms/cloud_file_tag', 'CloudFileTagManagement', '', '/fms/cloudFileTag/index', 0, 'Fms', NULL, 'route.cloudFileTagManagement', 'ant-design:book-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 46);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (52, '2025-02-21 06:19:59', '2025-10-30 15:22:22', 1, 2, 1, '/upgrade/file', 'FileAppManagement', '', '/upgrade/file/index', 0, 'Upgrade', NULL, 'route.fileAppManagement', 'ant-design:appstore-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 32);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (53, '2025-09-11 11:28:17', '2025-10-30 15:22:27', 2, 2, 1, '/upgrade/file_version', 'FileVersionManagement', '', '/upgrade/file_version/index', 0, 'Upgrade', NULL, 'route.fileVersionManagement', 'ant-design:appstore-add-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 32);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (54, '2025-09-11 11:28:21', '2025-10-30 15:22:33', 3, 2, 1, '/upgrade/file_upgrade_strategy', 'FileUpgradeStrategyManagement', '', '/upgrade/file_upgrade_strategy/index', 0, 'Upgrade', NULL, 'route.fileUpgradeStrategyManagement', 'ant-design:paper-clip-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 32);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (55, '2025-02-22 16:00:09', '2025-10-30 15:22:40', 200, 1, 1, '/upgrade/dev', 'DevManagement', '', '/upgrade/dev/index', 0, 'Upgrade', NULL, 'route.devManagement', 'ant-design:laptop-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (56, '2025-02-22 16:00:09', '2025-10-30 15:22:46', 201, 1, 1, '/upgrade/dev_group', 'DevGroupManagement', '', '/upgrade/dev_group/index', 0, 'Upgrade', NULL, 'route.devGroupManagement', 'ant-design:solution-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (57, '2025-02-21 06:19:59', '2025-10-30 15:22:50', 1, 2, 1, '/upgrade/tauri', 'TauriAppManagement', '', '/upgrade/tauri/index', 0, 'Upgrade', NULL, 'route.tauriAppManagement', 'ant-design:appstore-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 60);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (58, '2025-09-11 11:28:11', '2025-10-30 15:22:55', 2, 2, 1, '/upgrade/tauri_version', 'TauriVersionManagement', '', '/upgrade/tauri_version/index', 0, 'Upgrade', NULL, 'route.tauriVersionManagement', 'ant-design:appstore-add-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 60);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (59, '2025-09-11 11:28:13', '2025-10-30 15:23:02', 3, 2, 1, '/upgrade/tauri_upgrade_strategy', 'TauriUpgradeStrategyManagement', '', '/upgrade/tauri_upgrade_strategy/index', 0, 'Upgrade', NULL, 'route.tauriUpgradeStrategyManagement', 'ant-design:paper-clip-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 60);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (60, '2025-02-25 03:11:59', '2025-10-30 15:23:09', 700, 1, 1, '/upgrade_tauri_dir', 'UpgradeTauriManagement', '', 'LAYOUT', 0, 'Upgrade', '', 'route.upgradeTauriManagement', 'ant-design:appstore-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (61, '2025-02-25 03:11:59', '2025-10-30 15:23:15', 600, 1, 1, '/upgrade_configuration_dir', 'UpgradeConfigurationManagement', '', 'LAYOUT', 0, 'Upgrade', '', 'route.upgradeConfigurationManagement', 'ant-design:appstore-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (62, '2025-02-25 03:11:59', '2025-10-30 15:23:20', 1, 2, 1, '/upgrade/configuration', 'ConfigurationAppManagement', '', '/upgrade/configuration/index', 0, 'Upgrade', NULL, 'route.configurationAppManagement', 'ant-design:appstore-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 61);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (63, '2025-09-11 11:28:06', '2025-10-30 15:23:25', 2, 2, 1, '/upgrade/configuration_version', 'ConfigurationVersionManagement', '', '/upgrade/configuration_version/index', 0, 'Upgrade', NULL, 'route.configurationVersionManagement', 'ant-design:appstore-add-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 61);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (65, '2025-09-11 11:28:08', '2025-10-30 15:23:31', 3, 2, 1, '/upgrade/configuration_upgrade_strategy', 'ConfigurationUpgradeStrategyManagement', '', '/upgrade/configuration_upgrade_strategy/index', 0, 'Upgrade', NULL, 'route.configurationUpgradeStrategyManagement', 'ant-design:home-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 61);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (66, '2025-02-25 03:11:59', '2025-10-30 15:23:37', 900, 1, 1, '/upgrade_apk_dir', 'UpgradeApkManagement', '', 'LAYOUT', 0, 'Upgrade', '', 'route.upgradeApkManagement', 'ant-design:android-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (67, '2025-02-25 03:11:59', '2025-10-30 15:23:43', 1, 2, 1, '/upgrade/apk', 'ApkAppManagement', '', '/upgrade/apk/index', 0, 'Upgrade', NULL, 'route.apkAppManagement', 'ant-design:android-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 66);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (68, '2025-09-11 11:27:58', '2025-10-30 15:23:49', 2, 2, 1, '/upgrade/apk_version', 'ApkVersionManagement', '', '/upgrade/apk_version/index', 0, 'Upgrade', NULL, 'route.apkVersionManagement', 'ant-design:appstore-add-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 66);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (69, '2025-09-11 11:28:00', '2025-10-30 15:23:56', 3, 2, 1, '/upgrade/apk_upgrade_strategy', 'ApkUpgradeStrategyManagement', '', '/upgrade/apk_upgrade_strategy/index', 0, 'Upgrade', NULL, 'route.apkUpgradeStrategyManagement', 'ant-design:paper-clip-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 66);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (70, '2025-02-25 03:11:59', '2025-10-30 15:24:00', 800, 1, 1, '/upgrade_electron_dir', 'UpgradeElectronManagement', '', 'LAYOUT', 0, 'Upgrade', '', 'route.upgradeElectronManagement', 'ant-design:appstore-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (73, '2025-02-25 03:11:59', '2025-10-30 15:24:05', 1, 2, 1, '/upgrade/electron', 'ElectronAppManagement', '', '/upgrade/electron/index', 0, 'Upgrade', NULL, 'route.electronAppManagement', 'ant-design:appstore-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 70);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (74, '2025-09-11 11:27:50', '2025-10-30 15:24:11', 2, 2, 1, '/upgrade/electron_version', 'ElectronVersionManagement', '', '/upgrade/electron_version/index', 0, 'Upgrade', NULL, 'route.electronVersionManagement', 'ant-design:appstore-add-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 70);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (75, '2025-09-11 11:27:51', '2025-10-30 15:24:16', 3, 2, 1, '/upgrade/electron_upgrade_strategy', 'ElectronUpgradeStrategyManagement', '', '/upgrade/electron_upgrade_strategy/index', 0, 'Upgrade', NULL, 'route.electronUpgradeStrategyManagement', 'ant-design:paper-clip-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 70);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (82, '2025-02-25 03:11:59', '2025-10-30 15:24:40', 910, 1, 1, '/upgrade_win_dir', 'UpgradeWinManagement', '', 'LAYOUT', 0, 'Upgrade', NULL, 'route.upgradeWinManagement', 'ant-design:windows-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (88, '2025-10-27 18:31:23', '2025-10-30 15:24:45', 1, 2, 1, '/upgrade/win', 'WinAppManagement', '', '/upgrade/win/index', 0, 'Upgrade', NULL, 'route.winAppManagement', 'ant-design:appstore-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 82);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (89, '2025-10-27 18:31:36', '2025-10-30 15:24:50', 2, 2, 1, '/upgrade/win_version', 'WinVersionManagement', '', '/upgrade/win_version/index', 0, 'Upgrade', NULL, 'route.winVersionManagement', 'ant-design:appstore-add-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 82);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (90, '2025-10-27 18:31:50', '2025-10-30 15:24:56', 3, 2, 1, '/upgrade/win_upgrade_strategy', 'WinUpgradeStrategyManagement', '', '/upgrade/win_upgrade_strategy/index', 0, 'Upgrade', NULL, 'route.winUpgradeStrategyManagement', 'ant-design:paper-clip-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 82);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (91, '2025-10-27 18:32:02', '2025-10-30 15:25:01', 920, 1, 1, '/upgrade_lnx_dir', 'UpgradeLnxManagement', '', 'LAYOUT', 0, 'Upgrade', NULL, 'route.upgradeLnxManagement', 'ant-design:linux-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (92, '2025-10-27 18:32:14', '2025-10-30 15:25:06', 1, 2, 1, '/upgrade/lnx', 'LnxAppManagement', '', '/upgrade/lnx/index', 0, 'Upgrade', '', 'route.lnxAppManagement', 'ant-design:appstore-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 91);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (93, '2025-10-27 18:32:26', '2025-10-30 15:25:11', 2, 2, 1, '/upgrade/lnx_version', 'LnxVersionManagement', '', '/upgrade/lnx_version/index', 0, 'Upgrade', NULL, 'route.lnxVersionManagement', 'ant-design:appstore-add-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 91);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (94, '2025-10-27 18:32:36', '2025-10-30 15:25:17', 3, 2, 1, '/upgrade/lnx_upgrade_strategy', 'LnxUpgradeStrategyManagement', '', '/upgrade/lnx_upgrade_strategy/index', 0, 'Upgrade', NULL, 'route.lnxUpgradeStrategyManagement', 'ant-design:paper-clip-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 91);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (95, '2025-10-27 18:32:50', '2025-10-30 15:25:20', 930, 1, 1, '/upgrade_mac_dir', 'UpgradeMacosManagement', '', 'LAYOUT', 0, 'Upgrade', NULL, 'route.upgradeMacosManagement', 'ant-design:apple-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (96, '2025-10-27 18:33:41', '2025-10-30 15:25:24', 1, 2, 1, '/upgrade/mac', 'MacAppManagement', '', '/upgrade/mac/index', 0, 'Upgrade', NULL, 'route.macAppManagement', 'ant-design:appstore-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 95);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (97, '2025-10-27 18:33:54', '2025-10-30 15:25:30', 2, 2, 1, '/upgrade/mac_version', 'MacVersionManagement', '', '/upgrade/mac_version/index', 0, 'Upgrade', NULL, 'route.macVersionManagement', 'ant-design:appstore-add-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 95);
INSERT INTO `sys_menus` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (98, '2025-10-27 18:34:15', '2025-10-30 15:25:32', 3, 2, 1, '/upgrade/mac_upgrade_strategy', 'MacUpgradeStrategyManagement', '', '/upgrade/mac_upgrade_strategy/index', 0, 'Upgrade', NULL, 'route.macUpgradeStrategyManagement', 'ant-design:paper-clip-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 95);
COMMIT;

-- ----------------------------
-- Table structure for sys_menus_copy1
-- ----------------------------
DROP TABLE IF EXISTS `sys_menus_copy1`;
CREATE TABLE `sys_menus_copy1` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `sort` int unsigned NOT NULL DEFAULT '1' COMMENT 'Sort Number | 排序编号',
  `menu_level` int unsigned NOT NULL COMMENT 'Menu level | 菜单层级',
  `menu_type` int unsigned NOT NULL COMMENT 'Menu type | 菜单类型 （菜单或目录）0 目录 1 菜单',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT 'Index path | 菜单路由路径',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Index name | 菜单名称',
  `redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT 'Redirect path | 跳转路径 （外链）',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT 'The path of vue file | 组件路径',
  `disabled` tinyint(1) DEFAULT '0' COMMENT 'Disable status | 是否停用',
  `service_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'Other' COMMENT 'Service Name | 服务名称',
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Permission symbol | 权限标识',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Menu name | 菜单显示标题',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Menu icon | 菜单图标',
  `hide_menu` tinyint(1) DEFAULT '0' COMMENT 'Hide menu | 是否隐藏菜单',
  `hide_breadcrumb` tinyint(1) DEFAULT '0' COMMENT 'Hide the breadcrumb | 隐藏面包屑',
  `ignore_keep_alive` tinyint(1) DEFAULT '0' COMMENT 'Do not keep alive the tab | 取消页面缓存',
  `hide_tab` tinyint(1) DEFAULT '0' COMMENT 'Hide the tab header | 隐藏页头',
  `frame_src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT 'Show iframe | 内嵌 iframe',
  `carry_param` tinyint(1) DEFAULT '0' COMMENT 'The route carries parameters or not | 携带参数',
  `hide_children_in_menu` tinyint(1) DEFAULT '0' COMMENT 'Hide children menu or not | 隐藏所有子菜单',
  `affix` tinyint(1) DEFAULT '0' COMMENT 'Affix tab | Tab 固定',
  `dynamic_level` int unsigned DEFAULT '20' COMMENT 'The maximum number of pages the router can open | 能打开的子TAB数',
  `real_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT 'The real path of the route without dynamic part | 菜单路由不包含参数部分',
  `parent_id` bigint unsigned DEFAULT '100000' COMMENT 'Parent menu ID | 父菜单ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `menu_name` (`name`) USING BTREE,
  UNIQUE KEY `menu_path` (`path`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_menus_copy1
-- ----------------------------
BEGIN;
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (1, '2025-02-10 09:33:13', '2025-09-22 14:33:07', 0, 1, 1, '/dashboard', 'Dashboard', '', '/dashboard/analytics/index', 0, 'Core', NULL, 'route.dashboard', 'ant-design:dashboard-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (2, '2025-02-10 09:33:13', '2025-09-22 14:56:10', 8, 1, 0, '/system', 'SystemManagement', '', 'LAYOUT', 0, 'Core', NULL, 'route.systemManagementTitle', 'ant-design:tool-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (3, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 1, 2, 1, '/menu', 'MenuManagement', '', '/sys/menu/index', 0, 'Core', NULL, 'route.menuManagementTitle', 'ant-design:bars-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (4, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 2, 2, 1, '/role', 'RoleManagement', '', '/sys/role/index', 0, 'Core', NULL, 'route.roleManagementTitle', 'ant-design:user-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (5, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 3, 2, 1, '/user', 'UserManagement', '', '/sys/user/index', 0, 'Core', NULL, 'route.userManagementTitle', 'ant-design:user-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (6, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 4, 2, 1, '/department', 'DepartmentManagement', '', '/sys/department/index', 0, 'Core', NULL, 'route.departmentManagement', 'ic:outline-people-alt', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (7, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 5, 2, 1, '/api', 'APIManagement', '', '/sys/api/index', 0, 'Core', NULL, 'route.apiManagementTitle', 'ant-design:api-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (8, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 6, 2, 1, '/dictionary', 'DictionaryManagement', '', '/sys/dictionary/index', 0, 'Core', NULL, 'route.dictionaryManagementTitle', 'ant-design:book-outlined', 0, 0, 0, 0, '', 0, 1, 0, 20, '', 2);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (9, '2025-02-10 09:33:13', '2025-09-22 14:56:17', 9, 1, 0, '/other', 'OtherPages', '', 'LAYOUT', 0, 'Core', NULL, 'route.otherPages', 'ant-design:question-circle-outlined', 1, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (10, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 3, 1, 1, '/profile', 'Profile', '', '/sys/profile/index', 0, 'Core', NULL, 'route.userProfileTitle', 'ant-design:profile-outlined', 1, 0, 0, 0, '', 0, 0, 0, 20, '', 9);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (11, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 6, 2, 1, '/oauth', 'OauthManagement', '', '/sys/oauth/index', 0, 'Core', NULL, 'route.oauthManagement', 'ant-design:unlock-filled', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (12, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 7, 2, 1, '/token', 'TokenManagement', '', '/sys/token/index', 0, 'Core', NULL, 'route.tokenManagement', 'ant-design:lock-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (13, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 8, 2, 1, '/position', 'PositionManagement', '', '/sys/position/index', 0, 'Core', NULL, 'route.positionManagement', 'ic:twotone-work-outline', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (14, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 8, 2, 1, '/task', 'TaskManagement', '', '/sys/task/index', 0, 'Job', NULL, 'route.taskManagement', 'ic:baseline-access-alarm', 1, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (15, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 9, 2, 1, '/configuration', 'ConfigurationManagement', '', '/sys/configuration/index', 0, 'Core', NULL, 'route.configurationManagement', 'carbon:data-2', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 2);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (16, '2025-02-10 09:50:08', '2025-02-10 09:50:08', 4, 1, 1, '/mcms_dir', 'MessageCenterManagement', '', 'LAYOUT', 0, 'Mcms', NULL, 'route.messageCenterManagement', 'clarity:email-line', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (17, '2025-02-10 09:50:08', '2025-02-10 09:50:08', 1, 2, 2, '/mcms_email_provider', 'EmailProviderManagement', '', '/mcms/emailProvider/index', 0, 'Mcms', NULL, 'route.emailProviderManagement', 'clarity:email-line', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 16);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (18, '2025-02-10 09:50:08', '2025-02-20 09:48:06', 2, 2, 1, '/mcms_sms_provider', 'SmsProviderManagement', '', '/mcms/smsProvider/index', 0, 'Mcms', '', 'route.smsProviderManagement', 'clarity:mobile-line', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 16);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (24, '2025-02-20 09:30:03', '2025-09-22 14:35:25', 400, 1, 1, '/upgrade_url_dir', 'UrlManagement', '', 'LAYOUT', 0, 'Upgrade', '', 'URL升级', 'ant-design:share-alt-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (26, '2025-02-20 09:52:10', '2025-09-22 14:20:54', 1, 2, 1, '/upgrade/url', 'UrlAppManagement', '', '/upgrade/url/index', 0, 'Upgrade', '', 'URL应用', 'ant-design:appstore-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 24);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (27, '2025-09-11 11:28:22', '2025-09-22 14:35:22', 2, 2, 1, '/upgrade/url_version', 'UrlVersionManagement', '', '/upgrade/url_version/index', 0, 'Upgrade', NULL, 'URL应用版本', 'ant-design:appstore-add-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 24);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (28, '2025-09-11 11:28:25', '2025-09-22 14:35:20', 3, 2, 1, '/upgrade/url_upgrade_strategy', 'UrlUpgradeStrategyManagement', '', '/upgrade/url_upgrade_strategy/index', 0, 'Upgrade', NULL, 'URL升级任务', 'ant-design:paper-clip-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 24);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (29, '2025-02-22 16:00:09', '2025-09-22 14:41:25', 202, 1, 1, '/upgrade/dev_model', 'DevModelManagement', '', '/upgrade/dev_model/index', 0, 'Upgrade', '', '设备机型管理', 'ant-design:laptop-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (32, '2025-02-25 03:11:59', '2025-09-22 14:18:19', 500, 1, 1, '/upgrade_file_dir', 'UpgradeFileManagement', '', 'LAYOUT', 0, 'Upgrade', '', '文件升级', 'ant-design:file-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (35, '2025-02-25 03:17:26', '2025-09-22 14:17:18', 100, 1, 1, '/company_secret', 'CompanySecretManagement', '', '/sys/company_secret/index', 0, 'Core', '', '密钥', 'ant-design:key-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (46, '2025-03-10 03:35:03', '2025-03-10 03:35:03', 3, 1, 1, '/fms_dir', 'FileManagementDirectory', '', 'LAYOUT', 0, 'Fms', NULL, 'route.fileManagement', 'ant-design:folder-open-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (47, '2025-03-10 03:35:03', '2025-03-10 03:35:03', 1, 2, 1, '/fms/file', 'FileManagement', '', '/fms/file/index', 0, 'Fms', NULL, 'route.fileManagement', 'ant-design:folder-open-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 46);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (48, '2025-03-10 03:35:03', '2025-03-10 03:35:03', 2, 2, 1, '/fms/file_tag', 'FileTagManagement', '', '/fms/fileTag/index', 0, 'Fms', NULL, 'route.fileTagManagement', 'ant-design:book-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 46);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (49, '2025-03-10 03:35:03', '2025-03-10 03:35:03', 3, 2, 1, '/fms/storage_provider', 'StorageProviderManagement', '', '/fms/storageProvider/index', 0, 'Fms', NULL, 'route.storageProviderManagement', 'mdi:cloud-outline', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 46);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (50, '2025-03-10 03:35:04', '2025-03-10 03:35:04', 4, 2, 1, '/fms/cloud_file', 'CloudFileManagement', '', '/fms/cloudFile/index', 0, 'Fms', NULL, 'route.cloudFileManagement', 'ant-design:folder-open-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 46);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (51, '2025-03-10 03:35:04', '2025-03-10 03:35:04', 5, 2, 1, '/fms/cloud_file_tag', 'CloudFileTagManagement', '', '/fms/cloudFileTag/index', 0, 'Fms', NULL, 'route.cloudFileTagManagement', 'ant-design:book-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 46);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (52, '2025-02-21 06:19:59', '2025-09-22 14:21:04', 1, 2, 1, '/upgrade/file', 'FileAppManagement', '', '/upgrade/file/index', 0, 'Upgrade', NULL, '文件', 'ant-design:appstore-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 32);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (53, '2025-09-11 11:28:17', '2025-09-22 14:35:18', 2, 2, 1, '/upgrade/file_version', 'FileVersionManagement', '', '/upgrade/file_version/index', 0, 'Upgrade', NULL, '文件应用版本', 'ant-design:appstore-add-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 32);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (54, '2025-09-11 11:28:21', '2025-09-22 14:35:19', 3, 2, 1, '/upgrade/file_upgrade_strategy', 'FileUpgradeStrategyManagement', '', '/upgrade/file_upgrade_strategy/index', 0, 'Upgrade', NULL, '文件升级任务', 'ant-design:paper-clip-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 32);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (55, '2025-02-22 16:00:09', '2025-09-22 14:28:03', 200, 1, 1, '/upgrade/dev', 'DevManagement', '', '/upgrade/dev/index', 0, 'Upgrade', NULL, '设备管理', 'ant-design:laptop-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (56, '2025-02-22 16:00:09', '2025-09-22 14:27:15', 201, 1, 1, '/upgrade/dev_group', 'DevGroupManagement', '', '/upgrade/dev_group/index', 0, 'Upgrade', NULL, '设备分组管理', 'ant-design:solution-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (57, '2025-02-21 06:19:59', '2025-09-22 14:21:07', 1, 2, 1, '/upgrade/tauri', 'TauriAppManagement', '', '/upgrade/tauri/index', 0, 'Upgrade', NULL, 'Tauri应用', 'ant-design:appstore-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 60);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (58, '2025-09-11 11:28:11', '2025-09-22 14:29:24', 2, 2, 1, '/upgrade/tauri_version', 'TauriVersionManagement', '', '/upgrade/tauri_version/index', 0, 'Upgrade', NULL, 'Tauri应用版本', 'ant-design:appstore-add-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 60);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (59, '2025-09-11 11:28:13', '2025-09-22 14:28:38', 3, 2, 1, '/upgrade/tauri_upgrade_strategy', 'TauriUpgradeStrategyManagement', '', '/upgrade/tauri_upgrade_strategy/index', 0, 'Upgrade', NULL, 'Tauri升级任务', 'ant-design:paper-clip-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 60);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (60, '2025-02-25 03:11:59', '2025-09-22 14:59:14', 600, 1, 1, '/upgrade_tauri_dir', 'UpgradeTauriManagement', '', 'LAYOUT', 0, 'Upgrade', '', 'Tauri升级', 'ant-design:appstore-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (61, '2025-02-25 03:11:59', '2025-09-22 14:59:31', 700, 1, 1, '/upgrade_configuration_dir', 'UpgradeConfigurationManagement', '', 'LAYOUT', 0, 'Upgrade', '', '配置升级', 'ant-design:appstore-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (62, '2025-02-25 03:11:59', '2025-09-22 14:39:38', 1, 2, 1, '/upgrade/configuration', 'ConfigurationAppManagement', '', '/upgrade/configuration/index', 0, 'Upgrade', NULL, '配置', 'ant-design:appstore-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 61);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (63, '2025-09-11 11:28:06', '2025-09-22 14:29:28', 2, 2, 1, '/upgrade/configuration_version', 'ConfigurationVersionManagement', '', '/upgrade/configuration_version/index', 0, 'Upgrade', NULL, '配置版本', 'ant-design:appstore-add-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 61);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (65, '2025-09-11 11:28:08', '2025-02-21 06:19:59', 3, 2, 1, '/upgrade/configuration_upgrade_strategy', 'ConfigurationUpgradeStrategyManagement', '', '/upgrade/configuration_upgrade_strategy/index', 0, 'Upgrade', NULL, '配置升级任务', 'ant-design:home-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 61);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (66, '2025-02-25 03:11:59', '2025-09-22 14:39:11', 800, 1, 1, '/upgrade_apk_dir', 'UpgradeApkManagement', '', 'LAYOUT', 0, 'Upgrade', '', '安卓应用升级', 'ant-design:android-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (67, '2025-02-25 03:11:59', '2025-09-22 14:21:35', 1, 2, 1, '/upgrade/apk', 'ApkAppManagement', '', '/upgrade/apk/index', 0, 'Upgrade', NULL, '安卓应用', 'ant-design:android-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 66);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (68, '2025-09-11 11:27:58', '2025-09-22 14:29:30', 2, 2, 1, '/upgrade/apk_version', 'ApkVersionManagement', '', '/upgrade/apk_version/index', 0, 'Upgrade', NULL, '安卓应用版本', 'ant-design:appstore-add-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 66);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (69, '2025-09-11 11:28:00', '2025-09-22 14:28:35', 3, 2, 1, '/upgrade/apk_upgrade_strategy', 'ApkUpgradeStrategyManagement', '', '/upgrade/apk_upgrade_strategy/index', 0, 'Upgrade', NULL, '安卓应用升级任务', 'ant-design:paper-clip-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 66);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (70, '2025-02-25 03:11:59', '2025-09-22 06:38:38', 900, 1, 1, '/upgrade_electron_dir', 'UpgradeElectronManagement', '', 'LAYOUT', 0, 'Upgrade', '', 'Electron应用升级', 'ant-design:home-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (73, '2025-02-25 03:11:59', '2025-09-22 14:21:17', 1, 2, 1, '/upgrade/electron', 'ElectronAppManagement', '', '/upgrade/electron/index', 0, 'Upgrade', NULL, 'Electron应用', 'ant-design:appstore-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 70);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (74, '2025-09-11 11:27:50', '2025-09-22 14:59:39', 2, 2, 1, '/upgrade/electron_version', 'ElectronVersionManagement', '', '/upgrade/electron_version/index', 0, 'Upgrade', NULL, 'Electron应用版本', 'ant-design:appstore-add-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 70);
INSERT INTO `sys_menus_copy1` (`id`, `created_at`, `updated_at`, `sort`, `menu_level`, `menu_type`, `path`, `name`, `redirect`, `component`, `disabled`, `service_name`, `permission`, `title`, `icon`, `hide_menu`, `hide_breadcrumb`, `ignore_keep_alive`, `hide_tab`, `frame_src`, `carry_param`, `hide_children_in_menu`, `affix`, `dynamic_level`, `real_path`, `parent_id`) VALUES (75, '2025-09-11 11:27:51', '2025-09-22 14:59:42', 3, 2, 1, '/upgrade/electron_upgrade_strategy', 'ElectronUpgradeStrategyManagement', '', '/upgrade/electron_upgrade_strategy/index', 0, 'Upgrade', NULL, 'Electron应用升级任务', 'ant-design:paper-clip-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 70);
COMMIT;

-- ----------------------------
-- Table structure for sys_oauth_providers
-- ----------------------------
DROP TABLE IF EXISTS `sys_oauth_providers`;
CREATE TABLE `sys_oauth_providers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The provider''s name | 提供商名称',
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The client id | 客户端 id',
  `client_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The client secret | 客户端密钥',
  `redirect_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The redirect url | 跳转地址',
  `scopes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The scopes | 权限范围',
  `auth_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The auth url of the provider | 认证地址',
  `token_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The token url of the provider | 获取 token地址',
  `auth_style` bigint unsigned NOT NULL COMMENT 'The auth style, 0: auto detect 1: third party log in 2: log in with username and password | 鉴权方式 0 自动 1 第三方登录 2 使用用户名密码',
  `info_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The URL to request user information by token | 用户信息请求地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_oauth_providers
-- ----------------------------
BEGIN;
INSERT INTO `sys_oauth_providers` (`id`, `created_at`, `updated_at`, `name`, `client_id`, `client_secret`, `redirect_url`, `scopes`, `auth_url`, `token_url`, `auth_style`, `info_url`) VALUES (1, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 'google', 'your client id', 'your client secret', 'http://localhost:3100/oauth/login/callback', 'email openid', 'https://accounts.google.com/o/oauth2/auth', 'https://oauth2.googleapis.com/token', 1, 'https://www.googleapis.com/oauth2/v2/userinfo?access_token=TOKEN');
INSERT INTO `sys_oauth_providers` (`id`, `created_at`, `updated_at`, `name`, `client_id`, `client_secret`, `redirect_url`, `scopes`, `auth_url`, `token_url`, `auth_style`, `info_url`) VALUES (2, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 'github', 'your client id', 'your client secret', 'http://localhost:3100/oauth/login/callback', 'email openid', 'https://github.com/login/oauth/authorize', 'https://github.com/login/oauth/access_token', 2, 'https://api.github.com/user');
COMMIT;

-- ----------------------------
-- Table structure for sys_positions
-- ----------------------------
DROP TABLE IF EXISTS `sys_positions`;
CREATE TABLE `sys_positions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `status` tinyint unsigned DEFAULT '1' COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `sort` int unsigned NOT NULL DEFAULT '1' COMMENT 'Sort Number | 排序编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Position Name | 职位名称',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The code of position | 职位编码',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Remark | 备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `position_code` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_positions
-- ----------------------------
BEGIN;
INSERT INTO `sys_positions` (`id`, `created_at`, `updated_at`, `status`, `sort`, `name`, `code`, `remark`) VALUES (1, '2025-02-10 09:33:13', '2025-02-10 09:33:13', 1, 1, 'position.ceo', '001', 'CEO');
COMMIT;

-- ----------------------------
-- Table structure for sys_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `status` tinyint unsigned DEFAULT '1' COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Role name | 角色名',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Role code for permission control in front end | 角色码，用于前端权限控制',
  `default_router` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'dashboard' COMMENT 'Default menu : dashboard | 默认登录页面',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'Remark | 备注',
  `sort` int unsigned NOT NULL DEFAULT '0' COMMENT 'Order number | 排序编号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `role_code` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
BEGIN;
INSERT INTO `sys_roles` (`id`, `created_at`, `updated_at`, `status`, `name`, `code`, `default_router`, `remark`, `sort`) VALUES (1, '2025-09-09 10:23:13', '2025-10-28 10:08:02', 1, 'role.admin', '001', 'dashboard', '超级管理员', 1);
INSERT INTO `sys_roles` (`id`, `created_at`, `updated_at`, `status`, `name`, `code`, `default_router`, `remark`, `sort`) VALUES (2, '2025-09-09 17:39:56', '2025-10-28 10:08:14', 1, 'role.stuff', '002', 'dashboard', '普通用户', 2);
COMMIT;

-- ----------------------------
-- Table structure for sys_tokens
-- ----------------------------
DROP TABLE IF EXISTS `sys_tokens`;
CREATE TABLE `sys_tokens` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'UUID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `status` tinyint unsigned DEFAULT '1' COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT ' User''s UUID | 用户的UUID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'unknown' COMMENT 'Username | 用户名',
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Token string | Token 字符串',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Log in source such as GitHub | Token 来源 （本地为core, 第三方如github等）',
  `expired_at` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT ' Expire time | 过期时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `token_expired_at` (`expired_at`) USING BTREE,
  KEY `token_uuid` (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_tokens
-- ----------------------------
BEGIN;
INSERT INTO `sys_tokens` (`id`, `created_at`, `updated_at`, `status`, `uuid`, `username`, `token`, `source`, `expired_at`) VALUES ('019975e7-7d5d-7df3-908a-6112b21a1423', '2025-09-23 09:28:49', '2025-09-23 09:28:49', 1, '0194ef34-a6d1-728e-a70d-362f5035aab7', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXB0SWQiOjEsImV4cCI6MTc1ODg3ODkyOSwiaWF0IjoxNzU4NjE5NzI5LCJyb2xlSWQiOiIwMDEiLCJ1c2VySWQiOiIwMTk0ZWYzNC1hNmQxLTcyOGUtYTcwZC0zNjJmNTAzNWFhYjcifQ.bUi4ac3i5r-AeDNi_UDBjiz2tBL2X4SysFoIjNo8Ys4', 'core_user', '2025-09-26 09:28:49');
INSERT INTO `sys_tokens` (`id`, `created_at`, `updated_at`, `status`, `uuid`, `username`, `token`, `source`, `expired_at`) VALUES ('019984a2-8cb4-7df3-b7ce-afab08c34749', '2025-09-26 06:07:49', '2025-09-26 06:07:49', 1, '0194ef34-a6d1-728e-a70d-362f5035aab7', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXB0SWQiOjEsImV4cCI6MTc1OTEyNjA2OSwiaWF0IjoxNzU4ODY2ODY5LCJyb2xlSWQiOiIwMDEiLCJ1c2VySWQiOiIwMTk0ZWYzNC1hNmQxLTcyOGUtYTcwZC0zNjJmNTAzNWFhYjcifQ.C9oWS2QBw6vUNk7azJbn9jPAk2Gta9rVowgBkfqCWOs', 'core_user', '2025-09-29 06:07:49');
INSERT INTO `sys_tokens` (`id`, `created_at`, `updated_at`, `status`, `uuid`, `username`, `token`, `source`, `expired_at`) VALUES ('019a2a49-7745-74bf-88c0-18aae5f24922', '2025-10-28 10:07:29', '2025-10-28 10:07:29', 1, '0194ef34-a6d1-728e-a70d-362f5035aab7', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXB0SWQiOjEsImV4cCI6MTc2MTkwNTI0OSwiaWF0IjoxNzYxNjQ2MDQ5LCJyb2xlSWQiOiIwMDEiLCJ1c2VySWQiOiIwMTk0ZWYzNC1hNmQxLTcyOGUtYTcwZC0zNjJmNTAzNWFhYjcifQ.9JI6C7xgbA3YAK6lztnM1ZjEwjcF7fjunETkTXKDT1Y', 'core_user', '2025-10-31 10:07:29');
INSERT INTO `sys_tokens` (`id`, `created_at`, `updated_at`, `status`, `uuid`, `username`, `token`, `source`, `expired_at`) VALUES ('019a345e-0a28-7828-8fbe-65e39eea229b', '2025-10-30 17:06:10', '2025-10-30 17:06:10', 1, '0194ef34-a6d1-728e-a70d-362f5035aab7', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXB0SWQiOjEsImV4cCI6MTc2MjA3NDM2OSwiaWF0IjoxNzYxODE1MTY5LCJyb2xlSWQiOiIwMDEiLCJ1c2VySWQiOiIwMTk0ZWYzNC1hNmQxLTcyOGUtYTcwZC0zNjJmNTAzNWFhYjcifQ.Ynx2APfsbiTjRYeuFZlla8SSsVK8EairiBxwOuZbtTU', 'core_user', '2025-11-02 17:06:10');
COMMIT;

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'UUID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `status` tinyint unsigned DEFAULT '1' COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Delete Time | 删除日期',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'User''s login name | 登录名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Password | 密码',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Nickname | 昵称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'The description of user | 用户的描述信息',
  `home_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '/dashboard' COMMENT 'The home page that the user enters after logging in | 用户登陆后进入的首页',
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Mobile number | 手机号',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Email | 邮箱号',
  `avatar` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Avatar | 头像路径',
  `department_id` bigint unsigned DEFAULT '1' COMMENT 'Department ID | 部门ID',
  `company_id` bigint unsigned DEFAULT '1' COMMENT 'Company ID | 公司ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `nickname` (`nickname`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `user_username_email` (`username`,`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
BEGIN;
INSERT INTO `sys_users` (`id`, `created_at`, `updated_at`, `status`, `deleted_at`, `username`, `password`, `nickname`, `description`, `home_path`, `mobile`, `email`, `avatar`, `department_id`, `company_id`) VALUES ('0194ef34-a6d1-728e-a70d-362f5035aab7', '2025-08-15 11:26:56', '2025-09-23 09:27:45', 1, NULL, 'admin', '$2a$10$1JMM5u4ch3ml9dNafqEZEu.vnOBy74lMZF22DaL10NmpN1V22TBc2', 'admin', NULL, '/dashboard', '13113131111', 'simple_admin@gmail.com', '', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for upgrade_apk
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_apk`;
CREATE TABLE `upgrade_apk` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '安卓应用唯一标识',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '安卓应用名称',
  `package_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '安卓应用包名',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='安卓应用';

-- ----------------------------
-- Records of upgrade_apk
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_apk_patch
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_apk_patch`;
CREATE TABLE `upgrade_apk_patch` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `apk_id` bigint NOT NULL DEFAULT '0' COMMENT '安卓应用ID',
  `high_apk_version_id` bigint NOT NULL DEFAULT '0' COMMENT '外键：apk_version.id',
  `low_apk_version_id` bigint NOT NULL DEFAULT '0' COMMENT '外键：apk_version.id',
  `patch_algo` int NOT NULL DEFAULT '0' COMMENT '差分算法 0:默认值无; 1 HDiffPatch;2 bsdiff;',
  `status` int NOT NULL DEFAULT '0' COMMENT '处理状态：0:尚未进行差分处理; 1:正在处理差分; 2:差分过程错误; 3:差分过程超时; 4:差分包有问题; 5:差分处理成功; 6:差分包大于新版本全量包; 7:上传文件中; 8:上传文件失败; 9:处理完成 ',
  `cloud_file_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '云文件id',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='差分信息表；记录APK的差分基本信息';

-- ----------------------------
-- Records of upgrade_apk_patch
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_apk_upgrade_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_apk_upgrade_strategy`;
CREATE TABLE `upgrade_apk_upgrade_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务名称',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务描述信息',
  `apk_id` bigint NOT NULL DEFAULT '0' COMMENT '安卓应用ID',
  `apk_version_id` bigint NOT NULL DEFAULT '0' COMMENT 'apk_version_id; 外键apk_version.id',
  `begin_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务开始时间',
  `end_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务结束时间',
  `upgrade_type` int NOT NULL DEFAULT '0' COMMENT '升级方式：0：未知方式；1：提示升级；2：静默升级；3: 强制升级',
  `prompt_upgrade_content` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '提示升级描述内容',
  `upgrade_dev_type` int NOT NULL DEFAULT '0' COMMENT '指定升级的设备范围：0：全部设备；1：指定设备分组；2：指定机型',
  `upgrade_dev_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '升级设备数据：0.当为全部设备时，此字段为空；；1.当指定设备分组时，此字段存储设备分组id；2.当指定设备机型时，此字段存储选中的设备机型id;',
  `upgrade_version_type` int NOT NULL DEFAULT '0' COMMENT '指定升级的应用版本：0：全部版本；1：指定版本',
  `upgrade_version_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '升级设备数据：0.当为全部版本时，此字段为空；；1.当指定应用版本时，此字段存储应用版本id;',
  `is_gray` int NOT NULL DEFAULT '0' COMMENT '是否开启灰度 0：不开启；1：开启',
  `gray_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '灰度策略id数据',
  `is_flow_limit` int NOT NULL DEFAULT '0' COMMENT '是否开启频控 0：不开启；1：开启',
  `flow_limit_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '频控策略id数据',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='安卓应用 升级任务';

-- ----------------------------
-- Records of upgrade_apk_upgrade_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_apk_upgrade_strategy_flow_limit_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_apk_upgrade_strategy_flow_limit_strategy`;
CREATE TABLE `upgrade_apk_upgrade_strategy_flow_limit_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `enable` int NOT NULL DEFAULT '9' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `begin_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '开始时间段: 时分秒',
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '结束时间段: 时分秒',
  `dimension` int NOT NULL DEFAULT '1' COMMENT '流控维度；流控维度：1：秒；2：分；3：时；4：天',
  `limit` bigint NOT NULL DEFAULT '10' COMMENT '频控限制；在流控维度上的次数',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='安卓应用 升级任务灰度策略表；';

-- ----------------------------
-- Records of upgrade_apk_upgrade_strategy_flow_limit_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_apk_upgrade_strategy_gray_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_apk_upgrade_strategy_gray_strategy`;
CREATE TABLE `upgrade_apk_upgrade_strategy_gray_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `begin_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '开始时间',
  `end_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '结束时间',
  `limit` bigint NOT NULL DEFAULT '10' COMMENT '数量限制',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='安卓应用 升级任务灰度策略表；';

-- ----------------------------
-- Records of upgrade_apk_upgrade_strategy_gray_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_apk_version
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_apk_version`;
CREATE TABLE `upgrade_apk_version` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `apk_id` bigint NOT NULL DEFAULT '0' COMMENT '安卓应用ID',
  `cloud_file_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '云文件id',
  `version_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '版本名',
  `version_code` bigint NOT NULL DEFAULT '0' COMMENT '版本号',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='安卓应用 版本库';

-- ----------------------------
-- Records of upgrade_apk_version
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_app_download_report_log
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_app_download_report_log`;
CREATE TABLE `upgrade_app_download_report_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '事件发生时间',
  `app_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '应用Key',
  `app_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '应用类型 url,file,tauri,apk,configuration',
  `app_version_id` bigint NOT NULL DEFAULT '0' COMMENT '应用版本ID',
  `app_version_code` bigint NOT NULL DEFAULT '0' COMMENT '版本号',
  `app_version_platform` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '操作系统:linux、darwin、windows',
  `app_version_target` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '操作系统:linux、darwin、windows',
  `app_version_arch` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '机器架构:x86_64、i686、aarch64、armv7',
  `download_cloud_file_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '云文件id',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_company_timestamp` (`company_id`,`timestamp`) USING BTREE,
  KEY `idx_appkey_timestamp` (`app_key`,`timestamp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='应用初次下载事件日志';

-- ----------------------------
-- Records of upgrade_app_download_report_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_app_report_log
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_app_report_log`;
CREATE TABLE `upgrade_app_report_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `event_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '事件类型',
  `app_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '应用Key',
  `version_code` bigint NOT NULL DEFAULT '0' COMMENT '当前应用版本号',
  `dev_model_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '设备机型唯一标识',
  `dev_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '设备唯一标识',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '事件发生时间',
  `launch_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '应用启动事件-应用启动时间',
  `code` bigint NOT NULL DEFAULT '0' COMMENT '事件-状态码',
  `download_version_code` bigint NOT NULL DEFAULT '0' COMMENT '应用升级-下载事件-应用版本号',
  `upgrade_version_code` bigint NOT NULL DEFAULT '0' COMMENT '应用升级-升级事件-应用版本号',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_company_event_time` (`company_id`,`event_type`,`timestamp`) USING BTREE,
  KEY `idx_event_type` (`event_type`) USING BTREE,
  KEY `idx_appkey_event_time` (`app_key`,`event_type`,`timestamp`) USING BTREE,
  KEY `idx_company_id` (`company_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='应用事件日志';

-- ----------------------------
-- Records of upgrade_app_report_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_app_start_report_log
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_app_start_report_log`;
CREATE TABLE `upgrade_app_start_report_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '事件发生时间',
  `app_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '应用Key',
  `app_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '应用类型 url,file,tauri,apk,configuration',
  `app_version_id` bigint NOT NULL DEFAULT '0' COMMENT '应用版本ID',
  `app_version_code` bigint NOT NULL DEFAULT '0' COMMENT '版本号',
  `app_version_target` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '操作系统:linux、darwin、windows',
  `app_version_arch` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '机器架构:x86_64、i686、aarch64、armv7',
  `dev_model_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '设备机型唯一标识',
  `dev_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '设备唯一标识',
  `launch_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '应用启动事件-应用启动时间',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_company_timestamp` (`company_id`,`timestamp`) USING BTREE,
  KEY `idx_appkey_timestamp` (`app_key`,`timestamp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='应用启动事件日志';

-- ----------------------------
-- Records of upgrade_app_start_report_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_app_upgrade_download_report_log
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_app_upgrade_download_report_log`;
CREATE TABLE `upgrade_app_upgrade_download_report_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '事件发生时间',
  `app_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '应用Key',
  `app_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '应用类型 url,file,tauri,apk,configuration',
  `app_version_id` bigint NOT NULL DEFAULT '0' COMMENT '应用版本ID',
  `app_version_code` bigint NOT NULL DEFAULT '0' COMMENT '版本号',
  `app_version_platform` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '操作系统:linux、darwin、windows',
  `app_version_target` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '操作系统:linux、darwin、windows',
  `app_version_arch` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '机器架构:x86_64、i686、aarch64、armv7',
  `dev_model_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '设备机型唯一标识',
  `dev_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '设备唯一标识',
  `download_version_code` bigint NOT NULL DEFAULT '0' COMMENT '下载版本号',
  `download_cloud_file_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '云文件id',
  `code` bigint NOT NULL DEFAULT '0' COMMENT '事件-状态码',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_company_timestamp` (`company_id`,`timestamp`) USING BTREE,
  KEY `idx_appkey_timestamp` (`app_key`,`timestamp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='应用升级下载事件日志';

-- ----------------------------
-- Records of upgrade_app_upgrade_download_report_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_app_upgrade_get_strategy_report_log
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_app_upgrade_get_strategy_report_log`;
CREATE TABLE `upgrade_app_upgrade_get_strategy_report_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '事件发生时间',
  `app_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '应用Key',
  `app_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '应用类型 url,file,tauri,apk,configuration',
  `app_version_id` bigint NOT NULL DEFAULT '0' COMMENT '应用版本ID',
  `app_version_code` bigint NOT NULL DEFAULT '0' COMMENT '版本号',
  `app_version_platform` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '操作系统:linux、darwin、windows',
  `app_version_target` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '操作系统:linux、darwin、windows',
  `app_version_arch` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '机器架构:x86_64、i686、aarch64、armv7',
  `dev_model_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '设备机型唯一标识',
  `dev_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '设备唯一标识',
  `strategy_version_id` bigint NOT NULL DEFAULT '0' COMMENT '升级策略应用版本id',
  `strategy_version_code` bigint NOT NULL DEFAULT '0' COMMENT '升级策略应用版本号',
  `strategy_id` bigint NOT NULL DEFAULT '0' COMMENT '升级策略应用版本号',
  `code` bigint NOT NULL DEFAULT '0' COMMENT '事件-状态码',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_company_timestamp` (`company_id`,`timestamp`) USING BTREE,
  KEY `idx_appkey_timestamp` (`app_key`,`timestamp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='应用升级获取升级策略事件日志';

-- ----------------------------
-- Records of upgrade_app_upgrade_get_strategy_report_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_app_upgrade_upgrade_report_log
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_app_upgrade_upgrade_report_log`;
CREATE TABLE `upgrade_app_upgrade_upgrade_report_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '事件发生时间',
  `app_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '应用Key',
  `app_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '应用类型 url,file,tauri,apk,configuration',
  `app_version_id` bigint NOT NULL DEFAULT '0' COMMENT '应用版本ID',
  `app_version_code` bigint NOT NULL DEFAULT '0' COMMENT '版本号',
  `app_version_platform` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '操作系统:linux、darwin、windows',
  `app_version_target` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '操作系统:linux、darwin、windows',
  `app_version_arch` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '机器架构:x86_64、i686、aarch64、armv7',
  `dev_model_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '设备机型唯一标识',
  `dev_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '设备唯一标识',
  `upgrade_version_code` bigint NOT NULL DEFAULT '0' COMMENT '升级应用版本号',
  `code` bigint NOT NULL DEFAULT '0' COMMENT '事件-状态码',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_company_timestamp` (`company_id`,`timestamp`) USING BTREE,
  KEY `idx_appkey_timestamp` (`app_key`,`timestamp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='应用升级升级事件日志';

-- ----------------------------
-- Records of upgrade_app_upgrade_upgrade_report_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_company_income
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_company_income`;
CREATE TABLE `upgrade_company_income` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `income_type` tinyint NOT NULL DEFAULT '0' COMMENT '收入类型：0 - 广告收入；',
  `income_amount` bigint NOT NULL DEFAULT '0' COMMENT '收入金额（单位分）',
  `income_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '收入产生时间',
  `remark` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '备注',
  `status` int NOT NULL DEFAULT '0' COMMENT '收入状态：0 - 待结算；1 - 已结算；2 - 失效（如订单取消导致收入作废）',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='收入表';

-- ----------------------------
-- Records of upgrade_company_income
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_company_traffic_packet
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_company_traffic_packet`;
CREATE TABLE `upgrade_company_traffic_packet` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `packet_id` bigint NOT NULL DEFAULT '0' COMMENT '流量包ID',
  `start_time` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '开始时间',
  `end_time` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '结束时间',
  `initial_size` bigint NOT NULL DEFAULT '0' COMMENT '初始流量大小(字节)',
  `remaining_size` bigint NOT NULL DEFAULT '0' COMMENT '剩余流量大小(字节)',
  `status` int NOT NULL DEFAULT '1' COMMENT '状态: 1=有效, 0=已过期, 2=已用完',
  `exchange_time` timestamp NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '兑换流量包时间',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_company_status_time` (`company_id`,`status`,`start_time`,`end_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户购买的流量包记录';

-- ----------------------------
-- Records of upgrade_company_traffic_packet
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_company_traffic_usage_detail
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_company_traffic_usage_detail`;
CREATE TABLE `upgrade_company_traffic_usage_detail` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `app_download_report_id` bigint NOT NULL DEFAULT '0' COMMENT '下载记录ID',
  `company_traffic_packet_id` bigint NOT NULL DEFAULT '0' COMMENT '流量包记录ID',
  `used_size` bigint NOT NULL DEFAULT '0' COMMENT '使用流量(字节)',
  `used_time` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '使用时间',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='流量使用明细表';

-- ----------------------------
-- Records of upgrade_company_traffic_usage_detail
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_configuration
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_configuration`;
CREATE TABLE `upgrade_configuration` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '配置唯一标识',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '配置名称',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='配置';

-- ----------------------------
-- Records of upgrade_configuration
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_configuration_upgrade_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_configuration_upgrade_strategy`;
CREATE TABLE `upgrade_configuration_upgrade_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务名称',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务描述信息',
  `configuration_id` bigint NOT NULL DEFAULT '0' COMMENT '配置ID',
  `configuration_version_id` bigint NOT NULL DEFAULT '0' COMMENT 'configuration_version_id; 外键configuration_version.id',
  `begin_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务开始时间',
  `end_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务结束时间',
  `upgrade_type` int NOT NULL DEFAULT '0' COMMENT '升级方式：0：未知方式；1：提示升级；2：静默升级；3: 强制升级',
  `prompt_upgrade_content` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '提示升级描述内容',
  `upgrade_dev_type` int NOT NULL COMMENT '指定升级的设备范围：0：全部设备；1：指定设备分组；2：指定机型',
  `upgrade_dev_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '升级设备数据：0.当为全部设备时，此字段为空；；1.当指定设备分组时，此字段存储设备分组id；2.当指定设备机型时，此字段存储选中的设备机型id;',
  `upgrade_version_type` int NOT NULL DEFAULT '0' COMMENT '指定升级的应用版本：0：全部版本；1：指定版本',
  `upgrade_version_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '升级设备数据：0.当为全部版本时，此字段为空；；1.当指定应用版本时，此字段存储应用版本id;',
  `is_gray` int NOT NULL DEFAULT '0' COMMENT '是否开启灰度 0：不开启；1：开启',
  `gray_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '灰度策略id数据',
  `is_flow_limit` int NOT NULL DEFAULT '0' COMMENT '是否开启频控 0：不开启；1：开启',
  `flow_limit_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '频控策略id数据',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='配置 升级任务';

-- ----------------------------
-- Records of upgrade_configuration_upgrade_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_configuration_upgrade_strategy_flow_limit_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_configuration_upgrade_strategy_flow_limit_strategy`;
CREATE TABLE `upgrade_configuration_upgrade_strategy_flow_limit_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `begin_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '开始时间段: 时分秒',
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '结束时间段: 时分秒',
  `dimension` int NOT NULL DEFAULT '1' COMMENT '流控维度；流控维度：1：秒；2：分；3：时；4：天',
  `limit` bigint NOT NULL DEFAULT '10' COMMENT '频控限制；在流控维度上的次数',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='配置 升级任务灰度策略表；';

-- ----------------------------
-- Records of upgrade_configuration_upgrade_strategy_flow_limit_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_configuration_upgrade_strategy_gray_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_configuration_upgrade_strategy_gray_strategy`;
CREATE TABLE `upgrade_configuration_upgrade_strategy_gray_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `begin_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务开始时间',
  `end_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务结束时间',
  `limit` bigint NOT NULL DEFAULT '10' COMMENT '数量限制',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='配置 升级任务灰度策略表；';

-- ----------------------------
-- Records of upgrade_configuration_upgrade_strategy_gray_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_configuration_version
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_configuration_version`;
CREATE TABLE `upgrade_configuration_version` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `configuration_id` bigint NOT NULL DEFAULT '0' COMMENT '配置ID',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '内容',
  `version_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '版本名',
  `version_code` bigint NOT NULL DEFAULT '0' COMMENT '版本号',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='配置 版本库';

-- ----------------------------
-- Records of upgrade_configuration_version
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_dev_group
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_dev_group`;
CREATE TABLE `upgrade_dev_group` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '设备分组名称',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='设备分组';

-- ----------------------------
-- Records of upgrade_dev_group
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_dev_group_relation
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_dev_group_relation`;
CREATE TABLE `upgrade_dev_group_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dev_id` bigint unsigned NOT NULL COMMENT '设备id',
  `dev_group_id` bigint unsigned NOT NULL COMMENT '设备分组 id',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='设备分组关系';

-- ----------------------------
-- Records of upgrade_dev_group_relation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_dev_model
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_dev_model`;
CREATE TABLE `upgrade_dev_model` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL COMMENT '公司ID: 所属公司id',
  `key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '设备机型唯一标识',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '设备机型名称',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='设备机型表';

-- ----------------------------
-- Records of upgrade_dev_model
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_devs
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_devs`;
CREATE TABLE `upgrade_devs` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '设备唯一标识',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='设备管理';

-- ----------------------------
-- Records of upgrade_devs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_electron
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_electron`;
CREATE TABLE `upgrade_electron` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'electron应用唯一标识',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'electron应用名称',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  `github_url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '开源项目 github 地址',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='electron应用';

-- ----------------------------
-- Records of upgrade_electron
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_electron_upgrade_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_electron_upgrade_strategy`;
CREATE TABLE `upgrade_electron_upgrade_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务名称',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务描述信息',
  `electron_id` bigint NOT NULL DEFAULT '0' COMMENT 'electron应用ID',
  `electron_version_id` bigint NOT NULL DEFAULT '0' COMMENT 'electron_version_id; 外键electron_version.id',
  `begin_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务开始时间',
  `end_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务结束时间',
  `upgrade_type` int NOT NULL DEFAULT '0' COMMENT '升级方式：0：未知方式；1：提示升级；2：静默升级；3: 强制升级',
  `prompt_upgrade_content` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '提示升级描述内容',
  `upgrade_dev_type` int NOT NULL DEFAULT '0' COMMENT '指定升级的设备范围：0：全部设备；1：指定设备分组；2：指定机型',
  `upgrade_dev_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '升级设备数据：0.当为全部设备时，此字段为空；；1.当指定设备分组时，此字段存储设备分组id；2.当指定设备机型时，此字段存储选中的设备机型id;',
  `upgrade_version_type` int NOT NULL DEFAULT '0' COMMENT '指定升级的应用版本：0：全部版本；1：指定版本',
  `upgrade_version_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '升级设备数据：0.当为全部版本时，此字段为空；；1.当指定应用版本时，此字段存储应用版本id;',
  `is_gray` int NOT NULL DEFAULT '0' COMMENT '是否开启灰度 0：不开启；1：开启',
  `gray_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '灰度策略id数据',
  `is_flow_limit` int NOT NULL DEFAULT '0' COMMENT '是否开启频控 0：不开启；1：开启',
  `flow_limit_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '频控策略id数据',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='electron应用 升级任务';

-- ----------------------------
-- Records of upgrade_electron_upgrade_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_electron_upgrade_strategy_flow_limit_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_electron_upgrade_strategy_flow_limit_strategy`;
CREATE TABLE `upgrade_electron_upgrade_strategy_flow_limit_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `begin_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '开始时间段: 时分秒',
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '结束时间段: 时分秒',
  `dimension` int NOT NULL DEFAULT '1' COMMENT '流控维度；流控维度：1：秒；2：分；3：时；4：天',
  `limit` bigint NOT NULL DEFAULT '10' COMMENT '频控限制；在流控维度上的次数',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='electron应用 升级任务灰度策略表；';

-- ----------------------------
-- Records of upgrade_electron_upgrade_strategy_flow_limit_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_electron_upgrade_strategy_gray_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_electron_upgrade_strategy_gray_strategy`;
CREATE TABLE `upgrade_electron_upgrade_strategy_gray_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `begin_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '开始时间',
  `end_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '结束时间',
  `limit` bigint NOT NULL DEFAULT '10' COMMENT '数量限制',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='electron应用 升级任务灰度策略表；';

-- ----------------------------
-- Records of upgrade_electron_upgrade_strategy_gray_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_electron_version
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_electron_version`;
CREATE TABLE `upgrade_electron_version` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `electron_id` bigint NOT NULL DEFAULT '0' COMMENT 'tauri应用ID',
  `cloud_file_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '云文件id',
  `sha512` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '生成的sha512',
  `install_cloud_file_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '云文件id',
  `install_sha512` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '安装包 生成的sha512',
  `version_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '版本名',
  `version_code` bigint NOT NULL DEFAULT '0' COMMENT '版本号',
  `platform` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '操作平台:linux、darwin、windows',
  `arch` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '机器架构:x64、arm64',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_electron_active_version` (`electron_id`,`is_del`,`version_code`,`create_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='electron应用 版本库';

-- ----------------------------
-- Records of upgrade_electron_version
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_file
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_file`;
CREATE TABLE `upgrade_file` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '文件应用唯一标识',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '文件应用名称',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='文件应用';

-- ----------------------------
-- Records of upgrade_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_file_github
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_file_github`;
CREATE TABLE `upgrade_file_github` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `file_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '文件id',
  `url` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'github 文件地址',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_upgrade_file_github_file_id` (`file_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='github文件下载地址';

-- ----------------------------
-- Records of upgrade_file_github
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_file_upgrade_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_file_upgrade_strategy`;
CREATE TABLE `upgrade_file_upgrade_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务名称',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务描述信息',
  `file_id` bigint NOT NULL DEFAULT '0' COMMENT '文件应用ID',
  `file_version_id` bigint NOT NULL DEFAULT '0' COMMENT 'file_version_id; 外键file_version.id',
  `begin_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务开始时间',
  `end_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务结束时间',
  `upgrade_type` int NOT NULL DEFAULT '0' COMMENT '升级方式：0：未知方式；1：提示升级；2：静默升级；3: 强制升级',
  `prompt_upgrade_content` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '提示升级描述内容',
  `upgrade_dev_type` int NOT NULL DEFAULT '0' COMMENT '指定升级的设备范围：0：全部设备；1：指定设备分组；2：指定机型',
  `upgrade_dev_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '升级设备数据：0.当为全部设备时，此字段为空；；1.当指定设备分组时，此字段存储设备分组id；2.当指定设备机型时，此字段存储选中的设备机型id;',
  `upgrade_version_type` int NOT NULL DEFAULT '0' COMMENT '指定升级的应用版本：0：全部版本；1：指定版本',
  `upgrade_version_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '升级设备数据：0.当为全部版本时，此字段为空；；1.当指定应用版本时，此字段存储应用版本id;',
  `is_gray` int NOT NULL DEFAULT '0' COMMENT '是否开启灰度 0：不开启；1：开启',
  `gray_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '灰度策略id数据',
  `is_flow_limit` int NOT NULL DEFAULT '0' COMMENT '是否开启频控 0：不开启；1：开启',
  `flow_limit_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '频控策略id数据',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='文件应用 升级任务';

-- ----------------------------
-- Records of upgrade_file_upgrade_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_file_upgrade_strategy_flow_limit_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_file_upgrade_strategy_flow_limit_strategy`;
CREATE TABLE `upgrade_file_upgrade_strategy_flow_limit_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `enable` int NOT NULL DEFAULT '9' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `begin_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '开始时间段: 时分秒',
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '结束时间段: 时分秒',
  `dimension` int NOT NULL DEFAULT '1' COMMENT '流控维度；流控维度：1：秒；2：分；3：时；4：天',
  `limit` bigint NOT NULL DEFAULT '10' COMMENT '频控限制；在流控维度上的次数',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='文件应用 升级任务灰度策略表；';

-- ----------------------------
-- Records of upgrade_file_upgrade_strategy_flow_limit_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_file_upgrade_strategy_gray_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_file_upgrade_strategy_gray_strategy`;
CREATE TABLE `upgrade_file_upgrade_strategy_gray_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `begin_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '开始时间',
  `end_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '结束时间',
  `limit` bigint NOT NULL DEFAULT '10' COMMENT '数量限制',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='文件应用 升级任务灰度策略表；';

-- ----------------------------
-- Records of upgrade_file_upgrade_strategy_gray_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_file_version
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_file_version`;
CREATE TABLE `upgrade_file_version` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `file_id` bigint NOT NULL DEFAULT '0' COMMENT '文件应用ID',
  `cloud_file_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '云文件id',
  `version_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '版本名',
  `version_code` bigint NOT NULL DEFAULT '0' COMMENT '版本号',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='文件应用 版本库';

-- ----------------------------
-- Records of upgrade_file_version
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_lnx
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_lnx`;
CREATE TABLE `upgrade_lnx` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'linux应用唯一标识',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'linux应用名称',
  `package_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'linux应用包名',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='linux应用';

-- ----------------------------
-- Records of upgrade_lnx
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_lnx_upgrade_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_lnx_upgrade_strategy`;
CREATE TABLE `upgrade_lnx_upgrade_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务名称',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务描述信息',
  `lnx_id` bigint NOT NULL DEFAULT '0' COMMENT 'linux应用ID',
  `lnx_version_id` bigint NOT NULL DEFAULT '0' COMMENT 'lnx_version_id; 外键lnx_version.id',
  `begin_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务开始时间',
  `end_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务结束时间',
  `upgrade_type` int NOT NULL DEFAULT '0' COMMENT '升级方式：0：未知方式；1：提示升级；2：静默升级；3: 强制升级',
  `prompt_upgrade_content` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '提示升级描述内容',
  `upgrade_dev_type` int NOT NULL DEFAULT '0' COMMENT '指定升级的设备范围：0：全部设备；1：指定设备分组；2：指定机型',
  `upgrade_dev_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '升级设备数据：0.当为全部设备时，此字段为空；；1.当指定设备分组时，此字段存储设备分组id；2.当指定设备机型时，此字段存储选中的设备机型id;',
  `upgrade_version_type` int NOT NULL DEFAULT '0' COMMENT '指定升级的应用版本：0：全部版本；1：指定版本',
  `upgrade_version_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '升级设备数据：0.当为全部版本时，此字段为空；；1.当指定应用版本时，此字段存储应用版本id;',
  `is_gray` int NOT NULL DEFAULT '0' COMMENT '是否开启灰度 0：不开启；1：开启',
  `gray_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '灰度策略id数据',
  `is_flow_limit` int NOT NULL DEFAULT '0' COMMENT '是否开启频控 0：不开启；1：开启',
  `flow_limit_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '频控策略id数据',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='linux应用 升级任务';

-- ----------------------------
-- Records of upgrade_lnx_upgrade_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_lnx_upgrade_strategy_flow_limit_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_lnx_upgrade_strategy_flow_limit_strategy`;
CREATE TABLE `upgrade_lnx_upgrade_strategy_flow_limit_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `enable` int NOT NULL DEFAULT '9' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `begin_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '开始时间段: 时分秒',
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '结束时间段: 时分秒',
  `dimension` int NOT NULL DEFAULT '1' COMMENT '流控维度；流控维度：1：秒；2：分；3：时；4：天',
  `limit` bigint NOT NULL DEFAULT '10' COMMENT '频控限制；在流控维度上的次数',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='linux应用 升级任务灰度策略表；';

-- ----------------------------
-- Records of upgrade_lnx_upgrade_strategy_flow_limit_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_lnx_upgrade_strategy_gray_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_lnx_upgrade_strategy_gray_strategy`;
CREATE TABLE `upgrade_lnx_upgrade_strategy_gray_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `begin_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '开始时间',
  `end_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '结束时间',
  `limit` bigint NOT NULL DEFAULT '10' COMMENT '数量限制',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='linux应用 升级任务灰度策略表；';

-- ----------------------------
-- Records of upgrade_lnx_upgrade_strategy_gray_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_lnx_version
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_lnx_version`;
CREATE TABLE `upgrade_lnx_version` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `lnx_id` bigint NOT NULL DEFAULT '0' COMMENT 'lnx应用ID',
  `cloud_file_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '云文件id',
  `version_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '版本名',
  `version_code` bigint NOT NULL DEFAULT '0' COMMENT '版本号',
  `arch` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '机器架构:x64、arm64',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='linux应用 版本库';

-- ----------------------------
-- Records of upgrade_lnx_version
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_mac
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_mac`;
CREATE TABLE `upgrade_mac` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'mac应用唯一标识',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'mac应用名称',
  `package_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'mac应用包名',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='mac应用';

-- ----------------------------
-- Records of upgrade_mac
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_mac_upgrade_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_mac_upgrade_strategy`;
CREATE TABLE `upgrade_mac_upgrade_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务名称',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务描述信息',
  `mac_id` bigint NOT NULL DEFAULT '0' COMMENT 'mac应用ID',
  `mac_version_id` bigint NOT NULL DEFAULT '0' COMMENT 'mac_version_id; 外键mac_version.id',
  `begin_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务开始时间',
  `end_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务结束时间',
  `upgrade_type` int NOT NULL DEFAULT '0' COMMENT '升级方式：0：未知方式；1：提示升级；2：静默升级；3: 强制升级',
  `prompt_upgrade_content` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '提示升级描述内容',
  `upgrade_dev_type` int NOT NULL DEFAULT '0' COMMENT '指定升级的设备范围：0：全部设备；1：指定设备分组；2：指定机型',
  `upgrade_dev_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '升级设备数据：0.当为全部设备时，此字段为空；；1.当指定设备分组时，此字段存储设备分组id；2.当指定设备机型时，此字段存储选中的设备机型id;',
  `upgrade_version_type` int NOT NULL DEFAULT '0' COMMENT '指定升级的应用版本：0：全部版本；1：指定版本',
  `upgrade_version_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '升级设备数据：0.当为全部版本时，此字段为空；；1.当指定应用版本时，此字段存储应用版本id;',
  `is_gray` int NOT NULL DEFAULT '0' COMMENT '是否开启灰度 0：不开启；1：开启',
  `gray_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '灰度策略id数据',
  `is_flow_limit` int NOT NULL DEFAULT '0' COMMENT '是否开启频控 0：不开启；1：开启',
  `flow_limit_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '频控策略id数据',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='mac应用 升级任务';

-- ----------------------------
-- Records of upgrade_mac_upgrade_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_mac_upgrade_strategy_flow_limit_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_mac_upgrade_strategy_flow_limit_strategy`;
CREATE TABLE `upgrade_mac_upgrade_strategy_flow_limit_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `enable` int NOT NULL DEFAULT '9' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `begin_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '开始时间段: 时分秒',
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '结束时间段: 时分秒',
  `dimension` int NOT NULL DEFAULT '1' COMMENT '流控维度；流控维度：1：秒；2：分；3：时；4：天',
  `limit` bigint NOT NULL DEFAULT '10' COMMENT '频控限制；在流控维度上的次数',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='mac应用 升级任务灰度策略表；';

-- ----------------------------
-- Records of upgrade_mac_upgrade_strategy_flow_limit_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_mac_upgrade_strategy_gray_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_mac_upgrade_strategy_gray_strategy`;
CREATE TABLE `upgrade_mac_upgrade_strategy_gray_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `begin_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '开始时间',
  `end_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '结束时间',
  `limit` bigint NOT NULL DEFAULT '10' COMMENT '数量限制',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='mac应用 升级任务灰度策略表；';

-- ----------------------------
-- Records of upgrade_mac_upgrade_strategy_gray_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_mac_version
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_mac_version`;
CREATE TABLE `upgrade_mac_version` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `mac_id` bigint NOT NULL DEFAULT '0' COMMENT 'mac应用ID',
  `cloud_file_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '云文件id',
  `version_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '版本名',
  `version_code` bigint NOT NULL DEFAULT '0' COMMENT '版本号',
  `arch` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '机器架构:x64、arm64',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='mac应用 版本库';

-- ----------------------------
-- Records of upgrade_mac_version
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_tauri
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_tauri`;
CREATE TABLE `upgrade_tauri` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'tauri应用唯一标识',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'tauri应用名称',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  `github_url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '开源项目 github 地址',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='tauri应用';

-- ----------------------------
-- Records of upgrade_tauri
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_tauri_upgrade_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_tauri_upgrade_strategy`;
CREATE TABLE `upgrade_tauri_upgrade_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务名称',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务描述信息',
  `tauri_id` bigint NOT NULL DEFAULT '0' COMMENT 'Tauri应用ID',
  `tauri_version_id` bigint NOT NULL DEFAULT '0' COMMENT 'tauri_version_id; 外键tauri_version.id',
  `begin_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务开始时间',
  `end_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务结束时间',
  `upgrade_type` int NOT NULL DEFAULT '0' COMMENT '升级方式：0：未知方式；1：提示升级；2：静默升级；3: 强制升级',
  `prompt_upgrade_content` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '提示升级描述内容',
  `upgrade_dev_type` int NOT NULL DEFAULT '0' COMMENT '指定升级的设备范围：0：全部设备；1：指定设备分组；2：指定机型',
  `upgrade_dev_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '升级设备数据：0.当为全部设备时，此字段为空；；1.当指定设备分组时，此字段存储设备分组id；2.当指定设备机型时，此字段存储选中的设备机型id;',
  `upgrade_version_type` int NOT NULL DEFAULT '0' COMMENT '指定升级的应用版本：0：全部版本；1：指定版本',
  `upgrade_version_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '升级设备数据：0.当为全部版本时，此字段为空；；1.当指定应用版本时，此字段存储应用版本id;',
  `is_gray` int NOT NULL DEFAULT '0' COMMENT '是否开启灰度 0：不开启；1：开启',
  `gray_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '灰度策略id数据',
  `is_flow_limit` int NOT NULL DEFAULT '0' COMMENT '是否开启频控 0：不开启；1：开启',
  `flow_limit_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '频控策略id数据',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='tauri应用 升级任务';

-- ----------------------------
-- Records of upgrade_tauri_upgrade_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_tauri_upgrade_strategy_flow_limit_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_tauri_upgrade_strategy_flow_limit_strategy`;
CREATE TABLE `upgrade_tauri_upgrade_strategy_flow_limit_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `begin_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '开始时间段: 时分秒',
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '结束时间段: 时分秒',
  `dimension` int NOT NULL DEFAULT '1' COMMENT '流控维度；流控维度：1：秒；2：分；3：时；4：天',
  `limit` bigint NOT NULL DEFAULT '10' COMMENT '频控限制；在流控维度上的次数',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='tauri应用 升级任务灰度策略表；';

-- ----------------------------
-- Records of upgrade_tauri_upgrade_strategy_flow_limit_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_tauri_upgrade_strategy_gray_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_tauri_upgrade_strategy_gray_strategy`;
CREATE TABLE `upgrade_tauri_upgrade_strategy_gray_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `begin_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '开始时间',
  `end_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '结束时间',
  `limit` bigint NOT NULL DEFAULT '10' COMMENT '数量限制',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='tauri应用 升级任务灰度策略表；';

-- ----------------------------
-- Records of upgrade_tauri_upgrade_strategy_gray_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_tauri_version
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_tauri_version`;
CREATE TABLE `upgrade_tauri_version` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `tauri_id` bigint NOT NULL DEFAULT '0' COMMENT 'tauri应用ID',
  `cloud_file_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '云文件id',
  `install_cloud_file_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '云文件id',
  `version_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '版本名',
  `version_code` bigint NOT NULL DEFAULT '0' COMMENT '版本号',
  `target` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '操作系统:linux、darwin、windows',
  `arch` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '机器架构:x86_64、i686、aarch64、armv7',
  `signature` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '生成的 .sig 文件的内容',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_tauri_active_version` (`tauri_id`,`is_del`,`version_code`,`create_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='tauri应用 版本库';

-- ----------------------------
-- Records of upgrade_tauri_version
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_traffic_packet
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_traffic_packet`;
CREATE TABLE `upgrade_traffic_packet` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '流量包ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '流量包名称',
  `key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '流量包唯一标识',
  `size` bigint NOT NULL DEFAULT '0' COMMENT '流量大小(单位:字节)',
  `price` int NOT NULL DEFAULT '1' COMMENT '价格',
  `valid_days` int NOT NULL DEFAULT '1' COMMENT '有效期(天)',
  `status` int NOT NULL DEFAULT '1' COMMENT '状态: 1=有效, 2=已兑换',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='流量包表';

-- ----------------------------
-- Records of upgrade_traffic_packet
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_url
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_url`;
CREATE TABLE `upgrade_url` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'url唯一标识',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'url应用名称',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='url应用';

-- ----------------------------
-- Records of upgrade_url
-- ----------------------------
BEGIN;
INSERT INTO `upgrade_url` (`id`, `company_id`, `key`, `name`, `description`, `is_del`, `create_at`, `update_at`) VALUES (1, 1, 'WT2DZ4vJy9H30VPlM6AqjA', '测试url应用1', '', 0, '2025-09-26 06:08:17', '2025-09-26 06:08:17');
COMMIT;

-- ----------------------------
-- Table structure for upgrade_url_upgrade_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_url_upgrade_strategy`;
CREATE TABLE `upgrade_url_upgrade_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务名称',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务描述信息',
  `url_id` bigint NOT NULL DEFAULT '0' COMMENT 'url应用ID',
  `url_version_id` bigint NOT NULL DEFAULT '0' COMMENT 'url_version_id; 外键url_version.id',
  `begin_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务开始时间',
  `end_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务结束时间',
  `upgrade_type` int NOT NULL DEFAULT '0' COMMENT '升级方式：0：未知方式；1：提示升级；2：静默升级；3: 强制升级',
  `prompt_upgrade_content` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '提示升级描述内容',
  `upgrade_dev_type` int NOT NULL COMMENT '指定升级的设备范围：0：全部设备；1：指定设备分组；2：指定机型',
  `upgrade_dev_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '升级设备数据：0.当为全部设备时，此字段为空；；1.当指定设备分组时，此字段存储设备分组id；2.当指定设备机型时，此字段存储选中的设备机型id;',
  `upgrade_version_type` int NOT NULL DEFAULT '0' COMMENT '指定升级的应用版本：0：全部版本；1：指定版本',
  `upgrade_version_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '升级设备数据：0.当为全部版本时，此字段为空；；1.当指定应用版本时，此字段存储应用版本id;',
  `is_gray` int NOT NULL DEFAULT '0' COMMENT '是否开启灰度 0：不开启；1：开启',
  `gray_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '灰度策略id数据',
  `is_flow_limit` int NOT NULL DEFAULT '0' COMMENT '是否开启频控 0：不开启；1：开启',
  `flow_limit_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '频控策略id数据',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='url应用 升级任务';

-- ----------------------------
-- Records of upgrade_url_upgrade_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_url_upgrade_strategy_flow_limit_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_url_upgrade_strategy_flow_limit_strategy`;
CREATE TABLE `upgrade_url_upgrade_strategy_flow_limit_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `begin_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '开始时间段: 时分秒',
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '结束时间段: 时分秒',
  `dimension` int NOT NULL DEFAULT '1' COMMENT '流控维度；流控维度：1：秒；2：分；3：时；4：天',
  `limit` bigint NOT NULL DEFAULT '10' COMMENT '频控限制；在流控维度上的次数',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='url应用 升级任务灰度策略表；';

-- ----------------------------
-- Records of upgrade_url_upgrade_strategy_flow_limit_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_url_upgrade_strategy_gray_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_url_upgrade_strategy_gray_strategy`;
CREATE TABLE `upgrade_url_upgrade_strategy_gray_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `begin_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务开始时间',
  `end_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务结束时间',
  `limit` bigint NOT NULL DEFAULT '10' COMMENT '数量限制',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='url应用 升级任务灰度策略表；';

-- ----------------------------
-- Records of upgrade_url_upgrade_strategy_gray_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_url_version
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_url_version`;
CREATE TABLE `upgrade_url_version` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `url_id` bigint NOT NULL DEFAULT '0' COMMENT 'url应用ID',
  `url_path` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'url链接',
  `version_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '版本名',
  `version_code` bigint NOT NULL DEFAULT '0' COMMENT '版本号',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='url应用 版本库';

-- ----------------------------
-- Records of upgrade_url_version
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_win
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_win`;
CREATE TABLE `upgrade_win` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'win应用唯一标识',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'win应用名称',
  `package_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'win应用包名',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='win应用';

-- ----------------------------
-- Records of upgrade_win
-- ----------------------------
BEGIN;
INSERT INTO `upgrade_win` (`id`, `company_id`, `key`, `name`, `package_name`, `description`, `is_del`, `create_at`, `update_at`) VALUES (2, 1, 'REmtnhRBM4_dtXyDzGK2NA', '测试 windows 应用', 'test.windows', '', 0, '2025-10-28 13:39:20', '2025-10-28 13:39:20');
COMMIT;

-- ----------------------------
-- Table structure for upgrade_win_upgrade_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_win_upgrade_strategy`;
CREATE TABLE `upgrade_win_upgrade_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务名称',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务描述信息',
  `win_id` bigint NOT NULL DEFAULT '0' COMMENT 'win应用ID',
  `win_version_id` bigint NOT NULL DEFAULT '0' COMMENT 'win_version_id; 外键win_version.id',
  `begin_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务开始时间',
  `end_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '升级任务结束时间',
  `upgrade_type` int NOT NULL DEFAULT '0' COMMENT '升级方式：0：未知方式；1：提示升级；2：静默升级；3: 强制升级',
  `prompt_upgrade_content` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '提示升级描述内容',
  `upgrade_dev_type` int NOT NULL DEFAULT '0' COMMENT '指定升级的设备范围：0：全部设备；1：指定设备分组；2：指定机型',
  `upgrade_dev_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '升级设备数据：0.当为全部设备时，此字段为空；；1.当指定设备分组时，此字段存储设备分组id；2.当指定设备机型时，此字段存储选中的设备机型id;',
  `upgrade_version_type` int NOT NULL DEFAULT '0' COMMENT '指定升级的应用版本：0：全部版本；1：指定版本',
  `upgrade_version_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '升级设备数据：0.当为全部版本时，此字段为空；；1.当指定应用版本时，此字段存储应用版本id;',
  `is_gray` int NOT NULL DEFAULT '0' COMMENT '是否开启灰度 0：不开启；1：开启',
  `gray_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '灰度策略id数据',
  `is_flow_limit` int NOT NULL DEFAULT '0' COMMENT '是否开启频控 0：不开启；1：开启',
  `flow_limit_data` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '频控策略id数据',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='win应用 升级任务';

-- ----------------------------
-- Records of upgrade_win_upgrade_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_win_upgrade_strategy_flow_limit_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_win_upgrade_strategy_flow_limit_strategy`;
CREATE TABLE `upgrade_win_upgrade_strategy_flow_limit_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `enable` int NOT NULL DEFAULT '9' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `begin_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '开始时间段: 时分秒',
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '结束时间段: 时分秒',
  `dimension` int NOT NULL DEFAULT '1' COMMENT '流控维度；流控维度：1：秒；2：分；3：时；4：天',
  `limit` bigint NOT NULL DEFAULT '10' COMMENT '频控限制；在流控维度上的次数',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='win应用 升级任务灰度策略表；';

-- ----------------------------
-- Records of upgrade_win_upgrade_strategy_flow_limit_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_win_upgrade_strategy_gray_strategy
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_win_upgrade_strategy_gray_strategy`;
CREATE TABLE `upgrade_win_upgrade_strategy_gray_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `enable` int NOT NULL DEFAULT '0' COMMENT '是否生效；可通过此控制策略是否生效0：失效；1：生效',
  `begin_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '开始时间',
  `end_datetime` timestamp NOT NULL DEFAULT '1970-01-01 08:00:01' COMMENT '结束时间',
  `limit` bigint NOT NULL DEFAULT '10' COMMENT '数量限制',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='win应用 升级任务灰度策略表；';

-- ----------------------------
-- Records of upgrade_win_upgrade_strategy_gray_strategy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upgrade_win_version
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_win_version`;
CREATE TABLE `upgrade_win_version` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint NOT NULL DEFAULT '0' COMMENT '公司ID',
  `win_id` bigint NOT NULL DEFAULT '0' COMMENT 'win应用ID',
  `cloud_file_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '云文件id',
  `version_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '版本名',
  `version_code` bigint NOT NULL DEFAULT '0' COMMENT '版本号',
  `arch` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '机器架构:x64、arm64',
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '描述信息',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除 0：正常；1：已删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='win应用 版本库';

-- ----------------------------
-- Records of upgrade_win_version
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user_positions
-- ----------------------------
DROP TABLE IF EXISTS `user_positions`;
CREATE TABLE `user_positions` (
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `position_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`position_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of user_positions
-- ----------------------------
BEGIN;
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0194ef34-a6d1-728e-a70d-362f5035aab7', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0194f2c8-9ea7-76d2-9e3e-985c51e94b0d', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0194f3b7-5198-7e59-8f64-6fb42ee129cd', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('019536d9-fbbe-7930-a7f3-287b00b754c9', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('019536df-5075-7930-9fcb-f9aa1bf959e8', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('019536f6-ec6c-7f53-aa23-b42fc71c149f', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('019559ea-16de-7bb8-a652-c7af6e98a4ec', 0);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01955ac4-6ffa-7bb8-a4b7-a87bd2d3a561', 0);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01955ace-2bd8-7bb8-b373-d9f227fe8d98', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01962b48-b5fc-7bb8-84c8-f4b4d1db97b4', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01967682-ad93-7bb8-9499-e80886194fe1', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0196b320-ab43-7bb8-9ec9-9a3af4949aec', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0196d1ab-da36-7bb8-9290-0a73f609a790', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0196d7e0-3752-7bb8-ade6-25c8bffcbd5d', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0196d7e0-a0ed-7bb8-96b5-476631433f93', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0196e7ba-0ddf-7bb8-a386-2665a2033060', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0196f1f0-7a1a-7bb8-8eda-65e7ce55afd9', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('019769f9-185a-714f-82b9-bfe75880f729', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01979065-a792-714f-833e-f90315058e04', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01979bd1-1186-714f-9778-a388a32771d7', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01979ded-b714-714f-ab6d-c74eddb0e0d4', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01979f71-fb7f-714f-936d-862967640581', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0197a139-e5cc-714f-8484-a6c3729cc6d8', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0197ab9c-3061-714f-8110-2da85081b734', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0197aff0-9e78-714f-b3a0-9af2461ba20f', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0197b960-5e9d-714f-8510-6e35fd521c7c', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0197becf-efaf-714f-aae0-ed9def6030bd', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0197d885-a35d-714f-9aa1-1d51e33e561b', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0197e84e-0ed4-714f-8c6c-4c05a7a5c803', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0197e897-fc4a-714f-8af7-6965e9233752', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0197ee15-1993-714f-8f61-021d78268403', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0197eebf-6263-714f-869b-60942a59d214', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0197f810-c84b-714f-b40f-6e866f954752', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('019808d2-9cca-714f-b02e-4af00e1b20d5', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01980bf9-f497-70a1-94ca-061912abb7db', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01980c1d-9472-70a1-a4c0-f41785a83451', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01980d23-558d-70a1-bff6-a870b58f4cef', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01981c72-08fa-70a1-aae4-86b5f2784541', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0198220d-a0df-70a1-baab-649bb23d5e75', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('019825e7-4d9a-70a1-8453-52447af754c4', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0198263e-3fe1-70a1-b566-3f8563fd189f', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01983ff6-00c3-70a1-a79f-fb19c8204d0c', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('019849ff-56e0-70a1-a25a-5fe2466f9c80', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01984eb2-c3c0-70a1-bf0f-d31399078b9d', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01984eca-5c08-70a1-afd8-d2f9638c27cb', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01985020-7a41-70a1-9311-46b8b5dc553c', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0198505b-8e31-70a1-9f80-ab483d54a50d', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01985947-c27e-70a1-b08d-692a65b5ff1a', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('019882a3-b194-70a1-87bb-c8b090166c04', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01988906-1ba7-70a1-b394-e7a95d8a374e', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01988e3f-7aec-70a1-bdbd-c3aa220ede86', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01989293-d7b8-7dce-8711-e8539f3b6a06', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0198ac2a-c4c1-7dce-a844-af0a65994280', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0198acf7-0d1f-7dce-b24d-c623f14e6e35', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0198b0a4-d747-7dce-96f9-4f4c1325ba1b', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0198b0e1-41d1-7dce-9803-5503eccc5de8', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0198c6c2-f33b-7dce-8297-d4f5f8251133', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0198eb66-fac9-7dce-85c4-1f798e6f9a51', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0198ee4b-9fb0-7dce-a3aa-4826de862abd', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0198f01c-23f5-7dce-91f9-ca308a89eeae', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0198f906-6605-7dce-bbfa-f7448d84eb1a', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0198f9dd-41fd-7dce-9922-b5c6225f32fa', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0198fbbe-a850-7dce-b169-495ed025e397', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0199100e-8050-7dce-9fb3-74de4ce74231', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('0199135d-1497-7dce-8933-906ba7a6c3a8', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('019919d2-3ef5-7dce-a506-7aefdd850245', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01993645-37ee-7dce-b25b-a6d830507946', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01993e19-730a-7dce-9f06-366a8f96252c', 1);
INSERT INTO `user_positions` (`user_id`, `position_id`) VALUES ('01997157-69f0-7850-9e67-049d89fcac79', 1);
COMMIT;

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
BEGIN;
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0194ef34-a6d1-728e-a70d-362f5035aab7', 1);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0194f2c8-9ea7-76d2-9e3e-985c51e94b0d', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0194f3b7-5198-7e59-8f64-6fb42ee129cd', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('019536d9-fbbe-7930-a7f3-287b00b754c9', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('019536df-5075-7930-9fcb-f9aa1bf959e8', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('019536f6-ec6c-7f53-aa23-b42fc71c149f', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('019559ea-16de-7bb8-a652-c7af6e98a4ec', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01955ac4-6ffa-7bb8-a4b7-a87bd2d3a561', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01955ace-2bd8-7bb8-b373-d9f227fe8d98', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01962b48-b5fc-7bb8-84c8-f4b4d1db97b4', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01967682-ad93-7bb8-9499-e80886194fe1', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0196b320-ab43-7bb8-9ec9-9a3af4949aec', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0196d1ab-da36-7bb8-9290-0a73f609a790', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0196d7e0-3752-7bb8-ade6-25c8bffcbd5d', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0196d7e0-a0ed-7bb8-96b5-476631433f93', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0196e7ba-0ddf-7bb8-a386-2665a2033060', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0196f1f0-7a1a-7bb8-8eda-65e7ce55afd9', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('019769f9-185a-714f-82b9-bfe75880f729', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01979065-a792-714f-833e-f90315058e04', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01979bd1-1186-714f-9778-a388a32771d7', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01979ded-b714-714f-ab6d-c74eddb0e0d4', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01979f71-fb7f-714f-936d-862967640581', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0197a139-e5cc-714f-8484-a6c3729cc6d8', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0197ab9c-3061-714f-8110-2da85081b734', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0197aff0-9e78-714f-b3a0-9af2461ba20f', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0197b960-5e9d-714f-8510-6e35fd521c7c', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0197becf-efaf-714f-aae0-ed9def6030bd', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0197d885-a35d-714f-9aa1-1d51e33e561b', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0197e84e-0ed4-714f-8c6c-4c05a7a5c803', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0197e897-fc4a-714f-8af7-6965e9233752', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0197ee15-1993-714f-8f61-021d78268403', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0197eebf-6263-714f-869b-60942a59d214', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0197f810-c84b-714f-b40f-6e866f954752', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('019808d2-9cca-714f-b02e-4af00e1b20d5', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01980bf9-f497-70a1-94ca-061912abb7db', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01980c1d-9472-70a1-a4c0-f41785a83451', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01980d23-558d-70a1-bff6-a870b58f4cef', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01981c72-08fa-70a1-aae4-86b5f2784541', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0198220d-a0df-70a1-baab-649bb23d5e75', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('019825e7-4d9a-70a1-8453-52447af754c4', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0198263e-3fe1-70a1-b566-3f8563fd189f', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01983ff6-00c3-70a1-a79f-fb19c8204d0c', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('019849ff-56e0-70a1-a25a-5fe2466f9c80', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01984eb2-c3c0-70a1-bf0f-d31399078b9d', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01984eca-5c08-70a1-afd8-d2f9638c27cb', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01985020-7a41-70a1-9311-46b8b5dc553c', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0198505b-8e31-70a1-9f80-ab483d54a50d', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01985947-c27e-70a1-b08d-692a65b5ff1a', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('019882a3-b194-70a1-87bb-c8b090166c04', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01988906-1ba7-70a1-b394-e7a95d8a374e', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01988e3f-7aec-70a1-bdbd-c3aa220ede86', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01989293-d7b8-7dce-8711-e8539f3b6a06', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0198ac2a-c4c1-7dce-a844-af0a65994280', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0198acf7-0d1f-7dce-b24d-c623f14e6e35', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0198b0a4-d747-7dce-96f9-4f4c1325ba1b', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0198b0e1-41d1-7dce-9803-5503eccc5de8', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0198c6c2-f33b-7dce-8297-d4f5f8251133', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0198eb66-fac9-7dce-85c4-1f798e6f9a51', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0198ee4b-9fb0-7dce-a3aa-4826de862abd', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0198f01c-23f5-7dce-91f9-ca308a89eeae', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0198f906-6605-7dce-bbfa-f7448d84eb1a', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0198f9dd-41fd-7dce-9922-b5c6225f32fa', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0198fbbe-a850-7dce-b169-495ed025e397', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0199100e-8050-7dce-9fb3-74de4ce74231', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('0199135d-1497-7dce-8933-906ba7a6c3a8', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('019919d2-3ef5-7dce-a506-7aefdd850245', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01993645-37ee-7dce-b25b-a6d830507946', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01993e19-730a-7dce-9f06-366a8f96252c', 2);
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES ('01997157-69f0-7850-9e67-049d89fcac79', 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
