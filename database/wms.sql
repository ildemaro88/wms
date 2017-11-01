/*
Navicat MySQL Data Transfer

Source Server         : Mysql_Local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : wms

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-11-01 12:27:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cms_apicustom
-- ----------------------------
DROP TABLE IF EXISTS `cms_apicustom`;
CREATE TABLE `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_apicustom
-- ----------------------------

-- ----------------------------
-- Table structure for cms_apikey
-- ----------------------------
DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_apikey
-- ----------------------------

-- ----------------------------
-- Table structure for cms_dashboard
-- ----------------------------
DROP TABLE IF EXISTS `cms_dashboard`;
CREATE TABLE `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_dashboard
-- ----------------------------

-- ----------------------------
-- Table structure for cms_email_queues
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_queues`;
CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_email_queues
-- ----------------------------

-- ----------------------------
-- Table structure for cms_email_templates
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_templates`;
CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_email_templates
-- ----------------------------
INSERT INTO `cms_email_templates` VALUES ('1', 'Email Template Forgot Password Backend', 'forgot_password_backend', null, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', null, '2017-10-30 20:08:29', null);

-- ----------------------------
-- Table structure for cms_logs
-- ----------------------------
DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_logs
-- ----------------------------
INSERT INTO `cms_logs` VALUES ('1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', null, '1', '2017-10-30 20:21:33', null);
INSERT INTO `cms_logs` VALUES ('2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-10-30 20:28:27', null);
INSERT INTO `cms_logs` VALUES ('3', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-10-30 20:28:35', null);
INSERT INTO `cms_logs` VALUES ('4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-10-30 20:29:20', null);
INSERT INTO `cms_logs` VALUES ('5', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-10-30 20:29:28', null);
INSERT INTO `cms_logs` VALUES ('6', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-10-30 20:32:51', null);
INSERT INTO `cms_logs` VALUES ('7', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-10-30 20:33:51', null);
INSERT INTO `cms_logs` VALUES ('8', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-10-30 20:34:05', null);
INSERT INTO `cms_logs` VALUES ('9', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-10-30 20:34:09', null);
INSERT INTO `cms_logs` VALUES ('10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/users/add', 'Intentar añadir datos al Users', null, '1', '2017-10-30 20:39:11', null);
INSERT INTO `cms_logs` VALUES ('11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/users/add-save', 'Añadir nueva información Usuario de Prueba en Users', null, '1', '2017-10-30 20:42:49', null);
INSERT INTO `cms_logs` VALUES ('12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/users/edit-save/2', 'Actualizar información Usuario de Prueba en Users', null, '1', '2017-10-30 20:46:34', null);
INSERT INTO `cms_logs` VALUES ('13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Planificador en Menu Management', null, '1', '2017-10-30 20:48:32', null);
INSERT INTO `cms_logs` VALUES ('14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-10-30 20:48:39', null);
INSERT INTO `cms_logs` VALUES ('15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-30 20:48:48', null);
INSERT INTO `cms_logs` VALUES ('16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'prueba@correo.com se desconectó', null, '2', '2017-10-30 20:50:34', null);
INSERT INTO `cms_logs` VALUES ('17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-10-30 20:50:36', null);
INSERT INTO `cms_logs` VALUES ('18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/2', 'Actualizar información Planificador en Menu Management', null, '1', '2017-10-30 21:03:16', null);
INSERT INTO `cms_logs` VALUES ('19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-10-30 21:03:20', null);
INSERT INTO `cms_logs` VALUES ('20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-30 21:03:28', null);
INSERT INTO `cms_logs` VALUES ('21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'prueba@correo.com se desconectó', null, '2', '2017-10-30 21:31:05', null);
INSERT INTO `cms_logs` VALUES ('22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-10-30 21:31:11', null);
INSERT INTO `cms_logs` VALUES ('23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/2', 'Actualizar información Planificación en Menu Management', null, '1', '2017-10-30 21:32:44', null);
INSERT INTO `cms_logs` VALUES ('24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/2', 'Actualizar información Planificación en Menu Management', null, '1', '2017-10-30 21:35:53', null);
INSERT INTO `cms_logs` VALUES ('25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/2', 'Actualizar información Planificación en Menu Management', null, '1', '2017-10-30 21:36:41', null);
INSERT INTO `cms_logs` VALUES ('26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Planificador en Menu Management', null, '1', '2017-10-30 21:37:10', null);
INSERT INTO `cms_logs` VALUES ('27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Asignar Viajes Despacho en Menu Management', null, '1', '2017-10-30 21:38:13', null);
INSERT INTO `cms_logs` VALUES ('28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/4', 'Actualizar información Asignar Viajes Despacho en Menu Management', null, '1', '2017-10-30 21:44:11', null);
INSERT INTO `cms_logs` VALUES ('29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-10-30 21:44:18', null);
INSERT INTO `cms_logs` VALUES ('30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-30 21:44:32', null);
INSERT INTO `cms_logs` VALUES ('31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'prueba@correo.com se desconectó', null, '2', '2017-10-30 21:47:07', null);
INSERT INTO `cms_logs` VALUES ('32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-10-30 21:47:10', null);
INSERT INTO `cms_logs` VALUES ('33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/3', 'Actualizar información Planificador en Menu Management', null, '1', '2017-10-30 21:48:43', null);
INSERT INTO `cms_logs` VALUES ('34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-10-30 21:48:48', null);
INSERT INTO `cms_logs` VALUES ('35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-30 21:48:56', null);
INSERT INTO `cms_logs` VALUES ('36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'prueba@correo.com se desconectó', null, '2', '2017-10-30 21:49:36', null);
INSERT INTO `cms_logs` VALUES ('37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-10-30 21:49:38', null);
INSERT INTO `cms_logs` VALUES ('38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/3', 'Actualizar información Planificador en Menu Management', null, '1', '2017-10-30 21:49:52', null);
INSERT INTO `cms_logs` VALUES ('39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Despachos en Menu Management', null, '1', '2017-10-30 21:53:04', null);
INSERT INTO `cms_logs` VALUES ('40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/4', 'Actualizar información Asignar Viajes Despacho en Menu Management', null, '1', '2017-10-30 21:53:20', null);
INSERT INTO `cms_logs` VALUES ('41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Reporte de Despachos en Menu Management', null, '1', '2017-10-30 21:55:09', null);
INSERT INTO `cms_logs` VALUES ('42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-30 21:59:49', null);
INSERT INTO `cms_logs` VALUES ('43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-31 15:12:48', null);
INSERT INTO `cms_logs` VALUES ('44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', ' se desconectó', null, null, '2017-10-31 15:21:12', null);
INSERT INTO `cms_logs` VALUES ('45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-10-31 15:21:15', null);
INSERT INTO `cms_logs` VALUES ('46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Seguimiento de Viajes en Menu Management', null, '1', '2017-10-31 15:22:34', null);
INSERT INTO `cms_logs` VALUES ('47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Reporte de productos facturados y no despachados en Menu Management', null, '1', '2017-10-31 15:43:16', null);
INSERT INTO `cms_logs` VALUES ('48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/8', 'Actualizar información Reporte facturados y no despachados en Menu Management', null, '1', '2017-10-31 15:45:16', null);
INSERT INTO `cms_logs` VALUES ('49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Reportes en Menu Management', null, '1', '2017-10-31 15:46:05', null);
INSERT INTO `cms_logs` VALUES ('50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/8', 'Actualizar información Facturados y no despachados en Menu Management', null, '1', '2017-10-31 15:46:53', null);
INSERT INTO `cms_logs` VALUES ('51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/delete/9', 'Eliminar información Reportes en Menu Management', null, '1', '2017-10-31 15:47:18', null);
INSERT INTO `cms_logs` VALUES ('52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/delete/9', 'Eliminar información  en Menu Management', null, '1', '2017-10-31 15:47:22', null);
INSERT INTO `cms_logs` VALUES ('53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Documentos digitalizados en Menu Management', null, '1', '2017-10-31 15:57:42', null);
INSERT INTO `cms_logs` VALUES ('54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Ingresos en Menu Management', null, '1', '2017-10-31 16:07:40', null);
INSERT INTO `cms_logs` VALUES ('55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/5', 'Actualizar información Despachos en Menu Management', null, '1', '2017-10-31 16:08:13', null);
INSERT INTO `cms_logs` VALUES ('56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Duplicar Factura en Menu Management', null, '1', '2017-10-31 16:20:01', null);
INSERT INTO `cms_logs` VALUES ('57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Reabrir Ingreso en Menu Management', null, '1', '2017-10-31 16:27:54', null);
INSERT INTO `cms_logs` VALUES ('58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Crear Ingreso en Menu Management', null, '1', '2017-10-31 16:30:22', null);
INSERT INTO `cms_logs` VALUES ('59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/10', 'Actualizar información Ingresos en Menu Management', null, '1', '2017-10-31 16:36:36', null);
INSERT INTO `cms_logs` VALUES ('60', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/2', 'Actualizar información Planificación en Menu Management', null, '1', '2017-10-31 16:37:36', null);
INSERT INTO `cms_logs` VALUES ('61', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/2', 'Actualizar información Planificación en Menu Management', null, '1', '2017-10-31 16:38:33', null);
INSERT INTO `cms_logs` VALUES ('62', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/10', 'Actualizar información Ingresos en Menu Management', null, '1', '2017-10-31 16:38:50', null);
INSERT INTO `cms_logs` VALUES ('63', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/2', 'Actualizar información Planificación en Menu Management', null, '1', '2017-10-31 16:39:12', null);
INSERT INTO `cms_logs` VALUES ('64', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Match Ingresos por Día en Menu Management', null, '1', '2017-10-31 16:44:05', null);
INSERT INTO `cms_logs` VALUES ('65', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/14', 'Actualizar información Match Ingresos por Día en Menu Management', null, '1', '2017-10-31 16:47:01', null);
INSERT INTO `cms_logs` VALUES ('66', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Ingresos por Día Consolidado en Menu Management', null, '1', '2017-10-31 17:01:12', null);
INSERT INTO `cms_logs` VALUES ('67', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Inventario en Menu Management', null, '1', '2017-10-31 17:03:42', null);
INSERT INTO `cms_logs` VALUES ('68', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Match Stock MBA WMS en Menu Management', null, '1', '2017-10-31 17:07:21', null);
INSERT INTO `cms_logs` VALUES ('69', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Eliminar Lectura en Menu Management', null, '1', '2017-10-31 17:24:19', null);
INSERT INTO `cms_logs` VALUES ('70', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Descargar Storck WMS en Menu Management', null, '1', '2017-10-31 17:25:54', null);
INSERT INTO `cms_logs` VALUES ('71', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/19', 'Actualizar información Descargar Stock WMS en Menu Management', null, '1', '2017-10-31 17:26:50', null);
INSERT INTO `cms_logs` VALUES ('72', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Descargar Stock WMS Cons en Menu Management', null, '1', '2017-10-31 17:27:23', null);
INSERT INTO `cms_logs` VALUES ('73', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Análisis de Stock en Menu Management', null, '1', '2017-10-31 17:33:24', null);
INSERT INTO `cms_logs` VALUES ('74', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'prueba@correo.com se desconectó', null, '2', '2017-10-31 17:37:15', null);
INSERT INTO `cms_logs` VALUES ('75', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-31 17:37:31', null);
INSERT INTO `cms_logs` VALUES ('76', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Productos Bloqueados en Menu Management', null, '1', '2017-10-31 18:09:19', null);
INSERT INTO `cms_logs` VALUES ('77', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Ubicaciones Disponibles en Menu Management', null, '1', '2017-10-31 18:14:10', null);
INSERT INTO `cms_logs` VALUES ('78', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Reporte Prod a Caducar en Menu Management', null, '1', '2017-10-31 18:19:01', null);
INSERT INTO `cms_logs` VALUES ('79', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Inventario por Ubicación en Menu Management', null, '1', '2017-10-31 18:22:53', null);
INSERT INTO `cms_logs` VALUES ('80', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Consulta Stock por Ubic en Menu Management', null, '1', '2017-10-31 18:26:06', null);
INSERT INTO `cms_logs` VALUES ('81', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Consulta Stock por Material en Menu Management', null, '1', '2017-10-31 18:29:38', null);
INSERT INTO `cms_logs` VALUES ('82', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Retornos en Menu Management', null, '1', '2017-10-31 18:32:12', null);
INSERT INTO `cms_logs` VALUES ('83', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Mal Estado interno en Menu Management', null, '1', '2017-10-31 18:37:05', null);
INSERT INTO `cms_logs` VALUES ('84', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Devoluciones en Menu Management', null, '1', '2017-10-31 18:40:24', null);
INSERT INTO `cms_logs` VALUES ('85', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Rechazos en Menu Management', null, '1', '2017-10-31 18:44:18', null);
INSERT INTO `cms_logs` VALUES ('86', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Transacciones en Menu Management', null, '1', '2017-10-31 18:46:56', null);
INSERT INTO `cms_logs` VALUES ('87', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Consultar Liquidación en Menu Management', null, '1', '2017-10-31 18:50:53', null);
INSERT INTO `cms_logs` VALUES ('88', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Buscar Transacciones en Menu Management', null, '1', '2017-10-31 18:53:24', null);
INSERT INTO `cms_logs` VALUES ('89', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-10-31 19:34:40', null);
INSERT INTO `cms_logs` VALUES ('90', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-31 19:34:55', null);
INSERT INTO `cms_logs` VALUES ('91', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'prueba@correo.com se desconectó', null, '2', '2017-10-31 19:53:06', null);
INSERT INTO `cms_logs` VALUES ('92', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-10-31 19:53:14', null);
INSERT INTO `cms_logs` VALUES ('93', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-10-31 19:53:43', null);
INSERT INTO `cms_logs` VALUES ('94', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-10-31 19:53:49', null);
INSERT INTO `cms_logs` VALUES ('95', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/add-save', 'Añadir nueva información Tracking en Menu Management', null, '1', '2017-10-31 19:57:50', null);
INSERT INTO `cms_logs` VALUES ('96', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-10-31 19:57:59', null);
INSERT INTO `cms_logs` VALUES ('97', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-31 19:58:08', null);
INSERT INTO `cms_logs` VALUES ('98', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'prueba@correo.com se desconectó', null, '2', '2017-10-31 19:58:50', null);
INSERT INTO `cms_logs` VALUES ('99', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-31 19:59:04', null);
INSERT INTO `cms_logs` VALUES ('100', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-31 19:59:41', null);
INSERT INTO `cms_logs` VALUES ('101', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'prueba@correo.com se desconectó', null, '2', '2017-10-31 20:00:18', null);
INSERT INTO `cms_logs` VALUES ('102', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', ' se desconectó', null, null, '2017-10-31 20:01:40', null);
INSERT INTO `cms_logs` VALUES ('103', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-10-31 20:01:44', null);
INSERT INTO `cms_logs` VALUES ('104', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'prueba@correo.com se desconectó', null, '2', '2017-10-31 20:24:21', null);
INSERT INTO `cms_logs` VALUES ('105', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-10-31 20:32:20', null);
INSERT INTO `cms_logs` VALUES ('106', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-31 20:32:39', null);
INSERT INTO `cms_logs` VALUES ('107', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'prueba@correo.com se desconectó', null, '2', '2017-10-31 20:36:03', null);
INSERT INTO `cms_logs` VALUES ('108', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-31 20:37:17', null);
INSERT INTO `cms_logs` VALUES ('109', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'prueba@correo.com se desconectó', null, '2', '2017-10-31 21:05:24', null);
INSERT INTO `cms_logs` VALUES ('110', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-31 21:08:47', null);
INSERT INTO `cms_logs` VALUES ('111', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-10-31 21:10:10', null);
INSERT INTO `cms_logs` VALUES ('112', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-10-31 21:11:31', null);
INSERT INTO `cms_logs` VALUES ('113', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-10-31 21:11:42', null);
INSERT INTO `cms_logs` VALUES ('114', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/10', 'Actualizar información Ingresos en Menu Management', null, '1', '2017-10-31 21:12:29', null);
INSERT INTO `cms_logs` VALUES ('115', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/menu_management/edit-save/5', 'Actualizar información Despachos en Menu Management', null, '1', '2017-10-31 21:12:45', null);
INSERT INTO `cms_logs` VALUES ('116', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-31 21:29:57', null);
INSERT INTO `cms_logs` VALUES ('117', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-10-31 21:32:50', null);
INSERT INTO `cms_logs` VALUES ('118', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-31 21:32:59', null);
INSERT INTO `cms_logs` VALUES ('119', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'prueba@correo.com se desconectó', null, '2', '2017-10-31 21:44:13', null);
INSERT INTO `cms_logs` VALUES ('120', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-31 21:44:46', null);
INSERT INTO `cms_logs` VALUES ('121', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'prueba@correo.com se desconectó', null, '2', '2017-10-31 21:45:05', null);
INSERT INTO `cms_logs` VALUES ('122', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-31 21:48:12', null);
INSERT INTO `cms_logs` VALUES ('123', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'prueba@correo.com se desconectó', null, '2', '2017-10-31 21:48:52', null);
INSERT INTO `cms_logs` VALUES ('124', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-31 21:53:29', null);
INSERT INTO `cms_logs` VALUES ('125', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'prueba@correo.com se desconectó', null, '2', '2017-10-31 21:54:01', null);
INSERT INTO `cms_logs` VALUES ('126', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-31 21:57:03', null);
INSERT INTO `cms_logs` VALUES ('127', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'prueba@correo.com se desconectó', null, '2', '2017-10-31 21:57:30', null);
INSERT INTO `cms_logs` VALUES ('128', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-10-31 22:11:04', null);
INSERT INTO `cms_logs` VALUES ('129', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-10-31 22:11:39', null);
INSERT INTO `cms_logs` VALUES ('130', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-10-31 22:11:49', null);
INSERT INTO `cms_logs` VALUES ('131', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'prueba@correo.com se desconectó', null, '2', '2017-10-31 22:11:56', null);
INSERT INTO `cms_logs` VALUES ('132', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-10-31 22:12:23', null);
INSERT INTO `cms_logs` VALUES ('133', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-10-31 22:30:39', null);
INSERT INTO `cms_logs` VALUES ('134', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-10-31 22:30:45', null);
INSERT INTO `cms_logs` VALUES ('135', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-11-01 15:00:47', null);
INSERT INTO `cms_logs` VALUES ('136', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-11-01 15:05:22', null);
INSERT INTO `cms_logs` VALUES ('137', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-11-01 15:05:27', null);
INSERT INTO `cms_logs` VALUES ('138', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-11-01 15:07:10', null);
INSERT INTO `cms_logs` VALUES ('139', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-11-01 15:07:14', null);
INSERT INTO `cms_logs` VALUES ('140', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-11-01 15:08:22', null);
INSERT INTO `cms_logs` VALUES ('141', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-11-01 15:08:25', null);
INSERT INTO `cms_logs` VALUES ('142', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-11-01 15:09:24', null);
INSERT INTO `cms_logs` VALUES ('143', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-11-01 15:09:27', null);
INSERT INTO `cms_logs` VALUES ('144', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-11-01 15:10:04', null);
INSERT INTO `cms_logs` VALUES ('145', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-11-01 15:10:07', null);
INSERT INTO `cms_logs` VALUES ('146', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-11-01 15:11:51', null);
INSERT INTO `cms_logs` VALUES ('147', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-11-01 15:15:02', null);
INSERT INTO `cms_logs` VALUES ('148', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-11-01 15:21:12', null);
INSERT INTO `cms_logs` VALUES ('149', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', ' se desconectó', null, null, '2017-11-01 15:21:16', null);
INSERT INTO `cms_logs` VALUES ('150', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-11-01 15:21:29', null);
INSERT INTO `cms_logs` VALUES ('151', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/logout', 'admin@crudbooster.com se desconectó', null, '1', '2017-11-01 15:21:44', null);
INSERT INTO `cms_logs` VALUES ('152', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '2', '2017-11-01 15:32:14', null);
INSERT INTO `cms_logs` VALUES ('153', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'http://localhost/wms/public/admin/login', ':Login con Email desde la Dirección IP ::1', null, '1', '2017-11-01 15:34:17', null);

-- ----------------------------
-- Table structure for cms_menus
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_menus
-- ----------------------------
INSERT INTO `cms_menus` VALUES ('1', 'Users', 'Route', 'AdminCmsUsersControllerGetIndex', 'normal', 'fa fa-users', '0', '1', '0', '1', '1', '2017-10-30 20:39:29', null);
INSERT INTO `cms_menus` VALUES ('2', 'Planificación', 'URL', '#', 'normal', 'fa fa-sitemap', '0', '1', '0', '2', '1', '2017-10-30 20:48:31', '2017-10-31 16:39:12');
INSERT INTO `cms_menus` VALUES ('3', 'Planificador', 'Controller & Method', 'AdminRedirectController@redirectPlanificar', 'normal', 'fa fa-map-o', '2', '1', '0', '2', '1', '2017-10-30 21:37:10', '2017-10-30 21:49:51');
INSERT INTO `cms_menus` VALUES ('4', 'Asignar Viajes Despacho', 'Controller & Method', 'AdminRedirectController@redirectAsignarViajeDespacho', 'normal', 'fa fa-road', '2', '1', '0', '2', '2', '2017-10-30 21:38:12', '2017-10-30 21:53:19');
INSERT INTO `cms_menus` VALUES ('5', 'Despachos', 'URL', '#', 'normal', 'fa fa-long-arrow-left', '0', '1', '0', '2', '3', '2017-10-30 21:53:04', '2017-10-31 21:12:45');
INSERT INTO `cms_menus` VALUES ('6', 'Reporte de Despachos', 'Controller & Method', 'AdminRedirectController@redirectReporteDespachos', 'normal', 'fa fa-bar-chart-o', '5', '1', '0', '2', '1', '2017-10-30 21:55:09', null);
INSERT INTO `cms_menus` VALUES ('7', 'Seguimiento de Viajes', 'Controller & Method', 'AdminRedirectController@redirectSeguimientoDespachos', 'normal', 'fa fa-map-marker', '5', '1', '0', '2', '4', '2017-10-31 15:22:33', null);
INSERT INTO `cms_menus` VALUES ('8', 'Facturados y no despachados', 'Controller & Method', 'AdminRedirectController@redirectReporteProductosFacturadosNoDespachados', 'normal', 'fa fa-bar-chart-o', '5', '1', '0', '2', '2', '2017-10-31 15:43:16', '2017-10-31 15:46:53');
INSERT INTO `cms_menus` VALUES ('9', 'Documentos digitalizados', 'Controller & Method', 'AdminRedirectController@redirectDocumentosDigitalizados', 'normal', 'fa fa-file-pdf-o', '5', '1', '0', '2', '3', '2017-10-31 15:57:42', null);
INSERT INTO `cms_menus` VALUES ('10', 'Ingresos', 'URL', '#', 'normal', 'fa fa-long-arrow-right', '0', '1', '0', '2', '2', '2017-10-31 16:07:40', '2017-10-31 21:12:29');
INSERT INTO `cms_menus` VALUES ('11', 'Duplicar Factura', 'Controller & Method', 'AdminRedirectController@redirectDuplicarFactura', 'normal', 'fa fa-copy', '2', '1', '0', '2', '3', '2017-10-31 16:20:00', null);
INSERT INTO `cms_menus` VALUES ('12', 'Reabrir Ingreso', 'Controller & Method', 'AdminRedirectController@redirectReabrirIngreso', 'normal', 'fa fa-folder-open', '10', '1', '0', '2', '4', '2017-10-31 16:27:54', null);
INSERT INTO `cms_menus` VALUES ('13', 'Crear Ingreso', 'Controller & Method', 'AdminRedirectController@redirectCrearIngreso', 'normal', 'fa fa-plus', '10', '1', '0', '2', '1', '2017-10-31 16:30:22', null);
INSERT INTO `cms_menus` VALUES ('14', 'Match Ingresos por Día', 'Controller & Method', 'AdminRedirectController@redirectMatchIngresosDia', 'normal', 'fa fa-columns', '10', '1', '0', '2', '2', '2017-10-31 16:44:05', '2017-10-31 16:47:01');
INSERT INTO `cms_menus` VALUES ('15', 'Ingresos por Día Consolidado', 'URL', 'AdminRedirectController@redirectMatchIngresosDiaConsolidado', 'normal', 'fa fa-connectdevelop', '10', '1', '0', '2', '3', '2017-10-31 17:01:12', null);
INSERT INTO `cms_menus` VALUES ('16', 'Inventario', 'URL', '#', 'normal', 'fa fa-list-ol', '0', '1', '0', '2', '4', '2017-10-31 17:03:42', null);
INSERT INTO `cms_menus` VALUES ('17', 'Match Stock MBA WMS', 'Controller & Method', 'AdminRedirectController@redirectMatchStockMbaWms', 'normal', 'fa fa-columns', '16', '1', '0', '2', '1', '2017-10-31 17:07:20', null);
INSERT INTO `cms_menus` VALUES ('18', 'Eliminar Lectura', 'Controller & Method', 'AdminRedirectController@redirectEliminarLecturaInventario', 'normal', 'fa fa-minus', '16', '1', '0', '2', '2', '2017-10-31 17:24:19', null);
INSERT INTO `cms_menus` VALUES ('19', 'Descargar Stock WMS', 'Controller & Method', 'AdminRedirectController@redirectDescargarStockWms', 'normal', 'fa fa-download', '16', '1', '0', '2', '3', '2017-10-31 17:25:53', '2017-10-31 17:26:50');
INSERT INTO `cms_menus` VALUES ('20', 'Descargar Stock WMS Cons', 'Controller & Method', 'AdminRedirectController@redirectDescargarStockWmsConsolidado', 'normal', 'fa fa-download', '16', '1', '0', '2', '4', '2017-10-31 17:27:23', null);
INSERT INTO `cms_menus` VALUES ('21', 'Análisis de Stock', 'Controller & Method', 'AdminRedirectController@redirectAnalisisStock', 'normal', 'fa fa-bar-chart', '16', '1', '0', '2', '5', '2017-10-31 17:33:24', null);
INSERT INTO `cms_menus` VALUES ('22', 'Productos Bloqueados', 'Controller & Method', 'AdminRedirectController@redirectProductosBloqueados', 'normal', 'fa fa-ban', '16', '1', '0', '2', '6', '2017-10-31 18:09:19', null);
INSERT INTO `cms_menus` VALUES ('23', 'Ubicaciones Disponibles', 'Controller & Method', 'AdminRedirectController@redirectUbicacionesDisponibles', 'normal', 'fa fa-flag', '16', '1', '0', '2', '7', '2017-10-31 18:14:10', null);
INSERT INTO `cms_menus` VALUES ('24', 'Reporte Prod a Caducar', 'Controller & Method', 'AdminRedirectController@redirectReporteProdCaducar', 'normal', 'fa fa-calendar-times-o', '16', '1', '0', '2', '8', '2017-10-31 18:19:01', null);
INSERT INTO `cms_menus` VALUES ('25', 'Inventario por Ubicación', 'Controller & Method', 'AdminRedirectController@redirectInventarioUbicacion', 'normal', 'fa fa-th-list', '16', '1', '0', '2', '9', '2017-10-31 18:22:53', null);
INSERT INTO `cms_menus` VALUES ('26', 'Consulta Stock por Ubic', 'Controller & Method', 'AdminRedirectController@consultaStockUbicacion', 'normal', 'fa fa-th-list', '16', '1', '0', '2', '10', '2017-10-31 18:26:06', null);
INSERT INTO `cms_menus` VALUES ('27', 'Consulta Stock por Material', 'Controller & Method', 'AdminRedirectController@redirectConsultaStockMaterial', 'normal', 'fa fa-th', '16', '1', '0', '2', '11', '2017-10-31 18:29:38', null);
INSERT INTO `cms_menus` VALUES ('28', 'Retornos', 'URL', '#', 'normal', 'fa fa-mail-reply', '0', '1', '0', '2', '5', '2017-10-31 18:32:12', null);
INSERT INTO `cms_menus` VALUES ('29', 'Mal Estado interno', 'Controller & Method', 'AdminRedirectController@redirectMalEstadoInterno', 'normal', 'fa fa-exclamation-triangle', '28', '1', '0', '2', '1', '2017-10-31 18:37:05', null);
INSERT INTO `cms_menus` VALUES ('30', 'Devoluciones', 'Controller & Method', 'AdminRedirectController@redirectDevoluciones', 'normal', 'fa fa-mail-reply-all', '28', '1', '0', '2', '2', '2017-10-31 18:40:24', null);
INSERT INTO `cms_menus` VALUES ('31', 'Rechazos', 'Controller & Method', 'AdminRedirectController@redirectRechazos', 'normal', 'fa fa-close', '28', '1', '0', '2', '3', '2017-10-31 18:44:17', null);
INSERT INTO `cms_menus` VALUES ('32', 'Transacciones', 'URL', '#', 'normal', 'fa fa-tasks', '0', '1', '0', '2', '6', '2017-10-31 18:46:56', null);
INSERT INTO `cms_menus` VALUES ('33', 'Consultar Liquidación', 'Controller & Method', 'AdminRedirectController@redirectConsultarLiquidacion', 'normal', 'fa fa-folder-open', '32', '1', '0', '2', '1', '2017-10-31 18:50:52', null);
INSERT INTO `cms_menus` VALUES ('34', 'Buscar Transacciones', 'Controller & Method', 'AdminRedirectController@redirectBuscarTransacciones', 'normal', 'fa fa-search', '32', '1', '0', '2', '2', '2017-10-31 18:53:24', null);
INSERT INTO `cms_menus` VALUES ('35', 'Tracking', 'Controller & Method', 'AdminRedirectController@redirectTracking', 'normal', 'fa fa-glass', '0', '1', '1', '2', null, '2017-10-31 19:57:50', null);
INSERT INTO `cms_menus` VALUES ('36', 'Planificación', 'URL', '#', 'normal', 'fa fa-sitemap', '0', '1', '0', '10', '1', '2017-10-30 20:48:31', '2017-10-31 16:39:12');
INSERT INTO `cms_menus` VALUES ('37', 'Planificador', 'Controller & Method', 'AdminRedirectController@redirectPlanificar', 'normal', 'fa fa-map-o', '36', '1', '0', '10', '1', '2017-10-30 21:37:10', '2017-10-30 21:49:51');
INSERT INTO `cms_menus` VALUES ('38', 'Asignar Viajes Despacho', 'Controller & Method', 'AdminRedirectController@redirectAsignarViajeDespacho', 'normal', 'fa fa-road', '36', '1', '0', '10', '2', '2017-10-30 21:38:12', '2017-10-30 21:53:19');
INSERT INTO `cms_menus` VALUES ('39', 'Despachos', 'URL', '#', 'normal', 'fa fa-long-arrow-left', '0', '1', '0', '10', '3', '2017-10-30 21:53:04', '2017-10-31 21:12:45');
INSERT INTO `cms_menus` VALUES ('40', 'Reporte de Despachos', 'Controller & Method', 'AdminRedirectController@redirectReporteDespachos', 'normal', 'fa fa-bar-chart-o', '39', '1', '0', '10', '1', '2017-10-30 21:55:09', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('41', 'Seguimiento de Viajes', 'Controller & Method', 'AdminRedirectController@redirectSeguimientoDespachos', 'normal', 'fa fa-map-marker', '39', '1', '0', '10', '4', '2017-10-31 15:22:33', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('42', 'Facturados y no despachados', 'Controller & Method', 'AdminRedirectController@redirectReporteProductosFacturadosNoDespachados', 'normal', 'fa fa-bar-chart-o', '39', '1', '0', '10', '2', '2017-10-31 15:43:16', '2017-10-31 15:46:53');
INSERT INTO `cms_menus` VALUES ('43', 'Documentos digitalizados', 'Controller & Method', 'AdminRedirectController@redirectDocumentosDigitalizados', 'normal', 'fa fa-file-pdf-o', '39', '1', '0', '10', '3', '2017-10-31 15:57:42', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('44', 'Ingresos', 'URL', '#', 'normal', 'fa fa-long-arrow-right', '0', '1', '0', '10', '2', '2017-10-31 16:07:40', '2017-10-31 21:12:29');
INSERT INTO `cms_menus` VALUES ('45', 'Duplicar Factura', 'Controller & Method', 'AdminRedirectController@redirectDuplicarFactura', 'normal', 'fa fa-copy', '36', '1', '0', '10', '3', '2017-10-31 16:20:00', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('46', 'Reabrir Ingreso', 'Controller & Method', 'AdminRedirectController@redirectReabrirIngreso', 'normal', 'fa fa-folder-open', '44', '1', '0', '10', '4', '2017-10-31 16:27:54', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('47', 'Crear Ingreso', 'Controller & Method', 'AdminRedirectController@redirectCrearIngreso', 'normal', 'fa fa-plus', '44', '1', '0', '10', '1', '2017-10-31 16:30:22', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('48', 'Match Ingresos por Día', 'Controller & Method', 'AdminRedirectController@redirectMatchIngresosDia', 'normal', 'fa fa-columns', '44', '1', '0', '10', '2', '2017-10-31 16:44:05', '2017-10-31 16:47:01');
INSERT INTO `cms_menus` VALUES ('49', 'Ingresos por Día Consolidado', 'URL', 'AdminRedirectController@redirectMatchIngresosDiaConsolidado', 'normal', 'fa fa-connectdevelop', '44', '1', '0', '10', '3', '2017-10-31 17:01:12', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('50', 'Inventario', 'URL', '#', 'normal', 'fa fa-list-ol', '0', '1', '0', '10', '4', '2017-10-31 17:03:42', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('51', 'Match Stock MBA WMS', 'Controller & Method', 'AdminRedirectController@redirectMatchStockMbaWms', 'normal', 'fa fa-columns', '50', '1', '0', '10', '1', '2017-10-31 17:07:20', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('52', 'Eliminar Lectura', 'Controller & Method', 'AdminRedirectController@redirectEliminarLecturaInventario', 'normal', 'fa fa-minus', '50', '1', '0', '10', '2', '2017-10-31 17:24:19', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('53', 'Descargar Stock WMS', 'Controller & Method', 'AdminRedirectController@redirectDescargarStockWms', 'normal', 'fa fa-download', '50', '1', '0', '10', '3', '2017-10-31 17:25:53', '2017-10-31 17:26:50');
INSERT INTO `cms_menus` VALUES ('54', 'Descargar Stock WMS Cons', 'Controller & Method', 'AdminRedirectController@redirectDescargarStockWmsConsolidado', 'normal', 'fa fa-download', '50', '1', '0', '10', '4', '2017-10-31 17:27:23', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('55', 'Análisis de Stock', 'Controller & Method', 'AdminRedirectController@redirectAnalisisStock', 'normal', 'fa fa-bar-chart', '50', '1', '0', '10', '5', '2017-10-31 17:33:24', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('56', 'Productos Bloqueados', 'Controller & Method', 'AdminRedirectController@redirectProductosBloqueados', 'normal', 'fa fa-ban', '50', '1', '0', '10', '6', '2017-10-31 18:09:19', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('57', 'Ubicaciones Disponibles', 'Controller & Method', 'AdminRedirectController@redirectUbicacionesDisponibles', 'normal', 'fa fa-flag', '50', '1', '0', '10', '7', '2017-10-31 18:14:10', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('58', 'Reporte Prod a Caducar', 'Controller & Method', 'AdminRedirectController@redirectReporteProdCaducar', 'normal', 'fa fa-calendar-times-o', '50', '1', '0', '10', '8', '2017-10-31 18:19:01', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('59', 'Inventario por Ubicación', 'Controller & Method', 'AdminRedirectController@redirectInventarioUbicacion', 'normal', 'fa fa-th-list', '50', '1', '0', '10', '9', '2017-10-31 18:22:53', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('60', 'Consulta Stock por Ubic', 'Controller & Method', 'AdminRedirectController@consultaStockUbicacion', 'normal', 'fa fa-th-list', '50', '1', '0', '10', '10', '2017-10-31 18:26:06', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('61', 'Consulta Stock por Material', 'Controller & Method', 'AdminRedirectController@redirectConsultaStockMaterial', 'normal', 'fa fa-th', '50', '1', '0', '10', '11', '2017-10-31 18:29:38', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('62', 'Retornos', 'URL', '#', 'normal', 'fa fa-mail-reply', '0', '1', '0', '10', '5', '2017-10-31 18:32:12', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('63', 'Mal Estado interno', 'Controller & Method', 'AdminRedirectController@redirectMalEstadoInterno', 'normal', 'fa fa-exclamation-triangle', '62', '1', '0', '10', '1', '2017-10-31 18:37:05', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('64', 'Devoluciones', 'Controller & Method', 'AdminRedirectController@redirectDevoluciones', 'normal', 'fa fa-mail-reply-all', '62', '1', '0', '10', '2', '2017-10-31 18:40:24', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('65', 'Rechazos', 'Controller & Method', 'AdminRedirectController@redirectRechazos', 'normal', 'fa fa-close', '62', '1', '0', '10', '3', '2017-10-31 18:44:17', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('66', 'Transacciones', 'URL', '#', 'normal', 'fa fa-tasks', '0', '1', '0', '10', '6', '2017-10-31 18:46:56', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('67', 'Consultar Liquidación', 'Controller & Method', 'AdminRedirectController@redirectConsultarLiquidacion', 'normal', 'fa fa-folder-open', '66', '1', '0', '10', '1', '2017-10-31 18:50:52', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('68', 'Buscar Transacciones', 'Controller & Method', 'AdminRedirectController@redirectBuscarTransacciones', 'normal', 'fa fa-search', '66', '1', '0', '10', '2', '2017-10-31 18:53:24', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('69', 'Tracking', 'Controller & Method', 'AdminRedirectController@redirectTracking', 'normal', 'fa fa-glass', '0', '1', '1', '10', null, '2017-10-31 19:57:50', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('70', 'Planificación', 'URL', '#', 'normal', 'fa fa-sitemap', '0', '1', '0', '11', '1', '2017-10-30 20:48:31', '2017-10-31 16:39:12');
INSERT INTO `cms_menus` VALUES ('71', 'Planificador', 'Controller & Method', 'AdminRedirectController@redirectPlanificar', 'normal', 'fa fa-map-o', '70', '1', '0', '11', '1', '2017-10-30 21:37:10', '2017-10-30 21:49:51');
INSERT INTO `cms_menus` VALUES ('72', 'Asignar Viajes Despacho', 'Controller & Method', 'AdminRedirectController@redirectAsignarViajeDespacho', 'normal', 'fa fa-road', '70', '1', '0', '11', '2', '2017-10-30 21:38:12', '2017-10-30 21:53:19');
INSERT INTO `cms_menus` VALUES ('73', 'Despachos', 'URL', '#', 'normal', 'fa fa-long-arrow-left', '0', '1', '0', '11', '3', '2017-10-30 21:53:04', '2017-10-31 21:12:45');
INSERT INTO `cms_menus` VALUES ('74', 'Reporte de Despachos', 'Controller & Method', 'AdminRedirectController@redirectReporteDespachos', 'normal', 'fa fa-bar-chart-o', '73', '1', '0', '11', '1', '2017-10-30 21:55:09', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('75', 'Seguimiento de Viajes', 'Controller & Method', 'AdminRedirectController@redirectSeguimientoDespachos', 'normal', 'fa fa-map-marker', '73', '1', '0', '11', '4', '2017-10-31 15:22:33', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('76', 'Facturados y no despachados', 'Controller & Method', 'AdminRedirectController@redirectReporteProductosFacturadosNoDespachados', 'normal', 'fa fa-bar-chart-o', '73', '1', '0', '11', '2', '2017-10-31 15:43:16', '2017-10-31 15:46:53');
INSERT INTO `cms_menus` VALUES ('77', 'Documentos digitalizados', 'Controller & Method', 'AdminRedirectController@redirectDocumentosDigitalizados', 'normal', 'fa fa-file-pdf-o', '73', '1', '0', '11', '3', '2017-10-31 15:57:42', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('78', 'Ingresos', 'URL', '#', 'normal', 'fa fa-long-arrow-right', '0', '1', '0', '11', '2', '2017-10-31 16:07:40', '2017-10-31 21:12:29');
INSERT INTO `cms_menus` VALUES ('79', 'Duplicar Factura', 'Controller & Method', 'AdminRedirectController@redirectDuplicarFactura', 'normal', 'fa fa-copy', '70', '1', '0', '11', '3', '2017-10-31 16:20:00', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('80', 'Reabrir Ingreso', 'Controller & Method', 'AdminRedirectController@redirectReabrirIngreso', 'normal', 'fa fa-folder-open', '78', '1', '0', '11', '4', '2017-10-31 16:27:54', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('81', 'Crear Ingreso', 'Controller & Method', 'AdminRedirectController@redirectCrearIngreso', 'normal', 'fa fa-plus', '78', '1', '0', '11', '1', '2017-10-31 16:30:22', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('82', 'Match Ingresos por Día', 'Controller & Method', 'AdminRedirectController@redirectMatchIngresosDia', 'normal', 'fa fa-columns', '78', '1', '0', '11', '2', '2017-10-31 16:44:05', '2017-10-31 16:47:01');
INSERT INTO `cms_menus` VALUES ('83', 'Ingresos por Día Consolidado', 'URL', 'AdminRedirectController@redirectMatchIngresosDiaConsolidado', 'normal', 'fa fa-connectdevelop', '78', '1', '0', '11', '3', '2017-10-31 17:01:12', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('84', 'Inventario', 'URL', '#', 'normal', 'fa fa-list-ol', '0', '1', '0', '11', '4', '2017-10-31 17:03:42', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('85', 'Match Stock MBA WMS', 'Controller & Method', 'AdminRedirectController@redirectMatchStockMbaWms', 'normal', 'fa fa-columns', '84', '1', '0', '11', '1', '2017-10-31 17:07:20', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('86', 'Eliminar Lectura', 'Controller & Method', 'AdminRedirectController@redirectEliminarLecturaInventario', 'normal', 'fa fa-minus', '84', '1', '0', '11', '2', '2017-10-31 17:24:19', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('87', 'Descargar Stock WMS', 'Controller & Method', 'AdminRedirectController@redirectDescargarStockWms', 'normal', 'fa fa-download', '84', '1', '0', '11', '3', '2017-10-31 17:25:53', '2017-10-31 17:26:50');
INSERT INTO `cms_menus` VALUES ('88', 'Descargar Stock WMS Cons', 'Controller & Method', 'AdminRedirectController@redirectDescargarStockWmsConsolidado', 'normal', 'fa fa-download', '84', '1', '0', '11', '4', '2017-10-31 17:27:23', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('89', 'Análisis de Stock', 'Controller & Method', 'AdminRedirectController@redirectAnalisisStock', 'normal', 'fa fa-bar-chart', '84', '1', '0', '11', '5', '2017-10-31 17:33:24', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('90', 'Productos Bloqueados', 'Controller & Method', 'AdminRedirectController@redirectProductosBloqueados', 'normal', 'fa fa-ban', '84', '1', '0', '11', '6', '2017-10-31 18:09:19', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('91', 'Ubicaciones Disponibles', 'Controller & Method', 'AdminRedirectController@redirectUbicacionesDisponibles', 'normal', 'fa fa-flag', '84', '1', '0', '11', '7', '2017-10-31 18:14:10', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('92', 'Reporte Prod a Caducar', 'Controller & Method', 'AdminRedirectController@redirectReporteProdCaducar', 'normal', 'fa fa-calendar-times-o', '84', '1', '0', '11', '8', '2017-10-31 18:19:01', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('93', 'Inventario por Ubicación', 'Controller & Method', 'AdminRedirectController@redirectInventarioUbicacion', 'normal', 'fa fa-th-list', '84', '1', '0', '11', '9', '2017-10-31 18:22:53', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('94', 'Consulta Stock por Ubic', 'Controller & Method', 'AdminRedirectController@consultaStockUbicacion', 'normal', 'fa fa-th-list', '84', '1', '0', '11', '10', '2017-10-31 18:26:06', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('95', 'Consulta Stock por Material', 'Controller & Method', 'AdminRedirectController@redirectConsultaStockMaterial', 'normal', 'fa fa-th', '84', '1', '0', '11', '11', '2017-10-31 18:29:38', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('96', 'Retornos', 'URL', '#', 'normal', 'fa fa-mail-reply', '0', '1', '0', '11', '5', '2017-10-31 18:32:12', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('97', 'Mal Estado interno', 'Controller & Method', 'AdminRedirectController@redirectMalEstadoInterno', 'normal', 'fa fa-exclamation-triangle', '96', '1', '0', '11', '1', '2017-10-31 18:37:05', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('98', 'Devoluciones', 'Controller & Method', 'AdminRedirectController@redirectDevoluciones', 'normal', 'fa fa-mail-reply-all', '96', '1', '0', '11', '2', '2017-10-31 18:40:24', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('99', 'Rechazos', 'Controller & Method', 'AdminRedirectController@redirectRechazos', 'normal', 'fa fa-close', '96', '1', '0', '11', '3', '2017-10-31 18:44:17', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('100', 'Transacciones', 'URL', '#', 'normal', 'fa fa-tasks', '0', '1', '0', '11', '6', '2017-10-31 18:46:56', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('101', 'Consultar Liquidación', 'Controller & Method', 'AdminRedirectController@redirectConsultarLiquidacion', 'normal', 'fa fa-folder-open', '100', '1', '0', '11', '1', '2017-10-31 18:50:52', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('102', 'Buscar Transacciones', 'Controller & Method', 'AdminRedirectController@redirectBuscarTransacciones', 'normal', 'fa fa-search', '100', '1', '0', '11', '2', '2017-10-31 18:53:24', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('103', 'Tracking', 'Controller & Method', 'AdminRedirectController@redirectTracking', 'normal', 'fa fa-glass', '0', '1', '1', '11', null, '2017-10-31 19:57:50', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('104', 'Planificación', 'URL', '#', 'normal', 'fa fa-sitemap', '0', '1', '0', '12', '1', '2017-10-30 20:48:31', '2017-10-31 16:39:12');
INSERT INTO `cms_menus` VALUES ('105', 'Planificador', 'Controller & Method', 'AdminRedirectController@redirectPlanificar', 'normal', 'fa fa-map-o', '104', '1', '0', '12', '1', '2017-10-30 21:37:10', '2017-10-30 21:49:51');
INSERT INTO `cms_menus` VALUES ('106', 'Asignar Viajes Despacho', 'Controller & Method', 'AdminRedirectController@redirectAsignarViajeDespacho', 'normal', 'fa fa-road', '104', '1', '0', '12', '2', '2017-10-30 21:38:12', '2017-10-30 21:53:19');
INSERT INTO `cms_menus` VALUES ('107', 'Despachos', 'URL', '#', 'normal', 'fa fa-long-arrow-left', '0', '1', '0', '12', '3', '2017-10-30 21:53:04', '2017-10-31 21:12:45');
INSERT INTO `cms_menus` VALUES ('108', 'Reporte de Despachos', 'Controller & Method', 'AdminRedirectController@redirectReporteDespachos', 'normal', 'fa fa-bar-chart-o', '107', '1', '0', '12', '1', '2017-10-30 21:55:09', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('109', 'Seguimiento de Viajes', 'Controller & Method', 'AdminRedirectController@redirectSeguimientoDespachos', 'normal', 'fa fa-map-marker', '107', '1', '0', '12', '4', '2017-10-31 15:22:33', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('110', 'Facturados y no despachados', 'Controller & Method', 'AdminRedirectController@redirectReporteProductosFacturadosNoDespachados', 'normal', 'fa fa-bar-chart-o', '107', '1', '0', '12', '2', '2017-10-31 15:43:16', '2017-10-31 15:46:53');
INSERT INTO `cms_menus` VALUES ('111', 'Documentos digitalizados', 'Controller & Method', 'AdminRedirectController@redirectDocumentosDigitalizados', 'normal', 'fa fa-file-pdf-o', '107', '1', '0', '12', '3', '2017-10-31 15:57:42', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('112', 'Ingresos', 'URL', '#', 'normal', 'fa fa-long-arrow-right', '0', '1', '0', '12', '2', '2017-10-31 16:07:40', '2017-10-31 21:12:29');
INSERT INTO `cms_menus` VALUES ('113', 'Duplicar Factura', 'Controller & Method', 'AdminRedirectController@redirectDuplicarFactura', 'normal', 'fa fa-copy', '104', '1', '0', '12', '3', '2017-10-31 16:20:00', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('114', 'Reabrir Ingreso', 'Controller & Method', 'AdminRedirectController@redirectReabrirIngreso', 'normal', 'fa fa-folder-open', '112', '1', '0', '12', '4', '2017-10-31 16:27:54', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('115', 'Crear Ingreso', 'Controller & Method', 'AdminRedirectController@redirectCrearIngreso', 'normal', 'fa fa-plus', '112', '1', '0', '12', '1', '2017-10-31 16:30:22', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('116', 'Match Ingresos por Día', 'Controller & Method', 'AdminRedirectController@redirectMatchIngresosDia', 'normal', 'fa fa-columns', '112', '1', '0', '12', '2', '2017-10-31 16:44:05', '2017-10-31 16:47:01');
INSERT INTO `cms_menus` VALUES ('117', 'Ingresos por Día Consolidado', 'URL', 'AdminRedirectController@redirectMatchIngresosDiaConsolidado', 'normal', 'fa fa-connectdevelop', '112', '1', '0', '12', '3', '2017-10-31 17:01:12', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('118', 'Inventario', 'URL', '#', 'normal', 'fa fa-list-ol', '0', '1', '0', '12', '4', '2017-10-31 17:03:42', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('119', 'Match Stock MBA WMS', 'Controller & Method', 'AdminRedirectController@redirectMatchStockMbaWms', 'normal', 'fa fa-columns', '118', '1', '0', '12', '1', '2017-10-31 17:07:20', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('120', 'Eliminar Lectura', 'Controller & Method', 'AdminRedirectController@redirectEliminarLecturaInventario', 'normal', 'fa fa-minus', '118', '1', '0', '12', '2', '2017-10-31 17:24:19', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('121', 'Descargar Stock WMS', 'Controller & Method', 'AdminRedirectController@redirectDescargarStockWms', 'normal', 'fa fa-download', '118', '1', '0', '12', '3', '2017-10-31 17:25:53', '2017-10-31 17:26:50');
INSERT INTO `cms_menus` VALUES ('122', 'Descargar Stock WMS Cons', 'Controller & Method', 'AdminRedirectController@redirectDescargarStockWmsConsolidado', 'normal', 'fa fa-download', '118', '1', '0', '12', '4', '2017-10-31 17:27:23', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('123', 'Análisis de Stock', 'Controller & Method', 'AdminRedirectController@redirectAnalisisStock', 'normal', 'fa fa-bar-chart', '118', '1', '0', '12', '5', '2017-10-31 17:33:24', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('124', 'Productos Bloqueados', 'Controller & Method', 'AdminRedirectController@redirectProductosBloqueados', 'normal', 'fa fa-ban', '118', '1', '0', '12', '6', '2017-10-31 18:09:19', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('125', 'Ubicaciones Disponibles', 'Controller & Method', 'AdminRedirectController@redirectUbicacionesDisponibles', 'normal', 'fa fa-flag', '118', '1', '0', '12', '7', '2017-10-31 18:14:10', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('126', 'Reporte Prod a Caducar', 'Controller & Method', 'AdminRedirectController@redirectReporteProdCaducar', 'normal', 'fa fa-calendar-times-o', '118', '1', '0', '12', '8', '2017-10-31 18:19:01', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('127', 'Inventario por Ubicación', 'Controller & Method', 'AdminRedirectController@redirectInventarioUbicacion', 'normal', 'fa fa-th-list', '118', '1', '0', '12', '9', '2017-10-31 18:22:53', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('128', 'Consulta Stock por Ubic', 'Controller & Method', 'AdminRedirectController@consultaStockUbicacion', 'normal', 'fa fa-th-list', '118', '1', '0', '12', '10', '2017-10-31 18:26:06', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('129', 'Consulta Stock por Material', 'Controller & Method', 'AdminRedirectController@redirectConsultaStockMaterial', 'normal', 'fa fa-th', '118', '1', '0', '12', '11', '2017-10-31 18:29:38', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('130', 'Retornos', 'URL', '#', 'normal', 'fa fa-mail-reply', '0', '1', '0', '12', '5', '2017-10-31 18:32:12', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('131', 'Mal Estado interno', 'Controller & Method', 'AdminRedirectController@redirectMalEstadoInterno', 'normal', 'fa fa-exclamation-triangle', '130', '1', '0', '12', '1', '2017-10-31 18:37:05', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('132', 'Devoluciones', 'Controller & Method', 'AdminRedirectController@redirectDevoluciones', 'normal', 'fa fa-mail-reply-all', '130', '1', '0', '12', '2', '2017-10-31 18:40:24', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('133', 'Rechazos', 'Controller & Method', 'AdminRedirectController@redirectRechazos', 'normal', 'fa fa-close', '130', '1', '0', '12', '3', '2017-10-31 18:44:17', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('134', 'Transacciones', 'URL', '#', 'normal', 'fa fa-tasks', '0', '1', '0', '12', '6', '2017-10-31 18:46:56', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('135', 'Consultar Liquidación', 'Controller & Method', 'AdminRedirectController@redirectConsultarLiquidacion', 'normal', 'fa fa-folder-open', '134', '1', '0', '12', '1', '2017-10-31 18:50:52', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('136', 'Buscar Transacciones', 'Controller & Method', 'AdminRedirectController@redirectBuscarTransacciones', 'normal', 'fa fa-search', '134', '1', '0', '12', '2', '2017-10-31 18:53:24', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('137', 'Tracking', 'Controller & Method', 'AdminRedirectController@redirectTracking', 'normal', 'fa fa-glass', '0', '1', '1', '12', null, '2017-10-31 19:57:50', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('138', 'Planificación', 'URL', '#', 'normal', 'fa fa-sitemap', '0', '1', '0', '13', '1', '2017-10-30 20:48:31', '2017-10-31 16:39:12');
INSERT INTO `cms_menus` VALUES ('139', 'Planificador', 'Controller & Method', 'AdminRedirectController@redirectPlanificar', 'normal', 'fa fa-map-o', '138', '1', '0', '13', '1', '2017-10-30 21:37:10', '2017-10-30 21:49:51');
INSERT INTO `cms_menus` VALUES ('140', 'Asignar Viajes Despacho', 'Controller & Method', 'AdminRedirectController@redirectAsignarViajeDespacho', 'normal', 'fa fa-road', '138', '1', '0', '13', '2', '2017-10-30 21:38:12', '2017-10-30 21:53:19');
INSERT INTO `cms_menus` VALUES ('141', 'Despachos', 'URL', '#', 'normal', 'fa fa-long-arrow-left', '0', '1', '0', '13', '3', '2017-10-30 21:53:04', '2017-10-31 21:12:45');
INSERT INTO `cms_menus` VALUES ('142', 'Reporte de Despachos', 'Controller & Method', 'AdminRedirectController@redirectReporteDespachos', 'normal', 'fa fa-bar-chart-o', '141', '1', '0', '13', '1', '2017-10-30 21:55:09', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('143', 'Seguimiento de Viajes', 'Controller & Method', 'AdminRedirectController@redirectSeguimientoDespachos', 'normal', 'fa fa-map-marker', '141', '1', '0', '13', '4', '2017-10-31 15:22:33', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('144', 'Facturados y no despachados', 'Controller & Method', 'AdminRedirectController@redirectReporteProductosFacturadosNoDespachados', 'normal', 'fa fa-bar-chart-o', '141', '1', '0', '13', '2', '2017-10-31 15:43:16', '2017-10-31 15:46:53');
INSERT INTO `cms_menus` VALUES ('145', 'Documentos digitalizados', 'Controller & Method', 'AdminRedirectController@redirectDocumentosDigitalizados', 'normal', 'fa fa-file-pdf-o', '141', '1', '0', '13', '3', '2017-10-31 15:57:42', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('146', 'Ingresos', 'URL', '#', 'normal', 'fa fa-long-arrow-right', '0', '1', '0', '13', '2', '2017-10-31 16:07:40', '2017-10-31 21:12:29');
INSERT INTO `cms_menus` VALUES ('147', 'Duplicar Factura', 'Controller & Method', 'AdminRedirectController@redirectDuplicarFactura', 'normal', 'fa fa-copy', '138', '1', '0', '13', '3', '2017-10-31 16:20:00', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('148', 'Reabrir Ingreso', 'Controller & Method', 'AdminRedirectController@redirectReabrirIngreso', 'normal', 'fa fa-folder-open', '146', '1', '0', '13', '4', '2017-10-31 16:27:54', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('149', 'Crear Ingreso', 'Controller & Method', 'AdminRedirectController@redirectCrearIngreso', 'normal', 'fa fa-plus', '146', '1', '0', '13', '1', '2017-10-31 16:30:22', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('150', 'Match Ingresos por Día', 'Controller & Method', 'AdminRedirectController@redirectMatchIngresosDia', 'normal', 'fa fa-columns', '146', '1', '0', '13', '2', '2017-10-31 16:44:05', '2017-10-31 16:47:01');
INSERT INTO `cms_menus` VALUES ('151', 'Ingresos por Día Consolidado', 'URL', 'AdminRedirectController@redirectMatchIngresosDiaConsolidado', 'normal', 'fa fa-connectdevelop', '146', '1', '0', '13', '3', '2017-10-31 17:01:12', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('152', 'Inventario', 'URL', '#', 'normal', 'fa fa-list-ol', '0', '1', '0', '13', '4', '2017-10-31 17:03:42', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('153', 'Match Stock MBA WMS', 'Controller & Method', 'AdminRedirectController@redirectMatchStockMbaWms', 'normal', 'fa fa-columns', '152', '1', '0', '13', '1', '2017-10-31 17:07:20', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('154', 'Eliminar Lectura', 'Controller & Method', 'AdminRedirectController@redirectEliminarLecturaInventario', 'normal', 'fa fa-minus', '152', '1', '0', '13', '2', '2017-10-31 17:24:19', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('155', 'Descargar Stock WMS', 'Controller & Method', 'AdminRedirectController@redirectDescargarStockWms', 'normal', 'fa fa-download', '152', '1', '0', '13', '3', '2017-10-31 17:25:53', '2017-10-31 17:26:50');
INSERT INTO `cms_menus` VALUES ('156', 'Descargar Stock WMS Cons', 'Controller & Method', 'AdminRedirectController@redirectDescargarStockWmsConsolidado', 'normal', 'fa fa-download', '152', '1', '0', '13', '4', '2017-10-31 17:27:23', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('157', 'Análisis de Stock', 'Controller & Method', 'AdminRedirectController@redirectAnalisisStock', 'normal', 'fa fa-bar-chart', '152', '1', '0', '13', '5', '2017-10-31 17:33:24', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('158', 'Productos Bloqueados', 'Controller & Method', 'AdminRedirectController@redirectProductosBloqueados', 'normal', 'fa fa-ban', '152', '1', '0', '13', '6', '2017-10-31 18:09:19', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('159', 'Ubicaciones Disponibles', 'Controller & Method', 'AdminRedirectController@redirectUbicacionesDisponibles', 'normal', 'fa fa-flag', '152', '1', '0', '13', '7', '2017-10-31 18:14:10', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('160', 'Reporte Prod a Caducar', 'Controller & Method', 'AdminRedirectController@redirectReporteProdCaducar', 'normal', 'fa fa-calendar-times-o', '152', '1', '0', '13', '8', '2017-10-31 18:19:01', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('161', 'Inventario por Ubicación', 'Controller & Method', 'AdminRedirectController@redirectInventarioUbicacion', 'normal', 'fa fa-th-list', '152', '1', '0', '13', '9', '2017-10-31 18:22:53', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('162', 'Consulta Stock por Ubic', 'Controller & Method', 'AdminRedirectController@consultaStockUbicacion', 'normal', 'fa fa-th-list', '152', '1', '0', '13', '10', '2017-10-31 18:26:06', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('163', 'Consulta Stock por Material', 'Controller & Method', 'AdminRedirectController@redirectConsultaStockMaterial', 'normal', 'fa fa-th', '152', '1', '0', '13', '11', '2017-10-31 18:29:38', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('164', 'Retornos', 'URL', '#', 'normal', 'fa fa-mail-reply', '0', '1', '0', '13', '5', '2017-10-31 18:32:12', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('165', 'Mal Estado interno', 'Controller & Method', 'AdminRedirectController@redirectMalEstadoInterno', 'normal', 'fa fa-exclamation-triangle', '164', '1', '0', '13', '1', '2017-10-31 18:37:05', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('166', 'Devoluciones', 'Controller & Method', 'AdminRedirectController@redirectDevoluciones', 'normal', 'fa fa-mail-reply-all', '164', '1', '0', '13', '2', '2017-10-31 18:40:24', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('167', 'Rechazos', 'Controller & Method', 'AdminRedirectController@redirectRechazos', 'normal', 'fa fa-close', '164', '1', '0', '13', '3', '2017-10-31 18:44:17', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('168', 'Transacciones', 'URL', '#', 'normal', 'fa fa-tasks', '0', '1', '0', '13', '6', '2017-10-31 18:46:56', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('169', 'Consultar Liquidación', 'Controller & Method', 'AdminRedirectController@redirectConsultarLiquidacion', 'normal', 'fa fa-folder-open', '168', '1', '0', '13', '1', '2017-10-31 18:50:52', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('170', 'Buscar Transacciones', 'Controller & Method', 'AdminRedirectController@redirectBuscarTransacciones', 'normal', 'fa fa-search', '168', '1', '0', '13', '2', '2017-10-31 18:53:24', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('171', 'Tracking', 'Controller & Method', 'AdminRedirectController@redirectTracking', 'normal', 'fa fa-glass', '0', '1', '1', '13', null, '2017-10-31 19:57:50', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('172', 'Despachos', 'URL', '#', 'normal', 'fa fa-long-arrow-left', '0', '1', '0', '3', '3', '2017-10-30 21:53:04', '2017-10-31 21:12:45');
INSERT INTO `cms_menus` VALUES ('173', 'Facturados y no despachados', 'Controller & Method', 'AdminRedirectController@redirectReporteProductosFacturadosNoDespachados', 'normal', 'fa fa-bar-chart-o', '172', '1', '0', '3', '2', '2017-10-31 15:43:16', '2017-10-31 15:46:53');
INSERT INTO `cms_menus` VALUES ('174', 'Inventario', 'URL', '#', 'normal', 'fa fa-list-ol', '0', '1', '0', '3', '4', '2017-10-31 17:03:42', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('175', 'Facturados y no despachados', 'Controller & Method', 'AdminRedirectController@redirectReporteProductosFacturadosNoDespachados', 'normal', 'fa fa-bar-chart-o', '174', '1', '0', '3', '2', '2017-10-31 15:43:16', '2017-10-31 15:46:53');
INSERT INTO `cms_menus` VALUES ('176', 'Descargar Stock WMS Cons', 'Controller & Method', 'AdminRedirectController@redirectDescargarStockWmsConsolidado', 'normal', 'fa fa-download', '174', '1', '1', '3', '4', '2017-10-31 17:27:23', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('177', 'Consulta Stock por Ubic', 'Controller & Method', 'AdminRedirectController@consultaStockUbicacion', 'normal', 'fa fa-th-list', '174', '1', '0', '3', '10', '2017-10-31 18:26:06', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('178', 'Productos Bloqueados', 'Controller & Method', 'AdminRedirectController@redirectProductosBloqueados', 'normal', 'fa fa-ban', '174', '1', '0', '3', '6', '2017-10-31 18:09:19', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('179', 'Reporte Prod a Caducar', 'Controller & Method', 'AdminRedirectController@redirectReporteProdCaducar', 'normal', 'fa fa-calendar-times-o', '174', '1', '0', '3', '8', '2017-10-31 18:19:01', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('180', 'Inventario', 'URL', '#', 'normal', 'fa fa-list-ol', '0', '1', '0', '0', '4', '2017-10-31 17:03:42', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('181', 'Descargar Stock WMS Cons', 'Controller & Method', 'AdminRedirectController@redirectDescargarStockWmsConsolidado', 'normal', 'fa fa-download', '0', '1', '1', '4', '4', '2017-10-31 17:27:23', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('182', 'Productos Bloqueados', 'Controller & Method', 'AdminRedirectController@redirectProductosBloqueados', 'normal', 'fa fa-ban', '0', '1', '0', '4', '6', '2017-10-31 18:09:19', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('183', 'Reporte Prod a Caducar', 'Controller & Method', 'AdminRedirectController@redirectReporteProdCaducar', 'normal', 'fa fa-calendar-times-o', '0', '1', '0', '4', '8', '2017-10-31 18:19:01', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('184', 'Inventario', 'URL', '#', 'normal', 'fa fa-list-ol', '0', '1', '0', '0', '4', '2017-10-31 17:03:42', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('185', 'Descargar Stock WMS Cons', 'Controller & Method', 'AdminRedirectController@redirectDescargarStockWmsConsolidado', 'normal', 'fa fa-download', '0', '1', '1', '5', '4', '2017-10-31 17:27:23', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('186', 'Consulta Stock por Ubic', 'Controller & Method', 'AdminRedirectController@consultaStockUbicacion', 'normal', 'fa fa-th-list', '0', '1', '0', '5', '10', '2017-10-31 18:26:06', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('187', 'Productos Bloqueados', 'Controller & Method', 'AdminRedirectController@redirectProductosBloqueados', 'normal', 'fa fa-ban', '0', '1', '0', '5', '6', '2017-10-31 18:09:19', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('188', 'Reporte Prod a Caducar', 'Controller & Method', 'AdminRedirectController@redirectReporteProdCaducar', 'normal', 'fa fa-calendar-times-o', '0', '1', '0', '5', '8', '2017-10-31 18:19:01', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('189', 'Ubicaciones Disponibles', 'Controller & Method', 'AdminRedirectController@redirectUbicacionesDisponibles', 'normal', 'fa fa-flag', '0', '1', '1', '6', '7', '2017-10-31 18:14:10', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('190', 'Inventario', 'URL', '#', 'normal', 'fa fa-list-ol', '0', '1', '0', '7', '4', '2017-10-31 17:03:42', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('191', 'Descargar Stock WMS Cons', 'Controller & Method', 'AdminRedirectController@redirectDescargarStockWmsConsolidado', 'normal', 'fa fa-download', '190', '1', '1', '7', '4', '2017-10-31 17:27:23', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('192', 'Consulta Stock por Ubic', 'Controller & Method', 'AdminRedirectController@consultaStockUbicacion', 'normal', 'fa fa-th-list', '190', '1', '0', '7', '10', '2017-10-31 18:26:06', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('193', 'Productos Bloqueados', 'Controller & Method', 'AdminRedirectController@redirectProductosBloqueados', 'normal', 'fa fa-ban', '190', '1', '0', '7', '6', '2017-10-31 18:09:19', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('194', 'Despachos', 'URL', '#', 'normal', 'fa fa-long-arrow-left', '0', '1', '0', '7', '3', '2017-10-30 21:53:04', '2017-10-31 21:12:45');
INSERT INTO `cms_menus` VALUES ('195', 'Documentos digitalizados', 'Controller & Method', 'AdminRedirectController@redirectDocumentosDigitalizados', 'normal', 'fa fa-file-pdf-o', '194', '1', '0', '7', '3', '2017-10-31 15:57:42', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('196', 'Transacciones', 'URL', '#', 'normal', 'fa fa-tasks', '0', '1', '0', '7', '6', '2017-10-31 18:46:56', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('197', 'Consultar Liquidación', 'Controller & Method', 'AdminRedirectController@redirectConsultarLiquidacion', 'normal', 'fa fa-folder-open', '196', '1', '0', '7', '1', '2017-10-31 18:50:52', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('198', 'Buscar Transacciones', 'Controller & Method', 'AdminRedirectController@redirectBuscarTransacciones', 'normal', 'fa fa-search', '196', '1', '0', '7', '2', '2017-10-31 18:53:24', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('199', 'Inventario', 'URL', '#', 'normal', 'fa fa-list-ol', '0', '1', '0', '0', '4', '2017-10-31 17:03:42', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('200', 'Descargar Stock WMS Cons', 'Controller & Method', 'AdminRedirectController@redirectDescargarStockWmsConsolidado', 'normal', 'fa fa-download', '0', '1', '1', '8', '4', '2017-10-31 17:27:23', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('201', 'Consulta Stock por Ubic', 'Controller & Method', 'AdminRedirectController@consultaStockUbicacion', 'normal', 'fa fa-th-list', '0', '1', '0', '8', '10', '2017-10-31 18:26:06', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('202', 'Productos Bloqueados', 'Controller & Method', 'AdminRedirectController@redirectProductosBloqueados', 'normal', 'fa fa-ban', '0', '1', '0', '8', '6', '2017-10-31 18:09:19', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('203', 'Reporte Prod a Caducar', 'Controller & Method', 'AdminRedirectController@redirectReporteProdCaducar', 'normal', 'fa fa-calendar-times-o', '0', '1', '0', '8', '8', '2017-10-31 18:19:01', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('204', 'Ubicaciones Disponibles', 'Controller & Method', 'AdminRedirectController@redirectUbicacionesDisponibles', 'normal', 'fa fa-flag', '0', '1', '0', '8', '7', '2017-10-31 18:14:10', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('205', 'Inventario', 'URL', '#', 'normal', 'fa fa-list-ol', '0', '1', '0', '0', '4', '2017-10-31 17:03:42', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('206', 'Descargar Stock WMS Cons', 'Controller & Method', 'AdminRedirectController@redirectDescargarStockWmsConsolidado', 'normal', 'fa fa-download', '0', '1', '1', '9', '4', '2017-10-31 17:27:23', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('207', 'Consulta Stock por Ubic', 'Controller & Method', 'AdminRedirectController@consultaStockUbicacion', 'normal', 'fa fa-th-list', '0', '1', '0', '9', '10', '2017-10-31 18:26:06', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('208', 'Facturados y no despachados', 'Controller & Method', 'AdminRedirectController@redirectReporteProductosFacturadosNoDespachados', 'normal', 'fa fa-bar-chart-o', '0', '1', '0', '9', '2', '2017-10-31 15:43:16', '2017-10-31 15:46:53');
INSERT INTO `cms_menus` VALUES ('209', 'Reporte Prod a Caducar', 'Controller & Method', 'AdminRedirectController@redirectReporteProdCaducar', 'normal', 'fa fa-calendar-times-o', '0', '1', '0', '9', '8', '2017-10-31 18:19:01', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('210', 'Ubicaciones Disponibles', 'Controller & Method', 'AdminRedirectController@redirectUbicacionesDisponibles', 'normal', 'fa fa-flag', '0', '1', '0', '9', '7', '2017-10-31 18:14:10', '0000-00-00 00:00:00');
INSERT INTO `cms_menus` VALUES ('211', 'Panificación', 'Route', 'AdminPlanificacionControllerGetIndex', null, 'fa fa-sitemap', '0', '1', '0', '1', '11', '2017-11-01 16:06:58', null);
INSERT INTO `cms_menus` VALUES ('212', 'Ingresos', 'Route', 'AdminIngresosControllerGetIndex', null, 'fa fa-long-arrow-right', '0', '1', '0', '1', '12', '2017-11-01 16:09:04', null);
INSERT INTO `cms_menus` VALUES ('213', 'despachos', 'Route', 'AdminDespachosControllerGetIndex', null, 'fa fa-long-arrow-left', '0', '1', '0', '1', '13', '2017-11-01 16:14:49', null);
INSERT INTO `cms_menus` VALUES ('214', 'Inventario', 'Route', 'AdminInventarioControllerGetIndex', null, 'fa fa-list-ol', '0', '1', '0', '1', '14', '2017-11-01 16:27:26', null);
INSERT INTO `cms_menus` VALUES ('215', 'Retornos', 'Route', 'AdminRetornosControllerGetIndex', null, 'fa fa-share', '0', '1', '0', '1', '15', '2017-11-01 16:32:06', null);
INSERT INTO `cms_menus` VALUES ('216', 'Transacciones', 'Route', 'AdminTransaccionesControllerGetIndex', null, 'fa fa-tasks', '0', '1', '0', '1', '16', '2017-11-01 16:32:50', null);
INSERT INTO `cms_menus` VALUES ('217', 'Despachos', 'Route', 'AdminDespachosControllerGetIndex', 'normal', 'fa fa-long-arrow-left', '0', '1', '0', '13', '12', '2017-11-01 16:34:08', null);
INSERT INTO `cms_menus` VALUES ('218', 'Ingresos', 'Route', 'AdminIngresosControllerGetIndex', 'normal', 'fa fa-long-arrow-right', '0', '1', '0', '13', '13', '2017-11-01 16:34:08', null);
INSERT INTO `cms_menus` VALUES ('219', 'Inventario', 'Route', 'AdminInventarioControllerGetIndex', 'normal', 'fa fa-list-ol', '0', '1', '0', '13', '14', '2017-11-01 16:34:09', null);
INSERT INTO `cms_menus` VALUES ('220', 'Panificación', 'Route', 'AdminPlanificacionControllerGetIndex', 'normal', 'fa fa-sitemap', '0', '1', '0', '13', '15', '2017-11-01 16:34:09', null);
INSERT INTO `cms_menus` VALUES ('221', 'Retornos', 'Route', 'AdminRetornosControllerGetIndex', 'normal', 'fa fa-share', '0', '1', '0', '13', '16', '2017-11-01 16:34:10', null);
INSERT INTO `cms_menus` VALUES ('222', 'Transacciones', 'Route', 'AdminTransaccionesControllerGetIndex', 'normal', 'fa fa-tasks', '0', '1', '0', '13', '17', '2017-11-01 16:34:10', null);
INSERT INTO `cms_menus` VALUES ('223', 'Despachos', 'Route', 'AdminDespachosControllerGetIndex', 'normal', 'fa fa-long-arrow-left', '0', '1', '0', '12', '12', '2017-11-01 16:34:33', null);
INSERT INTO `cms_menus` VALUES ('224', 'Ingresos', 'Route', 'AdminIngresosControllerGetIndex', 'normal', 'fa fa-long-arrow-right', '0', '1', '0', '12', '13', '2017-11-01 16:34:33', null);
INSERT INTO `cms_menus` VALUES ('225', 'Inventario', 'Route', 'AdminInventarioControllerGetIndex', 'normal', 'fa fa-list-ol', '0', '1', '0', '12', '14', '2017-11-01 16:34:33', null);
INSERT INTO `cms_menus` VALUES ('226', 'Panificación', 'Route', 'AdminPlanificacionControllerGetIndex', 'normal', 'fa fa-sitemap', '0', '1', '0', '12', '15', '2017-11-01 16:34:33', null);
INSERT INTO `cms_menus` VALUES ('227', 'Retornos', 'Route', 'AdminRetornosControllerGetIndex', 'normal', 'fa fa-share', '0', '1', '0', '12', '16', '2017-11-01 16:34:34', null);
INSERT INTO `cms_menus` VALUES ('228', 'Transacciones', 'Route', 'AdminTransaccionesControllerGetIndex', 'normal', 'fa fa-tasks', '0', '1', '0', '12', '17', '2017-11-01 16:34:35', null);
INSERT INTO `cms_menus` VALUES ('229', 'Despachos', 'Route', 'AdminDespachosControllerGetIndex', 'normal', 'fa fa-long-arrow-left', '0', '1', '0', '11', '12', '2017-11-01 16:34:53', null);
INSERT INTO `cms_menus` VALUES ('230', 'Ingresos', 'Route', 'AdminIngresosControllerGetIndex', 'normal', 'fa fa-long-arrow-right', '0', '1', '0', '11', '13', '2017-11-01 16:34:54', null);
INSERT INTO `cms_menus` VALUES ('231', 'Inventario', 'Route', 'AdminInventarioControllerGetIndex', 'normal', 'fa fa-list-ol', '0', '1', '0', '11', '14', '2017-11-01 16:34:54', null);
INSERT INTO `cms_menus` VALUES ('232', 'Panificación', 'Route', 'AdminPlanificacionControllerGetIndex', 'normal', 'fa fa-sitemap', '0', '1', '0', '11', '15', '2017-11-01 16:34:55', null);
INSERT INTO `cms_menus` VALUES ('233', 'Retornos', 'Route', 'AdminRetornosControllerGetIndex', 'normal', 'fa fa-share', '0', '1', '0', '11', '16', '2017-11-01 16:34:56', null);
INSERT INTO `cms_menus` VALUES ('234', 'Transacciones', 'Route', 'AdminTransaccionesControllerGetIndex', 'normal', 'fa fa-tasks', '0', '1', '0', '11', '17', '2017-11-01 16:34:57', null);
INSERT INTO `cms_menus` VALUES ('235', 'Despachos', 'Route', 'AdminDespachosControllerGetIndex', 'normal', 'fa fa-long-arrow-left', '0', '1', '0', '10', '12', '2017-11-01 16:35:37', null);
INSERT INTO `cms_menus` VALUES ('236', 'Ingresos', 'Route', 'AdminIngresosControllerGetIndex', 'normal', 'fa fa-long-arrow-right', '0', '1', '0', '10', '13', '2017-11-01 16:35:37', null);
INSERT INTO `cms_menus` VALUES ('237', 'Inventario', 'Route', 'AdminInventarioControllerGetIndex', 'normal', 'fa fa-list-ol', '0', '1', '0', '10', '14', '2017-11-01 16:35:38', null);
INSERT INTO `cms_menus` VALUES ('238', 'Panificación', 'Route', 'AdminPlanificacionControllerGetIndex', 'normal', 'fa fa-sitemap', '0', '1', '0', '10', '15', '2017-11-01 16:35:38', null);
INSERT INTO `cms_menus` VALUES ('239', 'Retornos', 'Route', 'AdminRetornosControllerGetIndex', 'normal', 'fa fa-share', '0', '1', '0', '10', '16', '2017-11-01 16:35:39', null);
INSERT INTO `cms_menus` VALUES ('240', 'Transacciones', 'Route', 'AdminTransaccionesControllerGetIndex', 'normal', 'fa fa-tasks', '0', '1', '0', '10', '17', '2017-11-01 16:35:39', null);
INSERT INTO `cms_menus` VALUES ('241', 'Inventario', 'Route', 'AdminInventarioControllerGetIndex', 'normal', 'fa fa-list-ol', '0', '1', '0', '9', '11', '2017-11-01 16:36:14', null);
INSERT INTO `cms_menus` VALUES ('242', 'Inventario', 'Route', 'AdminInventarioControllerGetIndex', 'normal', 'fa fa-list-ol', '0', '1', '0', '8', '11', '2017-11-01 16:36:30', null);
INSERT INTO `cms_menus` VALUES ('243', 'Despachos', 'Route', 'AdminDespachosControllerGetIndex', 'normal', 'fa fa-long-arrow-left', '0', '1', '0', '7', '11', '2017-11-01 16:37:34', null);
INSERT INTO `cms_menus` VALUES ('244', 'Inventario', 'Route', 'AdminInventarioControllerGetIndex', 'normal', 'fa fa-list-ol', '0', '1', '0', '7', '12', '2017-11-01 16:37:34', null);
INSERT INTO `cms_menus` VALUES ('245', 'Transacciones', 'Route', 'AdminTransaccionesControllerGetIndex', 'normal', 'fa fa-tasks', '0', '1', '0', '7', '13', '2017-11-01 16:37:34', null);
INSERT INTO `cms_menus` VALUES ('246', 'Inventario', 'Route', 'AdminInventarioControllerGetIndex', 'normal', 'fa fa-list-ol', '0', '1', '0', '6', '8', '2017-11-01 16:38:08', null);
INSERT INTO `cms_menus` VALUES ('247', 'Inventario', 'Route', 'AdminInventarioControllerGetIndex', 'normal', 'fa fa-list-ol', '0', '1', '0', '5', '11', '2017-11-01 16:38:24', null);
INSERT INTO `cms_menus` VALUES ('248', 'Inventario', 'Route', 'AdminInventarioControllerGetIndex', 'normal', 'fa fa-list-ol', '0', '1', '0', '4', '9', '2017-11-01 16:40:00', null);
INSERT INTO `cms_menus` VALUES ('249', 'Despachos', 'Route', 'AdminDespachosControllerGetIndex', 'normal', 'fa fa-long-arrow-left', '0', '1', '0', '3', '11', '2017-11-01 16:40:41', null);
INSERT INTO `cms_menus` VALUES ('250', 'Inventario', 'Route', 'AdminInventarioControllerGetIndex', 'normal', 'fa fa-list-ol', '0', '1', '0', '3', '12', '2017-11-01 16:40:41', null);
INSERT INTO `cms_menus` VALUES ('251', 'Tracking', 'Route', 'AdminTrackingControllerGetIndex', null, 'fa fa-truck', '0', '1', '0', '1', '18', '2017-11-01 16:54:54', null);
INSERT INTO `cms_menus` VALUES ('252', 'Tracking', 'Route', 'AdminTrackingControllerGetIndex', 'normal', 'fa fa-truck', '0', '1', '0', '13', '18', '2017-11-01 16:56:20', null);
INSERT INTO `cms_menus` VALUES ('253', 'Tracking', 'Route', 'AdminTrackingControllerGetIndex', 'normal', 'fa fa-truck', '0', '1', '0', '12', '18', '2017-11-01 16:56:38', null);
INSERT INTO `cms_menus` VALUES ('254', 'Tracking', 'Route', 'AdminTrackingControllerGetIndex', 'normal', 'fa fa-truck', '0', '1', '0', '11', '18', '2017-11-01 16:56:58', null);
INSERT INTO `cms_menus` VALUES ('255', 'Tracking', 'Route', 'AdminTrackingControllerGetIndex', 'normal', 'fa fa-truck', '0', '1', '0', '10', '18', '2017-11-01 16:57:16', null);
INSERT INTO `cms_menus` VALUES ('256', 'Despachos', 'Route', 'AdminDespachosControllerGetIndex', 'normal', 'fa fa-long-arrow-left', '0', '1', '0', '2', '12', '2017-11-01 16:57:51', null);
INSERT INTO `cms_menus` VALUES ('257', 'Ingresos', 'Route', 'AdminIngresosControllerGetIndex', 'normal', 'fa fa-long-arrow-right', '0', '1', '0', '2', '13', '2017-11-01 16:57:51', null);
INSERT INTO `cms_menus` VALUES ('258', 'Inventario', 'Route', 'AdminInventarioControllerGetIndex', 'normal', 'fa fa-list-ol', '0', '1', '0', '2', '14', '2017-11-01 16:57:52', null);
INSERT INTO `cms_menus` VALUES ('259', 'Panificación', 'Route', 'AdminPlanificacionControllerGetIndex', 'normal', 'fa fa-sitemap', '0', '1', '0', '2', '15', '2017-11-01 16:57:52', null);
INSERT INTO `cms_menus` VALUES ('260', 'Retornos', 'Route', 'AdminRetornosControllerGetIndex', 'normal', 'fa fa-share', '0', '1', '0', '2', '16', '2017-11-01 16:57:53', null);
INSERT INTO `cms_menus` VALUES ('261', 'Tracking', 'Route', 'AdminTrackingControllerGetIndex', 'normal', 'fa fa-truck', '0', '1', '0', '2', '17', '2017-11-01 16:57:53', null);
INSERT INTO `cms_menus` VALUES ('262', 'Transacciones', 'Route', 'AdminTransaccionesControllerGetIndex', 'normal', 'fa fa-tasks', '0', '1', '0', '2', '18', '2017-11-01 16:57:54', null);

-- ----------------------------
-- Table structure for cms_menus_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_menus_privileges
-- ----------------------------

-- ----------------------------
-- Table structure for cms_moduls
-- ----------------------------
DROP TABLE IF EXISTS `cms_moduls`;
CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_moduls
-- ----------------------------
INSERT INTO `cms_moduls` VALUES ('1', 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', '1', '1', '2017-10-30 20:08:25', null, null);
INSERT INTO `cms_moduls` VALUES ('2', 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', '1', '1', '2017-10-30 20:08:25', null, null);
INSERT INTO `cms_moduls` VALUES ('3', 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', '1', '1', '2017-10-30 20:08:25', null, null);
INSERT INTO `cms_moduls` VALUES ('4', 'Users', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', '0', '1', '2017-10-30 20:08:25', null, null);
INSERT INTO `cms_moduls` VALUES ('5', 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', '1', '1', '2017-10-30 20:08:25', null, null);
INSERT INTO `cms_moduls` VALUES ('6', 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', '1', '1', '2017-10-30 20:08:25', null, null);
INSERT INTO `cms_moduls` VALUES ('7', 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', '1', '1', '2017-10-30 20:08:25', null, null);
INSERT INTO `cms_moduls` VALUES ('8', 'Email Template', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', '1', '1', '2017-10-30 20:08:25', null, null);
INSERT INTO `cms_moduls` VALUES ('9', 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', '1', '1', '2017-10-30 20:08:25', null, null);
INSERT INTO `cms_moduls` VALUES ('10', 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', '1', '1', '2017-10-30 20:08:25', null, null);
INSERT INTO `cms_moduls` VALUES ('11', 'Logs', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', '1', '1', '2017-10-30 20:08:25', null, null);
INSERT INTO `cms_moduls` VALUES ('12', 'Panificación', 'fa fa-sitemap', 'planificacion', 'planificacion', 'AdminPlanificacionController', '0', '0', '2017-11-01 16:06:51', null, null);
INSERT INTO `cms_moduls` VALUES ('13', 'Ingresos', 'fa fa-long-arrow-right', 'ingresos', 'ingresos', 'AdminIngresosController', '0', '0', '2017-11-01 16:09:03', null, null);
INSERT INTO `cms_moduls` VALUES ('14', 'Despachos', 'fa fa-long-arrow-left', 'despachos', 'despachos', 'AdminDespachosController', '0', '0', '2017-11-01 16:14:48', null, null);
INSERT INTO `cms_moduls` VALUES ('15', 'Inventario', 'fa fa-list-ol', 'inventario', 'inventario', 'AdminInventarioController', '0', '0', '2017-11-01 16:27:25', null, null);
INSERT INTO `cms_moduls` VALUES ('16', 'Retornos', 'fa fa-share', 'retornos', 'retornos', 'AdminRetornosController', '0', '0', '2017-11-01 16:32:05', null, null);
INSERT INTO `cms_moduls` VALUES ('17', 'Transacciones', 'fa fa-tasks', 'transacciones', 'transacciones', 'AdminTransaccionesController', '0', '0', '2017-11-01 16:32:49', null, null);
INSERT INTO `cms_moduls` VALUES ('18', 'Tracking', 'fa fa-truck', 'tracking', 'tracking', 'AdminTrackingController', '0', '0', '2017-11-01 16:54:53', null, null);

-- ----------------------------
-- Table structure for cms_notifications
-- ----------------------------
DROP TABLE IF EXISTS `cms_notifications`;
CREATE TABLE `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_notifications
-- ----------------------------

-- ----------------------------
-- Table structure for cms_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges`;
CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_privileges
-- ----------------------------
INSERT INTO `cms_privileges` VALUES ('1', 'Super Administrator', '1', 'skin-red', '2017-10-30 20:08:25', null);
INSERT INTO `cms_privileges` VALUES ('2', 'Asistente Logística', '0', 'skin-red', null, null);
INSERT INTO `cms_privileges` VALUES ('3', 'Comercial', '0', 'skin-red', null, null);
INSERT INTO `cms_privileges` VALUES ('4', 'Mercadeo', '0', 'skin-red', null, null);
INSERT INTO `cms_privileges` VALUES ('5', 'Calidad', '0', 'skin-red', null, null);
INSERT INTO `cms_privileges` VALUES ('6', 'Producción', '0', 'skin-red', null, null);
INSERT INTO `cms_privileges` VALUES ('7', 'Contabilidad', '0', 'skin-red', null, null);
INSERT INTO `cms_privileges` VALUES ('8', 'Planificación', '0', 'skin-red', null, null);
INSERT INTO `cms_privileges` VALUES ('9', 'Sub Gerencia General', '0', 'skin-red', null, null);
INSERT INTO `cms_privileges` VALUES ('10', 'Gerencia Operaciones', '0', 'skin-red', null, null);
INSERT INTO `cms_privileges` VALUES ('11', 'Jefe de Logística', '0', 'skin-red', null, null);
INSERT INTO `cms_privileges` VALUES ('12', 'Coordinador CND', '0', 'skin-red', null, null);
INSERT INTO `cms_privileges` VALUES ('13', 'Supervisor CND', '0', 'skin-red', null, null);

-- ----------------------------
-- Table structure for cms_privileges_roles
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges_roles`;
CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_privileges_roles
-- ----------------------------
INSERT INTO `cms_privileges_roles` VALUES ('1', '1', '0', '0', '0', '0', '1', '1', '2017-10-30 20:08:25', null);
INSERT INTO `cms_privileges_roles` VALUES ('2', '1', '1', '1', '1', '1', '1', '2', '2017-10-30 20:08:26', null);
INSERT INTO `cms_privileges_roles` VALUES ('3', '0', '1', '1', '1', '1', '1', '3', '2017-10-30 20:08:26', null);
INSERT INTO `cms_privileges_roles` VALUES ('4', '1', '1', '1', '1', '1', '1', '4', '2017-10-30 20:08:26', null);
INSERT INTO `cms_privileges_roles` VALUES ('5', '1', '1', '1', '1', '1', '1', '5', '2017-10-30 20:08:26', null);
INSERT INTO `cms_privileges_roles` VALUES ('6', '1', '1', '1', '1', '1', '1', '6', '2017-10-30 20:08:26', null);
INSERT INTO `cms_privileges_roles` VALUES ('7', '1', '1', '1', '1', '1', '1', '7', '2017-10-30 20:08:26', null);
INSERT INTO `cms_privileges_roles` VALUES ('8', '1', '1', '1', '1', '1', '1', '8', '2017-10-30 20:08:26', null);
INSERT INTO `cms_privileges_roles` VALUES ('9', '1', '1', '1', '1', '1', '1', '9', '2017-10-30 20:08:26', null);
INSERT INTO `cms_privileges_roles` VALUES ('10', '1', '1', '1', '1', '1', '1', '10', '2017-10-30 20:08:27', null);
INSERT INTO `cms_privileges_roles` VALUES ('11', '1', '0', '1', '0', '1', '1', '11', '2017-10-30 20:08:27', null);
INSERT INTO `cms_privileges_roles` VALUES ('12', '1', '1', '1', '1', '1', '1', '12', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('13', '1', '1', '1', '1', '1', '1', '13', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('14', '1', '1', '1', '1', '1', '1', '14', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('15', '1', '1', '1', '1', '1', '1', '15', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('16', '1', '1', '1', '1', '1', '1', '16', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('17', '1', '1', '1', '1', '1', '1', '17', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('18', '1', '1', '1', '1', '1', '13', '14', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('19', '1', '1', '1', '1', '1', '13', '13', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('20', '1', '1', '1', '1', '1', '13', '15', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('21', '1', '1', '1', '1', '1', '13', '12', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('22', '1', '1', '1', '1', '1', '13', '16', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('23', '1', '1', '1', '1', '1', '13', '17', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('24', '1', '1', '1', '1', '1', '12', '14', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('25', '1', '1', '1', '1', '1', '12', '13', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('26', '1', '1', '1', '1', '1', '12', '15', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('27', '1', '1', '1', '1', '1', '12', '12', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('28', '1', '1', '1', '1', '1', '12', '16', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('29', '1', '1', '1', '1', '1', '12', '17', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('30', '1', '1', '1', '1', '1', '11', '14', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('31', '1', '1', '1', '1', '1', '11', '13', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('32', '1', '1', '1', '1', '1', '11', '15', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('33', '1', '1', '1', '1', '1', '11', '12', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('34', '1', '1', '1', '1', '1', '11', '16', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('35', '1', '1', '1', '1', '1', '11', '17', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('36', '1', '1', '1', '1', '1', '10', '14', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('37', '1', '1', '1', '1', '1', '10', '13', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('38', '1', '1', '1', '1', '1', '10', '15', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('39', '1', '1', '1', '1', '1', '10', '12', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('40', '1', '1', '1', '1', '1', '10', '16', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('41', '1', '1', '1', '1', '1', '10', '17', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('42', '1', '1', '1', '1', '1', '9', '15', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('43', '1', '1', '1', '1', '1', '8', '15', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('44', '1', '1', '1', '1', '1', '7', '14', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('45', '1', '1', '1', '1', '1', '7', '15', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('46', '1', '1', '1', '1', '1', '7', '17', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('47', '1', '1', '1', '1', '1', '6', '15', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('48', '1', '1', '1', '1', '1', '5', '15', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('49', '1', '1', '1', '1', '1', '4', '15', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('50', '1', '1', '1', '1', '1', '3', '14', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('51', '1', '1', '1', '1', '1', '3', '15', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('52', '1', '1', '1', '1', '1', '1', '18', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('53', '1', '1', '1', '1', '1', '13', '18', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('54', '1', '1', '1', '1', '1', '12', '18', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('55', '1', '1', '1', '1', '1', '11', '18', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('56', '1', '1', '1', '1', '1', '10', '18', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('57', '1', '1', '1', '1', '1', '2', '14', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('58', '1', '1', '1', '1', '1', '2', '13', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('59', '1', '1', '1', '1', '1', '2', '15', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('60', '1', '1', '1', '1', '1', '2', '12', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('61', '1', '1', '1', '1', '1', '2', '16', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('62', '1', '1', '1', '1', '1', '2', '18', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('63', '1', '1', '1', '1', '1', '2', '17', null, null);

-- ----------------------------
-- Table structure for cms_settings
-- ----------------------------
DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_settings
-- ----------------------------
INSERT INTO `cms_settings` VALUES ('1', 'login_background_color', null, 'text', null, 'Input hexacode', '2017-10-30 20:08:27', null, 'Login Register Style', 'Login Background Color');
INSERT INTO `cms_settings` VALUES ('2', 'login_font_color', null, 'text', null, 'Input hexacode', '2017-10-30 20:08:27', null, 'Login Register Style', 'Login Font Color');
INSERT INTO `cms_settings` VALUES ('3', 'login_background_image', 'uploads/2017-10/25732a5d85c8a75b832542405527a616.jpg', 'upload_image', null, null, '2017-10-30 20:08:27', null, 'Login Register Style', 'Login Background Image');
INSERT INTO `cms_settings` VALUES ('4', 'email_sender', 'support@crudbooster.com', 'text', null, null, '2017-10-30 20:08:27', null, 'Email Setting', 'Email Sender');
INSERT INTO `cms_settings` VALUES ('5', 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', null, '2017-10-30 20:08:27', null, 'Email Setting', 'Mail Driver');
INSERT INTO `cms_settings` VALUES ('6', 'smtp_host', '', 'text', null, null, '2017-10-30 20:08:27', null, 'Email Setting', 'SMTP Host');
INSERT INTO `cms_settings` VALUES ('7', 'smtp_port', '25', 'text', null, 'default 25', '2017-10-30 20:08:27', null, 'Email Setting', 'SMTP Port');
INSERT INTO `cms_settings` VALUES ('8', 'smtp_username', '', 'text', null, null, '2017-10-30 20:08:27', null, 'Email Setting', 'SMTP Username');
INSERT INTO `cms_settings` VALUES ('9', 'smtp_password', '', 'text', null, null, '2017-10-30 20:08:27', null, 'Email Setting', 'SMTP Password');
INSERT INTO `cms_settings` VALUES ('10', 'appname', 'WMS', 'text', null, null, '2017-10-30 20:08:27', null, 'Application Setting', 'Application Name');
INSERT INTO `cms_settings` VALUES ('11', 'default_paper_size', 'Legal', 'text', null, 'Paper size, ex : A4, Legal, etc', '2017-10-30 20:08:27', null, 'Application Setting', 'Default Paper Print Size');
INSERT INTO `cms_settings` VALUES ('12', 'logo', 'uploads/2017-10/57c5d4ee8fcde921e40d3fb362c3c982.png', 'upload_image', null, null, '2017-10-30 20:08:27', null, 'Application Setting', 'Logo');
INSERT INTO `cms_settings` VALUES ('13', 'favicon', 'uploads/2017-10/7079e20a2c648df1efb67dab004cfccd.png', 'upload_image', null, null, '2017-10-30 20:08:27', null, 'Application Setting', 'Favicon');
INSERT INTO `cms_settings` VALUES ('14', 'api_debug_mode', 'true', 'select', 'true,false', null, '2017-10-30 20:08:27', null, 'Application Setting', 'API Debug Mode');
INSERT INTO `cms_settings` VALUES ('15', 'google_api_key', null, 'text', null, null, '2017-10-30 20:08:27', null, 'Application Setting', 'Google API Key');
INSERT INTO `cms_settings` VALUES ('16', 'google_fcm_key', null, 'text', null, null, '2017-10-30 20:08:27', null, 'Application Setting', 'Google FCM Key');

-- ----------------------------
-- Table structure for cms_statistics
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistics`;
CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for cms_statistic_components
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistic_components`;
CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_statistic_components
-- ----------------------------

-- ----------------------------
-- Table structure for cms_users
-- ----------------------------
DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_users
-- ----------------------------
INSERT INTO `cms_users` VALUES ('1', 'Super Admin', null, 'admin@crudbooster.com', '$2y$10$fb5BbzCtv/4wT.eC.6GmVu3cg7dA/OVxZ.YoFV5ZjV0LJaJiVwBz2', '1', '2017-10-30 20:08:25', null, 'Active');
INSERT INTO `cms_users` VALUES ('2', 'Usuario de Prueba', null, 'prueba@correo.com', '$2y$10$zV19nd8XMwDfNG214FQzbeDzOI.gb0ytG0nGCUfwXAifMy4Rv/wI.', '2', '2017-10-30 20:42:49', '2017-10-30 20:46:34', null);

-- ----------------------------
-- Table structure for despachos
-- ----------------------------
DROP TABLE IF EXISTS `despachos`;
CREATE TABLE `despachos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of despachos
-- ----------------------------

-- ----------------------------
-- Table structure for ingresos
-- ----------------------------
DROP TABLE IF EXISTS `ingresos`;
CREATE TABLE `ingresos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ingresos
-- ----------------------------

-- ----------------------------
-- Table structure for inventario
-- ----------------------------
DROP TABLE IF EXISTS `inventario`;
CREATE TABLE `inventario` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of inventario
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2016_08_07_145904_add_table_cms_apicustom', '1');
INSERT INTO `migrations` VALUES ('2', '2016_08_07_150834_add_table_cms_dashboard', '1');
INSERT INTO `migrations` VALUES ('3', '2016_08_07_151210_add_table_cms_logs', '1');
INSERT INTO `migrations` VALUES ('4', '2016_08_07_151211_add_details_cms_logs', '1');
INSERT INTO `migrations` VALUES ('5', '2016_08_07_152014_add_table_cms_privileges', '1');
INSERT INTO `migrations` VALUES ('6', '2016_08_07_152214_add_table_cms_privileges_roles', '1');
INSERT INTO `migrations` VALUES ('7', '2016_08_07_152320_add_table_cms_settings', '1');
INSERT INTO `migrations` VALUES ('8', '2016_08_07_152421_add_table_cms_users', '1');
INSERT INTO `migrations` VALUES ('9', '2016_08_07_154624_add_table_cms_menus_privileges', '1');
INSERT INTO `migrations` VALUES ('10', '2016_08_07_154624_add_table_cms_moduls', '1');
INSERT INTO `migrations` VALUES ('11', '2016_08_17_225409_add_status_cms_users', '1');
INSERT INTO `migrations` VALUES ('12', '2016_08_20_125418_add_table_cms_notifications', '1');
INSERT INTO `migrations` VALUES ('13', '2016_09_04_033706_add_table_cms_email_queues', '1');
INSERT INTO `migrations` VALUES ('14', '2016_09_16_035347_add_group_setting', '1');
INSERT INTO `migrations` VALUES ('15', '2016_09_16_045425_add_label_setting', '1');
INSERT INTO `migrations` VALUES ('16', '2016_09_17_104728_create_nullable_cms_apicustom', '1');
INSERT INTO `migrations` VALUES ('17', '2016_10_01_141740_add_method_type_apicustom', '1');
INSERT INTO `migrations` VALUES ('18', '2016_10_01_141846_add_parameters_apicustom', '1');
INSERT INTO `migrations` VALUES ('19', '2016_10_01_141934_add_responses_apicustom', '1');
INSERT INTO `migrations` VALUES ('20', '2016_10_01_144826_add_table_apikey', '1');
INSERT INTO `migrations` VALUES ('21', '2016_11_14_141657_create_cms_menus', '1');
INSERT INTO `migrations` VALUES ('22', '2016_11_15_132350_create_cms_email_templates', '1');
INSERT INTO `migrations` VALUES ('23', '2016_11_15_190410_create_cms_statistics', '1');
INSERT INTO `migrations` VALUES ('24', '2016_11_17_102740_create_cms_statistic_components', '1');
INSERT INTO `migrations` VALUES ('25', '2017_06_06_164501_add_deleted_at_cms_moduls', '1');
INSERT INTO `migrations` VALUES ('26', '2017_11_01_153823_create_planificacion', '2');
INSERT INTO `migrations` VALUES ('27', '2017_11_01_155117_create_ingresos', '2');
INSERT INTO `migrations` VALUES ('28', '2017_11_01_155638_create_despachos', '2');
INSERT INTO `migrations` VALUES ('29', '2017_11_01_161906_create_inventario', '3');
INSERT INTO `migrations` VALUES ('30', '2017_11_01_162315_create_retornos', '3');
INSERT INTO `migrations` VALUES ('31', '2017_11_01_162417_create_transacciones', '3');
INSERT INTO `migrations` VALUES ('32', '2017_11_01_164944_create_tracking', '4');

-- ----------------------------
-- Table structure for planificacion
-- ----------------------------
DROP TABLE IF EXISTS `planificacion`;
CREATE TABLE `planificacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of planificacion
-- ----------------------------

-- ----------------------------
-- Table structure for retornos
-- ----------------------------
DROP TABLE IF EXISTS `retornos`;
CREATE TABLE `retornos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of retornos
-- ----------------------------

-- ----------------------------
-- Table structure for tracking
-- ----------------------------
DROP TABLE IF EXISTS `tracking`;
CREATE TABLE `tracking` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tracking
-- ----------------------------

-- ----------------------------
-- Table structure for transacciones
-- ----------------------------
DROP TABLE IF EXISTS `transacciones`;
CREATE TABLE `transacciones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of transacciones
-- ----------------------------
