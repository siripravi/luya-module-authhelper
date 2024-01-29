-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2023 at 11:06 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luyashopbs4`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_auth`
--

CREATE TABLE `admin_auth` (
  `id` int(11) NOT NULL,
  `alias_name` varchar(60) NOT NULL,
  `module_name` varchar(60) NOT NULL,
  `is_crud` tinyint(1) DEFAULT 0,
  `route` varchar(200) DEFAULT NULL,
  `api` varchar(200) DEFAULT NULL,
  `pool` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_auth`
--

INSERT INTO `admin_auth` (`id`, `alias_name`, `module_name`, `is_crud`, `route`, `api`, `pool`) VALUES
(1, 'module_permission_page_blocks', 'cmsadmin', 1, NULL, 'api-cms-navitempageblockitem', NULL),
(2, 'module_permission_page', 'cmsadmin', 1, NULL, 'api-cms-navitempage', NULL),
(3, 'menu_group_item_env_websites', 'cmsadmin', 1, NULL, 'api-cms-website', NULL),
(4, 'menu_group_item_env_layouts', 'cmsadmin', 1, NULL, 'api-cms-layout', NULL),
(5, 'menu_group_item_env_themes', 'cmsadmin', 1, NULL, 'api-cms-theme', NULL),
(6, 'menu_group_item_env_container', 'cmsadmin', 1, NULL, 'api-cms-navcontainer', NULL),
(7, 'menu_group_item_elements_group', 'cmsadmin', 1, NULL, 'api-cms-blockgroup', NULL),
(8, 'menu_group_item_elements_blocks', 'cmsadmin', 1, NULL, 'api-cms-block', NULL),
(9, 'menu_group_item_env_redirections', 'cmsadmin', 1, NULL, 'api-cms-redirect', NULL),
(10, 'menu_group_protocol_model_event_logger', 'cmsadmin', 1, NULL, 'api-cms-log', NULL),
(11, 'module_permission_add_new_page', 'cmsadmin', 0, 'cmsadmin/page/create', NULL, NULL),
(12, 'module_permission_update_pages', 'cmsadmin', 0, 'cmsadmin/page/update', NULL, NULL),
(13, 'module_permission_delete_pages', 'cmsadmin', 0, 'cmsadmin/page/delete', NULL, NULL),
(14, 'module_permission_edit_drafts', 'cmsadmin', 0, 'cmsadmin/page/drafts', NULL, NULL),
(15, 'menu_group_item_env_config', 'cmsadmin', 0, 'cmsadmin/config/index', NULL, NULL),
(16, 'menu_node_cms', 'cmsadmin', 0, 'cmsadmin/default/index', NULL, NULL),
(17, 'menu_group_item_env_permission', 'cmsadmin', 0, 'cmsadmin/permission/index', NULL, NULL),
(18, 'menu_access_item_user', 'admin', 1, NULL, 'api-admin-user', NULL),
(19, 'menu_access_item_apiuser', 'admin', 1, NULL, 'api-admin-apiuser', NULL),
(20, 'menu_access_item_group', 'admin', 1, NULL, 'api-admin-group', NULL),
(21, 'menu_system_item_config', 'admin', 1, NULL, 'api-admin-config', NULL),
(22, 'menu_system_item_language', 'admin', 1, NULL, 'api-admin-lang', NULL),
(23, 'menu_system_item_property', 'admin', 1, NULL, 'api-admin-property', NULL),
(24, 'menu_system_item_tags', 'admin', 1, NULL, 'api-admin-tag', NULL),
(25, 'menu_system_queue', 'admin', 1, NULL, 'api-admin-queuelog', NULL),
(26, 'menu_system_queue_errors', 'admin', 1, NULL, 'api-admin-queuelogerror', NULL),
(27, 'menu_system_logger', 'admin', 1, NULL, 'api-admin-logger', NULL),
(28, 'menu_system_model_event_log', 'admin', 1, NULL, 'api-admin-ngrestlog', NULL),
(29, 'menu_group_contentproxy_machines', 'admin', 1, NULL, 'api-admin-proxymachine', NULL),
(30, 'menu_group_contentproxy_builds', 'admin', 1, NULL, 'api-admin-proxybuild', NULL),
(31, 'menu_images_item_images', 'admin', 1, NULL, 'api-admin-storageimage', NULL),
(32, 'menu_images_item_filters', 'admin', 1, NULL, 'api-admin-filter', NULL),
(33, 'menu_images_item_effects', 'admin', 1, NULL, 'api-admin-effect', NULL),
(34, 'menu_node_filemanager', 'admin', 0, 'admin/storage/index', NULL, NULL),
(35, 'Groups', 'catalogadmin', 1, NULL, 'api-catalog-group', NULL),
(36, 'Products', 'catalogadmin', 1, NULL, 'api-catalog-product', NULL),
(37, 'Articles', 'catalogadmin', 1, NULL, 'api-catalog-article', NULL),
(38, 'Related', 'catalogadmin', 1, NULL, 'api-catalog-related', NULL),
(39, 'Prices', 'catalogadmin', 1, NULL, 'api-catalog-articleprice', NULL),
(40, 'Units', 'catalogadmin', 1, NULL, 'api-catalog-unit', NULL),
(41, 'Currencies', 'catalogadmin', 1, NULL, 'api-catalog-currency', NULL),
(42, 'Brands', 'catalogadmin', 1, NULL, 'api-catalog-brand', NULL),
(43, 'Features', 'catalogadmin', 1, NULL, 'api-catalog-feature', NULL),
(44, 'Values', 'catalogadmin', 1, NULL, 'api-catalog-value', NULL),
(45, 'album', 'galleryadmin', 1, NULL, 'api-gallery-album', NULL),
(46, 'cat', 'galleryadmin', 1, NULL, 'api-gallery-cat', NULL),
(47, 'Buyers', 'cartadmin', 1, NULL, 'api-cart-buyer', NULL),
(48, 'Orders', 'cartadmin', 1, NULL, 'api-cart-order', NULL),
(50, 'Delivery Methods', 'cartadmin', 1, NULL, 'api-cart-delivery', NULL),
(51, 'Payment Methods', 'cartadmin', 1, NULL, 'api-cart-payment', NULL),
(52, 'Order Product', 'cartadmin', 1, NULL, 'api-cart-orderproduct', NULL),
(53, 'Group Features', 'catalogadmin', 1, NULL, 'api-catalog-featuregroupref', NULL),
(54, 'Form', 'forms', 1, NULL, 'api-forms-form', NULL),
(55, 'Submission', 'forms', 1, NULL, 'api-forms-submission', NULL),
(56, 'Values', 'forms', 1, NULL, 'api-forms-submissionvalue', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_config`
--

CREATE TABLE `admin_config` (
  `name` varchar(80) NOT NULL,
  `value` text DEFAULT NULL,
  `is_system` tinyint(1) DEFAULT 1,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_config`
--

INSERT INTO `admin_config` (`name`, `value`, `is_system`, `id`) VALUES
('100genericBlockUpdate', '1', 0, 1),
('last_import_timestamp', '1703833274', 0, 2),
('installer_vendor_timestamp', '1702734072', 0, 3),
('setup_command_timestamp', '1701455525', 0, 4),
('queue_timestamp', '1703886320', 0, 5),
('queueScheduler.1', '1', 1, 6),
('queueScheduler.2', '2', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `admin_group`
--

CREATE TABLE `admin_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_group`
--

INSERT INTO `admin_group` (`id`, `name`, `text`, `is_deleted`) VALUES
(1, 'Administrator', 'Administrator Accounts have full access to all Areas and can create, update and delete all data records.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_group_auth`
--

CREATE TABLE `admin_group_auth` (
  `group_id` int(11) DEFAULT NULL,
  `auth_id` int(11) DEFAULT NULL,
  `crud_create` smallint(4) DEFAULT NULL,
  `crud_update` smallint(4) DEFAULT NULL,
  `crud_delete` smallint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_group_auth`
--

INSERT INTO `admin_group_auth` (`group_id`, `auth_id`, `crud_create`, `crud_update`, `crud_delete`) VALUES
(1, 1, 1, 1, 1),
(1, 2, 1, 1, 1),
(1, 3, 1, 1, 1),
(1, 4, 1, 1, 1),
(1, 5, 1, 1, 1),
(1, 6, 1, 1, 1),
(1, 7, 1, 1, 1),
(1, 8, 1, 1, 1),
(1, 9, 1, 1, 1),
(1, 10, 1, 1, 1),
(1, 11, 1, 1, 1),
(1, 12, 1, 1, 1),
(1, 13, 1, 1, 1),
(1, 14, 1, 1, 1),
(1, 15, 1, 1, 1),
(1, 16, 1, 1, 1),
(1, 17, 1, 1, 1),
(1, 18, 1, 1, 1),
(1, 19, 1, 1, 1),
(1, 20, 1, 1, 1),
(1, 21, 1, 1, 1),
(1, 22, 1, 1, 1),
(1, 23, 1, 1, 1),
(1, 24, 1, 1, 1),
(1, 25, 1, 1, 1),
(1, 26, 1, 1, 1),
(1, 27, 1, 1, 1),
(1, 28, 1, 1, 1),
(1, 29, 1, 1, 1),
(1, 30, 1, 1, 1),
(1, 31, 1, 1, 1),
(1, 32, 1, 1, 1),
(1, 33, 1, 1, 1),
(1, 34, 1, 1, 1),
(1, 35, 1, 1, 1),
(1, 36, 1, 1, 1),
(1, 37, 1, 1, 1),
(1, 38, 1, 1, 1),
(1, 39, 1, 1, 1),
(1, 40, 1, 1, 1),
(1, 41, 1, 1, 1),
(1, 42, 1, 1, 1),
(1, 43, 1, 1, 1),
(1, 44, 1, 1, 1),
(1, 45, 1, 1, 1),
(1, 46, 1, 1, 1),
(1, 47, 1, 1, 1),
(1, 48, 1, 1, 1),
(1, 50, 1, 1, 1),
(1, 51, 1, 1, 1),
(1, 52, 1, 1, 1),
(1, 53, 1, 1, 1),
(1, 54, 1, 1, 1),
(1, 55, 1, 1, 1),
(1, 56, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_lang`
--

CREATE TABLE `admin_lang` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_code` varchar(15) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_lang`
--

INSERT INTO `admin_lang` (`id`, `name`, `short_code`, `is_default`, `is_deleted`) VALUES
(1, 'English', 'en', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_logger`
--

CREATE TABLE `admin_logger` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `message` text NOT NULL,
  `type` int(11) NOT NULL,
  `trace_file` varchar(255) DEFAULT NULL,
  `trace_line` varchar(255) DEFAULT NULL,
  `trace_function` varchar(255) DEFAULT NULL,
  `trace_function_args` text DEFAULT NULL,
  `group_identifier` varchar(255) DEFAULT NULL,
  `group_identifier_index` int(11) DEFAULT NULL,
  `get` text DEFAULT NULL,
  `post` text DEFAULT NULL,
  `session` text DEFAULT NULL,
  `server` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_ngrest_log`
--

CREATE TABLE `admin_ngrest_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp_create` int(11) NOT NULL,
  `route` varchar(80) NOT NULL,
  `api` varchar(80) NOT NULL,
  `is_update` tinyint(1) DEFAULT 0,
  `is_insert` tinyint(1) DEFAULT 0,
  `attributes_json` text NOT NULL,
  `attributes_diff_json` text DEFAULT NULL,
  `pk_value` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_ngrest_log`
--

INSERT INTO `admin_ngrest_log` (`id`, `user_id`, `timestamp_create`, `route`, `api`, `is_update`, `is_insert`, `attributes_json`, `attributes_diff_json`, `pk_value`, `table_name`, `is_delete`) VALUES
(2, 1, 1701456844, '', '', 0, 1, '{\"id\":1,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"background.jpg\",\"name_new\":\"background\",\"name_new_compound\":\"background_7479ffd7.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"1086924feaee626ef7f207457c629395\",\"hash_name\":\"7479ffd7\",\"upload_timestamp\":1701456844,\"file_size\":466161,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701456844}', NULL, '1', '{{%admin_storage_file}}', 0),
(3, 1, 1701456845, '', 'api-admin-storageimage', 0, 1, '{\"id\":1,\"file_id\":1,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701456845,\"updated_at\":1701456845}', NULL, '1', '{{%admin_storage_image}}', 0),
(4, 1, 1701456845, '', 'api-admin-storageimage', 0, 1, '{\"id\":2,\"file_id\":1,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":169,\"created_at\":1701456845,\"updated_at\":1701456845}', NULL, '2', '{{%admin_storage_image}}', 0),
(5, 1, 1701456848, '', 'api-admin-storageimage', 0, 1, '{\"id\":3,\"file_id\":1,\"filter_id\":0,\"resolution_width\":1366,\"resolution_height\":768,\"created_at\":1701456848,\"updated_at\":1701456848}', NULL, '3', '{{%admin_storage_image}}', 0),
(6, 1, 1701457143, '', 'api-admin-storageimage', 0, 1, '{\"id\":4,\"file_id\":1,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":768,\"created_at\":1701457143,\"updated_at\":1701457143}', NULL, '4', '{{%admin_storage_image}}', 0),
(7, 1, 1701457181, '', '', 0, 1, '{\"id\":2,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"wallpaper-header.jpg\",\"name_new\":\"wallpaper-header\",\"name_new_compound\":\"wallpaper-header_e7b10580.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"7838efc76470a910c820883a9039783d\",\"hash_name\":\"e7b10580\",\"upload_timestamp\":1701457181,\"file_size\":235479,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457181}', NULL, '2', '{{%admin_storage_file}}', 0),
(8, 1, 1701457182, '', 'api-admin-storageimage', 0, 1, '{\"id\":5,\"file_id\":2,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457182,\"updated_at\":1701457182}', NULL, '5', '{{%admin_storage_image}}', 0),
(9, 1, 1701457182, '', 'api-admin-storageimage', 0, 1, '{\"id\":6,\"file_id\":2,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":188,\"created_at\":1701457182,\"updated_at\":1701457182}', NULL, '6', '{{%admin_storage_image}}', 0),
(10, 1, 1701457183, '', 'api-admin-storageimage', 0, 1, '{\"id\":7,\"file_id\":2,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701457183,\"updated_at\":1701457183}', NULL, '7', '{{%admin_storage_image}}', 0),
(11, 1, 1701457200, '', 'api-admin-storageimage', 0, 1, '{\"id\":8,\"file_id\":2,\"filter_id\":0,\"resolution_width\":1280,\"resolution_height\":800,\"created_at\":1701457200,\"updated_at\":1701457200}', NULL, '8', '{{%admin_storage_image}}', 0),
(12, 1, 1701457266, '', '', 0, 1, '{\"id\":3,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"service.jpg\",\"name_new\":\"service\",\"name_new_compound\":\"service_f1d1a4a3.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"b334b1d9f070a2b268b54a4f21115257\",\"hash_name\":\"f1d1a4a3\",\"upload_timestamp\":1701457266,\"file_size\":81689,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457266}', NULL, '3', '{{%admin_storage_file}}', 0),
(13, 1, 1701457267, '', 'api-admin-storageimage', 0, 1, '{\"id\":9,\"file_id\":3,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457267,\"updated_at\":1701457267}', NULL, '9', '{{%admin_storage_image}}', 0),
(14, 1, 1701457267, '', 'api-admin-storageimage', 0, 1, '{\"id\":10,\"file_id\":3,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":169,\"created_at\":1701457267,\"updated_at\":1701457267}', NULL, '10', '{{%admin_storage_image}}', 0),
(15, 1, 1701457269, '', 'api-admin-storageimage', 0, 1, '{\"id\":11,\"file_id\":3,\"filter_id\":0,\"resolution_width\":1920,\"resolution_height\":1080,\"created_at\":1701457269,\"updated_at\":1701457269}', NULL, '11', '{{%admin_storage_image}}', 0),
(16, 1, 1701457348, '', '', 0, 1, '{\"id\":4,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"team-1.jpg\",\"name_new\":\"team-1\",\"name_new_compound\":\"team-1_bb8f120f.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"6d9188afa2250b3186066fb28a2be23c\",\"hash_name\":\"bb8f120f\",\"upload_timestamp\":1701457348,\"file_size\":17144,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457348}', NULL, '4', '{{%admin_storage_file}}', 0),
(17, 1, 1701457348, '', 'api-admin-storageimage', 0, 1, '{\"id\":12,\"file_id\":4,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457348,\"updated_at\":1701457348}', NULL, '12', '{{%admin_storage_image}}', 0),
(18, 1, 1701457348, '', 'api-admin-storageimage', 0, 1, '{\"id\":13,\"file_id\":4,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701457348,\"updated_at\":1701457348}', NULL, '13', '{{%admin_storage_image}}', 0),
(19, 1, 1701457350, '', 'api-admin-storageimage', 0, 1, '{\"id\":14,\"file_id\":4,\"filter_id\":0,\"resolution_width\":500,\"resolution_height\":500,\"created_at\":1701457350,\"updated_at\":1701457350}', NULL, '14', '{{%admin_storage_image}}', 0),
(20, 1, 1701457361, '', '', 0, 1, '{\"id\":5,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"team-2.jpg\",\"name_new\":\"team-2\",\"name_new_compound\":\"team-2_010f90e4.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"93d35053a4e35c26ce32682bdfd68b01\",\"hash_name\":\"010f90e4\",\"upload_timestamp\":1701457361,\"file_size\":12969,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457361}', NULL, '5', '{{%admin_storage_file}}', 0),
(21, 1, 1701457362, '', 'api-admin-storageimage', 0, 1, '{\"id\":15,\"file_id\":5,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457362,\"updated_at\":1701457362}', NULL, '15', '{{%admin_storage_image}}', 0),
(22, 1, 1701457362, '', 'api-admin-storageimage', 0, 1, '{\"id\":16,\"file_id\":5,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701457362,\"updated_at\":1701457362}', NULL, '16', '{{%admin_storage_image}}', 0),
(23, 1, 1701457364, '', 'api-admin-storageimage', 0, 1, '{\"id\":17,\"file_id\":5,\"filter_id\":0,\"resolution_width\":500,\"resolution_height\":500,\"created_at\":1701457364,\"updated_at\":1701457364}', NULL, '17', '{{%admin_storage_image}}', 0),
(24, 1, 1701457375, '', '', 0, 1, '{\"id\":6,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"team-3.jpg\",\"name_new\":\"team-3\",\"name_new_compound\":\"team-3_23b44480.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"30fcf193ba7939efa0d12c8843c22a0c\",\"hash_name\":\"23b44480\",\"upload_timestamp\":1701457375,\"file_size\":27060,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457375}', NULL, '6', '{{%admin_storage_file}}', 0),
(25, 1, 1701457376, '', 'api-admin-storageimage', 0, 1, '{\"id\":18,\"file_id\":6,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457376,\"updated_at\":1701457376}', NULL, '18', '{{%admin_storage_image}}', 0),
(26, 1, 1701457376, '', 'api-admin-storageimage', 0, 1, '{\"id\":19,\"file_id\":6,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701457376,\"updated_at\":1701457376}', NULL, '19', '{{%admin_storage_image}}', 0),
(27, 1, 1701457378, '', 'api-admin-storageimage', 0, 1, '{\"id\":20,\"file_id\":6,\"filter_id\":0,\"resolution_width\":500,\"resolution_height\":500,\"created_at\":1701457378,\"updated_at\":1701457378}', NULL, '20', '{{%admin_storage_image}}', 0),
(28, 1, 1701457536, '', '', 0, 1, '{\"id\":7,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"hero.jpg\",\"name_new\":\"hero\",\"name_new_compound\":\"hero_6609a51e.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"36c7d351382bff7ca147fe74f2c46079\",\"hash_name\":\"6609a51e\",\"upload_timestamp\":1701457536,\"file_size\":145988,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457536}', NULL, '7', '{{%admin_storage_file}}', 0),
(29, 1, 1701457537, '', 'api-admin-storageimage', 0, 1, '{\"id\":21,\"file_id\":7,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457537,\"updated_at\":1701457537}', NULL, '21', '{{%admin_storage_image}}', 0),
(30, 1, 1701457537, '', 'api-admin-storageimage', 0, 1, '{\"id\":22,\"file_id\":7,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":169,\"created_at\":1701457537,\"updated_at\":1701457537}', NULL, '22', '{{%admin_storage_image}}', 0),
(31, 1, 1701457540, '', 'api-admin-storageimage', 0, 1, '{\"id\":23,\"file_id\":7,\"filter_id\":0,\"resolution_width\":1920,\"resolution_height\":1080,\"created_at\":1701457540,\"updated_at\":1701457540}', NULL, '23', '{{%admin_storage_image}}', 0),
(32, 1, 1701457551, '', 'api-admin-storageimage', 0, 1, '{\"id\":24,\"file_id\":7,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701457551,\"updated_at\":1701457551}', NULL, '24', '{{%admin_storage_image}}', 0),
(33, 1, 1701457556, '', 'api-catalog-group', 1, 0, '{\"id\":8,\"parent_id\":0,\"name\":\"Cookies\",\"slug\":\"cookies\",\"cover_image_id\":24,\"images_list\":null,\"teaser\":\"crispy cookies\",\"text\":null,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"main\":1,\"position\":2,\"enabled\":1}', '{\"cover_image_id\":55,\"updated_at\":2147483647}', '8', 'catalog_group', 0),
(34, 1, 1701457670, '', '', 0, 1, '{\"id\":8,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"main.jpeg\",\"name_new\":\"main\",\"name_new_compound\":\"main_f02545c1.jpeg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpeg\",\"hash_file\":\"c2261b0c1be04193f40115ccea34a823\",\"hash_name\":\"f02545c1\",\"upload_timestamp\":1701457670,\"file_size\":226645,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457670}', NULL, '8', '{{%admin_storage_file}}', 0),
(35, 1, 1701457671, '', 'api-admin-storageimage', 0, 1, '{\"id\":25,\"file_id\":8,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457671,\"updated_at\":1701457671}', NULL, '25', '{{%admin_storage_image}}', 0),
(36, 1, 1701457671, '', 'api-admin-storageimage', 0, 1, '{\"id\":26,\"file_id\":8,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":123,\"created_at\":1701457671,\"updated_at\":1701457671}', NULL, '26', '{{%admin_storage_image}}', 0),
(37, 1, 1701457675, '', 'api-admin-storageimage', 0, 1, '{\"id\":27,\"file_id\":8,\"filter_id\":0,\"resolution_width\":1670,\"resolution_height\":680,\"created_at\":1701457675,\"updated_at\":1701457675}', NULL, '27', '{{%admin_storage_image}}', 0),
(38, 1, 1701457714, '', '', 0, 1, '{\"id\":9,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"cake-3.jpg\",\"name_new\":\"cake-3\",\"name_new_compound\":\"cake-3_6014e8ed.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"b8888758fc435b042437b13df1b90062\",\"hash_name\":\"6014e8ed\",\"upload_timestamp\":1701457714,\"file_size\":3756,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457714}', NULL, '9', '{{%admin_storage_file}}', 0),
(39, 1, 1701457714, '', 'api-admin-storageimage', 0, 1, '{\"id\":28,\"file_id\":9,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457714,\"updated_at\":1701457714}', NULL, '28', '{{%admin_storage_image}}', 0),
(40, 1, 1701457714, '', 'api-admin-storageimage', 0, 1, '{\"id\":29,\"file_id\":9,\"filter_id\":4,\"resolution_width\":150,\"resolution_height\":85,\"created_at\":1701457714,\"updated_at\":1701457714}', NULL, '29', '{{%admin_storage_image}}', 0),
(41, 1, 1701457721, '', 'api-admin-storageimage', 0, 1, '{\"id\":30,\"file_id\":9,\"filter_id\":0,\"resolution_width\":150,\"resolution_height\":85,\"created_at\":1701457721,\"updated_at\":1701457721}', NULL, '30', '{{%admin_storage_image}}', 0),
(42, 1, 1701457730, '', 'api-admin-storageimage', 0, 1, '{\"id\":31,\"file_id\":9,\"filter_id\":3,\"resolution_width\":150,\"resolution_height\":85,\"created_at\":1701457730,\"updated_at\":1701457730}', NULL, '31', '{{%admin_storage_image}}', 0),
(43, 1, 1701457770, '', '', 0, 1, '{\"id\":10,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"food.jpg\",\"name_new\":\"food\",\"name_new_compound\":\"food_d15c4c2c.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"e9f25f9e9daf2e355e7c44b5877c46ba\",\"hash_name\":\"d15c4c2c\",\"upload_timestamp\":1701457770,\"file_size\":1313772,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457770}', NULL, '10', '{{%admin_storage_file}}', 0),
(44, 1, 1701457771, '', 'api-admin-storageimage', 0, 1, '{\"id\":32,\"file_id\":10,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457771,\"updated_at\":1701457771}', NULL, '32', '{{%admin_storage_image}}', 0),
(45, 1, 1701457771, '', 'api-admin-storageimage', 0, 1, '{\"id\":33,\"file_id\":10,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":201,\"created_at\":1701457771,\"updated_at\":1701457771}', NULL, '33', '{{%admin_storage_image}}', 0),
(46, 1, 1701457774, '', 'api-admin-storageimage', 0, 1, '{\"id\":34,\"file_id\":10,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701457773,\"updated_at\":1701457773}', NULL, '34', '{{%admin_storage_image}}', 0),
(47, 1, 1701457781, '', 'api-catalog-group', 1, 0, '{\"id\":9,\"parent_id\":0,\"name\":\"Cupcakes\",\"slug\":\"cupcakes\",\"cover_image_id\":34,\"images_list\":null,\"teaser\":\"Cupcakes\",\"text\":\"Cupcakes\",\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"main\":1,\"position\":3,\"enabled\":1}', '{\"cover_image_id\":58,\"updated_at\":2147483647}', '9', 'catalog_group', 0),
(48, 1, 1701457852, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":34}', NULL, '9-34', 'catalog_article_value_ref', 0),
(49, 1, 1701457852, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":31}', NULL, '9-31', 'catalog_article_value_ref', 0),
(50, 1, 1701457852, '', 'api-catalog-article', 1, 0, '{\"id\":9,\"name\":\"{\\\"en\\\":\\\"Vanilla Cake with Butter Cream\\\"}\",\"product_id\":30,\"text\":\"It’s notoriously hard to find a really good, classic cupcake recipe. Many promise game changing techniques, but all too often they fall short.\\n\\nSo why should you believe me when I say this is the last Vanilla Cupcake recipe you’ll ever use?\",\"code\":\"{\\\"en\\\":\\\"VNL00234\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":3,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":2}', '{\"name\":\"Vanilla Cake with Butter Cream\",\"code\":\"VNL00234\",\"image_id\":49,\"updated_at\":2147483647}', '9', 'catalog_article', 0),
(51, 1, 1701457889, '', 'api-admin-storageimage', 0, 1, '{\"id\":35,\"file_id\":1,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701457889,\"updated_at\":1701457889}', NULL, '35', '{{%admin_storage_image}}', 0),
(52, 1, 1701457892, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":34}', NULL, '9-34', 'catalog_article_value_ref', 0),
(53, 1, 1701457892, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":31}', NULL, '9-31', 'catalog_article_value_ref', 0),
(54, 1, 1701457892, '', 'api-catalog-article', 1, 0, '{\"id\":9,\"name\":\"{\\\"en\\\":\\\"Vanilla Cake with Butter Cream\\\"}\",\"product_id\":30,\"text\":\"It’s notoriously hard to find a really good, classic cupcake recipe. Many promise game changing techniques, but all too often they fall short.\\n\\nSo why should you believe me when I say this is the last Vanilla Cupcake recipe you’ll ever use?\",\"code\":\"{\\\"en\\\":\\\"VNL00234\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":35,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":2}', '{\"name\":\"Vanilla Cake with Butter Cream\",\"code\":\"VNL00234\",\"image_id\":3,\"updated_at\":2147483647}', '9', 'catalog_article', 0),
(55, 1, 1701457918, '', '', 0, 1, '{\"id\":11,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"menu.jpg\",\"name_new\":\"menu\",\"name_new_compound\":\"menu_b554dca6.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"668ae73d7b9ead7c0594c4fdc228088b\",\"hash_name\":\"b554dca6\",\"upload_timestamp\":1701457917,\"file_size\":75218,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457917}', NULL, '11', '{{%admin_storage_file}}', 0),
(56, 1, 1701457918, '', 'api-admin-storageimage', 0, 1, '{\"id\":36,\"file_id\":11,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457918,\"updated_at\":1701457918}', NULL, '36', '{{%admin_storage_image}}', 0),
(57, 1, 1701457918, '', 'api-admin-storageimage', 0, 1, '{\"id\":37,\"file_id\":11,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":215,\"created_at\":1701457918,\"updated_at\":1701457918}', NULL, '37', '{{%admin_storage_image}}', 0),
(58, 1, 1701457922, '', 'api-admin-storageimage', 0, 1, '{\"id\":38,\"file_id\":11,\"filter_id\":0,\"resolution_width\":600,\"resolution_height\":430,\"created_at\":1701457922,\"updated_at\":1701457922}', NULL, '38', '{{%admin_storage_image}}', 0),
(59, 1, 1701457927, '', 'api-catalog-product', 1, 0, '{\"id\":30,\"name\":\"Vanilla Cake\",\"slug\":\"vanilla-cake\",\"brand_id\":3,\"cover_image_id\":38,\"images_list\":null,\"teaser\":null,\"text\":null,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"price_from\":254,\"view\":null,\"position\":0,\"enabled\":1}', '{\"cover_image_id\":46,\"updated_at\":2147483647}', '30', 'catalog_product', 0),
(60, 1, 1701457970, '', '', 0, 1, '{\"id\":12,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"cake-2.jpg\",\"name_new\":\"cake-2\",\"name_new_compound\":\"cake-2_c1a4c1ec.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"49af060e60bab77851c6f456472b1d92\",\"hash_name\":\"c1a4c1ec\",\"upload_timestamp\":1701457970,\"file_size\":3239,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457970}', NULL, '12', '{{%admin_storage_file}}', 0),
(61, 1, 1701457970, '', 'api-admin-storageimage', 0, 1, '{\"id\":39,\"file_id\":12,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457970,\"updated_at\":1701457970}', NULL, '39', '{{%admin_storage_image}}', 0),
(62, 1, 1701457970, '', 'api-admin-storageimage', 0, 1, '{\"id\":40,\"file_id\":12,\"filter_id\":4,\"resolution_width\":150,\"resolution_height\":85,\"created_at\":1701457970,\"updated_at\":1701457970}', NULL, '40', '{{%admin_storage_image}}', 0),
(63, 1, 1701457973, '', 'api-admin-storageimage', 0, 1, '{\"id\":41,\"file_id\":12,\"filter_id\":0,\"resolution_width\":150,\"resolution_height\":85,\"created_at\":1701457973,\"updated_at\":1701457973}', NULL, '41', '{{%admin_storage_image}}', 0),
(64, 1, 1701457978, '', 'api-admin-storageimage', 0, 1, '{\"id\":42,\"file_id\":12,\"filter_id\":3,\"resolution_width\":150,\"resolution_height\":85,\"created_at\":1701457978,\"updated_at\":1701457978}', NULL, '42', '{{%admin_storage_image}}', 0),
(65, 1, 1701457987, '', 'api-catalog-product', 1, 0, '{\"id\":29,\"name\":\"Butter Cookies\",\"slug\":\"butter-cookies\",\"brand_id\":null,\"cover_image_id\":42,\"images_list\":null,\"teaser\":null,\"text\":null,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"price_from\":25,\"view\":null,\"position\":0,\"enabled\":1}', '{\"cover_image_id\":63,\"updated_at\":2147483647}', '29', 'catalog_product', 0),
(66, 1, 1701458445, '', 'api-admin-storageimage', 0, 1, '{\"id\":43,\"file_id\":10,\"filter_id\":0,\"resolution_width\":2500,\"resolution_height\":1667,\"created_at\":1701458445,\"updated_at\":1701458445}', NULL, '43', '{{%admin_storage_image}}', 0),
(67, 1, 1701458452, '', 'api-admin-storageimage', 0, 1, '{\"id\":44,\"file_id\":10,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701458452,\"updated_at\":1701458452}', NULL, '44', '{{%admin_storage_image}}', 0),
(68, 1, 1701458452, '', 'api-gallery-cat', 0, 1, '{\"id\":1,\"title\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\",\"cover_image_id\":44,\"description\":null}', NULL, '1', 'gallery_cat', 0),
(69, 1, 1701458499, '', 'api-admin-storageimage', 0, 1, '{\"id\":45,\"file_id\":9,\"filter_id\":1,\"resolution_width\":150,\"resolution_height\":85,\"created_at\":1701458499,\"updated_at\":1701458499}', NULL, '45', '{{%admin_storage_image}}', 0),
(70, 1, 1701458503, '', 'api-gallery-album', 0, 1, '{\"id\":1,\"cat_id\":1,\"title\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\",\"description\":\"{\\\"en\\\":\\\"butter cookies\\\"}\",\"cover_image_id\":45,\"timestamp_create\":null,\"timestamp_update\":null,\"is_highlight\":\"0\",\"sort_index\":null}', NULL, '1', 'gallery_album', 0),
(71, 1, 1701458507, '', 'api-gallery-album', 1, 0, '{\"id\":1,\"cat_id\":1,\"title\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\",\"description\":\"{\\\"en\\\":\\\"butter cookies\\\"}\",\"cover_image_id\":45,\"timestamp_create\":0,\"timestamp_update\":0,\"is_highlight\":1,\"sort_index\":0}', '{\"is_highlight\":0}', '1', 'gallery_album', 0),
(72, 1, 1701458510, '', 'api-gallery-album', 1, 0, '{\"id\":1,\"cat_id\":1,\"title\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\",\"description\":\"{\\\"en\\\":\\\"butter cookies\\\"}\",\"cover_image_id\":45,\"timestamp_create\":0,\"timestamp_update\":0,\"is_highlight\":1,\"sort_index\":0}', '[]', '1', 'gallery_album', 0),
(73, 1, 1701458543, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":8,\"value_id\":35}', NULL, '8-35', 'catalog_article_value_ref', 0),
(74, 1, 1701458543, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":8,\"value_id\":31}', NULL, '8-31', 'catalog_article_value_ref', 0),
(75, 1, 1701458543, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":8,\"value_id\":32}', NULL, '8-32', 'catalog_article_value_ref', 0),
(76, 1, 1701458543, '', 'api-catalog-article', 1, 0, '{\"id\":8,\"name\":\"{\\\"en\\\":\\\"Creamy Butter Cookies\\\"}\",\"product_id\":29,\"text\":\"Buttor Cream biscuites topped with chocolate drops\",\"code\":\"{\\\"en\\\":\\\"BISC9034\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":3,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":1}', '{\"name\":\"Creamy Butter Cookies\",\"code\":\"BISC9034\",\"updated_at\":2147483647,\"album_id\":2}', '8', 'catalog_article', 0),
(77, 1, 1701484994, '', '', 0, 1, '{\"id\":13,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN3070.JPG\",\"name_new\":\"dscn3070\",\"name_new_compound\":\"dscn3070_47e227dc.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"f30c70c09564f0ce3368c23cb0124023\",\"hash_name\":\"47e227dc\",\"upload_timestamp\":1701484994,\"file_size\":2108333,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701484994}', NULL, '13', '{{%admin_storage_file}}', 0),
(78, 1, 1701484995, '', 'api-admin-storageimage', 0, 1, '{\"id\":46,\"file_id\":13,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701484995,\"updated_at\":1701484995}', NULL, '46', '{{%admin_storage_image}}', 0),
(79, 1, 1701484996, '', 'api-admin-storageimage', 0, 1, '{\"id\":47,\"file_id\":13,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701484996,\"updated_at\":1701484996}', NULL, '47', '{{%admin_storage_image}}', 0),
(80, 1, 1701485012, '', 'api-admin-storageimage', 0, 1, '{\"id\":48,\"file_id\":13,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701485012,\"updated_at\":1701485012}', NULL, '48', '{{%admin_storage_image}}', 0),
(81, 1, 1701485017, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":34}', NULL, '7-34', 'catalog_article_value_ref', 0),
(82, 1, 1701485017, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":31}', NULL, '7-31', 'catalog_article_value_ref', 0),
(83, 1, 1701485017, '', 'api-catalog-article', 1, 0, '{\"id\":7,\"name\":\"{\\\"en\\\":\\\"Honey Chocolate Dip Cake\\\"}\",\"product_id\":28,\"text\":\"Honey cake has had a long and diverse evolution. From breadcrumbs mashed with honey came the sweet and spiced cake we know today. Whether you like it, love it, or will always pass on this Rosh Hashanah classic, its evolution exemplifies the culinary journey of Jewish Diaspora. This is more than a cake; it connects Jews to Torah, holidays and the sweetness of life.\",\"code\":\"{\\\"en\\\":\\\"HONCHK0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":48,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":\"\"}', '{\"name\":\"Honey Chocolate Dip Cake\",\"code\":\"HONCHK0001\",\"image_id\":12,\"updated_at\":2147483647,\"album_id\":null}', '7', 'catalog_article', 0),
(84, 1, 1701485042, '', '', 0, 1, '{\"id\":14,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN4124.JPG\",\"name_new\":\"dscn4124\",\"name_new_compound\":\"dscn4124_46182e7d.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"ed6683a02340a1bc779813b559e29f42\",\"hash_name\":\"46182e7d\",\"upload_timestamp\":1701485042,\"file_size\":2090490,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701485042}', NULL, '14', '{{%admin_storage_file}}', 0),
(85, 1, 1701485043, '', 'api-admin-storageimage', 0, 1, '{\"id\":49,\"file_id\":14,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701485043,\"updated_at\":1701485043}', NULL, '49', '{{%admin_storage_image}}', 0),
(86, 1, 1701485043, '', 'api-admin-storageimage', 0, 1, '{\"id\":50,\"file_id\":14,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701485043,\"updated_at\":1701485043}', NULL, '50', '{{%admin_storage_image}}', 0),
(87, 1, 1701485052, '', 'api-admin-storageimage', 0, 1, '{\"id\":51,\"file_id\":14,\"filter_id\":0,\"resolution_width\":3648,\"resolution_height\":2736,\"created_at\":1701485052,\"updated_at\":1701485052}', NULL, '51', '{{%admin_storage_image}}', 0),
(88, 1, 1701485062, '', 'api-admin-storageimage', 0, 1, '{\"id\":52,\"file_id\":14,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701485062,\"updated_at\":1701485062}', NULL, '52', '{{%admin_storage_image}}', 0),
(89, 1, 1701485066, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":8,\"value_id\":35}', NULL, '8-35', 'catalog_article_value_ref', 0),
(90, 1, 1701485066, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":8,\"value_id\":31}', NULL, '8-31', 'catalog_article_value_ref', 0),
(91, 1, 1701485066, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":8,\"value_id\":32}', NULL, '8-32', 'catalog_article_value_ref', 0),
(92, 1, 1701485066, '', 'api-catalog-article', 1, 0, '{\"id\":8,\"name\":\"{\\\"en\\\":\\\"Creamy Butter Cookies\\\"}\",\"product_id\":29,\"text\":\"Buttor Cream biscuites topped with chocolate drops\",\"code\":\"{\\\"en\\\":\\\"BISC9034\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":52,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":1}', '{\"name\":\"Creamy Butter Cookies\",\"code\":\"BISC9034\",\"image_id\":3,\"updated_at\":2147483647}', '8', 'catalog_article', 0),
(93, 1, 1701485109, '', '', 0, 1, '{\"id\":15,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN4153.JPG\",\"name_new\":\"dscn4153\",\"name_new_compound\":\"dscn4153_c5de8c38.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"292ada33b0d6ab60ea4d71242693f07c\",\"hash_name\":\"c5de8c38\",\"upload_timestamp\":1701485109,\"file_size\":2145613,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701485109}', NULL, '15', '{{%admin_storage_file}}', 0),
(94, 1, 1701485109, '', '', 0, 1, '{\"id\":16,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN4155.JPG\",\"name_new\":\"dscn4155\",\"name_new_compound\":\"dscn4155_e8ea4cce.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"25a9bc68814e0b79bf2ea1c1bc99d188\",\"hash_name\":\"e8ea4cce\",\"upload_timestamp\":1701485109,\"file_size\":2210101,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701485109}', NULL, '16', '{{%admin_storage_file}}', 0),
(95, 1, 1701485110, '', '', 0, 1, '{\"id\":17,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN4157.JPG\",\"name_new\":\"dscn4157\",\"name_new_compound\":\"dscn4157_35d45367.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"779fdb08fad63908e200e54d75777a3c\",\"hash_name\":\"35d45367\",\"upload_timestamp\":1701485110,\"file_size\":2308614,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701485110}', NULL, '17', '{{%admin_storage_file}}', 0),
(96, 1, 1701485110, '', '', 0, 1, '{\"id\":18,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN4158.JPG\",\"name_new\":\"dscn4158\",\"name_new_compound\":\"dscn4158_1a876e32.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"7010c2b57610136ec685be79a97d7c8c\",\"hash_name\":\"1a876e32\",\"upload_timestamp\":1701485110,\"file_size\":2126838,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701485110}', NULL, '18', '{{%admin_storage_file}}', 0),
(97, 1, 1701485111, '', '', 0, 1, '{\"id\":19,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN4160.JPG\",\"name_new\":\"dscn4160\",\"name_new_compound\":\"dscn4160_06be5247.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"00bdc599cd5483719fb3477b3eda470f\",\"hash_name\":\"06be5247\",\"upload_timestamp\":1701485111,\"file_size\":2297791,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701485111}', NULL, '19', '{{%admin_storage_file}}', 0),
(98, 1, 1701485111, '', 'api-admin-storageimage', 0, 1, '{\"id\":53,\"file_id\":15,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701485111,\"updated_at\":1701485111}', NULL, '53', '{{%admin_storage_image}}', 0),
(99, 1, 1701485112, '', 'api-admin-storageimage', 0, 1, '{\"id\":54,\"file_id\":15,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701485112,\"updated_at\":1701485112}', NULL, '54', '{{%admin_storage_image}}', 0),
(100, 1, 1701485112, '', 'api-admin-storageimage', 0, 1, '{\"id\":55,\"file_id\":16,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701485112,\"updated_at\":1701485112}', NULL, '55', '{{%admin_storage_image}}', 0),
(101, 1, 1701485112, '', 'api-admin-storageimage', 0, 1, '{\"id\":56,\"file_id\":16,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701485112,\"updated_at\":1701485112}', NULL, '56', '{{%admin_storage_image}}', 0),
(102, 1, 1701485113, '', 'api-admin-storageimage', 0, 1, '{\"id\":57,\"file_id\":17,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701485113,\"updated_at\":1701485113}', NULL, '57', '{{%admin_storage_image}}', 0),
(103, 1, 1701485113, '', 'api-admin-storageimage', 0, 1, '{\"id\":58,\"file_id\":17,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701485113,\"updated_at\":1701485113}', NULL, '58', '{{%admin_storage_image}}', 0),
(104, 1, 1701485114, '', 'api-admin-storageimage', 0, 1, '{\"id\":59,\"file_id\":18,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701485114,\"updated_at\":1701485114}', NULL, '59', '{{%admin_storage_image}}', 0),
(105, 1, 1701485114, '', 'api-admin-storageimage', 0, 1, '{\"id\":60,\"file_id\":18,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701485114,\"updated_at\":1701485114}', NULL, '60', '{{%admin_storage_image}}', 0),
(106, 1, 1701485114, '', 'api-admin-storageimage', 0, 1, '{\"id\":61,\"file_id\":19,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701485114,\"updated_at\":1701485114}', NULL, '61', '{{%admin_storage_image}}', 0),
(107, 1, 1701485115, '', 'api-admin-storageimage', 0, 1, '{\"id\":62,\"file_id\":19,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701485115,\"updated_at\":1701485115}', NULL, '62', '{{%admin_storage_image}}', 0),
(108, 1, 1701485134, '', 'api-admin-storageimage', 0, 1, '{\"id\":63,\"file_id\":\"19\",\"filter_id\":0,\"resolution_width\":3648,\"resolution_height\":2736,\"created_at\":1701485134,\"updated_at\":1701485134}', NULL, '63', '{{%admin_storage_image}}', 0),
(109, 1, 1701485135, '', 'api-admin-storageimage', 0, 1, '{\"id\":64,\"file_id\":19,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701485135,\"updated_at\":1701485135}', NULL, '64', '{{%admin_storage_image}}', 0),
(110, 1, 1701485136, '', 'api-admin-storageimage', 0, 1, '{\"id\":65,\"file_id\":\"18\",\"filter_id\":0,\"resolution_width\":3648,\"resolution_height\":2736,\"created_at\":1701485136,\"updated_at\":1701485136}', NULL, '65', '{{%admin_storage_image}}', 0),
(111, 1, 1701485137, '', 'api-admin-storageimage', 0, 1, '{\"id\":66,\"file_id\":18,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701485137,\"updated_at\":1701485137}', NULL, '66', '{{%admin_storage_image}}', 0),
(112, 1, 1701485137, '', 'api-admin-storageimage', 0, 1, '{\"id\":67,\"file_id\":\"16\",\"filter_id\":0,\"resolution_width\":3648,\"resolution_height\":2736,\"created_at\":1701485137,\"updated_at\":1701485137}', NULL, '67', '{{%admin_storage_image}}', 0),
(113, 1, 1701485138, '', 'api-admin-storageimage', 0, 1, '{\"id\":68,\"file_id\":16,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701485138,\"updated_at\":1701485138}', NULL, '68', '{{%admin_storage_image}}', 0),
(114, 1, 1701485139, '', 'api-admin-storageimage', 0, 1, '{\"id\":69,\"file_id\":14,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701485139,\"updated_at\":1701485139}', NULL, '69', '{{%admin_storage_image}}', 0),
(115, 1, 1701485140, '', 'api-admin-storageimage', 0, 1, '{\"id\":70,\"file_id\":\"15\",\"filter_id\":0,\"resolution_width\":3648,\"resolution_height\":2736,\"created_at\":1701485140,\"updated_at\":1701485140}', NULL, '70', '{{%admin_storage_image}}', 0),
(116, 1, 1701485141, '', 'api-admin-storageimage', 0, 1, '{\"id\":71,\"file_id\":15,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701485141,\"updated_at\":1701485141}', NULL, '71', '{{%admin_storage_image}}', 0),
(117, 1, 1701485302, '', '', 0, 1, '{\"id\":20,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN3068.JPG\",\"name_new\":\"dscn3068\",\"name_new_compound\":\"dscn3068_fbae9c09.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"657133dccd3c13ff2feb1736554988ab\",\"hash_name\":\"fbae9c09\",\"upload_timestamp\":1701485302,\"file_size\":2042621,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701485302}', NULL, '20', '{{%admin_storage_file}}', 0),
(118, 1, 1701485303, '', 'api-admin-storageimage', 0, 1, '{\"id\":72,\"file_id\":20,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701485303,\"updated_at\":1701485303}', NULL, '72', '{{%admin_storage_image}}', 0),
(119, 1, 1701485303, '', 'api-admin-storageimage', 0, 1, '{\"id\":73,\"file_id\":20,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701485303,\"updated_at\":1701485303}', NULL, '73', '{{%admin_storage_image}}', 0),
(120, 1, 1701485323, '', 'api-admin-storageimage', 0, 1, '{\"id\":74,\"file_id\":20,\"filter_id\":0,\"resolution_width\":3648,\"resolution_height\":2736,\"created_at\":1701485323,\"updated_at\":1701485323}', NULL, '74', '{{%admin_storage_image}}', 0),
(121, 1, 1701485331, '', 'api-admin-storageimage', 0, 1, '{\"id\":75,\"file_id\":20,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701485331,\"updated_at\":1701485331}', NULL, '75', '{{%admin_storage_image}}', 0),
(122, 1, 1701485338, '', 'api-gallery-cat', 0, 1, '{\"id\":2,\"title\":\"{\\\"en\\\":\\\"Chocolate Cakes\\\"}\",\"cover_image_id\":75,\"description\":\"{\\\"en\\\":\\\"chocaolate cakes\\\"}\"}', NULL, '2', 'gallery_cat', 0),
(123, 1, 1701485368, '', 'api-gallery-cat', 1, 0, '{\"id\":2,\"title\":\"{\\\"en\\\":\\\"Chocolate Cakes\\\"}\",\"cover_image_id\":75,\"description\":\"{\\\"en\\\":\\\"chocaolate cakes\\\"}\"}', '{\"title\":\"Chocolate Cakes\",\"description\":\"chocaolate cakes\"}', '2', 'gallery_cat', 0),
(124, 1, 1701485401, '', 'api-gallery-cat', 1, 0, '{\"id\":2,\"title\":\"{\\\"en\\\":\\\"Chocolate Cakes\\\"}\",\"cover_image_id\":75,\"description\":\"{\\\"en\\\":\\\"chocaolate cakes\\\"}\"}', '{\"title\":\"Chocolate Cakes\",\"description\":\"chocaolate cakes\"}', '2', 'gallery_cat', 0),
(125, 1, 1701485421, '', 'api-gallery-cat', 1, 0, '{\"id\":1,\"title\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\",\"cover_image_id\":44,\"description\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\"}', '{\"title\":\"Butter Cookies\",\"description\":\"\"}', '1', 'gallery_cat', 0),
(126, 1, 1701485461, '', '', 0, 1, '{\"id\":21,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN3069.JPG\",\"name_new\":\"dscn3069\",\"name_new_compound\":\"dscn3069_01058c7c.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"e1057e26681522dff10760de22b5a2ad\",\"hash_name\":\"01058c7c\",\"upload_timestamp\":1701485461,\"file_size\":2185481,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701485461}', NULL, '21', '{{%admin_storage_file}}', 0),
(127, 1, 1701485461, '', 'api-admin-storageimage', 0, 1, '{\"id\":76,\"file_id\":21,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701485461,\"updated_at\":1701485461}', NULL, '76', '{{%admin_storage_image}}', 0),
(128, 1, 1701485462, '', 'api-admin-storageimage', 0, 1, '{\"id\":77,\"file_id\":21,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701485462,\"updated_at\":1701485462}', NULL, '77', '{{%admin_storage_image}}', 0),
(129, 1, 1701485467, '', 'api-admin-storageimage', 0, 1, '{\"id\":78,\"file_id\":21,\"filter_id\":0,\"resolution_width\":3648,\"resolution_height\":2736,\"created_at\":1701485467,\"updated_at\":1701485467}', NULL, '78', '{{%admin_storage_image}}', 0),
(130, 1, 1701485472, '', 'api-admin-storageimage', 0, 1, '{\"id\":79,\"file_id\":21,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701485472,\"updated_at\":1701485472}', NULL, '79', '{{%admin_storage_image}}', 0),
(131, 1, 1701485473, '', 'api-gallery-cat', 0, 1, '{\"id\":3,\"title\":\"{\\\"en\\\":\\\"Vanilla Cakes\\\"}\",\"cover_image_id\":79,\"description\":\"{\\\"en\\\":\\\"vanilla cakes\\\"}\"}', NULL, '3', 'gallery_cat', 0),
(132, 1, 1701485906, '', 'api-admin-storageimage', 0, 1, '{\"id\":80,\"file_id\":20,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701485906,\"updated_at\":1701485906}', NULL, '80', '{{%admin_storage_image}}', 0),
(133, 1, 1701485915, '', 'api-gallery-album', 0, 1, '{\"id\":2,\"cat_id\":2,\"title\":\"{\\\"en\\\":\\\"Chocolate Cakes\\\"}\",\"description\":\"{\\\"en\\\":\\\"chocolate cakes\\\"}\",\"cover_image_id\":75,\"timestamp_create\":null,\"timestamp_update\":null,\"is_highlight\":\"1\",\"sort_index\":null}', NULL, '2', 'gallery_album', 0),
(134, 1, 1701485951, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":34}', NULL, '7-34', 'catalog_article_value_ref', 0),
(135, 1, 1701485951, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":31}', NULL, '7-31', 'catalog_article_value_ref', 0),
(136, 1, 1701485951, '', 'api-catalog-article', 1, 0, '{\"id\":7,\"name\":\"{\\\"en\\\":\\\"Honey Chocolate Dip Cake\\\"}\",\"product_id\":28,\"text\":\"Honey cake has had a long and diverse evolution. From breadcrumbs mashed with honey came the sweet and spiced cake we know today. Whether you like it, love it, or will always pass on this Rosh Hashanah classic, its evolution exemplifies the culinary journey of Jewish Diaspora. This is more than a cake; it connects Jews to Torah, holidays and the sweetness of life.\",\"code\":\"{\\\"en\\\":\\\"HONCHK0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":48,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":2}', '{\"name\":\"Honey Chocolate Dip Cake\",\"code\":\"HONCHK0001\",\"updated_at\":2147483647,\"album_id\":null}', '7', 'catalog_article', 0),
(137, 1, 1701486287, '', '', 0, 1, '{\"id\":22,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN3068.JPG\",\"name_new\":\"dscn3068\",\"name_new_compound\":\"dscn3068_47f4b343.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"657133dccd3c13ff2feb1736554988ab\",\"hash_name\":\"47f4b343\",\"upload_timestamp\":1701486287,\"file_size\":2042621,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701486287}', NULL, '22', '{{%admin_storage_file}}', 0),
(138, 1, 1701486287, '', 'api-admin-storageimage', 0, 1, '{\"id\":81,\"file_id\":22,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701486287,\"updated_at\":1701486287}', NULL, '81', '{{%admin_storage_image}}', 0),
(139, 1, 1701486288, '', 'api-admin-storageimage', 0, 1, '{\"id\":82,\"file_id\":22,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701486288,\"updated_at\":1701486288}', NULL, '82', '{{%admin_storage_image}}', 0),
(140, 1, 1701486297, '', 'api-admin-storageimage', 0, 1, '{\"id\":83,\"file_id\":22,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701486297,\"updated_at\":1701486297}', NULL, '83', '{{%admin_storage_image}}', 0),
(141, 1, 1701486300, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":33}', NULL, '6-33', 'catalog_article_value_ref', 0),
(142, 1, 1701486300, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":34}', NULL, '6-34', 'catalog_article_value_ref', 0),
(143, 1, 1701486300, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":31}', NULL, '6-31', 'catalog_article_value_ref', 0),
(144, 1, 1701486300, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":32}', NULL, '6-32', 'catalog_article_value_ref', 0),
(145, 1, 1701486300, '', 'api-catalog-article', 1, 0, '{\"id\":6,\"name\":\"{\\\"en\\\":\\\"Brown Choclolate Cake\\\"}\",\"product_id\":28,\"text\":\"Cakes are frequently described according to their physical form. Cakes may be small and intended for individual consumption. Larger cakes may be made to be sliced and served as part of a meal or social function. Common shapes include: Bundt cakesCake dressCake ballsCake popsConical, such as the …\",\"code\":\"{\\\"en\\\":\\\"BROW0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":83,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":1}', '{\"name\":\"Brown Choclolate Cake\",\"code\":\"BROW0001\",\"image_id\":9,\"updated_at\":2147483647}', '6', 'catalog_article', 0),
(146, 1, 1701486513, '', '', 0, 1, '{\"id\":23,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"Copy of 969591_353205668136069_260131175_n.jpg\",\"name_new\":\"copy-of-969591-353205668136069-260131175-n\",\"name_new_compound\":\"copy-of-969591-353205668136069-260131175-n_dbc481c5.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"74d65b06032b56214913ff84cea7af37\",\"hash_name\":\"dbc481c5\",\"upload_timestamp\":1701486513,\"file_size\":82565,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701486513}', NULL, '23', '{{%admin_storage_file}}', 0),
(147, 1, 1701486514, '', 'api-admin-storageimage', 0, 1, '{\"id\":84,\"file_id\":23,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701486514,\"updated_at\":1701486514}', NULL, '84', '{{%admin_storage_image}}', 0),
(148, 1, 1701486514, '', 'api-admin-storageimage', 0, 1, '{\"id\":85,\"file_id\":23,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":438,\"created_at\":1701486514,\"updated_at\":1701486514}', NULL, '85', '{{%admin_storage_image}}', 0),
(149, 1, 1701486531, '', 'api-admin-storageimage', 0, 1, '{\"id\":86,\"file_id\":23,\"filter_id\":1,\"resolution_width\":565,\"resolution_height\":800,\"created_at\":1701486531,\"updated_at\":1701486531}', NULL, '86', '{{%admin_storage_image}}', 0),
(150, 1, 1701486534, '', 'api-catalog-group', 1, 0, '{\"id\":7,\"parent_id\":0,\"name\":\"Cakes\",\"slug\":\"cakes\",\"cover_image_id\":86,\"images_list\":null,\"teaser\":\"delicious cakes\",\"text\":\"A cake is a type of flour confection that is usually baked and made from flour, sugar, eggs, fat, a liquid, and a leavening agent, such as baking soda or baking powder. Cakes can be simple or elaborate and share features with desserts such as pastries, meringues, custards, and pies. The most common ingredients include flour, sugar, eggs, fat (such as butter, oil, or margarine), a liquid, and a leavening agent, such as baking soda or baking powder. Common additional ingredients include dried, candied, or fresh fruit, nuts, cocoa, and...\",\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"main\":1,\"position\":1,\"enabled\":1}', '{\"cover_image_id\":6,\"updated_at\":2147483647}', '7', 'catalog_group', 0);
INSERT INTO `admin_ngrest_log` (`id`, `user_id`, `timestamp_create`, `route`, `api`, `is_update`, `is_insert`, `attributes_json`, `attributes_diff_json`, `pk_value`, `table_name`, `is_delete`) VALUES
(151, 1, 1701486699, '', '', 0, 1, '{\"id\":24,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"Copy (2) of 8649_359303160859653_1471872640_n.jpg\",\"name_new\":\"copy-2-of-8649-359303160859653-1471872640-n\",\"name_new_compound\":\"copy-2-of-8649-359303160859653-1471872640-n_e0b31ae0.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"2163cbf388fbda54131c32581acda074\",\"hash_name\":\"e0b31ae0\",\"upload_timestamp\":1701486699,\"file_size\":28597,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701486699}', NULL, '24', '{{%admin_storage_file}}', 0),
(152, 1, 1701486699, '', 'api-admin-storageimage', 0, 1, '{\"id\":87,\"file_id\":24,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701486699,\"updated_at\":1701486699}', NULL, '87', '{{%admin_storage_image}}', 0),
(153, 1, 1701486699, '', 'api-admin-storageimage', 0, 1, '{\"id\":88,\"file_id\":24,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":400,\"created_at\":1701486699,\"updated_at\":1701486699}', NULL, '88', '{{%admin_storage_image}}', 0),
(154, 1, 1701486701, '', 'api-admin-storageimage', 0, 1, '{\"id\":89,\"file_id\":23,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701486701,\"updated_at\":1701486701}', NULL, '89', '{{%admin_storage_image}}', 0),
(155, 1, 1701486707, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":34}', NULL, '9-34', 'catalog_article_value_ref', 0),
(156, 1, 1701486707, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":31}', NULL, '9-31', 'catalog_article_value_ref', 0),
(157, 1, 1701486707, '', 'api-catalog-article', 1, 0, '{\"id\":9,\"name\":\"{\\\"en\\\":\\\"Vanilla Cake with Butter Cream\\\"}\",\"product_id\":30,\"text\":\"It’s notoriously hard to find a really good, classic cupcake recipe. Many promise game changing techniques, but all too often they fall short.\\n\\nSo why should you believe me when I say this is the last Vanilla Cupcake recipe you’ll ever use?\",\"code\":\"{\\\"en\\\":\\\"VNL00234\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":86,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":2}', '{\"name\":\"Vanilla Cake with Butter Cream\",\"code\":\"VNL00234\",\"image_id\":35,\"updated_at\":2147483647}', '9', 'catalog_article', 0),
(158, 1, 1701486736, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":34}', NULL, '9-34', 'catalog_article_value_ref', 0),
(159, 1, 1701486736, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":31}', NULL, '9-31', 'catalog_article_value_ref', 0),
(160, 1, 1701486736, '', 'api-catalog-article', 1, 0, '{\"id\":9,\"name\":\"{\\\"en\\\":\\\"Vanilla Cake with Butter Cream\\\"}\",\"product_id\":30,\"text\":\"It’s notoriously hard to find a really good, classic cupcake recipe. Many promise game changing techniques, but all too often they fall short.\\n\\nSo why should you believe me when I say this is the last Vanilla Cupcake recipe you’ll ever use?\",\"code\":\"{\\\"en\\\":\\\"VNL00234\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":86,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":1}', '{\"name\":\"Vanilla Cake with Butter Cream\",\"code\":\"VNL00234\",\"updated_at\":2147483647,\"album_id\":2}', '9', 'catalog_article', 0),
(161, 1, 1701525395, '', '', 0, 1, '{\"id\":25,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"Copy of 969930_380158885440747_788752854_n.jpg\",\"name_new\":\"copy-of-969930-380158885440747-788752854-n\",\"name_new_compound\":\"copy-of-969930-380158885440747-788752854-n_eb02ff2f.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"a56d320e84cc075ed6e9160acbf9097e\",\"hash_name\":\"eb02ff2f\",\"upload_timestamp\":1701525395,\"file_size\":30911,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701525395}', NULL, '25', '{{%admin_storage_file}}', 0),
(162, 1, 1701525396, '', 'api-admin-storageimage', 0, 1, '{\"id\":90,\"file_id\":25,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701525396,\"updated_at\":1701525396}', NULL, '90', '{{%admin_storage_image}}', 0),
(163, 1, 1701525396, '', 'api-admin-storageimage', 0, 1, '{\"id\":91,\"file_id\":25,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":201,\"created_at\":1701525396,\"updated_at\":1701525396}', NULL, '91', '{{%admin_storage_image}}', 0),
(164, 1, 1701525400, '', 'api-admin-storageimage', 0, 1, '{\"id\":92,\"file_id\":25,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701525400,\"updated_at\":1701525400}', NULL, '92', '{{%admin_storage_image}}', 0),
(165, 1, 1701525407, '', 'api-catalog-product', 1, 0, '{\"id\":29,\"name\":\"Butter Cookies\",\"slug\":\"butter-cookies\",\"brand_id\":null,\"cover_image_id\":92,\"images_list\":null,\"teaser\":null,\"text\":null,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"price_from\":25,\"view\":null,\"position\":0,\"enabled\":1}', '{\"cover_image_id\":42,\"updated_at\":2147483647}', '29', 'catalog_product', 0),
(166, 1, 1701529031, '', 'api-catalog-articleprice', 1, 0, '{\"article_id\":9,\"value_id\":\"32\",\"currency_id\":3,\"qty\":1,\"price\":1240,\"unit_id\":4}', '{\"value_id\":34,\"price\":1240}', '9-32-3-1-4', 'catalog_article_price', 0),
(167, 1, 1701529093, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":9,\"value_id\":32,\"currency_id\":3,\"qty\":0,\"price\":542,\"unit_id\":5}', NULL, '9-32-3-0-5', 'catalog_article_price', 0),
(168, 1, 1701529115, '', 'api-catalog-articleprice', 1, 0, '{\"article_id\":9,\"value_id\":32,\"currency_id\":3,\"qty\":1,\"price\":542,\"unit_id\":5}', '{\"qty\":0,\"price\":542}', '9-32-3-1-5', 'catalog_article_price', 0),
(169, 1, 1701569002, '', '', 0, 1, '{\"id\":26,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"cupcake (10).png\",\"name_new\":\"cupcake-10\",\"name_new_compound\":\"cupcake-10_cecb3953.png\",\"mime_type\":\"image/png\",\"extension\":\"png\",\"hash_file\":\"b947fe82bc713f8c891847f60382b966\",\"hash_name\":\"cecb3953\",\"upload_timestamp\":1701569002,\"file_size\":1112994,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701569002}', NULL, '26', '{{%admin_storage_file}}', 0),
(170, 1, 1701569003, '', 'api-admin-storageimage', 0, 1, '{\"id\":93,\"file_id\":26,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701569003,\"updated_at\":1701569003}', NULL, '93', '{{%admin_storage_image}}', 0),
(171, 1, 1701569003, '', 'api-admin-storageimage', 0, 1, '{\"id\":94,\"file_id\":26,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701569003,\"updated_at\":1701569003}', NULL, '94', '{{%admin_storage_image}}', 0),
(172, 1, 1701569007, '', 'api-admin-storageimage', 0, 1, '{\"id\":95,\"file_id\":26,\"filter_id\":0,\"resolution_width\":1000,\"resolution_height\":1000,\"created_at\":1701569007,\"updated_at\":1701569007}', NULL, '95', '{{%admin_storage_image}}', 0),
(173, 1, 1701664880, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":34}', NULL, '9-34', 'catalog_article_value_ref', 0),
(174, 1, 1701664880, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":31}', NULL, '9-31', 'catalog_article_value_ref', 0),
(175, 1, 1701664880, '', 'api-catalog-article', 1, 0, '{\"id\":9,\"name\":\"{\\\"en\\\":\\\"Vanilla Cake with Butter Cream\\\"}\",\"product_id\":30,\"text\":\"It’s notoriously hard to find a really good, classic cupcake recipe. Many promise game changing techniques, but all too often they fall short.\\n\\nSo why should you believe me when I say this is the last Vanilla Cupcake recipe you’ll ever use?\",\"code\":\"{\\\"en\\\":\\\"VNL00234\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":100,\"image_id\":86,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":1}', '{\"name\":\"Vanilla Cake with Butter Cream\",\"code\":\"VNL00234\",\"available\":1,\"updated_at\":2147483647}', '9', 'catalog_article', 0),
(176, 1, 1701671563, '', 'api-catalog-group', 1, 0, '{\"id\":7,\"parent_id\":0,\"name\":\"Cakes\",\"slug\":\"cakes\",\"cover_image_id\":86,\"images_list\":null,\"teaser\":\"delicious cakes\",\"text\":\"A cake is a type of flour confection that is usually baked and made from flour, sugar, eggs, fat, a liquid, and a leavening agent, such as baking soda or baking powder. Cakes can be simple or elaborate and share features with desserts such as pastries, meringues, custards, and pies. The most common ingredients include flour, sugar, eggs, fat (such as butter, oil, or margarine), a liquid, and a leavening agent, such as baking soda or baking powder. Common additional ingredients include dried, candied, or fresh fruit, nuts, cocoa, and...\",\"created_at\":2147483647,\"updated_at\":2147483647,\"main\":1,\"position\":1,\"enabled\":1}', '[]', '7', 'catalog_group', 0),
(177, 1, 1701672329, '', 'api-catalog-group', 1, 0, '{\"id\":9,\"parent_id\":\"\",\"name\":\"Cupcakes\",\"slug\":\"cupcakes\",\"cover_image_id\":34,\"images_list\":null,\"teaser\":\"Cupcakes\",\"text\":\"Cupcakes\",\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"main\":1,\"position\":3,\"enabled\":1}', '{\"parent_id\":0,\"updated_at\":2147483647}', '9', 'catalog_group', 0),
(178, 1, 1701675544, '', 'api-admin-storageimage', 0, 1, '{\"id\":96,\"file_id\":22,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701675544,\"updated_at\":1701675544}', NULL, '96', '{{%admin_storage_image}}', 0),
(179, 1, 1701675585, '', 'api-admin-storageimage', 0, 1, '{\"id\":97,\"file_id\":13,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701675585,\"updated_at\":1701675585}', NULL, '97', '{{%admin_storage_image}}', 0),
(180, 0, 1701685001, '', 'api-admin-storageimage', 0, 1, '{\"id\":98,\"file_id\":19,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701685001,\"updated_at\":1701685001}', NULL, '98', '{{%admin_storage_image}}', 0),
(181, 0, 1701685002, '', 'api-admin-storageimage', 0, 1, '{\"id\":99,\"file_id\":18,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701685002,\"updated_at\":1701685002}', NULL, '99', '{{%admin_storage_image}}', 0),
(182, 0, 1701685002, '', 'api-admin-storageimage', 0, 1, '{\"id\":100,\"file_id\":16,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701685002,\"updated_at\":1701685002}', NULL, '100', '{{%admin_storage_image}}', 0),
(183, 0, 1701685003, '', 'api-admin-storageimage', 0, 1, '{\"id\":101,\"file_id\":15,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701685003,\"updated_at\":1701685003}', NULL, '101', '{{%admin_storage_image}}', 0),
(184, 0, 1701685090, '', 'api-admin-storageimage', 0, 1, '{\"id\":102,\"file_id\":19,\"filter_id\":2,\"resolution_width\":800,\"resolution_height\":600,\"created_at\":1701685090,\"updated_at\":1701685090}', NULL, '102', '{{%admin_storage_image}}', 0),
(185, 0, 1701685090, '', 'api-admin-storageimage', 0, 1, '{\"id\":103,\"file_id\":18,\"filter_id\":2,\"resolution_width\":800,\"resolution_height\":600,\"created_at\":1701685090,\"updated_at\":1701685090}', NULL, '103', '{{%admin_storage_image}}', 0),
(186, 0, 1701685091, '', 'api-admin-storageimage', 0, 1, '{\"id\":104,\"file_id\":16,\"filter_id\":2,\"resolution_width\":800,\"resolution_height\":600,\"created_at\":1701685091,\"updated_at\":1701685091}', NULL, '104', '{{%admin_storage_image}}', 0),
(187, 0, 1701685091, '', 'api-admin-storageimage', 0, 1, '{\"id\":105,\"file_id\":14,\"filter_id\":2,\"resolution_width\":800,\"resolution_height\":600,\"created_at\":1701685091,\"updated_at\":1701685091}', NULL, '105', '{{%admin_storage_image}}', 0),
(188, 0, 1701685092, '', 'api-admin-storageimage', 0, 1, '{\"id\":106,\"file_id\":15,\"filter_id\":2,\"resolution_width\":800,\"resolution_height\":600,\"created_at\":1701685092,\"updated_at\":1701685092}', NULL, '106', '{{%admin_storage_image}}', 0),
(189, 1, 1701831037, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":34}', NULL, '7-34', 'catalog_article_value_ref', 0),
(190, 1, 1701831037, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":31}', NULL, '7-31', 'catalog_article_value_ref', 0),
(191, 1, 1701831037, '', 'api-catalog-article', 1, 0, '{\"id\":7,\"name\":\"{\\\"en\\\":\\\"Honey Chocolate Dip Cake\\\"}\",\"product_id\":28,\"text\":\"Honey cake has had a long and diverse evolution. From breadcrumbs mashed with honey came the sweet and spiced cake we know today. Whether you like it, love it, or will always pass on this Rosh Hashanah classic, its evolution exemplifies the culinary journey of Jewish Diaspora. This is more than a cake; it connects Jews to Torah, holidays and the sweetness of life.\",\"code\":\"{\\\"en\\\":\\\"HONCHK0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":126,\"image_id\":48,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":2}', '{\"name\":\"Honey Chocolate Dip Cake\",\"code\":\"HONCHK0001\",\"available\":1,\"updated_at\":2147483647}', '7', 'catalog_article', 0),
(192, 1, 1701831152, '', '', 0, 1, '{\"id\":27,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"2.jpg\",\"name_new\":\"2\",\"name_new_compound\":\"2_4e02b7a5.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"eed6eeed1dc5bf1bc3cce28291fdc8f1\",\"hash_name\":\"4e02b7a5\",\"upload_timestamp\":1701831152,\"file_size\":40055,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701831152}', NULL, '27', '{{%admin_storage_file}}', 0),
(193, 1, 1701831152, '', 'api-admin-storageimage', 0, 1, '{\"id\":107,\"file_id\":27,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701831152,\"updated_at\":1701831152}', NULL, '107', '{{%admin_storage_image}}', 0),
(194, 1, 1701831152, '', 'api-admin-storageimage', 0, 1, '{\"id\":108,\"file_id\":27,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701831152,\"updated_at\":1701831152}', NULL, '108', '{{%admin_storage_image}}', 0),
(195, 1, 1701831156, '', 'api-admin-storageimage', 0, 1, '{\"id\":109,\"file_id\":27,\"filter_id\":0,\"resolution_width\":400,\"resolution_height\":400,\"created_at\":1701831156,\"updated_at\":1701831156}', NULL, '109', '{{%admin_storage_image}}', 0),
(196, 1, 1701831159, '', 'api-gallery-cat', 0, 1, '{\"id\":4,\"title\":\"{\\\"en\\\":\\\"Honey Chocolate Cake\\\"}\",\"cover_image_id\":109,\"description\":\"{\\\"en\\\":\\\"Honey Chocolate Dip Cake\\\"}\"}', NULL, '4', 'gallery_cat', 0),
(197, 1, 1701831228, '', '', 0, 1, '{\"id\":28,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"1.jpg\",\"name_new\":\"1\",\"name_new_compound\":\"1_3b75a1e0.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"214d048bd79d7861146a4446f22e255a\",\"hash_name\":\"3b75a1e0\",\"upload_timestamp\":1701831227,\"file_size\":94066,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701831227}', NULL, '28', '{{%admin_storage_file}}', 0),
(198, 1, 1701831228, '', 'api-admin-storageimage', 0, 1, '{\"id\":110,\"file_id\":28,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701831228,\"updated_at\":1701831228}', NULL, '110', '{{%admin_storage_image}}', 0),
(199, 1, 1701831228, '', 'api-admin-storageimage', 0, 1, '{\"id\":111,\"file_id\":28,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":169,\"created_at\":1701831228,\"updated_at\":1701831228}', NULL, '111', '{{%admin_storage_image}}', 0),
(200, 1, 1701831236, '', 'api-admin-storageimage', 0, 1, '{\"id\":112,\"file_id\":28,\"filter_id\":0,\"resolution_width\":1280,\"resolution_height\":720,\"created_at\":1701831236,\"updated_at\":1701831236}', NULL, '112', '{{%admin_storage_image}}', 0),
(201, 1, 1701831254, '', 'api-admin-storageimage', 0, 1, '{\"id\":113,\"file_id\":28,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":720,\"created_at\":1701831254,\"updated_at\":1701831254}', NULL, '113', '{{%admin_storage_image}}', 0),
(202, 1, 1701831256, '', 'api-gallery-album', 0, 1, '{\"id\":3,\"cat_id\":4,\"title\":\"{\\\"en\\\":\\\"Honey Chocolate Cake\\\"}\",\"description\":\"{\\\"en\\\":\\\"Honey Chocolate Cakes are made with Honey and Chocolate\\\"}\",\"cover_image_id\":113,\"timestamp_create\":null,\"timestamp_update\":null,\"is_highlight\":\"1\",\"sort_index\":null}', NULL, '3', 'gallery_album', 0),
(203, 1, 1701831280, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":34}', NULL, '7-34', 'catalog_article_value_ref', 0),
(204, 1, 1701831280, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":31}', NULL, '7-31', 'catalog_article_value_ref', 0),
(205, 1, 1701831280, '', 'api-catalog-article', 1, 0, '{\"id\":7,\"name\":\"{\\\"en\\\":\\\"Honey Chocolate Dip Cake\\\"}\",\"product_id\":28,\"text\":\"Honey cake has had a long and diverse evolution. From breadcrumbs mashed with honey came the sweet and spiced cake we know today. Whether you like it, love it, or will always pass on this Rosh Hashanah classic, its evolution exemplifies the culinary journey of Jewish Diaspora. This is more than a cake; it connects Jews to Torah, holidays and the sweetness of life.\",\"code\":\"{\\\"en\\\":\\\"HONCHK0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":126,\"image_id\":48,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":3}', '{\"name\":\"Honey Chocolate Dip Cake\",\"code\":\"HONCHK0001\",\"updated_at\":2147483647,\"album_id\":2}', '7', 'catalog_article', 0),
(206, 1, 1701831395, '', '', 0, 1, '{\"id\":29,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"3.jpg\",\"name_new\":\"3\",\"name_new_compound\":\"3_d94b5339.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"ad6196a35bfbb197858915ab02c9c7e0\",\"hash_name\":\"d94b5339\",\"upload_timestamp\":1701831395,\"file_size\":32544,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701831395}', NULL, '29', '{{%admin_storage_file}}', 0),
(207, 1, 1701831395, '', 'api-admin-storageimage', 0, 1, '{\"id\":114,\"file_id\":29,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701831395,\"updated_at\":1701831395}', NULL, '114', '{{%admin_storage_image}}', 0),
(208, 1, 1701831395, '', 'api-admin-storageimage', 0, 1, '{\"id\":115,\"file_id\":29,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701831395,\"updated_at\":1701831395}', NULL, '115', '{{%admin_storage_image}}', 0),
(209, 1, 1701831408, '', 'api-admin-storageimage', 0, 1, '{\"id\":116,\"file_id\":24,\"filter_id\":1,\"resolution_width\":360,\"resolution_height\":480,\"created_at\":1701831408,\"updated_at\":1701831408}', NULL, '116', '{{%admin_storage_image}}', 0),
(210, 1, 1701831411, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":34}', NULL, '7-34', 'catalog_article_value_ref', 0),
(211, 1, 1701831411, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":31}', NULL, '7-31', 'catalog_article_value_ref', 0),
(212, 1, 1701831411, '', 'api-catalog-article', 1, 0, '{\"id\":7,\"name\":\"{\\\"en\\\":\\\"Honey Chocolate Dip Cake\\\"}\",\"product_id\":28,\"text\":\"Honey cake has had a long and diverse evolution. From breadcrumbs mashed with honey came the sweet and spiced cake we know today. Whether you like it, love it, or will always pass on this Rosh Hashanah classic, its evolution exemplifies the culinary journey of Jewish Diaspora. This is more than a cake; it connects Jews to Torah, holidays and the sweetness of life.\",\"code\":\"{\\\"en\\\":\\\"HONCHK0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":126,\"image_id\":116,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":3}', '{\"name\":\"Honey Chocolate Dip Cake\",\"code\":\"HONCHK0001\",\"image_id\":48,\"updated_at\":2147483647}', '7', 'catalog_article', 0),
(213, 1, 1701831420, '', 'api-admin-storageimage', 0, 1, '{\"id\":117,\"file_id\":24,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701831420,\"updated_at\":1701831420}', NULL, '117', '{{%admin_storage_image}}', 0),
(214, 1, 1701831497, '', 'api-catalog-product', 1, 0, '{\"id\":28,\"name\":\"Chocolate Cake\",\"slug\":\"chocolate-cake\",\"brand_id\":null,\"cover_image_id\":3,\"images_list\":null,\"teaser\":null,\"text\":null,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"price_from\":1250,\"view\":\"1\",\"position\":1,\"enabled\":1}', '{\"updated_at\":2147483647,\"price_from\":0,\"view\":null}', '28', 'catalog_product', 0),
(215, 1, 1701831543, '', 'api-catalog-product', 1, 0, '{\"id\":28,\"name\":\"Chocolate Cake\",\"slug\":\"chocolate-cake\",\"brand_id\":null,\"cover_image_id\":75,\"images_list\":null,\"teaser\":null,\"text\":null,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"price_from\":1250,\"view\":\"1\",\"position\":1,\"enabled\":1}', '{\"cover_image_id\":3,\"updated_at\":2147483647}', '28', 'catalog_product', 0),
(216, 1, 1701831696, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":34}', NULL, '7-34', 'catalog_article_value_ref', 0),
(217, 1, 1701831696, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":31}', NULL, '7-31', 'catalog_article_value_ref', 0),
(218, 1, 1701831696, '', 'api-catalog-article', 1, 0, '{\"id\":7,\"name\":\"{\\\"en\\\":\\\"Honey Chocolate Dip Cake\\\"}\",\"product_id\":28,\"text\":\"Honey cake has had a long and diverse evolution. From breadcrumbs mashed with honey came the sweet and spiced cake we know today. Whether you like it, love it, or will always pass on this Rosh Hashanah classic, its evolution exemplifies the culinary journey of Jewish Diaspora. This is more than a cake; it connects Jews to Torah, holidays and the sweetness of life.\",\"code\":\"{\\\"en\\\":\\\"HONCHK0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":126,\"image_id\":116,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":3}', '{\"name\":\"Honey Chocolate Dip Cake\",\"code\":\"HONCHK0001\",\"updated_at\":2147483647}', '7', 'catalog_article', 0),
(219, 1, 1701831784, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":33}', NULL, '6-33', 'catalog_article_value_ref', 0),
(220, 1, 1701831784, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":34}', NULL, '6-34', 'catalog_article_value_ref', 0),
(221, 1, 1701831784, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":31}', NULL, '6-31', 'catalog_article_value_ref', 0),
(222, 1, 1701831784, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":32}', NULL, '6-32', 'catalog_article_value_ref', 0),
(223, 1, 1701831784, '', 'api-catalog-article', 1, 0, '{\"id\":6,\"name\":\"{\\\"en\\\":\\\"Brown Choclolate Cake\\\"}\",\"product_id\":28,\"text\":\"Cakes are frequently described according to their physical form. Cakes may be small and intended for individual consumption. Larger cakes may be made to be sliced and served as part of a meal or social function. Common shapes include: Bundt cakesCake dressCake ballsCake popsConical, such as the …\",\"code\":\"{\\\"en\\\":\\\"BROW0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":83,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":3}', '{\"name\":\"Brown Choclolate Cake\",\"code\":\"BROW0001\",\"updated_at\":2147483647,\"album_id\":1}', '6', 'catalog_article', 0),
(224, 1, 1701831866, '', 'api-admin-storageimage', 0, 1, '{\"id\":118,\"file_id\":28,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701831866,\"updated_at\":1701831866}', NULL, '118', '{{%admin_storage_image}}', 0),
(225, 1, 1701831867, '', 'api-admin-storageimage', 0, 1, '{\"id\":119,\"file_id\":27,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701831867,\"updated_at\":1701831867}', NULL, '119', '{{%admin_storage_image}}', 0),
(226, 1, 1701831870, '', 'api-admin-storageimage', 0, 1, '{\"id\":120,\"file_id\":\"24\",\"filter_id\":0,\"resolution_width\":360,\"resolution_height\":480,\"created_at\":1701831870,\"updated_at\":1701831870}', NULL, '120', '{{%admin_storage_image}}', 0),
(227, 1, 1701831968, '', 'api-admin-storageimage', 0, 1, '{\"id\":121,\"file_id\":27,\"filter_id\":1,\"resolution_width\":400,\"resolution_height\":400,\"created_at\":1701831968,\"updated_at\":1701831968}', NULL, '121', '{{%admin_storage_image}}', 0),
(228, 1, 1701832026, '', 'api-admin-storageimage', 0, 1, '{\"id\":122,\"file_id\":\"13\",\"filter_id\":0,\"resolution_width\":3648,\"resolution_height\":2736,\"created_at\":1701832026,\"updated_at\":1701832026}', NULL, '122', '{{%admin_storage_image}}', 0),
(229, 1, 1701833201, '', 'api-gallery-album', 1, 0, '{\"id\":2,\"cat_id\":2,\"title\":\"{\\\"en\\\":\\\"Chocolate Cakes\\\"}\",\"description\":\"{\\\"en\\\":\\\"chocolate cakes\\\"}\",\"cover_image_id\":75,\"timestamp_create\":0,\"timestamp_update\":0,\"is_highlight\":1,\"sort_index\":-1}', '{\"sort_index\":0}', '2', 'gallery_album', 0),
(230, 1, 1701833211, '', 'api-gallery-album', 1, 0, '{\"id\":1,\"cat_id\":1,\"title\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\",\"description\":\"{\\\"en\\\":\\\"butter cookies\\\"}\",\"cover_image_id\":45,\"timestamp_create\":0,\"timestamp_update\":0,\"is_highlight\":1,\"sort_index\":-1}', '{\"sort_index\":0}', '1', 'gallery_album', 0),
(231, 1, 1701833213, '', 'api-gallery-album', 1, 0, '{\"id\":2,\"cat_id\":2,\"title\":\"{\\\"en\\\":\\\"Chocolate Cakes\\\"}\",\"description\":\"{\\\"en\\\":\\\"chocolate cakes\\\"}\",\"cover_image_id\":75,\"timestamp_create\":0,\"timestamp_update\":0,\"is_highlight\":1,\"sort_index\":-2}', '{\"sort_index\":-1}', '2', 'gallery_album', 0),
(232, 1, 1701833217, '', 'api-gallery-album', 1, 0, '{\"id\":1,\"cat_id\":1,\"title\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\",\"description\":\"{\\\"en\\\":\\\"butter cookies\\\"}\",\"cover_image_id\":45,\"timestamp_create\":0,\"timestamp_update\":0,\"is_highlight\":1,\"sort_index\":0}', '{\"sort_index\":-1}', '1', 'gallery_album', 0),
(233, 1, 1701833219, '', 'api-gallery-album', 1, 0, '{\"id\":1,\"cat_id\":1,\"title\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\",\"description\":\"{\\\"en\\\":\\\"butter cookies\\\"}\",\"cover_image_id\":45,\"timestamp_create\":0,\"timestamp_update\":0,\"is_highlight\":1,\"sort_index\":1}', '{\"sort_index\":0}', '1', 'gallery_album', 0),
(234, 1, 1701833222, '', 'api-gallery-album', 1, 0, '{\"id\":2,\"cat_id\":2,\"title\":\"{\\\"en\\\":\\\"Chocolate Cakes\\\"}\",\"description\":\"{\\\"en\\\":\\\"chocolate cakes\\\"}\",\"cover_image_id\":75,\"timestamp_create\":0,\"timestamp_update\":0,\"is_highlight\":1,\"sort_index\":-1}', '{\"sort_index\":-2}', '2', 'gallery_album', 0),
(235, 1, 1701833223, '', 'api-gallery-album', 1, 0, '{\"id\":2,\"cat_id\":2,\"title\":\"{\\\"en\\\":\\\"Chocolate Cakes\\\"}\",\"description\":\"{\\\"en\\\":\\\"chocolate cakes\\\"}\",\"cover_image_id\":75,\"timestamp_create\":0,\"timestamp_update\":0,\"is_highlight\":1,\"sort_index\":0}', '{\"sort_index\":-1}', '2', 'gallery_album', 0),
(236, 1, 1701851825, '', 'api-catalog-currency', 1, 0, '{\"id\":3,\"code\":\"INR\",\"rate\":0.25,\"position\":0,\"name\":\"Indian Rupee\",\"before\":\"₹\",\"after\":\"/-\",\"enabled\":1}', '{\"rate\":\"0.2500\",\"before\":\"Rs.\"}', '3', '{{%catalog_currency}}', 0),
(237, 1, 1701951848, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":6,\"value_id\":33,\"currency_id\":3,\"qty\":1,\"price\":1425,\"unit_id\":4}', NULL, '6-33-3-1-4', 'catalog_article_price', 0),
(238, 1, 1701958577, '', 'api-catalog-featuregroupref', 1, 0, '{\"feature_id\":8,\"group_id\":7,\"position\":1,\"is_base\":\"1\"}', '{\"position\":0,\"is_base\":0}', '8-7', '{{%catalog_feature_group_ref}}', 0),
(239, 1, 1701958586, '', 'api-catalog-featuregroupref', 1, 0, '{\"feature_id\":9,\"group_id\":7,\"position\":2,\"is_base\":0}', '{\"position\":0}', '9-7', '{{%catalog_feature_group_ref}}', 0),
(240, 1, 1701963292, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":33}', NULL, '7-33', 'catalog_article_value_ref', 0),
(241, 1, 1701963292, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":34}', NULL, '7-34', 'catalog_article_value_ref', 0),
(242, 1, 1701963292, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":31}', NULL, '7-31', 'catalog_article_value_ref', 0),
(243, 1, 1701963292, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":32}', NULL, '7-32', 'catalog_article_value_ref', 0),
(244, 1, 1701963292, '', 'api-catalog-article', 1, 0, '{\"id\":7,\"name\":\"{\\\"en\\\":\\\"Honey Chocolate Dip Cake\\\"}\",\"product_id\":28,\"text\":\"Honey cake has had a long and diverse evolution. From breadcrumbs mashed with honey came the sweet and spiced cake we know today. Whether you like it, love it, or will always pass on this Rosh Hashanah classic, its evolution exemplifies the culinary journey of Jewish Diaspora. This is more than a cake; it connects Jews to Torah, holidays and the sweetness of life.\",\"code\":\"{\\\"en\\\":\\\"HONCHK0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":126,\"image_id\":116,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":3}', '{\"name\":\"Honey Chocolate Dip Cake\",\"code\":\"HONCHK0001\",\"updated_at\":2147483647}', '7', 'catalog_article', 0),
(245, 1, 1701963457, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":7,\"value_id\":33,\"currency_id\":3,\"qty\":1,\"price\":1452,\"unit_id\":4}', NULL, '7-33-3-1-4', 'catalog_article_price', 0),
(246, 1, 1701963496, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":7,\"value_id\":34,\"currency_id\":3,\"qty\":1,\"price\":2453,\"unit_id\":4}', NULL, '7-34-3-1-4', 'catalog_article_price', 0),
(247, 1, 1701963579, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":7,\"value_id\":31,\"currency_id\":3,\"qty\":1,\"price\":251,\"unit_id\":4}', NULL, '7-31-3-1-4', 'catalog_article_price', 0),
(248, 1, 1701965212, '', 'api-catalog-feature', 1, 0, '{\"id\":8,\"name\":\"Size\",\"position\":1,\"enabled\":1}', '{\"position\":0}', '8', 'catalog_feature', 0),
(249, 1, 1701965220, '', 'api-catalog-feature', 1, 0, '{\"id\":9,\"name\":\"Version\",\"position\":2,\"enabled\":1}', '{\"position\":0}', '9', 'catalog_feature', 0),
(250, 1, 1701965291, '', 'api-catalog-value', 0, 1, '{\"id\":36,\"name\":\"6 inch 5 layer\",\"feature_id\":8,\"position\":3}', NULL, '36', '{{%catalog_value}}', 0),
(251, 1, 1701965317, '', 'api-catalog-value', 1, 0, '{\"id\":33,\"name\":\"6 inch\",\"feature_id\":8,\"position\":1}', '{\"position\":0}', '33', '{{%catalog_value}}', 0),
(252, 1, 1701965324, '', 'api-catalog-value', 1, 0, '{\"id\":34,\"name\":\"12 inch\",\"feature_id\":8,\"position\":2}', '{\"position\":0}', '34', '{{%catalog_value}}', 0),
(253, 1, 1701965330, '', 'api-catalog-value', 1, 0, '{\"id\":36,\"name\":\"6 inch 5 layer\",\"feature_id\":8,\"position\":3}', '[]', '36', '{{%catalog_value}}', 0),
(254, 1, 1701965343, '', 'api-catalog-value', 1, 0, '{\"id\":35,\"name\":\"Pack\",\"feature_id\":8,\"position\":1}', '{\"position\":0}', '35', '{{%catalog_value}}', 0),
(255, 1, 1701965352, '', 'api-catalog-value', 1, 0, '{\"id\":32,\"name\":\"With Egg\",\"feature_id\":9,\"position\":1}', '{\"position\":0}', '32', '{{%catalog_value}}', 0),
(256, 1, 1701965357, '', 'api-catalog-value', 1, 0, '{\"id\":31,\"name\":\"Eggless\",\"feature_id\":9,\"position\":2}', '{\"position\":0}', '31', '{{%catalog_value}}', 0),
(257, 1, 1701965428, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":7,\"value_id\":36,\"currency_id\":3,\"qty\":1,\"price\":2354,\"unit_id\":4}', NULL, '7-36-3-1-4', 'catalog_article_price', 0),
(258, 1, 1701965524, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":33}', NULL, '7-33', 'catalog_article_value_ref', 0),
(259, 1, 1701965524, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":34}', NULL, '7-34', 'catalog_article_value_ref', 0),
(260, 1, 1701965524, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":36}', NULL, '7-36', 'catalog_article_value_ref', 0),
(261, 1, 1701965524, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":31}', NULL, '7-31', 'catalog_article_value_ref', 0),
(262, 1, 1701965524, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":32}', NULL, '7-32', 'catalog_article_value_ref', 0),
(263, 1, 1701965524, '', 'api-catalog-article', 1, 0, '{\"id\":7,\"name\":\"{\\\"en\\\":\\\"Honey Chocolate Dip Cake\\\"}\",\"product_id\":28,\"text\":\"Honey cake has had a long and diverse evolution. From breadcrumbs mashed with honey came the sweet and spiced cake we know today. Whether you like it, love it, or will always pass on this Rosh Hashanah classic, its evolution exemplifies the culinary journey of Jewish Diaspora. This is more than a cake; it connects Jews to Torah, holidays and the sweetness of life.\",\"code\":\"{\\\"en\\\":\\\"HONCHK0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":126,\"image_id\":116,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":3}', '{\"name\":\"Honey Chocolate Dip Cake\",\"code\":\"HONCHK0001\",\"updated_at\":2147483647}', '7', 'catalog_article', 0),
(264, 1, 1701966740, '', 'api-catalog-featuregroupref', 1, 0, '{\"feature_id\":8,\"group_id\":7,\"position\":1,\"is_base\":\"1\"}', '{\"position\":0,\"is_base\":0}', '8-7', '{{%catalog_feature_group_ref}}', 0),
(265, 1, 1701966762, '', 'api-catalog-featuregroupref', 1, 0, '{\"feature_id\":8,\"group_id\":8,\"position\":2,\"is_base\":\"1\"}', '{\"position\":0,\"is_base\":0}', '8-8', '{{%catalog_feature_group_ref}}', 0),
(266, 1, 1702027273, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":33}', NULL, '6-33', 'catalog_article_value_ref', 0),
(267, 1, 1702027273, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":34}', NULL, '6-34', 'catalog_article_value_ref', 0),
(268, 1, 1702027273, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":31}', NULL, '6-31', 'catalog_article_value_ref', 0),
(269, 1, 1702027273, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":32}', NULL, '6-32', 'catalog_article_value_ref', 0),
(270, 1, 1702027273, '', 'api-catalog-article', 1, 0, '{\"id\":6,\"name\":\"{\\\"en\\\":\\\"Brown Choclolate Cake\\\"}\",\"product_id\":28,\"text\":\"Cakes are frequently described according to their physical form. Cakes may be small and intended for individual consumption. Larger cakes may be made to be sliced and served as part of a meal or social function. Common shapes include: Bundt cakesCake dressCake ballsCake popsConical, such as the …\",\"code\":\"{\\\"en\\\":\\\"BROW0001\\\"}\",\"price\":2425,\"price_old\":2640,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":83,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":3}', '{\"name\":\"Brown Choclolate Cake\",\"code\":\"BROW0001\",\"price\":null,\"price_old\":null,\"updated_at\":2147483647}', '6', 'catalog_article', 0),
(271, 1, 1702093316, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":33}', NULL, '9-33', 'catalog_article_value_ref', 0),
(272, 1, 1702093316, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":34}', NULL, '9-34', 'catalog_article_value_ref', 0),
(273, 1, 1702093316, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":36}', NULL, '9-36', 'catalog_article_value_ref', 0),
(274, 1, 1702093316, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":31}', NULL, '9-31', 'catalog_article_value_ref', 0),
(275, 1, 1702093316, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":32}', NULL, '9-32', 'catalog_article_value_ref', 0),
(276, 1, 1702093316, '', 'api-catalog-article', 1, 0, '{\"id\":9,\"name\":\"{\\\"en\\\":\\\"Vanilla Cake with Butter Cream\\\"}\",\"product_id\":30,\"text\":\"It’s notoriously hard to find a really good, classic cupcake recipe. Many promise game changing techniques, but all too often they fall short.\\n\\nSo why should you believe me when I say this is the last Vanilla Cupcake recipe you’ll ever use?\",\"code\":\"{\\\"en\\\":\\\"VNL00234\\\"}\",\"price\":875,\"price_old\":1020,\"currency_id\":0,\"unit_id\":0,\"available\":100,\"image_id\":86,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":2}', '{\"name\":\"Vanilla Cake with Butter Cream\",\"code\":\"VNL00234\",\"price\":null,\"price_old\":null,\"updated_at\":2147483647,\"album_id\":1}', '9', 'catalog_article', 0),
(277, 1, 1702093460, '', 'api-catalog-articleprice', 1, 0, '{\"article_id\":9,\"value_id\":\"31\",\"currency_id\":3,\"qty\":1,\"price\":749,\"unit_id\":\"4\"}', '{\"value_id\":32,\"price\":542,\"unit_id\":5}', '9-31-3-1-4', 'catalog_article_price', 0),
(278, 1, 1702093624, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":9,\"value_id\":33,\"currency_id\":3,\"qty\":1,\"price\":849,\"unit_id\":4}', NULL, '9-33-3-1-4', 'catalog_article_price', 0),
(279, 1, 1702093979, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":9,\"value_id\":34,\"currency_id\":3,\"qty\":1,\"price\":1499,\"unit_id\":4}', NULL, '9-34-3-1-4', 'catalog_article_price', 0),
(280, 1, 1702094438, '', 'api-catalog-articleprice', 1, 0, '{\"article_id\":9,\"value_id\":31,\"currency_id\":3,\"qty\":1,\"price\":0,\"unit_id\":4}', '{\"price\":749}', '9-31-3-1-4', 'catalog_article_price', 0),
(281, 1, 1702094452, '', 'api-catalog-articleprice', 1, 0, '{\"article_id\":9,\"value_id\":32,\"currency_id\":3,\"qty\":1,\"price\":140,\"unit_id\":4}', '{\"price\":1240}', '9-32-3-1-4', 'catalog_article_price', 0),
(282, 1, 1702136100, '', 'api-catalog-articleprice', 1, 0, '{\"article_id\":6,\"value_id\":31,\"currency_id\":3,\"qty\":1,\"price\":140,\"unit_id\":4}', '{\"price\":1000}', '6-31-3-1-4', 'catalog_article_price', 0),
(283, 0, 1702232362, '', 'api-cart-buyer', 0, 1, '{\"id\":1,\"name\":\"Harikrishna\",\"phone\":\"385845245852\",\"email\":\"pravinya.valluri@mymail.com\",\"created_at\":1702232362,\"entity\":\"0\",\"delivery\":null}', NULL, '1', '{{%buyer}}', 0),
(284, 0, 1702232696, '', 'api-cart-buyer', 0, 1, '{\"id\":2,\"name\":\"Harikrishna\",\"phone\":\"383858452458\",\"email\":\"pravinya.valluri@mymail.com\",\"created_at\":1702232696,\"entity\":\"0\",\"delivery\":null}', NULL, '2', '{{%buyer}}', 0),
(285, 0, 1702232828, '', 'api-cart-buyer', 0, 1, '{\"id\":3,\"name\":\"Harikrishna\",\"phone\":\"383838584524\",\"email\":\"pravinya.valluri@mymail.com\",\"created_at\":1702232828,\"entity\":\"0\",\"delivery\":null}', NULL, '3', '{{%buyer}}', 0),
(286, 0, 1702232890, '', 'api-cart-buyer', 0, 1, '{\"id\":4,\"name\":\"Harikrishna\",\"phone\":\"383838385845\",\"email\":\"pravinya.valluri@mymail.com\",\"created_at\":1702232890,\"entity\":\"0\",\"delivery\":null}', NULL, '4', '{{%buyer}}', 0),
(287, 0, 1702232922, '', 'api-cart-buyer', 0, 1, '{\"id\":5,\"name\":\"Harikrishna\",\"phone\":\"383838383858\",\"email\":\"pravinya.valluri@mymail.com\",\"created_at\":1702232922,\"entity\":\"0\",\"delivery\":null}', NULL, '5', '{{%buyer}}', 0),
(288, 0, 1702232972, '', 'api-cart-buyer', 0, 1, '{\"id\":6,\"name\":\"Harikrishna\",\"phone\":\"383838383838\",\"email\":\"pravinya.valluri@mymail.com\",\"created_at\":1702232972,\"entity\":\"0\",\"delivery\":null}', NULL, '6', '{{%buyer}}', 0),
(289, 0, 1702276348, '', 'api-cart-buyer', 0, 1, '{\"id\":7,\"name\":\"Purnachandra Rao V\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702276348,\"entity\":\"0\",\"delivery\":null}', NULL, '7', '{{%buyer}}', 0),
(290, 0, 1702278096, '', 'api-cart-buyer', 1, 0, '{\"id\":7,\"name\":\"Purnachandra Rao V\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702276348,\"entity\":0,\"delivery\":\"\"}', '{\"delivery\":null}', '7', '{{%buyer}}', 0),
(291, 0, 1702278139, '', 'api-cart-buyer', 0, 1, '{\"id\":8,\"name\":\"Purnachandra Rao V\",\"phone\":\"383808331852\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702278139,\"entity\":\"0\",\"delivery\":null}', NULL, '8', '{{%buyer}}', 0),
(292, 0, 1702278816, '', 'api-cart-buyer', 1, 0, '{\"id\":8,\"name\":\"Purnachandra Rao V\",\"phone\":\"383808331852\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702278139,\"entity\":0,\"delivery\":\"\"}', '{\"delivery\":null}', '8', '{{%buyer}}', 0),
(293, 0, 1702278830, '', 'api-cart-buyer', 1, 0, '{\"id\":8,\"name\":\"Purnachandra Rao V\",\"phone\":\"383808331852\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702278139,\"entity\":0,\"delivery\":\"\"}', '[]', '8', '{{%buyer}}', 0),
(294, 0, 1702294163, '', 'api-cart-buyer', 0, 1, '{\"id\":9,\"name\":\"Purnachandra Rao V\",\"phone\":\"383838083318\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702294163,\"entity\":\"0\",\"delivery\":null}', NULL, '9', '{{%buyer}}', 0),
(295, 0, 1702294419, '', 'api-cart-buyer', 0, 1, '{\"id\":10,\"name\":\"Purnachandra Rao V\",\"phone\":\"389183318527\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702294419,\"entity\":\"0\",\"delivery\":null}', NULL, '10', '{{%buyer}}', 0),
(296, 0, 1702294419, '', 'api-cart-order', 0, 1, '{\"id\":1,\"buyer_id\":10,\"amount\":12579,\"phone\":\"389183318527\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\"gfhrt bf drthbrtd\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '1', '{{%order}}', 0),
(297, 0, 1702294581, '', 'api-cart-buyer', 1, 0, '{\"id\":10,\"name\":\"Mahesh Babnu\",\"phone\":\"389183318527\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702294419,\"entity\":0,\"delivery\":\"\"}', '{\"name\":\"Purnachandra Rao V\",\"delivery\":null}', '10', '{{%buyer}}', 0),
(298, 0, 1702297657, '', 'api-cart-buyer', 1, 0, '{\"id\":10,\"name\":\"Mahesh Babnu\",\"phone\":\"389183318527\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702294419,\"entity\":0,\"delivery\":\"\"}', '[]', '10', '{{%buyer}}', 0),
(299, 0, 1702297706, '', 'api-cart-buyer', 1, 0, '{\"id\":10,\"name\":\"Mahesh Babnu\",\"phone\":\"389183318527\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702294419,\"entity\":0,\"delivery\":\"\"}', '[]', '10', '{{%buyer}}', 0),
(300, 0, 1702297795, '', 'api-cart-buyer', 0, 1, '{\"id\":11,\"name\":\"Purnachandra Rao V\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":\"0\",\"delivery\":null}', NULL, '11', '{{%buyer}}', 0),
(301, 0, 1702297851, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao V\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '{\"delivery\":null}', '11', '{{%buyer}}', 0),
(302, 0, 1702298372, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao V\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(303, 0, 1702298414, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '{\"name\":\"Purnachandra Rao V\"}', '11', '{{%buyer}}', 0),
(304, 0, 1702298439, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(305, 0, 1702298595, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(306, 0, 1702298595, '', 'api-cart-order', 0, 1, '{\"id\":3,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '3', '{{%order}}', 0),
(307, 0, 1702298749, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(308, 0, 1702298749, '', 'api-cart-order', 0, 1, '{\"id\":4,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '4', '{{%order}}', 0),
(309, 0, 1702298768, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(310, 0, 1702298886, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(311, 0, 1702298886, '', 'api-cart-order', 0, 1, '{\"id\":5,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '5', '{{%order}}', 0),
(312, 0, 1702302112, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(313, 0, 1702302128, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(314, 0, 1702302128, '', 'api-cart-order', 0, 1, '{\"id\":6,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '6', '{{%order}}', 0),
(315, 0, 1702302194, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(316, 0, 1702302194, '', 'api-cart-order', 0, 1, '{\"id\":7,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '7', '{{%order}}', 0),
(317, 0, 1702302404, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0);
INSERT INTO `admin_ngrest_log` (`id`, `user_id`, `timestamp_create`, `route`, `api`, `is_update`, `is_insert`, `attributes_json`, `attributes_diff_json`, `pk_value`, `table_name`, `is_delete`) VALUES
(318, 0, 1702302404, '', 'api-cart-order', 0, 1, '{\"id\":8,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '8', '{{%order}}', 0),
(319, 0, 1702302436, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(320, 0, 1702302436, '', 'api-cart-order', 0, 1, '{\"id\":9,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '9', '{{%order}}', 0),
(321, 0, 1702302537, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(322, 0, 1702302537, '', 'api-cart-order', 0, 1, '{\"id\":10,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '10', '{{%order}}', 0),
(323, 0, 1702302709, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(324, 0, 1702302709, '', 'api-cart-order', 0, 1, '{\"id\":11,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '11', '{{%order}}', 0),
(325, 0, 1702302734, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(326, 0, 1702302734, '', 'api-cart-order', 0, 1, '{\"id\":12,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '12', '{{%order}}', 0),
(327, 0, 1702302824, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(328, 0, 1702302824, '', 'api-cart-order', 0, 1, '{\"id\":13,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '13', '{{%order}}', 0),
(329, 0, 1702303036, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(330, 0, 1702303052, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(331, 0, 1702303052, '', 'api-cart-order', 0, 1, '{\"id\":14,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '14', '{{%order}}', 0),
(332, 0, 1702303236, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(333, 0, 1702303236, '', 'api-cart-order', 0, 1, '{\"id\":15,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '15', '{{%order}}', 0),
(334, 0, 1702303317, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(335, 0, 1702303317, '', 'api-cart-order', 0, 1, '{\"id\":16,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '16', '{{%order}}', 0),
(336, 0, 1702304393, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(337, 0, 1702304420, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(338, 0, 1702304420, '', 'api-cart-order', 0, 1, '{\"id\":17,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '17', '{{%order}}', 0),
(339, 0, 1702304582, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(340, 0, 1702304582, '', 'api-cart-order', 0, 1, '{\"id\":18,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '18', '{{%order}}', 0),
(341, 0, 1702304664, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(342, 0, 1702304664, '', 'api-cart-order', 0, 1, '{\"id\":19,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '19', '{{%order}}', 0),
(343, 0, 1702304688, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(344, 0, 1702304688, '', 'api-cart-order', 0, 1, '{\"id\":20,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '20', '{{%order}}', 0),
(345, 0, 1702304701, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(346, 0, 1702304701, '', 'api-cart-order', 0, 1, '{\"id\":21,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '21', '{{%order}}', 0),
(347, 0, 1702304702, '', 'api-cart-orderproduct', 0, 1, '{\"id\":3,\"order_id\":21,\"article_id\":\"7\",\"name\":\"Chocolate Cake, Honey Chocolate Dip Cake\",\"count\":\"3\",\"price\":\"2704\",\"features\":\"[28][8]1+[28][9]1\"}', NULL, '3', 'order_product', 0),
(348, 0, 1702304702, '', 'api-cart-orderproduct', 0, 1, '{\"id\":4,\"order_id\":21,\"article_id\":\"6\",\"name\":\"Chocolate Cake, Brown Choclolate Cake\",\"count\":1,\"price\":\"1565\",\"features\":\"[28][8]0+[28][9]1\"}', NULL, '4', 'order_product', 0),
(349, 0, 1702304760, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(350, 0, 1702304760, '', 'api-cart-order', 0, 1, '{\"id\":22,\"buyer_id\":11,\"amount\":0,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '22', '{{%order}}', 0),
(351, 0, 1702306637, '', 'api-cart-buyer', 1, 0, '{\"id\":10,\"name\":\"Purnachandra Rao V\",\"phone\":\"389183318527\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702294419,\"entity\":0,\"delivery\":\"\"}', '{\"name\":\"Mahesh Babnu\"}', '10', '{{%buyer}}', 0),
(352, 0, 1702306637, '', 'api-cart-order', 0, 1, '{\"id\":23,\"buyer_id\":10,\"amount\":3477,\"phone\":\"389183318527\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"1\",\"payment_id\":\"3\",\"text\":null,\"comment\":\"l jkhjrtfhnfgv rtdyh\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":1}', NULL, '23', '{{%order}}', 0),
(353, 0, 1702306637, '', 'api-cart-orderproduct', 0, 1, '{\"id\":5,\"order_id\":23,\"article_id\":\"9\",\"name\":\"Vanilla Cake, Vanilla Cake with Butter Cream\",\"count\":1,\"price\":\"1639\",\"features\":\"[30][8]1+[30][9]0\"}', NULL, '5', 'order_product', 0),
(354, 0, 1702306637, '', 'api-cart-orderproduct', 0, 1, '{\"id\":6,\"order_id\":23,\"article_id\":\"9\",\"name\":\"Vanilla Cake, Vanilla Cake with Butter Cream\",\"count\":1,\"price\":\"989\",\"features\":\"[30][8]0+[30][9]0\"}', NULL, '6', 'order_product', 0),
(355, 0, 1702306637, '', 'api-cart-orderproduct', 0, 1, '{\"id\":7,\"order_id\":23,\"article_id\":\"9\",\"name\":\"Vanilla Cake, Vanilla Cake with Butter Cream\",\"count\":1,\"price\":\"849\",\"features\":\"[30][8]0+[30][9]1\"}', NULL, '7', 'order_product', 0),
(356, 0, 1702306728, '', 'api-cart-buyer', 1, 0, '{\"id\":10,\"name\":\"Purnachandra Rao V\",\"phone\":\"389183318527\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702294419,\"entity\":0,\"delivery\":\"\"}', '[]', '10', '{{%buyer}}', 0),
(357, 0, 1702306728, '', 'api-cart-order', 0, 1, '{\"id\":24,\"buyer_id\":10,\"amount\":0,\"phone\":\"389183318527\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"1\",\"payment_id\":\"3\",\"text\":null,\"comment\":\"l jkhjrtfhnfgv rtdyh\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":1}', NULL, '24', '{{%order}}', 0),
(358, 0, 1702307120, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao V\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '{\"name\":\"Purnachandra Rao Vall\"}', '11', '{{%buyer}}', 0),
(359, 0, 1702307120, '', 'api-cart-order', 0, 1, '{\"id\":25,\"buyer_id\":11,\"amount\":4953,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"1\",\"text\":null,\"comment\":\"yjgghjm vcbdfghd\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":1}', NULL, '25', '{{%order}}', 0),
(360, 0, 1702307120, '', 'api-cart-orderproduct', 0, 1, '{\"id\":8,\"order_id\":25,\"article_id\":\"9\",\"name\":\"Vanilla Cake, Vanilla Cake with Butter Cream\",\"count\":1,\"price\":\"1499\",\"features\":\"[30][8]1+[30][9]1\"}', NULL, '8', 'order_product', 0),
(361, 0, 1702307120, '', 'api-cart-orderproduct', 0, 1, '{\"id\":9,\"order_id\":25,\"article_id\":\"7\",\"name\":\"Chocolate Cake, Honey Chocolate Dip Cake\",\"count\":1,\"price\":\"2704\",\"features\":\"[28][8]1+[28][9]1\"}', NULL, '9', 'order_product', 0),
(362, 0, 1702307120, '', 'api-cart-orderproduct', 0, 1, '{\"id\":10,\"order_id\":25,\"article_id\":\"8\",\"name\":\"Butter Cookies, Creamy Butter Cookies\",\"count\":1,\"price\":\"750\",\"features\":\"[29][8]0+[29][9]0\"}', NULL, '10', 'order_product', 0),
(363, 0, 1702353135, '', 'api-admin-storageimage', 0, 1, '{\"id\":123,\"file_id\":22,\"filter_id\":10,\"resolution_width\":100,\"resolution_height\":100,\"created_at\":1702353134,\"updated_at\":1702353134}', NULL, '123', '{{%admin_storage_image}}', 0),
(364, 0, 1702353135, '', 'api-admin-storageimage', 0, 1, '{\"id\":124,\"file_id\":23,\"filter_id\":10,\"resolution_width\":100,\"resolution_height\":100,\"created_at\":1702353135,\"updated_at\":1702353135}', NULL, '124', '{{%admin_storage_image}}', 0),
(365, 0, 1702409632, '', 'api-admin-storageimage', 0, 1, '{\"id\":125,\"file_id\":14,\"filter_id\":10,\"resolution_width\":100,\"resolution_height\":100,\"created_at\":1702409632,\"updated_at\":1702409632}', NULL, '125', '{{%admin_storage_image}}', 0),
(366, 0, 1702409775, '', 'api-admin-storageimage', 0, 1, '{\"id\":126,\"file_id\":24,\"filter_id\":10,\"resolution_width\":100,\"resolution_height\":100,\"created_at\":1702409775,\"updated_at\":1702409775}', NULL, '126', '{{%admin_storage_image}}', 0),
(367, 1, 1702530940, '', 'api-admin-storageimage', 0, 1, '{\"id\":127,\"file_id\":29,\"filter_id\":0,\"resolution_width\":720,\"resolution_height\":720,\"created_at\":1702530940,\"updated_at\":1702530940}', NULL, '127', '{{%admin_storage_image}}', 0),
(368, 1, 1702531263, '', 'api-admin-storageimage', 0, 1, '{\"id\":128,\"file_id\":25,\"filter_id\":0,\"resolution_width\":500,\"resolution_height\":334,\"created_at\":1702531263,\"updated_at\":1702531263}', NULL, '128', '{{%admin_storage_image}}', 0),
(369, 1, 1702619674, '', '', 0, 1, '{\"id\":30,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"0_biscuits-06_fdaf7dd3.jpg\",\"name_new\":\"0-biscuits-06-fdaf7dd3\",\"name_new_compound\":\"0-biscuits-06-fdaf7dd3_deda9bfb.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"3b8c76249f156e7297d0dbd3f2977cb3\",\"hash_name\":\"deda9bfb\",\"upload_timestamp\":1702619674,\"file_size\":74954,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1702619674}', NULL, '30', '{{%admin_storage_file}}', 0),
(370, 1, 1702619688, '', 'api-admin-storageimage', 0, 1, '{\"id\":129,\"file_id\":30,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1702619688,\"updated_at\":1702619688}', NULL, '129', '{{%admin_storage_image}}', 0),
(371, 1, 1702619688, '', 'api-admin-storageimage', 0, 1, '{\"id\":130,\"file_id\":30,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":200,\"created_at\":1702619688,\"updated_at\":1702619688}', NULL, '130', '{{%admin_storage_image}}', 0),
(372, 1, 1702619694, '', 'api-admin-storageimage', 0, 1, '{\"id\":131,\"file_id\":30,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1702619694,\"updated_at\":1702619694}', NULL, '131', '{{%admin_storage_image}}', 0),
(373, 1, 1702619698, '', 'api-admin-storageimage', 0, 1, '{\"id\":132,\"file_id\":30,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1702619698,\"updated_at\":1702619698}', NULL, '132', '{{%admin_storage_image}}', 0),
(374, 1, 1702619702, '', 'api-gallery-cat', 1, 0, '{\"id\":1,\"title\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\",\"cover_image_id\":132,\"description\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\"}', '{\"title\":\"Butter Cookies\",\"cover_image_id\":44,\"description\":\"Butter Cookies\"}', '1', 'gallery_cat', 0),
(375, 1, 1702621351, '', 'api-admin-queuelog', 0, 1, '{\"id\":1,\"queue_id\":\"1\",\"title\":\"luya\\\\admin\\\\jobs\\\\ScheduleJob\",\"push_timestamp\":1702621351,\"run_timestamp\":null,\"end_timestamp\":null,\"is_error\":null}', NULL, '1', '{{%admin_queue_log}}', 0),
(376, 1, 1702621351, '', 'api-admin-config', 0, 1, '{\"name\":\"queueScheduler.1\",\"value\":\"1\",\"is_system\":1,\"id\":6}', NULL, '6', '{{%admin_config}}', 0),
(377, 1, 1702621351, '', 'api-admin-queuelogerror', 0, 1, '{\"id\":1,\"queue_log_id\":1,\"message\":\"Undefined array key \\\"placeholder_var\\\"\",\"code\":\"2\",\"trace\":\"#0 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php(199): yii\\\\base\\\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\\\\\luya-kicksta...\', 199)\\n#1 [internal function]: luya\\\\cms\\\\models\\\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\\\db\\\\AfterSaveEvent))\\n#2 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\db\\\\AfterSaveEvent))\\n#3 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(1008): yii\\\\base\\\\Component->trigger(\'afterUpdate\', Object(yii\\\\db\\\\AfterSaveEvent))\\n#4 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(834): yii\\\\db\\\\BaseActiveRecord->afterSave(false, Array)\\n#5 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\ActiveRecord.php(680): yii\\\\db\\\\BaseActiveRecord->updateInternal(Array)\\n#6 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(690): yii\\\\db\\\\ActiveRecord->update(true, Array)\\n#7 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\models\\\\Scheduler.php(102): yii\\\\db\\\\BaseActiveRecord->save(true, Array)\\n#8 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\jobs\\\\ScheduleJob.php(32): luya\\\\admin\\\\models\\\\Scheduler->triggerJob()\\n#9 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\Queue.php(243): luya\\\\admin\\\\jobs\\\\ScheduleJob->execute(Object(yii\\\\queue\\\\db\\\\Queue))\\n#10 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(147): yii\\\\queue\\\\Queue->handleMessage(1, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 1)\\n#11 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(79): yii\\\\queue\\\\cli\\\\Queue->handleMessage(1, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 1)\\n#12 [internal function]: yii\\\\queue\\\\db\\\\Queue->yii\\\\queue\\\\db\\\\{closure}(Object(Closure))\\n#13 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\\n#14 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(76): yii\\\\queue\\\\cli\\\\Queue->runWorker(Object(Closure))\\n#15 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\apis\\\\CommonController.php(117): yii\\\\queue\\\\db\\\\Queue->run(false)\\n#16 [internal function]: luya\\\\admin\\\\apis\\\\CommonController->actionSchedulerAdd()\\n#17 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php(57): call_user_func_array(Array, Array)\\n#18 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php(178): yii\\\\base\\\\InlineAction->runWithParams(Array)\\n#19 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php(552): yii\\\\base\\\\Controller->runAction(\'scheduler-add\', Array)\\n#20 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php(103): yii\\\\base\\\\Module->runAction(\'admin/api-admin...\', Array)\\n#21 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\web\\\\Application.php(52): yii\\\\web\\\\Application->handleRequest(Object(luya\\\\web\\\\Request))\\n#22 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php(384): luya\\\\web\\\\Application->handleRequest(Object(luya\\\\web\\\\Request))\\n#23 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(251): yii\\\\base\\\\Application->run()\\n#24 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(195): luya\\\\base\\\\Boot->applicationWeb()\\n#25 C:\\\\luya-kickstarter-bootstrap4\\\\public_html\\\\index.php(8): luya\\\\base\\\\Boot->run()\\n#26 {main}\",\"file\":\"C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php\",\"line\":\"199\",\"created_at\":1702621351,\"updated_at\":1702621351}', NULL, '1', '{{%admin_queue_log_error}}', 0),
(378, 1, 1702621378, '', 'api-admin-queuelog', 0, 1, '{\"id\":2,\"queue_id\":\"2\",\"title\":\"luya\\\\admin\\\\jobs\\\\ScheduleJob\",\"push_timestamp\":1702621377,\"run_timestamp\":null,\"end_timestamp\":null,\"is_error\":null}', NULL, '2', '{{%admin_queue_log}}', 0),
(379, 1, 1702621378, '', 'api-admin-config', 0, 1, '{\"name\":\"queueScheduler.2\",\"value\":\"2\",\"is_system\":1,\"id\":7}', NULL, '7', '{{%admin_config}}', 0),
(380, 1, 1702621379, '', 'api-admin-queuelogerror', 0, 1, '{\"id\":2,\"queue_log_id\":2,\"message\":\"Undefined array key \\\"placeholder_var\\\"\",\"code\":\"2\",\"trace\":\"#0 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php(199): yii\\\\base\\\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\\\\\luya-kicksta...\', 199)\\n#1 [internal function]: luya\\\\cms\\\\models\\\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\\\db\\\\AfterSaveEvent))\\n#2 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\db\\\\AfterSaveEvent))\\n#3 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(1008): yii\\\\base\\\\Component->trigger(\'afterUpdate\', Object(yii\\\\db\\\\AfterSaveEvent))\\n#4 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(808): yii\\\\db\\\\BaseActiveRecord->afterSave(false, Array)\\n#5 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\ActiveRecord.php(680): yii\\\\db\\\\BaseActiveRecord->updateInternal(Array)\\n#6 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(690): yii\\\\db\\\\ActiveRecord->update(true, Array)\\n#7 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\models\\\\Scheduler.php(102): yii\\\\db\\\\BaseActiveRecord->save(true, Array)\\n#8 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\jobs\\\\ScheduleJob.php(32): luya\\\\admin\\\\models\\\\Scheduler->triggerJob()\\n#9 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\Queue.php(243): luya\\\\admin\\\\jobs\\\\ScheduleJob->execute(Object(yii\\\\queue\\\\db\\\\Queue))\\n#10 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(147): yii\\\\queue\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 1)\\n#11 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(79): yii\\\\queue\\\\cli\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 1)\\n#12 [internal function]: yii\\\\queue\\\\db\\\\Queue->yii\\\\queue\\\\db\\\\{closure}(Object(Closure))\\n#13 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\\n#14 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(76): yii\\\\queue\\\\cli\\\\Queue->runWorker(Object(Closure))\\n#15 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\apis\\\\CommonController.php(117): yii\\\\queue\\\\db\\\\Queue->run(false)\\n#16 [internal function]: luya\\\\admin\\\\apis\\\\CommonController->actionSchedulerAdd()\\n#17 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php(57): call_user_func_array(Array, Array)\\n#18 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php(178): yii\\\\base\\\\InlineAction->runWithParams(Array)\\n#19 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php(552): yii\\\\base\\\\Controller->runAction(\'scheduler-add\', Array)\\n#20 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php(103): yii\\\\base\\\\Module->runAction(\'admin/api-admin...\', Array)\\n#21 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\web\\\\Application.php(52): yii\\\\web\\\\Application->handleRequest(Object(luya\\\\web\\\\Request))\\n#22 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php(384): luya\\\\web\\\\Application->handleRequest(Object(luya\\\\web\\\\Request))\\n#23 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(251): yii\\\\base\\\\Application->run()\\n#24 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(195): luya\\\\base\\\\Boot->applicationWeb()\\n#25 C:\\\\luya-kickstarter-bootstrap4\\\\public_html\\\\index.php(8): luya\\\\base\\\\Boot->run()\\n#26 {main}\",\"file\":\"C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php\",\"line\":\"199\",\"created_at\":1702621379,\"updated_at\":1702621379}', NULL, '2', '{{%admin_queue_log_error}}', 0),
(381, 1, 1702622895, '', 'api-admin-queuelogerror', 0, 1, '{\"id\":3,\"queue_log_id\":2,\"message\":\"Undefined array key \\\"placeholder_var\\\"\",\"code\":\"2\",\"trace\":\"#0 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php(199): yii\\\\base\\\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\\\\\luya-kicksta...\', 199)\\n#1 [internal function]: luya\\\\cms\\\\models\\\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\\\db\\\\AfterSaveEvent))\\n#2 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\db\\\\AfterSaveEvent))\\n#3 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(1008): yii\\\\base\\\\Component->trigger(\'afterUpdate\', Object(yii\\\\db\\\\AfterSaveEvent))\\n#4 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(808): yii\\\\db\\\\BaseActiveRecord->afterSave(false, Array)\\n#5 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\ActiveRecord.php(680): yii\\\\db\\\\BaseActiveRecord->updateInternal(Array)\\n#6 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(690): yii\\\\db\\\\ActiveRecord->update(true, Array)\\n#7 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\models\\\\Scheduler.php(102): yii\\\\db\\\\BaseActiveRecord->save(true, Array)\\n#8 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\jobs\\\\ScheduleJob.php(32): luya\\\\admin\\\\models\\\\Scheduler->triggerJob()\\n#9 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\Queue.php(243): luya\\\\admin\\\\jobs\\\\ScheduleJob->execute(Object(yii\\\\queue\\\\db\\\\Queue))\\n#10 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(147): yii\\\\queue\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 2)\\n#11 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(79): yii\\\\queue\\\\cli\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 2)\\n#12 [internal function]: yii\\\\queue\\\\db\\\\Queue->yii\\\\queue\\\\db\\\\{closure}(Object(Closure))\\n#13 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\\n#14 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(76): yii\\\\queue\\\\cli\\\\Queue->runWorker(Object(Closure))\\n#15 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\Bootstrap.php(52): yii\\\\queue\\\\db\\\\Queue->run(false)\\n#16 [internal function]: luya\\\\admin\\\\Bootstrap->luya\\\\admin\\\\{closure}(Object(luya\\\\admin\\\\Bootstrap))\\n#17 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\traits\\\\CacheableTrait.php(110): call_user_func(Object(Closure), Object(luya\\\\admin\\\\Bootstrap))\\n#18 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\Bootstrap.php(47): luya\\\\admin\\\\Bootstrap->getOrSetHasCache(Array, Object(Closure), 1800)\\n#19 [internal function]: luya\\\\admin\\\\Bootstrap->runQueueJob(Object(yii\\\\base\\\\Event))\\n#20 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\base\\\\Event))\\n#21 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php(381): yii\\\\base\\\\Component->trigger(\'beforeRequest\')\\n#22 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(251): yii\\\\base\\\\Application->run()\\n#23 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(195): luya\\\\base\\\\Boot->applicationWeb()\\n#24 C:\\\\luya-kickstarter-bootstrap4\\\\public_html\\\\index.php(8): luya\\\\base\\\\Boot->run()\\n#25 {main}\",\"file\":\"C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php\",\"line\":\"199\",\"created_at\":1702622895,\"updated_at\":1702622895}', NULL, '3', '{{%admin_queue_log_error}}', 0),
(382, 1, 1702624408, '', 'api-admin-queuelogerror', 0, 1, '{\"id\":4,\"queue_log_id\":2,\"message\":\"Undefined array key \\\"placeholder_var\\\"\",\"code\":\"2\",\"trace\":\"#0 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php(199): yii\\\\base\\\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\\\\\luya-kicksta...\', 199)\\n#1 [internal function]: luya\\\\cms\\\\models\\\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\\\db\\\\AfterSaveEvent))\\n#2 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\db\\\\AfterSaveEvent))\\n#3 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(1008): yii\\\\base\\\\Component->trigger(\'afterUpdate\', Object(yii\\\\db\\\\AfterSaveEvent))\\n#4 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(808): yii\\\\db\\\\BaseActiveRecord->afterSave(false, Array)\\n#5 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\ActiveRecord.php(680): yii\\\\db\\\\BaseActiveRecord->updateInternal(Array)\\n#6 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(690): yii\\\\db\\\\ActiveRecord->update(true, Array)\\n#7 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\models\\\\Scheduler.php(102): yii\\\\db\\\\BaseActiveRecord->save(true, Array)\\n#8 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\jobs\\\\ScheduleJob.php(32): luya\\\\admin\\\\models\\\\Scheduler->triggerJob()\\n#9 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\Queue.php(243): luya\\\\admin\\\\jobs\\\\ScheduleJob->execute(Object(yii\\\\queue\\\\db\\\\Queue))\\n#10 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(147): yii\\\\queue\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 3)\\n#11 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(79): yii\\\\queue\\\\cli\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 3)\\n#12 [internal function]: yii\\\\queue\\\\db\\\\Queue->yii\\\\queue\\\\db\\\\{closure}(Object(Closure))\\n#13 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\\n#14 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(76): yii\\\\queue\\\\cli\\\\Queue->runWorker(Object(Closure))\\n#15 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\Bootstrap.php(52): yii\\\\queue\\\\db\\\\Queue->run(false)\\n#16 [internal function]: luya\\\\admin\\\\Bootstrap->luya\\\\admin\\\\{closure}(Object(luya\\\\admin\\\\Bootstrap))\\n#17 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\traits\\\\CacheableTrait.php(110): call_user_func(Object(Closure), Object(luya\\\\admin\\\\Bootstrap))\\n#18 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\Bootstrap.php(47): luya\\\\admin\\\\Bootstrap->getOrSetHasCache(Array, Object(Closure), 1800)\\n#19 [internal function]: luya\\\\admin\\\\Bootstrap->runQueueJob(Object(yii\\\\base\\\\Event))\\n#20 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\base\\\\Event))\\n#21 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php(381): yii\\\\base\\\\Component->trigger(\'beforeRequest\')\\n#22 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(251): yii\\\\base\\\\Application->run()\\n#23 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(195): luya\\\\base\\\\Boot->applicationWeb()\\n#24 C:\\\\luya-kickstarter-bootstrap4\\\\public_html\\\\index.php(8): luya\\\\base\\\\Boot->run()\\n#25 {main}\",\"file\":\"C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php\",\"line\":\"199\",\"created_at\":1702624408,\"updated_at\":1702624408}', NULL, '4', '{{%admin_queue_log_error}}', 0),
(383, 1, 1702625919, '', 'api-admin-queuelogerror', 0, 1, '{\"id\":5,\"queue_log_id\":2,\"message\":\"Undefined array key \\\"placeholder_var\\\"\",\"code\":\"2\",\"trace\":\"#0 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php(199): yii\\\\base\\\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\\\\\luya-kicksta...\', 199)\\n#1 [internal function]: luya\\\\cms\\\\models\\\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\\\db\\\\AfterSaveEvent))\\n#2 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\db\\\\AfterSaveEvent))\\n#3 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(1008): yii\\\\base\\\\Component->trigger(\'afterUpdate\', Object(yii\\\\db\\\\AfterSaveEvent))\\n#4 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(808): yii\\\\db\\\\BaseActiveRecord->afterSave(false, Array)\\n#5 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\ActiveRecord.php(680): yii\\\\db\\\\BaseActiveRecord->updateInternal(Array)\\n#6 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(690): yii\\\\db\\\\ActiveRecord->update(true, Array)\\n#7 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\models\\\\Scheduler.php(102): yii\\\\db\\\\BaseActiveRecord->save(true, Array)\\n#8 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\jobs\\\\ScheduleJob.php(32): luya\\\\admin\\\\models\\\\Scheduler->triggerJob()\\n#9 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\Queue.php(243): luya\\\\admin\\\\jobs\\\\ScheduleJob->execute(Object(yii\\\\queue\\\\db\\\\Queue))\\n#10 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(147): yii\\\\queue\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 4)\\n#11 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(79): yii\\\\queue\\\\cli\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 4)\\n#12 [internal function]: yii\\\\queue\\\\db\\\\Queue->yii\\\\queue\\\\db\\\\{closure}(Object(Closure))\\n#13 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\\n#14 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(76): yii\\\\queue\\\\cli\\\\Queue->runWorker(Object(Closure))\\n#15 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\Bootstrap.php(52): yii\\\\queue\\\\db\\\\Queue->run(false)\\n#16 [internal function]: luya\\\\admin\\\\Bootstrap->luya\\\\admin\\\\{closure}(Object(luya\\\\admin\\\\Bootstrap))\\n#17 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\traits\\\\CacheableTrait.php(110): call_user_func(Object(Closure), Object(luya\\\\admin\\\\Bootstrap))\\n#18 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\Bootstrap.php(47): luya\\\\admin\\\\Bootstrap->getOrSetHasCache(Array, Object(Closure), 1800)\\n#19 [internal function]: luya\\\\admin\\\\Bootstrap->runQueueJob(Object(yii\\\\base\\\\Event))\\n#20 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\base\\\\Event))\\n#21 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php(381): yii\\\\base\\\\Component->trigger(\'beforeRequest\')\\n#22 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(251): yii\\\\base\\\\Application->run()\\n#23 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(195): luya\\\\base\\\\Boot->applicationWeb()\\n#24 C:\\\\luya-kickstarter-bootstrap4\\\\public_html\\\\index.php(8): luya\\\\base\\\\Boot->run()\\n#25 {main}\",\"file\":\"C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php\",\"line\":\"199\",\"created_at\":1702625919,\"updated_at\":1702625919}', NULL, '5', '{{%admin_queue_log_error}}', 0),
(384, 1, 1702627430, '', 'api-admin-queuelogerror', 0, 1, '{\"id\":6,\"queue_log_id\":2,\"message\":\"Undefined array key \\\"placeholder_var\\\"\",\"code\":\"2\",\"trace\":\"#0 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php(199): yii\\\\base\\\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\\\\\luya-kicksta...\', 199)\\n#1 [internal function]: luya\\\\cms\\\\models\\\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\\\db\\\\AfterSaveEvent))\\n#2 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\db\\\\AfterSaveEvent))\\n#3 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(1008): yii\\\\base\\\\Component->trigger(\'afterUpdate\', Object(yii\\\\db\\\\AfterSaveEvent))\\n#4 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(808): yii\\\\db\\\\BaseActiveRecord->afterSave(false, Array)\\n#5 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\ActiveRecord.php(680): yii\\\\db\\\\BaseActiveRecord->updateInternal(Array)\\n#6 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(690): yii\\\\db\\\\ActiveRecord->update(true, Array)\\n#7 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\models\\\\Scheduler.php(102): yii\\\\db\\\\BaseActiveRecord->save(true, Array)\\n#8 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\jobs\\\\ScheduleJob.php(32): luya\\\\admin\\\\models\\\\Scheduler->triggerJob()\\n#9 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\Queue.php(243): luya\\\\admin\\\\jobs\\\\ScheduleJob->execute(Object(yii\\\\queue\\\\db\\\\Queue))\\n#10 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(147): yii\\\\queue\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 5)\\n#11 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(79): yii\\\\queue\\\\cli\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 5)\\n#12 [internal function]: yii\\\\queue\\\\db\\\\Queue->yii\\\\queue\\\\db\\\\{closure}(Object(Closure))\\n#13 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\\n#14 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(76): yii\\\\queue\\\\cli\\\\Queue->runWorker(Object(Closure))\\n#15 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\Bootstrap.php(52): yii\\\\queue\\\\db\\\\Queue->run(false)\\n#16 [internal function]: luya\\\\admin\\\\Bootstrap->luya\\\\admin\\\\{closure}(Object(luya\\\\admin\\\\Bootstrap))\\n#17 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\traits\\\\CacheableTrait.php(110): call_user_func(Object(Closure), Object(luya\\\\admin\\\\Bootstrap))\\n#18 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\Bootstrap.php(47): luya\\\\admin\\\\Bootstrap->getOrSetHasCache(Array, Object(Closure), 1800)\\n#19 [internal function]: luya\\\\admin\\\\Bootstrap->runQueueJob(Object(yii\\\\base\\\\Event))\\n#20 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\base\\\\Event))\\n#21 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php(381): yii\\\\base\\\\Component->trigger(\'beforeRequest\')\\n#22 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(251): yii\\\\base\\\\Application->run()\\n#23 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(195): luya\\\\base\\\\Boot->applicationWeb()\\n#24 C:\\\\luya-kickstarter-bootstrap4\\\\public_html\\\\index.php(8): luya\\\\base\\\\Boot->run()\\n#25 {main}\",\"file\":\"C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php\",\"line\":\"199\",\"created_at\":1702627430,\"updated_at\":1702627430}', NULL, '6', '{{%admin_queue_log_error}}', 0),
(385, 1, 1702741026, '', 'api-cms-layout', 1, 0, '{\"id\":5,\"name\":\"Cake Baker - Twocol\",\"json_config\":\"{\\\"placeholders\\\":[[{\\\"label\\\":\\\"Left\\\",\\\"var\\\":\\\"left\\\"},{\\\"label\\\":\\\"Right\\\",\\\"var\\\":\\\"right\\\"}]]}\",\"view_file\":\"@app/themes/cakeBaker/views\\\\cmslayouts\\\\twocol.php\"}', '[]', '5', 'cms_layout', 0),
(386, 1, 1702792682, '', 'api-catalog-feature', 1, 0, '{\"id\":9,\"name\":\"Version\",\"input\":\"zaa-select\",\"type\":1,\"position\":2,\"enabled\":1}', '{\"input\":\"\",\"type\":0}', '9', 'catalog_feature', 0),
(387, 1, 1702792837, '', 'api-catalog-feature', 1, 0, '{\"id\":8,\"name\":\"Size\",\"input\":\"zaa-select\",\"type\":1,\"position\":1,\"enabled\":1}', '{\"input\":\"\",\"type\":0}', '8', 'catalog_feature', 0),
(388, 1, 1702793200, '', 'api-catalog-feature', 0, 1, '{\"id\":10,\"name\":\"Message\",\"input\":\"zaa-textarea\",\"type\":3,\"position\":3,\"enabled\":1}', NULL, '10', 'catalog_feature', 0),
(389, 1, 1702887321, '', '', 0, 1, '{\"id\":31,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"best-product-5.jpg\",\"name_new\":\"best-product-5\",\"name_new_compound\":\"best-product-5_7a25d4cf.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"88f5965d0e7669242a96a2f7a7469fd6\",\"hash_name\":\"7a25d4cf\",\"upload_timestamp\":1702887321,\"file_size\":30441,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1702887321}', NULL, '31', '{{%admin_storage_file}}', 0),
(390, 1, 1702887322, '', 'api-admin-storageimage', 0, 1, '{\"id\":133,\"file_id\":31,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1702887322,\"updated_at\":1702887322}', NULL, '133', '{{%admin_storage_image}}', 0),
(391, 1, 1702887322, '', 'api-admin-storageimage', 0, 1, '{\"id\":134,\"file_id\":31,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1702887322,\"updated_at\":1702887322}', NULL, '134', '{{%admin_storage_image}}', 0),
(392, 1, 1702887349, '', 'api-admin-storageimage', 0, 1, '{\"id\":135,\"file_id\":31,\"filter_id\":0,\"resolution_width\":500,\"resolution_height\":500,\"created_at\":1702887349,\"updated_at\":1702887349}', NULL, '135', '{{%admin_storage_image}}', 0),
(393, 1, 1702888923, '', 'api-admin-storageimage', 0, 1, '{\"id\":136,\"file_id\":26,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1702888923,\"updated_at\":1702888923}', NULL, '136', '{{%admin_storage_image}}', 0),
(394, 1, 1702889072, '', 'api-cms-layout', 1, 0, '{\"id\":5,\"name\":\"Cake Baker - Twocol\",\"json_config\":\"{\\\"placeholders\\\":[[{\\\"label\\\":\\\"Top\\\",\\\"var\\\":\\\"top\\\"},{\\\"label\\\":\\\"Left\\\",\\\"var\\\":\\\"left\\\"},{\\\"label\\\":\\\"Right\\\",\\\"var\\\":\\\"right\\\"},{\\\"label\\\":\\\"Bottom\\\",\\\"var\\\":\\\"bottom\\\"}]]}\",\"view_file\":\"@app/themes/cakeBaker/views\\\\cmslayouts\\\\twocol.php\"}', '[]', '5', 'cms_layout', 0),
(395, 1, 1702889309, '', 'api-cms-layout', 1, 0, '{\"id\":6,\"name\":\"Twocols\",\"json_config\":\"{\\\"placeholders\\\":[[{\\\"label\\\":\\\"Left\\\",\\\"var\\\":\\\"left\\\"},{\\\"label\\\":\\\"Right\\\",\\\"var\\\":\\\"right\\\"}]]}\",\"view_file\":\"@app/views/cmslayouts\\\\twocol.php\"}', '{\"name\":\"Twocol\"}', '6', 'cms_layout', 0),
(396, 1, 1702889324, '', 'api-cms-layout', 1, 0, '{\"id\":6,\"name\":\"Twocols\",\"json_config\":\"{\\\"placeholders\\\":[[{\\\"label\\\":\\\"Left\\\",\\\"var\\\":\\\"left\\\"},{\\\"label\\\":\\\"Right\\\",\\\"var\\\":\\\"right\\\"}]]}\",\"view_file\":\"@app/views/cmslayouts\\\\twocol.php\"}', '[]', '6', 'cms_layout', 0),
(397, 1, 1702893938, '', 'api-cms-layout', 1, 0, '{\"id\":8,\"name\":\"Cake Baker - Twocol2\",\"json_config\":\"{\\\"placeholders\\\":[[{\\\"label\\\":\\\"Top\\\",\\\"var\\\":\\\"top\\\"},{\\\"label\\\":\\\"Left\\\",\\\"var\\\":\\\"left\\\"},{\\\"label\\\":\\\"Right\\\",\\\"var\\\":\\\"right\\\"},{\\\"label\\\":\\\"Bottom\\\",\\\"var\\\":\\\"bottom\\\"}]]}\",\"view_file\":\"@app/themes/cakeBaker/views\\\\cmslayouts\\\\twocol2.php\"}', '[]', '8', 'cms_layout', 0),
(398, 1, 1702966581, '', 'api-admin-storageimage', 0, 1, '{\"id\":137,\"file_id\":31,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1702966581,\"updated_at\":1702966581}', NULL, '137', '{{%admin_storage_image}}', 0);
INSERT INTO `admin_ngrest_log` (`id`, `user_id`, `timestamp_create`, `route`, `api`, `is_update`, `is_insert`, `attributes_json`, `attributes_diff_json`, `pk_value`, `table_name`, `is_delete`) VALUES
(399, 1, 1702966713, '', '', 0, 1, '{\"id\":32,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"0-removebg-preview.png\",\"name_new\":\"0-removebg-preview\",\"name_new_compound\":\"0-removebg-preview_5d8d21d7.png\",\"mime_type\":\"image/png\",\"extension\":\"png\",\"hash_file\":\"7365fafadd9264be4fec87a492a43801\",\"hash_name\":\"5d8d21d7\",\"upload_timestamp\":1702966713,\"file_size\":345799,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1702966713}', NULL, '32', '{{%admin_storage_file}}', 0),
(400, 1, 1702966791, '', 'api-admin-storageimage', 0, 1, '{\"id\":138,\"file_id\":32,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1702966791,\"updated_at\":1702966791}', NULL, '138', '{{%admin_storage_image}}', 0),
(401, 1, 1702966791, '', 'api-admin-storageimage', 0, 1, '{\"id\":139,\"file_id\":32,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":226,\"created_at\":1702966791,\"updated_at\":1702966791}', NULL, '139', '{{%admin_storage_image}}', 0),
(402, 1, 1702977912, '', '', 0, 1, '{\"id\":33,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"bg.jpg\",\"name_new\":\"bg\",\"name_new_compound\":\"bg_e4919bcd.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"79abc63662fb2386a854595e0bdce13b\",\"hash_name\":\"e4919bcd\",\"upload_timestamp\":1702977912,\"file_size\":168691,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1702977912}', NULL, '33', '{{%admin_storage_file}}', 0),
(403, 1, 1702977912, '', 'api-admin-storageimage', 0, 1, '{\"id\":140,\"file_id\":33,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1702977912,\"updated_at\":1702977912}', NULL, '140', '{{%admin_storage_image}}', 0),
(404, 1, 1702977912, '', 'api-admin-storageimage', 0, 1, '{\"id\":141,\"file_id\":33,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":200,\"created_at\":1702977912,\"updated_at\":1702977912}', NULL, '141', '{{%admin_storage_image}}', 0),
(405, 1, 1702977920, '', 'api-admin-storageimage', 0, 1, '{\"id\":142,\"file_id\":33,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1702977920,\"updated_at\":1702977920}', NULL, '142', '{{%admin_storage_image}}', 0),
(406, 1, 1702977925, '', 'api-admin-storageimage', 0, 1, '{\"id\":143,\"file_id\":33,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":593,\"created_at\":1702977925,\"updated_at\":1702977925}', NULL, '143', '{{%admin_storage_image}}', 0),
(407, 1, 1702978111, '', '', 0, 1, '{\"id\":34,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"1.jpg\",\"name_new\":\"1\",\"name_new_compound\":\"1_ec5c6a9b.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"d91cccf188e339f3e49c61d8edaae396\",\"hash_name\":\"ec5c6a9b\",\"upload_timestamp\":1702978111,\"file_size\":42563,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1702978111}', NULL, '34', '{{%admin_storage_file}}', 0),
(408, 1, 1702978111, '', 'api-admin-storageimage', 0, 1, '{\"id\":144,\"file_id\":34,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1702978111,\"updated_at\":1702978111}', NULL, '144', '{{%admin_storage_image}}', 0),
(409, 1, 1702978111, '', 'api-admin-storageimage', 0, 1, '{\"id\":145,\"file_id\":34,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":201,\"created_at\":1702978111,\"updated_at\":1702978111}', NULL, '145', '{{%admin_storage_image}}', 0),
(410, 1, 1702978114, '', 'api-admin-storageimage', 0, 1, '{\"id\":146,\"file_id\":34,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":534,\"created_at\":1702978114,\"updated_at\":1702978114}', NULL, '146', '{{%admin_storage_image}}', 0),
(411, 1, 1702978119, '', 'api-admin-storageimage', 0, 1, '{\"id\":147,\"file_id\":34,\"filter_id\":0,\"resolution_width\":800,\"resolution_height\":534,\"created_at\":1702978119,\"updated_at\":1702978119}', NULL, '147', '{{%admin_storage_image}}', 0),
(412, 1, 1702979749, '', 'api-catalog-product', 1, 0, '{\"id\":29,\"name\":\"Butter Cookies\",\"slug\":\"butter-cookies\",\"brand_id\":null,\"cover_image_id\":92,\"images_list\":null,\"teaser\":null,\"text\":null,\"created_at\":2147483647,\"updated_at\":2147483647,\"price_from\":25,\"view\":null,\"position\":0,\"enabled\":1}', '[]', '29', 'catalog_product', 0),
(413, 1, 1702980106, '', 'api-catalog-product', 1, 0, '{\"id\":28,\"name\":\"Chocolate Cake\",\"slug\":\"chocolate-cake\",\"brand_id\":null,\"cover_image_id\":75,\"images_list\":null,\"teaser\":null,\"text\":null,\"created_at\":2147483647,\"updated_at\":2147483647,\"price_from\":1250,\"view\":\"1\",\"position\":1,\"enabled\":1}', '[]', '28', 'catalog_product', 0),
(414, 1, 1702994417, '', '', 0, 1, '{\"id\":35,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"cart-page-header-img.jpg\",\"name_new\":\"cart-page-header-img\",\"name_new_compound\":\"cart-page-header-img_7f071c47.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"d287b5c5c719b8b01946ca12b8b184aa\",\"hash_name\":\"7f071c47\",\"upload_timestamp\":1702994417,\"file_size\":37306,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1702994417}', NULL, '35', '{{%admin_storage_file}}', 0),
(415, 1, 1702994418, '', 'api-admin-storageimage', 0, 1, '{\"id\":148,\"file_id\":35,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1702994418,\"updated_at\":1702994418}', NULL, '148', '{{%admin_storage_image}}', 0),
(416, 1, 1702994418, '', 'api-admin-storageimage', 0, 1, '{\"id\":149,\"file_id\":35,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":47,\"created_at\":1702994418,\"updated_at\":1702994418}', NULL, '149', '{{%admin_storage_image}}', 0),
(417, 1, 1702994423, '', 'api-admin-storageimage', 0, 1, '{\"id\":150,\"file_id\":35,\"filter_id\":0,\"resolution_width\":1920,\"resolution_height\":300,\"created_at\":1702994423,\"updated_at\":1702994423}', NULL, '150', '{{%admin_storage_image}}', 0),
(418, 1, 1703138131, '', '', 0, 1, '{\"id\":36,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"vegetable-item-1.jpg\",\"name_new\":\"vegetable-item-1\",\"name_new_compound\":\"vegetable-item-1_4d60fefd.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"b4f15ebc4566cc80de0dc18d0e81f401\",\"hash_name\":\"4d60fefd\",\"upload_timestamp\":1703138131,\"file_size\":26589,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1703138131}', NULL, '36', '{{%admin_storage_file}}', 0),
(419, 1, 1703138145, '', 'api-admin-storageimage', 0, 1, '{\"id\":151,\"file_id\":36,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1703138145,\"updated_at\":1703138145}', NULL, '151', '{{%admin_storage_image}}', 0),
(420, 1, 1703138145, '', 'api-admin-storageimage', 0, 1, '{\"id\":152,\"file_id\":36,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":240,\"created_at\":1703138145,\"updated_at\":1703138145}', NULL, '152', '{{%admin_storage_image}}', 0),
(421, 1, 1703138151, '', 'api-admin-storageimage', 0, 1, '{\"id\":153,\"file_id\":36,\"filter_id\":0,\"resolution_width\":500,\"resolution_height\":400,\"created_at\":1703138151,\"updated_at\":1703138151}', NULL, '153', '{{%admin_storage_image}}', 0),
(422, 1, 1703138160, '', 'api-admin-storageimage', 0, 1, '{\"id\":154,\"file_id\":36,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1703138160,\"updated_at\":1703138160}', NULL, '154', '{{%admin_storage_image}}', 0),
(423, 1, 1703152148, '', '', 0, 1, '{\"id\":37,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"7.jpg\",\"name_new\":\"7\",\"name_new_compound\":\"7_129d6d4c.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"3bc23eae4b7fb648efa603872746738a\",\"hash_name\":\"129d6d4c\",\"upload_timestamp\":1703152148,\"file_size\":68512,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1703152148}', NULL, '37', '{{%admin_storage_file}}', 0),
(424, 1, 1703152148, '', 'api-admin-storageimage', 0, 1, '{\"id\":155,\"file_id\":37,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1703152148,\"updated_at\":1703152148}', NULL, '155', '{{%admin_storage_image}}', 0),
(425, 1, 1703152148, '', 'api-admin-storageimage', 0, 1, '{\"id\":156,\"file_id\":37,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1703152148,\"updated_at\":1703152148}', NULL, '156', '{{%admin_storage_image}}', 0),
(426, 1, 1703152151, '', 'api-admin-storageimage', 0, 1, '{\"id\":157,\"file_id\":37,\"filter_id\":0,\"resolution_width\":564,\"resolution_height\":564,\"created_at\":1703152151,\"updated_at\":1703152151}', NULL, '157', '{{%admin_storage_image}}', 0),
(427, 1, 1703153799, '', 'api-admin-storageimage', 0, 1, '{\"id\":158,\"file_id\":37,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1703153799,\"updated_at\":1703153799}', NULL, '158', '{{%admin_storage_image}}', 0),
(428, 0, 1703168286, '', 'api-admin-storageimage', 0, 1, '{\"id\":159,\"file_id\":23,\"filter_id\":7,\"resolution_width\":100,\"resolution_height\":146,\"created_at\":1703168286,\"updated_at\":1703168286}', NULL, '159', '{{%admin_storage_image}}', 0),
(429, 0, 1703168286, '', 'api-admin-storageimage', 0, 1, '{\"id\":160,\"file_id\":7,\"filter_id\":7,\"resolution_width\":100,\"resolution_height\":57,\"created_at\":1703168286,\"updated_at\":1703168286}', NULL, '160', '{{%admin_storage_image}}', 0),
(430, 0, 1703168287, '', 'api-admin-storageimage', 0, 1, '{\"id\":161,\"file_id\":10,\"filter_id\":7,\"resolution_width\":100,\"resolution_height\":67,\"created_at\":1703168287,\"updated_at\":1703168287}', NULL, '161', '{{%admin_storage_image}}', 0),
(431, 0, 1703176969, '', 'api-admin-storageimage', 0, 1, '{\"id\":162,\"file_id\":23,\"filter_id\":5,\"resolution_width\":100,\"resolution_height\":100,\"created_at\":1703176969,\"updated_at\":1703176969}', NULL, '162', '{{%admin_storage_image}}', 0),
(432, 0, 1703176969, '', 'api-admin-storageimage', 0, 1, '{\"id\":163,\"file_id\":7,\"filter_id\":5,\"resolution_width\":100,\"resolution_height\":100,\"created_at\":1703176969,\"updated_at\":1703176969}', NULL, '163', '{{%admin_storage_image}}', 0),
(433, 0, 1703176969, '', 'api-admin-storageimage', 0, 1, '{\"id\":164,\"file_id\":10,\"filter_id\":5,\"resolution_width\":100,\"resolution_height\":100,\"created_at\":1703176969,\"updated_at\":1703176969}', NULL, '164', '{{%admin_storage_image}}', 0),
(434, 1, 1703178093, '', 'api-admin-storageimage', 0, 1, '{\"id\":165,\"file_id\":37,\"filter_id\":1,\"resolution_width\":564,\"resolution_height\":564,\"created_at\":1703178093,\"updated_at\":1703178093}', NULL, '165', '{{%admin_storage_image}}', 0),
(435, 1, 1703178100, '', 'api-catalog-group', 1, 0, '{\"id\":7,\"parent_id\":0,\"name\":\"Cakes\",\"slug\":\"cakes\",\"cover_image_id\":165,\"images_list\":null,\"teaser\":\"delicious cakes\",\"text\":\"A cake is a type of flour confection that is usually baked and made from flour, sugar, eggs, fat, a liquid, and a leavening agent, such as baking soda or baking powder. Cakes can be simple or elaborate and share features with desserts such as pastries, meringues, custards, and pies. The most common ingredients include flour, sugar, eggs, fat (such as butter, oil, or margarine), a liquid, and a leavening agent, such as baking soda or baking powder. Common additional ingredients include dried, candied, or fresh fruit, nuts, cocoa, and...\",\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"main\":1,\"position\":1,\"enabled\":1}', '{\"cover_image_id\":86,\"updated_at\":2147483647}', '7', 'catalog_group', 0),
(436, 1, 1703178146, '', '', 0, 1, '{\"id\":38,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"8.jpg\",\"name_new\":\"8\",\"name_new_compound\":\"8_5c298e59.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"cea08b4d231a255a77387dae96e5ed2d\",\"hash_name\":\"5c298e59\",\"upload_timestamp\":1703178146,\"file_size\":43801,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1703178146}', NULL, '38', '{{%admin_storage_file}}', 0),
(437, 1, 1703178146, '', 'api-admin-storageimage', 0, 1, '{\"id\":166,\"file_id\":38,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1703178146,\"updated_at\":1703178146}', NULL, '166', '{{%admin_storage_image}}', 0),
(438, 1, 1703178146, '', 'api-admin-storageimage', 0, 1, '{\"id\":167,\"file_id\":38,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1703178146,\"updated_at\":1703178146}', NULL, '167', '{{%admin_storage_image}}', 0),
(439, 1, 1703178152, '', 'api-admin-storageimage', 0, 1, '{\"id\":168,\"file_id\":38,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1703178152,\"updated_at\":1703178152}', NULL, '168', '{{%admin_storage_image}}', 0),
(440, 1, 1703178159, '', 'api-catalog-group', 1, 0, '{\"id\":8,\"parent_id\":0,\"name\":\"Cookies\",\"slug\":\"cookies\",\"cover_image_id\":168,\"images_list\":null,\"teaser\":\"crispy cookies\",\"text\":null,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"main\":1,\"position\":2,\"enabled\":1}', '{\"cover_image_id\":24,\"updated_at\":2147483647}', '8', 'catalog_group', 0),
(441, 1, 1703178195, '', '', 0, 1, '{\"id\":39,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"7.jpg\",\"name_new\":\"7\",\"name_new_compound\":\"7_3c58e327.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"da2322d2effb7fd070d69614fbf7bd8f\",\"hash_name\":\"3c58e327\",\"upload_timestamp\":1703178195,\"file_size\":13890,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1703178195}', NULL, '39', '{{%admin_storage_file}}', 0),
(442, 1, 1703178195, '', 'api-admin-storageimage', 0, 1, '{\"id\":169,\"file_id\":39,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1703178195,\"updated_at\":1703178195}', NULL, '169', '{{%admin_storage_image}}', 0),
(443, 1, 1703178195, '', 'api-admin-storageimage', 0, 1, '{\"id\":170,\"file_id\":39,\"filter_id\":4,\"resolution_width\":266,\"resolution_height\":190,\"created_at\":1703178195,\"updated_at\":1703178195}', NULL, '170', '{{%admin_storage_image}}', 0),
(444, 1, 1703178197, '', 'api-admin-storageimage', 0, 1, '{\"id\":171,\"file_id\":39,\"filter_id\":3,\"resolution_width\":266,\"resolution_height\":190,\"created_at\":1703178197,\"updated_at\":1703178197}', NULL, '171', '{{%admin_storage_image}}', 0),
(445, 1, 1703178201, '', 'api-catalog-group', 1, 0, '{\"id\":9,\"parent_id\":\"\",\"name\":\"Cupcakes\",\"slug\":\"cupcakes\",\"cover_image_id\":171,\"images_list\":null,\"teaser\":\"Cupcakes\",\"text\":\"Cupcakes\",\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"main\":1,\"position\":3,\"enabled\":1}', '{\"parent_id\":null,\"cover_image_id\":34,\"updated_at\":2147483647}', '9', 'catalog_group', 0),
(446, 1, 1703178317, '', '', 0, 1, '{\"id\":40,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"15.jpg\",\"name_new\":\"15\",\"name_new_compound\":\"15_ba8fdabd.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"1924e7d32514cc0962d5d710c78fac26\",\"hash_name\":\"ba8fdabd\",\"upload_timestamp\":1703178317,\"file_size\":106360,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1703178317}', NULL, '40', '{{%admin_storage_file}}', 0),
(447, 1, 1703178317, '', 'api-admin-storageimage', 0, 1, '{\"id\":172,\"file_id\":40,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1703178317,\"updated_at\":1703178317}', NULL, '172', '{{%admin_storage_image}}', 0),
(448, 1, 1703178317, '', 'api-admin-storageimage', 0, 1, '{\"id\":173,\"file_id\":40,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":189,\"created_at\":1703178317,\"updated_at\":1703178317}', NULL, '173', '{{%admin_storage_image}}', 0),
(449, 1, 1703178320, '', 'api-admin-storageimage', 0, 1, '{\"id\":174,\"file_id\":40,\"filter_id\":0,\"resolution_width\":1000,\"resolution_height\":630,\"created_at\":1703178320,\"updated_at\":1703178320}', NULL, '174', '{{%admin_storage_image}}', 0),
(450, 1, 1703178333, '', 'api-admin-storageimage', 0, 1, '{\"id\":175,\"file_id\":40,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":630,\"created_at\":1703178333,\"updated_at\":1703178333}', NULL, '175', '{{%admin_storage_image}}', 0),
(451, 1, 1703178374, '', 'api-catalog-group', 0, 1, '{\"id\":10,\"parent_id\":\"\",\"name\":\"Bread\",\"slug\":\"bread\",\"cover_image_id\":175,\"images_list\":null,\"teaser\":\"Hot Bread\",\"text\":\"bread\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"main\":1,\"position\":6,\"enabled\":\"1\"}', NULL, '10', 'catalog_group', 0),
(452, 1, 1703178377, '', 'api-admin-storageimage', 0, 1, '{\"id\":176,\"file_id\":40,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1703178377,\"updated_at\":1703178377}', NULL, '176', '{{%admin_storage_image}}', 0),
(453, 1, 1703178508, '', '', 0, 1, '{\"id\":41,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"10.jpg\",\"name_new\":\"10\",\"name_new_compound\":\"10_558b1df5.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"092a0fffdc4c47e0cae18fee86b559c2\",\"hash_name\":\"558b1df5\",\"upload_timestamp\":1703178508,\"file_size\":32001,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1703178508}', NULL, '41', '{{%admin_storage_file}}', 0),
(454, 1, 1703178508, '', 'api-admin-storageimage', 0, 1, '{\"id\":177,\"file_id\":41,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1703178508,\"updated_at\":1703178508}', NULL, '177', '{{%admin_storage_image}}', 0),
(455, 1, 1703178508, '', 'api-admin-storageimage', 0, 1, '{\"id\":178,\"file_id\":41,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":261,\"created_at\":1703178508,\"updated_at\":1703178508}', NULL, '178', '{{%admin_storage_image}}', 0),
(456, 1, 1703178515, '', 'api-admin-storageimage', 0, 1, '{\"id\":179,\"file_id\":41,\"filter_id\":0,\"resolution_width\":473,\"resolution_height\":410,\"created_at\":1703178515,\"updated_at\":1703178515}', NULL, '179', '{{%admin_storage_image}}', 0),
(457, 1, 1703178518, '', 'api-catalog-group', 0, 1, '{\"id\":11,\"parent_id\":\"\",\"name\":\"Pasteries\",\"slug\":\"pasteries\",\"cover_image_id\":179,\"images_list\":null,\"teaser\":\"pasteries\",\"text\":\"Pasteries\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"main\":1,\"position\":8,\"enabled\":\"1\"}', NULL, '11', 'catalog_group', 0),
(458, 1, 1703178521, '', 'api-admin-storageimage', 0, 1, '{\"id\":180,\"file_id\":41,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1703178521,\"updated_at\":1703178521}', NULL, '180', '{{%admin_storage_image}}', 0),
(459, 1, 1703179401, '', '', 0, 1, '{\"id\":42,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"13.jpg\",\"name_new\":\"13\",\"name_new_compound\":\"13_f3fa3cd4.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"7c9900af0b8e48480278bb0961c497a9\",\"hash_name\":\"f3fa3cd4\",\"upload_timestamp\":1703179401,\"file_size\":14297,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1703179401}', NULL, '42', '{{%admin_storage_file}}', 0),
(460, 1, 1703179402, '', 'api-admin-storageimage', 0, 1, '{\"id\":181,\"file_id\":42,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1703179402,\"updated_at\":1703179402}', NULL, '181', '{{%admin_storage_image}}', 0),
(461, 1, 1703179402, '', 'api-admin-storageimage', 0, 1, '{\"id\":182,\"file_id\":42,\"filter_id\":4,\"resolution_width\":259,\"resolution_height\":194,\"created_at\":1703179402,\"updated_at\":1703179402}', NULL, '182', '{{%admin_storage_image}}', 0),
(462, 1, 1703179404, '', 'api-admin-storageimage', 0, 1, '{\"id\":183,\"file_id\":42,\"filter_id\":0,\"resolution_width\":259,\"resolution_height\":194,\"created_at\":1703179404,\"updated_at\":1703179404}', NULL, '183', '{{%admin_storage_image}}', 0),
(463, 1, 1703179468, '', 'api-catalog-group', 0, 1, '{\"id\":12,\"parent_id\":\"\",\"name\":\"Party Props\",\"slug\":\"party-props\",\"cover_image_id\":183,\"images_list\":null,\"teaser\":\"Party Decoration Items\",\"text\":\"Party Decoration items\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"main\":1,\"position\":10,\"enabled\":\"0\"}', NULL, '12', 'catalog_group', 0),
(464, 1, 1703179510, '', 'api-catalog-group', 1, 0, '{\"id\":12,\"parent_id\":null,\"name\":\"Party Props\",\"slug\":\"party-props\",\"cover_image_id\":183,\"images_list\":null,\"teaser\":\"Party Decoration Items\",\"text\":\"Party Decoration items\",\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"main\":1,\"position\":6,\"enabled\":1}', '{\"updated_at\":2147483647,\"enabled\":0}', '12', 'catalog_group', 0),
(465, 1, 1703179513, '', 'api-admin-storageimage', 0, 1, '{\"id\":184,\"file_id\":42,\"filter_id\":3,\"resolution_width\":259,\"resolution_height\":194,\"created_at\":1703179513,\"updated_at\":1703179513}', NULL, '184', '{{%admin_storage_image}}', 0),
(466, 1, 1703179638, '', '', 0, 1, '{\"id\":43,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"5.jpg\",\"name_new\":\"5\",\"name_new_compound\":\"5_5126c542.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"6890b52976e00b2d50c19c728dbee0df\",\"hash_name\":\"5126c542\",\"upload_timestamp\":1703179638,\"file_size\":15756,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1703179638}', NULL, '43', '{{%admin_storage_file}}', 0),
(467, 1, 1703179639, '', 'api-admin-storageimage', 0, 1, '{\"id\":185,\"file_id\":43,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1703179639,\"updated_at\":1703179639}', NULL, '185', '{{%admin_storage_image}}', 0),
(468, 1, 1703179639, '', 'api-admin-storageimage', 0, 1, '{\"id\":186,\"file_id\":43,\"filter_id\":4,\"resolution_width\":281,\"resolution_height\":180,\"created_at\":1703179639,\"updated_at\":1703179639}', NULL, '186', '{{%admin_storage_image}}', 0),
(469, 1, 1703179778, '', 'api-admin-storageimage', 0, 1, '{\"id\":187,\"file_id\":43,\"filter_id\":0,\"resolution_width\":281,\"resolution_height\":180,\"created_at\":1703179778,\"updated_at\":1703179778}', NULL, '187', '{{%admin_storage_image}}', 0),
(470, 1, 1703179852, '', 'api-catalog-group', 0, 1, '{\"id\":13,\"parent_id\":\"\",\"name\":\"Waffles\",\"slug\":\"waffles\",\"cover_image_id\":187,\"images_list\":null,\"teaser\":\"Waffles\",\"text\":\"Waffles\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"main\":1,\"position\":12,\"enabled\":\"1\"}', NULL, '13', 'catalog_group', 0),
(471, 1, 1703179872, '', 'api-admin-storageimage', 0, 1, '{\"id\":188,\"file_id\":43,\"filter_id\":3,\"resolution_width\":281,\"resolution_height\":180,\"created_at\":1703179872,\"updated_at\":1703179872}', NULL, '188', '{{%admin_storage_image}}', 0),
(472, 1, 1703267599, '', '', 0, 1, '{\"id\":44,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"3.jpg\",\"name_new\":\"3\",\"name_new_compound\":\"3_fb06eed3.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"ab722fc1763cfe0830e363a5308d1c82\",\"hash_name\":\"fb06eed3\",\"upload_timestamp\":1703267599,\"file_size\":32383,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1703267599}', NULL, '44', '{{%admin_storage_file}}', 0),
(473, 1, 1703267600, '', 'api-admin-storageimage', 0, 1, '{\"id\":189,\"file_id\":44,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1703267600,\"updated_at\":1703267600}', NULL, '189', '{{%admin_storage_image}}', 0),
(474, 1, 1703267600, '', 'api-admin-storageimage', 0, 1, '{\"id\":190,\"file_id\":44,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":200,\"created_at\":1703267600,\"updated_at\":1703267600}', NULL, '190', '{{%admin_storage_image}}', 0),
(475, 1, 1703267605, '', 'api-admin-storageimage', 0, 1, '{\"id\":191,\"file_id\":30,\"filter_id\":0,\"resolution_width\":1200,\"resolution_height\":800,\"created_at\":1703267605,\"updated_at\":1703267605}', NULL, '191', '{{%admin_storage_image}}', 0),
(476, 1, 1703267715, '', 'api-catalog-article', 0, 1, '{\"id\":10,\"name\":\"{\\\"en\\\":\\\"Chocolate Chipped Cookies\\\"}\",\"product_id\":29,\"text\":\"Chocolate Chips Dipped Cookis\",\"code\":\"{\\\"en\\\":\\\"CHK0001\\\"}\",\"price\":365,\"price_old\":443,\"currency_id\":null,\"unit_id\":null,\"available\":120,\"image_id\":132,\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":null,\"enabled\":1,\"album_id\":\"\"}', NULL, '10', 'catalog_article', 0),
(477, 1, 1703267779, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":10,\"value_id\":35}', NULL, '10-35', 'catalog_article_value_ref', 0),
(478, 1, 1703267779, '', 'api-catalog-article', 1, 0, '{\"id\":10,\"name\":\"{\\\"en\\\":\\\"Chocolate Chipped Cookies\\\"}\",\"product_id\":29,\"text\":\"Chocolate Chips Dipped Cookis\",\"code\":\"{\\\"en\\\":\\\"CHK0001\\\"}\",\"price\":365,\"price_old\":443,\"currency_id\":0,\"unit_id\":0,\"available\":120,\"image_id\":132,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":1}', '{\"name\":\"Chocolate Chipped Cookies\",\"code\":\"CHK0001\",\"price\":\"365.00\",\"price_old\":\"443.00\",\"updated_at\":2147483647,\"album_id\":null}', '10', 'catalog_article', 0),
(479, 1, 1703267962, '', 'api-catalog-value', 0, 1, '{\"id\":37,\"name\":\"2 Kg\",\"feature_id\":8,\"position\":3}', NULL, '37', '{{%catalog_value}}', 0),
(480, 1, 1703267995, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":10,\"value_id\":35}', NULL, '10-35', 'catalog_article_value_ref', 0),
(481, 1, 1703267995, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":10,\"value_id\":37}', NULL, '10-37', 'catalog_article_value_ref', 0),
(482, 1, 1703267995, '', 'api-catalog-article', 1, 0, '{\"id\":10,\"name\":\"{\\\"en\\\":\\\"Chocolate Chipped Cookies\\\"}\",\"product_id\":29,\"text\":\"Chocolate Chips Dipped Cookis\",\"code\":\"{\\\"en\\\":\\\"CHK0001\\\"}\",\"price\":365,\"price_old\":443,\"currency_id\":0,\"unit_id\":0,\"available\":120,\"image_id\":132,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":1}', '{\"name\":\"Chocolate Chipped Cookies\",\"code\":\"CHK0001\",\"price\":\"365.00\",\"price_old\":\"443.00\",\"updated_at\":2147483647}', '10', 'catalog_article', 0),
(483, 1, 1703268056, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":10,\"value_id\":37,\"currency_id\":3,\"qty\":1,\"price\":1256,\"unit_id\":4}', NULL, '10-37-3-1-4', 'catalog_article_price', 0),
(484, 1, 1703268110, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":10,\"value_id\":35,\"currency_id\":3,\"qty\":1,\"price\":1435,\"unit_id\":5}', NULL, '10-35-3-1-5', 'catalog_article_price', 0),
(485, 1, 1703307035, '', 'api-forms-form', 0, 1, '{\"id\":1,\"title\":\"{\\\"en\\\":\\\"Order Form\\\"}\",\"subject\":null,\"email_intro\":null,\"email_outro\":null,\"copy_to_attribute\":null,\"recipients\":\"[]\",\"created_at\":1703307035,\"updated_at\":1703307035,\"created_by\":1,\"updated_by\":1}', NULL, '1', '{{%forms_form}}', 0),
(486, 1, 1703307150, '', '', 0, 1, '{\"id\":45,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"android-chrome-192x192.png\",\"name_new\":\"android-chrome-192x192\",\"name_new_compound\":\"android-chrome-192x192_205dd4d0.png\",\"mime_type\":\"image/png\",\"extension\":\"png\",\"hash_file\":\"d1bdb41260636da0317299beca1318ba\",\"hash_name\":\"205dd4d0\",\"upload_timestamp\":1703307150,\"file_size\":39617,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1703307150}', NULL, '45', '{{%admin_storage_file}}', 0),
(487, 1, 1703307151, '', 'api-admin-storageimage', 0, 1, '{\"id\":192,\"file_id\":45,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1703307151,\"updated_at\":1703307151}', NULL, '192', '{{%admin_storage_image}}', 0),
(488, 1, 1703307151, '', 'api-admin-storageimage', 0, 1, '{\"id\":193,\"file_id\":45,\"filter_id\":4,\"resolution_width\":192,\"resolution_height\":192,\"created_at\":1703307151,\"updated_at\":1703307151}', NULL, '193', '{{%admin_storage_image}}', 0),
(489, 1, 1703307158, '', 'api-admin-storageimage', 0, 1, '{\"id\":194,\"file_id\":45,\"filter_id\":0,\"resolution_width\":192,\"resolution_height\":192,\"created_at\":1703307158,\"updated_at\":1703307158}', NULL, '194', '{{%admin_storage_image}}', 0),
(490, 1, 1703309604, '', 'api-forms-submission', 0, 1, '{\"id\":1,\"form_id\":1,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/contact-us?submit=1\",\"is_done\":null,\"created_at\":1703309604,\"updated_at\":1703309604}', NULL, '1', '{{%forms_submission}}', 0),
(491, 1, 1703309604, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":1,\"submission_id\":1,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"date and time of delivery\",\"value\":\"\",\"format\":null}', NULL, '1', '{{%forms_submission_value}}', 0),
(492, 1, 1703309604, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":2,\"submission_id\":1,\"attribute\":\"Quantity\",\"label\":\"Quantity\",\"hint\":\"Order Quantitiy\",\"value\":\"44\",\"format\":null}', NULL, '2', '{{%forms_submission_value}}', 0),
(493, 1, 1703310721, '', '', 0, 1, '{\"id\":46,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"Bakery Logo.png\",\"name_new\":\"bakery-logo\",\"name_new_compound\":\"bakery-logo_e8a18459.png\",\"mime_type\":\"image/png\",\"extension\":\"png\",\"hash_file\":\"62ee20e2509583bd1c782e91388a5e3b\",\"hash_name\":\"e8a18459\",\"upload_timestamp\":1703310721,\"file_size\":54159,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1703310721}', NULL, '46', '{{%admin_storage_file}}', 0),
(494, 1, 1703311910, '', 'api-admin-storageimage', 0, 1, '{\"id\":195,\"file_id\":46,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1703311910,\"updated_at\":1703311910}', NULL, '195', '{{%admin_storage_image}}', 0),
(495, 1, 1703311910, '', 'api-admin-storageimage', 0, 1, '{\"id\":196,\"file_id\":46,\"filter_id\":4,\"resolution_width\":216,\"resolution_height\":245,\"created_at\":1703311910,\"updated_at\":1703311910}', NULL, '196', '{{%admin_storage_image}}', 0),
(496, 1, 1703311936, '', 'api-admin-storageimage', 0, 1, '{\"id\":197,\"file_id\":26,\"filter_id\":5,\"resolution_width\":100,\"resolution_height\":100,\"created_at\":1703311936,\"updated_at\":1703311936}', NULL, '197', '{{%admin_storage_image}}', 0),
(497, 1, 1703320237, '', 'api-forms-form', 0, 1, '{\"id\":2,\"title\":\"{\\\"en\\\":\\\"Product Form\\\"}\",\"subject\":null,\"email_intro\":null,\"email_outro\":null,\"copy_to_attribute\":null,\"recipients\":\"[]\",\"created_at\":1703320237,\"updated_at\":1703320237,\"created_by\":1,\"updated_by\":1}', NULL, '2', '{{%forms_form}}', 0),
(498, 1, 1703320242, '', 'api-forms-submission', 0, 1, '{\"id\":2,\"form_id\":\"2\",\"useragent\":\"Product Form\",\"language\":null,\"url\":\"/shopping-cart\",\"is_done\":null,\"created_at\":1703320242,\"updated_at\":1703320242}', NULL, '2', '{{%forms_submission}}', 0),
(499, 1, 1703320440, '', 'api-admin-storageimage', 0, 1, '{\"id\":198,\"file_id\":8,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1703320440,\"updated_at\":1703320440}', NULL, '198', '{{%admin_storage_image}}', 0),
(500, 1, 1703344044, '', 'api-forms-submission', 0, 1, '{\"id\":3,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703344044,\"updated_at\":1703344044}', NULL, '3', '{{%forms_submission}}', 0),
(501, 1, 1703344044, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":3,\"submission_id\":3,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"\",\"format\":null}', NULL, '3', '{{%forms_submission_value}}', 0),
(502, 1, 1703344044, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":4,\"submission_id\":3,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"hellow world\",\"format\":null}', NULL, '4', '{{%forms_submission_value}}', 0),
(503, 1, 1703344044, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":5,\"submission_id\":3,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-27\",\"format\":null}', NULL, '5', '{{%forms_submission_value}}', 0),
(504, 1, 1703347408, '', 'api-forms-submission', 0, 1, '{\"id\":4,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703347408,\"updated_at\":1703347408}', NULL, '4', '{{%forms_submission}}', 0),
(505, 1, 1703347408, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":6,\"submission_id\":4,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"\",\"format\":null}', NULL, '6', '{{%forms_submission_value}}', 0),
(506, 1, 1703347408, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":7,\"submission_id\":4,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"Happy Birthday Siri Pravi\",\"format\":null}', NULL, '7', '{{%forms_submission_value}}', 0),
(507, 1, 1703347408, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":8,\"submission_id\":4,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-28\",\"format\":null}', NULL, '8', '{{%forms_submission_value}}', 0),
(508, 1, 1703348660, '', 'api-forms-submission', 0, 1, '{\"id\":5,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703348660,\"updated_at\":1703348660}', NULL, '5', '{{%forms_submission}}', 0),
(509, 1, 1703348660, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":9,\"submission_id\":5,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"\",\"format\":null}', NULL, '9', '{{%forms_submission_value}}', 0),
(510, 1, 1703348660, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":10,\"submission_id\":5,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"Hello Its me\",\"format\":null}', NULL, '10', '{{%forms_submission_value}}', 0),
(511, 1, 1703348660, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":11,\"submission_id\":5,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-27\",\"format\":null}', NULL, '11', '{{%forms_submission_value}}', 0),
(512, 1, 1703348710, '', 'api-forms-submission', 0, 1, '{\"id\":6,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703348710,\"updated_at\":1703348710}', NULL, '6', '{{%forms_submission}}', 0),
(513, 1, 1703348710, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":12,\"submission_id\":6,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"\",\"format\":null}', NULL, '12', '{{%forms_submission_value}}', 0),
(514, 1, 1703348710, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":13,\"submission_id\":6,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"Hello Its me too\",\"format\":null}', NULL, '13', '{{%forms_submission_value}}', 0),
(515, 1, 1703348710, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":14,\"submission_id\":6,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-20\",\"format\":null}', NULL, '14', '{{%forms_submission_value}}', 0),
(516, 1, 1703354862, '', 'api-forms-submission', 0, 1, '{\"id\":7,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703354862,\"updated_at\":1703354862}', NULL, '7', '{{%forms_submission}}', 0),
(517, 1, 1703354862, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":15,\"submission_id\":7,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"786, 647, \",\"format\":null}', NULL, '15', '{{%forms_submission_value}}', 0),
(518, 1, 1703354862, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":16,\"submission_id\":7,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"Features are added 6 inch with egg\",\"format\":null}', NULL, '16', '{{%forms_submission_value}}', 0),
(519, 1, 1703354862, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":17,\"submission_id\":7,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-27\",\"format\":null}', NULL, '17', '{{%forms_submission_value}}', 0),
(520, 1, 1703354893, '', 'api-forms-submission', 0, 1, '{\"id\":8,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703354893,\"updated_at\":1703354893}', NULL, '8', '{{%forms_submission}}', 0),
(521, 1, 1703354893, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":18,\"submission_id\":8,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"786, 647, \",\"format\":null}', NULL, '18', '{{%forms_submission_value}}', 0),
(522, 1, 1703354893, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":19,\"submission_id\":8,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"Features are added 6 inch with egg\",\"format\":null}', NULL, '19', '{{%forms_submission_value}}', 0),
(523, 1, 1703354893, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":20,\"submission_id\":8,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-27\",\"format\":null}', NULL, '20', '{{%forms_submission_value}}', 0),
(524, 1, 1703354981, '', 'api-forms-submission', 0, 1, '{\"id\":9,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703354981,\"updated_at\":1703354981}', NULL, '9', '{{%forms_submission}}', 0),
(525, 1, 1703354981, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":21,\"submission_id\":9,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"786, 647, \",\"format\":null}', NULL, '21', '{{%forms_submission_value}}', 0),
(526, 1, 1703354981, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":22,\"submission_id\":9,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"Features are added 6 inch with egg\",\"format\":null}', NULL, '22', '{{%forms_submission_value}}', 0),
(527, 1, 1703354981, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":23,\"submission_id\":9,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-27\",\"format\":null}', NULL, '23', '{{%forms_submission_value}}', 0),
(528, 1, 1703355652, '', 'api-forms-submission', 0, 1, '{\"id\":10,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703355652,\"updated_at\":1703355652}', NULL, '10', '{{%forms_submission}}', 0),
(529, 1, 1703355652, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":24,\"submission_id\":10,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"786, 647, \",\"format\":null}', NULL, '24', '{{%forms_submission_value}}', 0),
(530, 1, 1703355652, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":25,\"submission_id\":10,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"twelve inch eggless\",\"format\":null}', NULL, '25', '{{%forms_submission_value}}', 0),
(531, 1, 1703355652, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":26,\"submission_id\":10,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-19\",\"format\":null}', NULL, '26', '{{%forms_submission_value}}', 0),
(532, 1, 1703357641, '', 'api-forms-submission', 0, 1, '{\"id\":11,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703357641,\"updated_at\":1703357641}', NULL, '11', '{{%forms_submission}}', 0),
(533, 1, 1703357641, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":27,\"submission_id\":11,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"33-1425, 32-647, \",\"format\":null}', NULL, '27', '{{%forms_submission_value}}', 0),
(534, 1, 1703357641, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":28,\"submission_id\":11,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"twelve inch eggless\",\"format\":null}', NULL, '28', '{{%forms_submission_value}}', 0),
(535, 1, 1703357641, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":29,\"submission_id\":11,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-19\",\"format\":null}', NULL, '29', '{{%forms_submission_value}}', 0),
(536, 1, 1703357738, '', 'api-forms-submission', 0, 1, '{\"id\":12,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703357738,\"updated_at\":1703357738}', NULL, '12', '{{%forms_submission}}', 0),
(537, 1, 1703357738, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":30,\"submission_id\":12,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"33-1425, 32-647, \",\"format\":null}', NULL, '30', '{{%forms_submission_value}}', 0),
(538, 1, 1703357738, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":31,\"submission_id\":12,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"twelve inch eggless\",\"format\":null}', NULL, '31', '{{%forms_submission_value}}', 0),
(539, 1, 1703357738, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":32,\"submission_id\":12,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-19\",\"format\":null}', NULL, '32', '{{%forms_submission_value}}', 0),
(540, 1, 1703357900, '', 'api-forms-submission', 0, 1, '{\"id\":13,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703357899,\"updated_at\":1703357899}', NULL, '13', '{{%forms_submission}}', 0),
(541, 1, 1703357900, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":33,\"submission_id\":13,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"33-1425, 32-647, \",\"format\":null}', NULL, '33', '{{%forms_submission_value}}', 0),
(542, 1, 1703357900, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":34,\"submission_id\":13,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"six inch egg\",\"format\":null}', NULL, '34', '{{%forms_submission_value}}', 0),
(543, 1, 1703357900, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":35,\"submission_id\":13,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-20\",\"format\":null}', NULL, '35', '{{%forms_submission_value}}', 0),
(544, 1, 1703358171, '', 'api-forms-submission', 0, 1, '{\"id\":14,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703358171,\"updated_at\":1703358171}', NULL, '14', '{{%forms_submission}}', 0),
(545, 1, 1703358171, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":36,\"submission_id\":14,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"33-1425, 32-647, \",\"format\":null}', NULL, '36', '{{%forms_submission_value}}', 0),
(546, 1, 1703358171, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":37,\"submission_id\":14,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"six inch egg\",\"format\":null}', NULL, '37', '{{%forms_submission_value}}', 0),
(547, 1, 1703358171, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":38,\"submission_id\":14,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-20\",\"format\":null}', NULL, '38', '{{%forms_submission_value}}', 0),
(548, 1, 1703358202, '', 'api-forms-submission', 0, 1, '{\"id\":15,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703358201,\"updated_at\":1703358201}', NULL, '15', '{{%forms_submission}}', 0),
(549, 1, 1703358202, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":39,\"submission_id\":15,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"33-1425, 32-647, \",\"format\":null}', NULL, '39', '{{%forms_submission_value}}', 0),
(550, 1, 1703358202, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":40,\"submission_id\":15,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"six inch egg\",\"format\":null}', NULL, '40', '{{%forms_submission_value}}', 0),
(551, 1, 1703358202, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":41,\"submission_id\":15,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-20\",\"format\":null}', NULL, '41', '{{%forms_submission_value}}', 0),
(552, 1, 1703358698, '', 'api-forms-submission', 0, 1, '{\"id\":16,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703358698,\"updated_at\":1703358698}', NULL, '16', '{{%forms_submission}}', 0),
(553, 1, 1703358698, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":42,\"submission_id\":16,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"33-1425, 32-647, \",\"format\":null}', NULL, '42', '{{%forms_submission_value}}', 0);
INSERT INTO `admin_ngrest_log` (`id`, `user_id`, `timestamp_create`, `route`, `api`, `is_update`, `is_insert`, `attributes_json`, `attributes_diff_json`, `pk_value`, `table_name`, `is_delete`) VALUES
(554, 1, 1703358698, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":43,\"submission_id\":16,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"button styles\",\"format\":null}', NULL, '43', '{{%forms_submission_value}}', 0),
(555, 1, 1703358698, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":44,\"submission_id\":16,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-26\",\"format\":null}', NULL, '44', '{{%forms_submission_value}}', 0),
(556, 1, 1703359537, '', 'api-forms-submission', 0, 1, '{\"id\":17,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703359537,\"updated_at\":1703359537}', NULL, '17', '{{%forms_submission}}', 0),
(557, 1, 1703359537, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":45,\"submission_id\":17,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"33-1425, 31-140, \",\"format\":null}', NULL, '45', '{{%forms_submission_value}}', 0),
(558, 1, 1703359537, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":46,\"submission_id\":17,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"\",\"format\":null}', NULL, '46', '{{%forms_submission_value}}', 0),
(559, 1, 1703359537, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":47,\"submission_id\":17,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-25\",\"format\":null}', NULL, '47', '{{%forms_submission_value}}', 0),
(560, 0, 1703387437, '', 'api-forms-submission', 0, 1, '{\"id\":18,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703387437,\"updated_at\":1703387437}', NULL, '18', '{{%forms_submission}}', 0),
(561, 0, 1703387438, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":48,\"submission_id\":18,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"34_786, 32_647, \",\"format\":null}', NULL, '48', '{{%forms_submission_value}}', 0),
(562, 0, 1703387438, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":49,\"submission_id\":18,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"Welcome world\",\"format\":null}', NULL, '49', '{{%forms_submission_value}}', 0),
(563, 0, 1703387438, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":50,\"submission_id\":18,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-27\",\"format\":null}', NULL, '50', '{{%forms_submission_value}}', 0),
(564, 1, 1703390472, '', 'api-forms-submission', 0, 1, '{\"id\":19,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703390472,\"updated_at\":1703390472}', NULL, '19', '{{%forms_submission}}', 0),
(565, 1, 1703390472, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":51,\"submission_id\":19,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '51', '{{%forms_submission_value}}', 0),
(566, 1, 1703390472, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":52,\"submission_id\":19,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"jk7yuikhjktuhj\",\"format\":null}', NULL, '52', '{{%forms_submission_value}}', 0),
(567, 1, 1703390472, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":53,\"submission_id\":19,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":\"Price\",\"value\":\"1433\",\"format\":null}', NULL, '53', '{{%forms_submission_value}}', 0),
(568, 1, 1703390472, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":54,\"submission_id\":19,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-26\",\"format\":null}', NULL, '54', '{{%forms_submission_value}}', 0),
(569, 1, 1703390683, '', 'api-forms-submission', 0, 1, '{\"id\":20,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703390683,\"updated_at\":1703390683}', NULL, '20', '{{%forms_submission}}', 0),
(570, 1, 1703390683, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":55,\"submission_id\":20,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '55', '{{%forms_submission_value}}', 0),
(571, 1, 1703390683, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":56,\"submission_id\":20,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"fgertgdfgdf\",\"format\":null}', NULL, '56', '{{%forms_submission_value}}', 0),
(572, 1, 1703390683, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":57,\"submission_id\":20,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":\"Price\",\"value\":\"1433\",\"format\":null}', NULL, '57', '{{%forms_submission_value}}', 0),
(573, 1, 1703390683, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":58,\"submission_id\":20,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-26\",\"format\":null}', NULL, '58', '{{%forms_submission_value}}', 0),
(574, 1, 1703391333, '', 'api-forms-submission', 0, 1, '{\"id\":21,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703391332,\"updated_at\":1703391332}', NULL, '21', '{{%forms_submission}}', 0),
(575, 1, 1703391333, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":59,\"submission_id\":21,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '59', '{{%forms_submission_value}}', 0),
(576, 1, 1703391333, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":60,\"submission_id\":21,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"By 27th Delivery\",\"format\":null}', NULL, '60', '{{%forms_submission_value}}', 0),
(577, 1, 1703391333, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":61,\"submission_id\":21,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":\"Price\",\"value\":\"1433\",\"format\":null}', NULL, '61', '{{%forms_submission_value}}', 0),
(578, 1, 1703391333, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":62,\"submission_id\":21,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-27\",\"format\":null}', NULL, '62', '{{%forms_submission_value}}', 0),
(579, 1, 1703391852, '', 'api-forms-submission', 0, 1, '{\"id\":22,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703391852,\"updated_at\":1703391852}', NULL, '22', '{{%forms_submission}}', 0),
(580, 1, 1703391852, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":63,\"submission_id\":22,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '63', '{{%forms_submission_value}}', 0),
(581, 1, 1703391852, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":64,\"submission_id\":22,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"six inch eggless by 27th\",\"format\":null}', NULL, '64', '{{%forms_submission_value}}', 0),
(582, 1, 1703391852, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":65,\"submission_id\":22,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":\"Price\",\"value\":\"1433\",\"format\":null}', NULL, '65', '{{%forms_submission_value}}', 0),
(583, 1, 1703391852, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":66,\"submission_id\":22,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-27\",\"format\":null}', NULL, '66', '{{%forms_submission_value}}', 0),
(584, 0, 1703395083, '', 'api-forms-submission', 0, 1, '{\"id\":23,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703395083,\"updated_at\":1703395083}', NULL, '23', '{{%forms_submission}}', 0),
(585, 0, 1703395083, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":67,\"submission_id\":23,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '67', '{{%forms_submission_value}}', 0),
(586, 0, 1703395083, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":68,\"submission_id\":23,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"hjtrfujhftgjhfghdfdfh\",\"format\":null}', NULL, '68', '{{%forms_submission_value}}', 0),
(587, 0, 1703395083, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":69,\"submission_id\":23,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":\"Price\",\"value\":\"1433\",\"format\":null}', NULL, '69', '{{%forms_submission_value}}', 0),
(588, 0, 1703395083, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":70,\"submission_id\":23,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-26\",\"format\":null}', NULL, '70', '{{%forms_submission_value}}', 0),
(589, 1, 1703397687, '', 'api-forms-submission', 0, 1, '{\"id\":24,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703397687,\"updated_at\":1703397687}', NULL, '24', '{{%forms_submission}}', 0),
(590, 1, 1703397687, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":71,\"submission_id\":24,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '71', '{{%forms_submission_value}}', 0),
(591, 1, 1703397687, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":72,\"submission_id\":24,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"hellow world \",\"format\":null}', NULL, '72', '{{%forms_submission_value}}', 0),
(592, 1, 1703397687, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":73,\"submission_id\":24,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1433\",\"format\":null}', NULL, '73', '{{%forms_submission_value}}', 0),
(593, 1, 1703397687, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":74,\"submission_id\":24,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-26\",\"format\":null}', NULL, '74', '{{%forms_submission_value}}', 0),
(594, 1, 1703397800, '', 'api-forms-submission', 0, 1, '{\"id\":25,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703397800,\"updated_at\":1703397800}', NULL, '25', '{{%forms_submission}}', 0),
(595, 1, 1703397800, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":75,\"submission_id\":25,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"33_1425, 31_140\",\"format\":null}', NULL, '75', '{{%forms_submission_value}}', 0),
(596, 1, 1703397800, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":76,\"submission_id\":25,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"Six inch eggless brown chocolate\",\"format\":null}', NULL, '76', '{{%forms_submission_value}}', 0),
(597, 1, 1703397800, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":77,\"submission_id\":25,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1565\",\"format\":null}', NULL, '77', '{{%forms_submission_value}}', 0),
(598, 1, 1703397800, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":78,\"submission_id\":25,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-30\",\"format\":null}', NULL, '78', '{{%forms_submission_value}}', 0),
(599, 1, 1703398575, '', 'api-forms-submission', 0, 1, '{\"id\":26,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703398575,\"updated_at\":1703398575}', NULL, '26', '{{%forms_submission}}', 0),
(600, 1, 1703398575, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":79,\"submission_id\":26,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '79', '{{%forms_submission_value}}', 0),
(601, 1, 1703398575, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":80,\"submission_id\":26,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"hghthgh\",\"format\":null}', NULL, '80', '{{%forms_submission_value}}', 0),
(602, 1, 1703398575, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":81,\"submission_id\":26,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1433\",\"format\":null}', NULL, '81', '{{%forms_submission_value}}', 0),
(603, 1, 1703398575, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":82,\"submission_id\":26,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-26\",\"format\":null}', NULL, '82', '{{%forms_submission_value}}', 0),
(604, 1, 1703398677, '', 'api-forms-submission', 0, 1, '{\"id\":27,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703398677,\"updated_at\":1703398677}', NULL, '27', '{{%forms_submission}}', 0),
(605, 1, 1703398677, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":83,\"submission_id\":27,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '83', '{{%forms_submission_value}}', 0),
(606, 1, 1703398677, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":84,\"submission_id\":27,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"kjkytgkbk\",\"format\":null}', NULL, '84', '{{%forms_submission_value}}', 0),
(607, 1, 1703398677, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":85,\"submission_id\":27,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1433\",\"format\":null}', NULL, '85', '{{%forms_submission_value}}', 0),
(608, 1, 1703398677, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":86,\"submission_id\":27,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-25\",\"format\":null}', NULL, '86', '{{%forms_submission_value}}', 0),
(609, 1, 1703398848, '', 'api-forms-submission', 0, 1, '{\"id\":28,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703398848,\"updated_at\":1703398848}', NULL, '28', '{{%forms_submission}}', 0),
(610, 1, 1703398848, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":87,\"submission_id\":28,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"33_1425, 32_647\",\"format\":null}', NULL, '87', '{{%forms_submission_value}}', 0),
(611, 1, 1703398848, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":88,\"submission_id\":28,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"love all\",\"format\":null}', NULL, '88', '{{%forms_submission_value}}', 0),
(612, 1, 1703398848, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":89,\"submission_id\":28,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2072\",\"format\":null}', NULL, '89', '{{%forms_submission_value}}', 0),
(613, 1, 1703398848, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":90,\"submission_id\":28,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-29\",\"format\":null}', NULL, '90', '{{%forms_submission_value}}', 0),
(614, 1, 1703400870, '', 'api-forms-submission', 0, 1, '{\"id\":29,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703400870,\"updated_at\":1703400870}', NULL, '29', '{{%forms_submission}}', 0),
(615, 1, 1703400870, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":91,\"submission_id\":29,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"33_1425, 31_140\",\"format\":null}', NULL, '91', '{{%forms_submission_value}}', 0),
(616, 1, 1703400870, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":92,\"submission_id\":29,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"jhjyh fgjnfgjhnfghn\",\"format\":null}', NULL, '92', '{{%forms_submission_value}}', 0),
(617, 1, 1703400870, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":93,\"submission_id\":29,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1565\",\"format\":null}', NULL, '93', '{{%forms_submission_value}}', 0),
(618, 1, 1703400870, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":94,\"submission_id\":29,\"attribute\":\"FeatureText\",\"label\":\"Feature Text\",\"hint\":false,\"value\":\" 6-inch_33_1425 Eggless_31_140\",\"format\":null}', NULL, '94', '{{%forms_submission_value}}', 0),
(619, 1, 1703400870, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":95,\"submission_id\":29,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-26\",\"format\":null}', NULL, '95', '{{%forms_submission_value}}', 0),
(620, 1, 1703481239, '', 'api-admin-storageimage', 0, 1, '{\"id\":199,\"file_id\":45,\"filter_id\":3,\"resolution_width\":192,\"resolution_height\":192,\"created_at\":1703481239,\"updated_at\":1703481239}', NULL, '199', '{{%admin_storage_image}}', 0),
(621, 1, 1703568057, '', 'api-forms-submission', 0, 1, '{\"id\":30,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703568057,\"updated_at\":1703568057}', NULL, '30', '{{%forms_submission}}', 0),
(622, 1, 1703568057, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":96,\"submission_id\":30,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '96', '{{%forms_submission_value}}', 0),
(623, 1, 1703568057, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":97,\"submission_id\":30,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"Happy Birthday Siri\",\"format\":null}', NULL, '97', '{{%forms_submission_value}}', 0),
(624, 1, 1703568057, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":98,\"submission_id\":30,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1433\",\"format\":null}', NULL, '98', '{{%forms_submission_value}}', 0),
(625, 1, 1703568057, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":99,\"submission_id\":30,\"attribute\":\"FeatureText\",\"label\":\"Feature Text\",\"hint\":false,\"value\":\"12-inch_34_786+With-Egg_32_647\",\"format\":null}', NULL, '99', '{{%forms_submission_value}}', 0),
(626, 1, 1703568057, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":100,\"submission_id\":30,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-28\",\"format\":null}', NULL, '100', '{{%forms_submission_value}}', 0),
(627, 0, 1703573123, '', 'api-forms-submission', 0, 1, '{\"id\":31,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703573123,\"updated_at\":1703573123}', NULL, '31', '{{%forms_submission}}', 0),
(628, 0, 1703573123, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":101,\"submission_id\":31,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '101', '{{%forms_submission_value}}', 0),
(629, 0, 1703573123, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":102,\"submission_id\":31,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"Pradhaan Mantri\",\"format\":null}', NULL, '102', '{{%forms_submission_value}}', 0),
(630, 0, 1703573123, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":103,\"submission_id\":31,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1433\",\"format\":null}', NULL, '103', '{{%forms_submission_value}}', 0),
(631, 0, 1703573123, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":104,\"submission_id\":31,\"attribute\":\"FeatureText\",\"label\":\"Feature Text\",\"hint\":false,\"value\":\"12-inch_34_786+With-Egg_32_647\",\"format\":null}', NULL, '104', '{{%forms_submission_value}}', 0),
(632, 0, 1703573123, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":105,\"submission_id\":31,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-28\",\"format\":null}', NULL, '105', '{{%forms_submission_value}}', 0),
(633, 0, 1703573228, '', 'api-forms-submission', 0, 1, '{\"id\":32,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703573228,\"updated_at\":1703573228}', NULL, '32', '{{%forms_submission}}', 0),
(634, 0, 1703573228, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":106,\"submission_id\":32,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '106', '{{%forms_submission_value}}', 0),
(635, 0, 1703573228, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":107,\"submission_id\":32,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"Gaali Khaana\",\"format\":null}', NULL, '107', '{{%forms_submission_value}}', 0),
(636, 0, 1703573228, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":108,\"submission_id\":32,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1433\",\"format\":null}', NULL, '108', '{{%forms_submission_value}}', 0),
(637, 0, 1703573228, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":109,\"submission_id\":32,\"attribute\":\"FeatureText\",\"label\":\"Feature Text\",\"hint\":false,\"value\":\"12-inch_34_786+With-Egg_32_647\",\"format\":null}', NULL, '109', '{{%forms_submission_value}}', 0),
(638, 0, 1703573228, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":110,\"submission_id\":32,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-30\",\"format\":null}', NULL, '110', '{{%forms_submission_value}}', 0),
(639, 0, 1703573534, '', 'api-forms-submission', 0, 1, '{\"id\":33,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703573534,\"updated_at\":1703573534}', NULL, '33', '{{%forms_submission}}', 0),
(640, 0, 1703573699, '', 'api-forms-submission', 0, 1, '{\"id\":34,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703573699,\"updated_at\":1703573699}', NULL, '34', '{{%forms_submission}}', 0),
(641, 1, 1703574116, '', 'api-forms-submission', 0, 1, '{\"id\":35,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703574116,\"updated_at\":1703574116}', NULL, '35', '{{%forms_submission}}', 0),
(642, 1, 1703574340, '', 'api-forms-submission', 0, 1, '{\"id\":36,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703574340,\"updated_at\":1703574340}', NULL, '36', '{{%forms_submission}}', 0),
(643, 1, 1703574344, '', 'api-forms-submission', 0, 1, '{\"id\":37,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703574344,\"updated_at\":1703574344}', NULL, '37', '{{%forms_submission}}', 0),
(644, 1, 1703574723, '', 'api-forms-submission', 0, 1, '{\"id\":38,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703574723,\"updated_at\":1703574723}', NULL, '38', '{{%forms_submission}}', 0),
(645, 1, 1703575263, '', 'api-forms-submission', 0, 1, '{\"id\":39,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703575263,\"updated_at\":1703575263}', NULL, '39', '{{%forms_submission}}', 0),
(646, 1, 1703575292, '', 'api-forms-submission', 0, 1, '{\"id\":40,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703575292,\"updated_at\":1703575292}', NULL, '40', '{{%forms_submission}}', 0),
(647, 1, 1703575444, '', 'api-forms-submission', 0, 1, '{\"id\":41,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703575444,\"updated_at\":1703575444}', NULL, '41', '{{%forms_submission}}', 0),
(648, 1, 1703575447, '', 'api-forms-submission', 0, 1, '{\"id\":42,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703575447,\"updated_at\":1703575447}', NULL, '42', '{{%forms_submission}}', 0),
(649, 1, 1703575547, '', 'api-forms-submission', 0, 1, '{\"id\":43,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703575547,\"updated_at\":1703575547}', NULL, '43', '{{%forms_submission}}', 0),
(650, 1, 1703575547, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":111,\"submission_id\":43,\"attribute\":\"Features\",\"label\":\"Features\",\"hint\":\"Features\",\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '111', '{{%forms_submission_value}}', 0),
(651, 1, 1703575547, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":112,\"submission_id\":43,\"attribute\":\"Message\",\"label\":\"Message\",\"hint\":\"Message on Cake\",\"value\":\"Aageh Cahoo\",\"format\":null}', NULL, '112', '{{%forms_submission_value}}', 0),
(652, 1, 1703575547, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":113,\"submission_id\":43,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '113', '{{%forms_submission_value}}', 0),
(653, 1, 1703575547, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":114,\"submission_id\":43,\"attribute\":\"FeatureText\",\"label\":\"Feature Text\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '114', '{{%forms_submission_value}}', 0),
(654, 1, 1703575547, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":115,\"submission_id\":43,\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"Delivery Date\",\"value\":\"2023-12-31\",\"format\":null}', NULL, '115', '{{%forms_submission_value}}', 0),
(655, 1, 1703589570, '', 'api-forms-submission', 0, 1, '{\"id\":44,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703589570,\"updated_at\":1703589570}', NULL, '44', '{{%forms_submission}}', 0),
(656, 1, 1703589570, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":116,\"submission_id\":44,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1425, 32_647\",\"format\":null}', NULL, '116', '{{%forms_submission_value}}', 0),
(657, 1, 1703589570, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":117,\"submission_id\":44,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Hello world vanilla cake\",\"format\":null}', NULL, '117', '{{%forms_submission_value}}', 0),
(658, 1, 1703589570, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":118,\"submission_id\":44,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '118', '{{%forms_submission_value}}', 0),
(659, 1, 1703589570, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":119,\"submission_id\":44,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1425+With-Egg_32_647\",\"format\":null}', NULL, '119', '{{%forms_submission_value}}', 0),
(660, 1, 1703589570, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":120,\"submission_id\":44,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2072\",\"format\":null}', NULL, '120', '{{%forms_submission_value}}', 0),
(661, 0, 1703604710, '', 'api-forms-submission', 0, 1, '{\"id\":45,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703604710,\"updated_at\":1703604710}', NULL, '45', '{{%forms_submission}}', 0),
(662, 0, 1703604710, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":121,\"submission_id\":45,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"35_750, 0\",\"format\":null}', NULL, '121', '{{%forms_submission_value}}', 0),
(663, 0, 1703604710, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":122,\"submission_id\":45,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"kjkukhj\",\"format\":null}', NULL, '122', '{{%forms_submission_value}}', 0),
(664, 0, 1703604710, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":123,\"submission_id\":45,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '123', '{{%forms_submission_value}}', 0),
(665, 0, 1703604710, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":124,\"submission_id\":45,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"Pack_35_750+_0\",\"format\":null}', NULL, '124', '{{%forms_submission_value}}', 0),
(666, 0, 1703604710, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":125,\"submission_id\":45,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"NaN\",\"format\":null}', NULL, '125', '{{%forms_submission_value}}', 0),
(667, 0, 1703604710, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":126,\"submission_id\":45,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"1\",\"format\":null}', NULL, '126', '{{%forms_submission_value}}', 0),
(668, 1, 1703644325, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":8,\"value_id\":34}', NULL, '8-34', 'catalog_article_value_ref', 0),
(669, 1, 1703644325, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":8,\"value_id\":35}', NULL, '8-35', 'catalog_article_value_ref', 0),
(670, 1, 1703644325, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":8,\"value_id\":31}', NULL, '8-31', 'catalog_article_value_ref', 0),
(671, 1, 1703644325, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":8,\"value_id\":32}', NULL, '8-32', 'catalog_article_value_ref', 0),
(672, 1, 1703644325, '', 'api-catalog-article', 1, 0, '{\"id\":8,\"name\":\"{\\\"en\\\":\\\"Creamy Butter Cookies\\\"}\",\"product_id\":29,\"text\":\"Buttor Cream biscuites topped with chocolate drops\",\"code\":\"{\\\"en\\\":\\\"BISC9034\\\"}\",\"price\":0,\"price_old\":0,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":52,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":1}', '{\"name\":\"Creamy Butter Cookies\",\"code\":\"BISC9034\",\"price\":null,\"price_old\":null,\"updated_at\":2147483647}', '8', 'catalog_article', 0),
(673, 1, 1703644371, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":8,\"value_id\":34,\"currency_id\":3,\"qty\":1,\"price\":254,\"unit_id\":4}', NULL, '8-34-3-1-4', 'catalog_article_price', 0),
(674, 1, 1703644482, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":8,\"value_id\":32,\"currency_id\":3,\"qty\":1,\"price\":351,\"unit_id\":4}', NULL, '8-32-3-1-4', 'catalog_article_price', 0),
(675, 1, 1703644516, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":8,\"value_id\":31,\"currency_id\":3,\"qty\":1,\"price\":421,\"unit_id\":4}', NULL, '8-31-3-1-4', 'catalog_article_price', 0),
(676, 1, 1703651116, '', 'api-forms-submission', 0, 1, '{\"id\":46,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703651116,\"updated_at\":1703651116}', NULL, '46', '{{%forms_submission}}', 0),
(677, 1, 1703651116, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":127,\"submission_id\":46,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 32_351\",\"format\":null}', NULL, '127', '{{%forms_submission_value}}', 0),
(678, 1, 1703651116, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":128,\"submission_id\":46,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"hgjhgjrtuyjjhgjg\",\"format\":null}', NULL, '128', '{{%forms_submission_value}}', 0),
(679, 1, 1703651116, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":129,\"submission_id\":46,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '129', '{{%forms_submission_value}}', 0),
(680, 1, 1703651116, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":130,\"submission_id\":46,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+With-Egg_32_351\",\"format\":null}', NULL, '130', '{{%forms_submission_value}}', 0),
(681, 1, 1703651116, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":131,\"submission_id\":46,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"605\",\"format\":null}', NULL, '131', '{{%forms_submission_value}}', 0),
(682, 1, 1703652482, '', 'api-forms-submission', 0, 1, '{\"id\":47,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703652482,\"updated_at\":1703652482}', NULL, '47', '{{%forms_submission}}', 0),
(683, 1, 1703652482, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":132,\"submission_id\":47,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"35_750, 31_421\",\"format\":null}', NULL, '132', '{{%forms_submission_value}}', 0),
(684, 1, 1703652482, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":133,\"submission_id\":47,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Aasaraa Pension Fhoni\",\"format\":null}', NULL, '133', '{{%forms_submission_value}}', 0),
(685, 1, 1703652482, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":134,\"submission_id\":47,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-31\",\"format\":\"datetime\"}', NULL, '134', '{{%forms_submission_value}}', 0),
(686, 1, 1703652482, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":135,\"submission_id\":47,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"Pack_35_750+Eggless_31_421\",\"format\":null}', NULL, '135', '{{%forms_submission_value}}', 0),
(687, 1, 1703652482, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":136,\"submission_id\":47,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1171\",\"format\":null}', NULL, '136', '{{%forms_submission_value}}', 0),
(688, 1, 1703653151, '', 'api-forms-submission', 0, 1, '{\"id\":48,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703653151,\"updated_at\":1703653151}', NULL, '48', '{{%forms_submission}}', 0),
(689, 1, 1703653151, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":137,\"submission_id\":48,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 31_421\",\"format\":null}', NULL, '137', '{{%forms_submission_value}}', 0),
(690, 1, 1703653151, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":138,\"submission_id\":48,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Swarga seema\",\"format\":null}', NULL, '138', '{{%forms_submission_value}}', 0),
(691, 1, 1703653151, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":139,\"submission_id\":48,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '139', '{{%forms_submission_value}}', 0),
(692, 1, 1703653151, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":140,\"submission_id\":48,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+Eggless_31_421\",\"format\":null}', NULL, '140', '{{%forms_submission_value}}', 0),
(693, 1, 1703653151, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":141,\"submission_id\":48,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"675\",\"format\":null}', NULL, '141', '{{%forms_submission_value}}', 0),
(694, 1, 1703653151, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":142,\"submission_id\":48,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '142', '{{%forms_submission_value}}', 0),
(695, 1, 1703653501, '', 'api-forms-submission', 0, 1, '{\"id\":49,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703653501,\"updated_at\":1703653501}', NULL, '49', '{{%forms_submission}}', 0),
(696, 1, 1703653501, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":143,\"submission_id\":49,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_1499, 32_140\",\"format\":null}', NULL, '143', '{{%forms_submission_value}}', 0),
(697, 1, 1703653501, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":144,\"submission_id\":49,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"vdfevc v fedvweffbx xcvedsfdfvsdfad\",\"format\":null}', NULL, '144', '{{%forms_submission_value}}', 0),
(698, 1, 1703653501, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":145,\"submission_id\":49,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '145', '{{%forms_submission_value}}', 0),
(699, 1, 1703653501, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":146,\"submission_id\":49,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_1499+With-Egg_32_140\",\"format\":null}', NULL, '146', '{{%forms_submission_value}}', 0),
(700, 1, 1703653501, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":147,\"submission_id\":49,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1639\",\"format\":null}', NULL, '147', '{{%forms_submission_value}}', 0),
(701, 1, 1703653501, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":148,\"submission_id\":49,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '148', '{{%forms_submission_value}}', 0),
(702, 1, 1703657554, '', 'api-forms-submission', 0, 1, '{\"id\":50,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703657554,\"updated_at\":1703657554}', NULL, '50', '{{%forms_submission}}', 0),
(703, 1, 1703657592, '', 'api-forms-submission', 0, 1, '{\"id\":51,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703657592,\"updated_at\":1703657592}', NULL, '51', '{{%forms_submission}}', 0),
(704, 1, 1703657636, '', 'api-forms-submission', 0, 1, '{\"id\":52,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703657636,\"updated_at\":1703657636}', NULL, '52', '{{%forms_submission}}', 0),
(705, 1, 1703657652, '', 'api-forms-submission', 0, 1, '{\"id\":53,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703657652,\"updated_at\":1703657652}', NULL, '53', '{{%forms_submission}}', 0),
(706, 1, 1703657803, '', 'api-forms-submission', 0, 1, '{\"id\":54,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703657803,\"updated_at\":1703657803}', NULL, '54', '{{%forms_submission}}', 0),
(707, 1, 1703657856, '', 'api-forms-submission', 0, 1, '{\"id\":55,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703657856,\"updated_at\":1703657856}', NULL, '55', '{{%forms_submission}}', 0),
(708, 1, 1703657890, '', 'api-forms-submission', 0, 1, '{\"id\":56,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703657890,\"updated_at\":1703657890}', NULL, '56', '{{%forms_submission}}', 0),
(709, 1, 1703657891, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":149,\"submission_id\":56,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_849, 31_0\",\"format\":null}', NULL, '149', '{{%forms_submission_value}}', 0),
(710, 1, 1703657891, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":150,\"submission_id\":56,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"dfsrwegd fdgwertgdfgdfg\",\"format\":null}', NULL, '150', '{{%forms_submission_value}}', 0),
(711, 1, 1703657891, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":151,\"submission_id\":56,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-25\",\"format\":\"datetime\"}', NULL, '151', '{{%forms_submission_value}}', 0),
(712, 1, 1703657891, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":152,\"submission_id\":56,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_849+Eggless_31_0\",\"format\":null}', NULL, '152', '{{%forms_submission_value}}', 0),
(713, 1, 1703657891, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":153,\"submission_id\":56,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"849\",\"format\":null}', NULL, '153', '{{%forms_submission_value}}', 0),
(714, 1, 1703657891, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":154,\"submission_id\":56,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '154', '{{%forms_submission_value}}', 0),
(715, 1, 1703659375, '', 'api-forms-submission', 0, 1, '{\"id\":57,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703659375,\"updated_at\":1703659375}', NULL, '57', '{{%forms_submission}}', 0),
(716, 1, 1703659375, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":155,\"submission_id\":57,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"35_1435, \",\"format\":null}', NULL, '155', '{{%forms_submission_value}}', 0),
(717, 1, 1703659375, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":156,\"submission_id\":57,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"dfsdfwefs sdf werfsdfsd fdf\",\"format\":null}', NULL, '156', '{{%forms_submission_value}}', 0),
(718, 1, 1703659375, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":157,\"submission_id\":57,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '157', '{{%forms_submission_value}}', 0),
(719, 1, 1703659375, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":158,\"submission_id\":57,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"Pack_35_1435\",\"format\":null}', NULL, '158', '{{%forms_submission_value}}', 0),
(720, 1, 1703659375, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":159,\"submission_id\":57,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1435\",\"format\":null}', NULL, '159', '{{%forms_submission_value}}', 0),
(721, 1, 1703659375, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":160,\"submission_id\":57,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"10\",\"format\":null}', NULL, '160', '{{%forms_submission_value}}', 0),
(722, 1, 1703659531, '', 'api-forms-submission', 0, 1, '{\"id\":58,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703659531,\"updated_at\":1703659531}', NULL, '58', '{{%forms_submission}}', 0),
(723, 1, 1703659531, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":161,\"submission_id\":58,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"37_1256, \",\"format\":null}', NULL, '161', '{{%forms_submission_value}}', 0),
(724, 1, 1703659531, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":162,\"submission_id\":58,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"anganwadi\",\"format\":null}', NULL, '162', '{{%forms_submission_value}}', 0),
(725, 1, 1703659531, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":163,\"submission_id\":58,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-25\",\"format\":\"datetime\"}', NULL, '163', '{{%forms_submission_value}}', 0),
(726, 1, 1703659531, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":164,\"submission_id\":58,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"2-Kg_37_1256\",\"format\":null}', NULL, '164', '{{%forms_submission_value}}', 0);
INSERT INTO `admin_ngrest_log` (`id`, `user_id`, `timestamp_create`, `route`, `api`, `is_update`, `is_insert`, `attributes_json`, `attributes_diff_json`, `pk_value`, `table_name`, `is_delete`) VALUES
(727, 1, 1703659531, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":165,\"submission_id\":58,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1256\",\"format\":null}', NULL, '165', '{{%forms_submission_value}}', 0),
(728, 1, 1703659531, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":166,\"submission_id\":58,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"10\",\"format\":null}', NULL, '166', '{{%forms_submission_value}}', 0),
(729, 1, 1703674290, '', 'api-forms-submission', 0, 1, '{\"id\":59,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?reload=2\",\"is_done\":null,\"created_at\":1703674290,\"updated_at\":1703674290}', NULL, '59', '{{%forms_submission}}', 0),
(730, 1, 1703674290, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":167,\"submission_id\":59,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 32_351\",\"format\":null}', NULL, '167', '{{%forms_submission_value}}', 0),
(731, 1, 1703674290, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":168,\"submission_id\":59,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"fourteen thirty five\",\"format\":null}', NULL, '168', '{{%forms_submission_value}}', 0),
(732, 1, 1703674290, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":169,\"submission_id\":59,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+With-Egg_32_351\",\"format\":null}', NULL, '169', '{{%forms_submission_value}}', 0),
(733, 1, 1703674290, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":170,\"submission_id\":59,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '170', '{{%forms_submission_value}}', 0),
(734, 1, 1703674290, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":171,\"submission_id\":59,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"605\",\"format\":null}', NULL, '171', '{{%forms_submission_value}}', 0),
(735, 1, 1703674290, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":172,\"submission_id\":59,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '172', '{{%forms_submission_value}}', 0),
(736, 1, 1703674311, '', 'api-forms-submission', 0, 1, '{\"id\":60,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info\",\"is_done\":null,\"created_at\":1703674311,\"updated_at\":1703674311}', NULL, '60', '{{%forms_submission}}', 0),
(737, 1, 1703674311, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":173,\"submission_id\":60,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 31_421\",\"format\":null}', NULL, '173', '{{%forms_submission_value}}', 0),
(738, 1, 1703674311, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":174,\"submission_id\":60,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"hgrtyghrfthfgh\",\"format\":null}', NULL, '174', '{{%forms_submission_value}}', 0),
(739, 1, 1703674311, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":175,\"submission_id\":60,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+Eggless_31_421\",\"format\":null}', NULL, '175', '{{%forms_submission_value}}', 0),
(740, 1, 1703674311, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":176,\"submission_id\":60,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '176', '{{%forms_submission_value}}', 0),
(741, 1, 1703674311, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":177,\"submission_id\":60,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"675\",\"format\":null}', NULL, '177', '{{%forms_submission_value}}', 0),
(742, 1, 1703674311, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":178,\"submission_id\":60,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '178', '{{%forms_submission_value}}', 0),
(743, 1, 1703674344, '', 'api-forms-submission', 0, 1, '{\"id\":61,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info\",\"is_done\":null,\"created_at\":1703674344,\"updated_at\":1703674344}', NULL, '61', '{{%forms_submission}}', 0),
(744, 1, 1703674344, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":179,\"submission_id\":61,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"35_750, 31_421\",\"format\":null}', NULL, '179', '{{%forms_submission_value}}', 0),
(745, 1, 1703674344, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":180,\"submission_id\":61,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"rwthydfhdfhdf\",\"format\":null}', NULL, '180', '{{%forms_submission_value}}', 0),
(746, 1, 1703674345, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":181,\"submission_id\":61,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"Pack_35_750+Eggless_31_421\",\"format\":null}', NULL, '181', '{{%forms_submission_value}}', 0),
(747, 1, 1703674345, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":182,\"submission_id\":61,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '182', '{{%forms_submission_value}}', 0),
(748, 1, 1703674345, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":183,\"submission_id\":61,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1171\",\"format\":null}', NULL, '183', '{{%forms_submission_value}}', 0),
(749, 1, 1703674345, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":184,\"submission_id\":61,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '184', '{{%forms_submission_value}}', 0),
(750, 1, 1703674405, '', 'api-forms-submission', 0, 1, '{\"id\":62,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info\",\"is_done\":null,\"created_at\":1703674405,\"updated_at\":1703674405}', NULL, '62', '{{%forms_submission}}', 0),
(751, 1, 1703674405, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":185,\"submission_id\":62,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 31_421\",\"format\":null}', NULL, '185', '{{%forms_submission_value}}', 0),
(752, 1, 1703674405, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":186,\"submission_id\":62,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"fdwesfsdfsdf\",\"format\":null}', NULL, '186', '{{%forms_submission_value}}', 0),
(753, 1, 1703674405, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":187,\"submission_id\":62,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+Eggless_31_421\",\"format\":null}', NULL, '187', '{{%forms_submission_value}}', 0),
(754, 1, 1703674405, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":188,\"submission_id\":62,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-20\",\"format\":\"datetime\"}', NULL, '188', '{{%forms_submission_value}}', 0),
(755, 1, 1703674405, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":189,\"submission_id\":62,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"675\",\"format\":null}', NULL, '189', '{{%forms_submission_value}}', 0),
(756, 1, 1703674405, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":190,\"submission_id\":62,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '190', '{{%forms_submission_value}}', 0),
(757, 1, 1703674471, '', 'api-forms-submission', 0, 1, '{\"id\":63,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info\",\"is_done\":null,\"created_at\":1703674471,\"updated_at\":1703674471}', NULL, '63', '{{%forms_submission}}', 0),
(758, 1, 1703674471, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":191,\"submission_id\":63,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"35_750, 32_351\",\"format\":null}', NULL, '191', '{{%forms_submission_value}}', 0),
(759, 1, 1703674471, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":192,\"submission_id\":63,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"ghj yurt yhed\",\"format\":null}', NULL, '192', '{{%forms_submission_value}}', 0),
(760, 1, 1703674471, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":193,\"submission_id\":63,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"Pack_35_750+With-Egg_32_351\",\"format\":null}', NULL, '193', '{{%forms_submission_value}}', 0),
(761, 1, 1703674471, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":194,\"submission_id\":63,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '194', '{{%forms_submission_value}}', 0),
(762, 1, 1703674471, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":195,\"submission_id\":63,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1101\",\"format\":null}', NULL, '195', '{{%forms_submission_value}}', 0),
(763, 1, 1703674471, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":196,\"submission_id\":63,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '196', '{{%forms_submission_value}}', 0),
(764, 0, 1703679938, '', 'api-forms-submission', 0, 1, '{\"id\":64,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=8&title=creamy-butter-cookies\",\"is_done\":null,\"created_at\":1703679938,\"updated_at\":1703679938}', NULL, '64', '{{%forms_submission}}', 0),
(765, 0, 1703679938, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":197,\"submission_id\":64,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"35_750, 31_421\",\"format\":null}', NULL, '197', '{{%forms_submission_value}}', 0),
(766, 0, 1703679938, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":198,\"submission_id\":64,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '198', '{{%forms_submission_value}}', 0),
(767, 0, 1703679938, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":199,\"submission_id\":64,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"Pack_35_750+Eggless_31_421\",\"format\":null}', NULL, '199', '{{%forms_submission_value}}', 0),
(768, 0, 1703679938, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":200,\"submission_id\":64,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"\",\"format\":\"datetime\"}', NULL, '200', '{{%forms_submission_value}}', 0),
(769, 0, 1703679938, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":201,\"submission_id\":64,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1171\",\"format\":null}', NULL, '201', '{{%forms_submission_value}}', 0),
(770, 0, 1703679938, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":202,\"submission_id\":64,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '202', '{{%forms_submission_value}}', 0),
(771, 1, 1703680103, '', 'api-forms-submission', 0, 1, '{\"id\":65,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake\",\"is_done\":null,\"created_at\":1703680103,\"updated_at\":1703680103}', NULL, '65', '{{%forms_submission}}', 0),
(772, 1, 1703680103, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":203,\"submission_id\":65,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_2453, 31_251\",\"format\":null}', NULL, '203', '{{%forms_submission_value}}', 0),
(773, 1, 1703680103, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":204,\"submission_id\":65,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"dfefdfdf\",\"format\":null}', NULL, '204', '{{%forms_submission_value}}', 0),
(774, 1, 1703680103, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":205,\"submission_id\":65,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_2453+Eggless_31_251\",\"format\":null}', NULL, '205', '{{%forms_submission_value}}', 0),
(775, 1, 1703680103, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":206,\"submission_id\":65,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '206', '{{%forms_submission_value}}', 0),
(776, 1, 1703680103, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":207,\"submission_id\":65,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2704\",\"format\":null}', NULL, '207', '{{%forms_submission_value}}', 0),
(777, 1, 1703680103, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":208,\"submission_id\":65,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '208', '{{%forms_submission_value}}', 0),
(778, 1, 1703680124, '', 'api-forms-submission', 0, 1, '{\"id\":66,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=10&title=chocolate-chipped-cookies\",\"is_done\":null,\"created_at\":1703680124,\"updated_at\":1703680124}', NULL, '66', '{{%forms_submission}}', 0),
(779, 1, 1703680124, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":209,\"submission_id\":66,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"37_1256, \",\"format\":null}', NULL, '209', '{{%forms_submission_value}}', 0),
(780, 1, 1703680124, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":210,\"submission_id\":66,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"defdfefd dfererf\",\"format\":null}', NULL, '210', '{{%forms_submission_value}}', 0),
(781, 1, 1703680124, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":211,\"submission_id\":66,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"2-Kg_37_1256\",\"format\":null}', NULL, '211', '{{%forms_submission_value}}', 0),
(782, 1, 1703680124, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":212,\"submission_id\":66,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '212', '{{%forms_submission_value}}', 0),
(783, 1, 1703680124, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":213,\"submission_id\":66,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1256\",\"format\":null}', NULL, '213', '{{%forms_submission_value}}', 0),
(784, 1, 1703680124, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":214,\"submission_id\":66,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"10\",\"format\":null}', NULL, '214', '{{%forms_submission_value}}', 0),
(785, 0, 1703693730, '', 'api-forms-submission', 0, 1, '{\"id\":67,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703693730,\"updated_at\":1703693730}', NULL, '67', '{{%forms_submission}}', 0),
(786, 0, 1703693730, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":215,\"submission_id\":67,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 32_351\",\"format\":null}', NULL, '215', '{{%forms_submission_value}}', 0),
(787, 0, 1703693730, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":216,\"submission_id\":67,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\" ggfg wegfg sfsf \",\"format\":null}', NULL, '216', '{{%forms_submission_value}}', 0),
(788, 0, 1703693730, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":217,\"submission_id\":67,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+With-Egg_32_351\",\"format\":null}', NULL, '217', '{{%forms_submission_value}}', 0),
(789, 0, 1703693730, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":218,\"submission_id\":67,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '218', '{{%forms_submission_value}}', 0),
(790, 0, 1703693730, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":219,\"submission_id\":67,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"605\",\"format\":null}', NULL, '219', '{{%forms_submission_value}}', 0),
(791, 0, 1703693730, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":220,\"submission_id\":67,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '220', '{{%forms_submission_value}}', 0),
(792, 0, 1703693923, '', 'api-forms-submission', 0, 1, '{\"id\":68,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703693923,\"updated_at\":1703693923}', NULL, '68', '{{%forms_submission}}', 0),
(793, 0, 1703693923, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":221,\"submission_id\":68,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 32_351\",\"format\":null}', NULL, '221', '{{%forms_submission_value}}', 0),
(794, 0, 1703693923, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":222,\"submission_id\":68,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\" ggfg wegfg sfsf \",\"format\":null}', NULL, '222', '{{%forms_submission_value}}', 0),
(795, 0, 1703693923, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":223,\"submission_id\":68,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+With-Egg_32_351\",\"format\":null}', NULL, '223', '{{%forms_submission_value}}', 0),
(796, 0, 1703693923, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":224,\"submission_id\":68,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '224', '{{%forms_submission_value}}', 0),
(797, 0, 1703693923, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":225,\"submission_id\":68,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"605\",\"format\":null}', NULL, '225', '{{%forms_submission_value}}', 0),
(798, 0, 1703693923, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":226,\"submission_id\":68,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '226', '{{%forms_submission_value}}', 0),
(799, 0, 1703693971, '', 'api-forms-submission', 0, 1, '{\"id\":69,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703693971,\"updated_at\":1703693971}', NULL, '69', '{{%forms_submission}}', 0),
(800, 0, 1703693971, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":227,\"submission_id\":69,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 32_351\",\"format\":null}', NULL, '227', '{{%forms_submission_value}}', 0),
(801, 0, 1703693971, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":228,\"submission_id\":69,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\" ggfg wegfg sfsf \",\"format\":null}', NULL, '228', '{{%forms_submission_value}}', 0),
(802, 0, 1703693971, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":229,\"submission_id\":69,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+With-Egg_32_351\",\"format\":null}', NULL, '229', '{{%forms_submission_value}}', 0),
(803, 0, 1703693971, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":230,\"submission_id\":69,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '230', '{{%forms_submission_value}}', 0),
(804, 0, 1703693971, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":231,\"submission_id\":69,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"605\",\"format\":null}', NULL, '231', '{{%forms_submission_value}}', 0),
(805, 0, 1703693971, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":232,\"submission_id\":69,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '232', '{{%forms_submission_value}}', 0),
(806, 0, 1703694048, '', 'api-forms-submission', 0, 1, '{\"id\":70,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703694048,\"updated_at\":1703694048}', NULL, '70', '{{%forms_submission}}', 0),
(807, 0, 1703694048, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":233,\"submission_id\":70,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 32_351\",\"format\":null}', NULL, '233', '{{%forms_submission_value}}', 0),
(808, 0, 1703694048, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":234,\"submission_id\":70,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\" ggfg wegfg sfsf \",\"format\":null}', NULL, '234', '{{%forms_submission_value}}', 0),
(809, 0, 1703694048, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":235,\"submission_id\":70,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+With-Egg_32_351\",\"format\":null}', NULL, '235', '{{%forms_submission_value}}', 0),
(810, 0, 1703694048, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":236,\"submission_id\":70,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '236', '{{%forms_submission_value}}', 0),
(811, 0, 1703694048, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":237,\"submission_id\":70,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"605\",\"format\":null}', NULL, '237', '{{%forms_submission_value}}', 0),
(812, 0, 1703694048, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":238,\"submission_id\":70,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '238', '{{%forms_submission_value}}', 0),
(813, 0, 1703694061, '', 'api-forms-submission', 0, 1, '{\"id\":71,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703694061,\"updated_at\":1703694061}', NULL, '71', '{{%forms_submission}}', 0),
(814, 0, 1703694061, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":239,\"submission_id\":71,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 32_351\",\"format\":null}', NULL, '239', '{{%forms_submission_value}}', 0),
(815, 0, 1703694061, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":240,\"submission_id\":71,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\" ggfg wegfg sfsf \",\"format\":null}', NULL, '240', '{{%forms_submission_value}}', 0),
(816, 0, 1703694061, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":241,\"submission_id\":71,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+With-Egg_32_351\",\"format\":null}', NULL, '241', '{{%forms_submission_value}}', 0),
(817, 0, 1703694061, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":242,\"submission_id\":71,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '242', '{{%forms_submission_value}}', 0),
(818, 0, 1703694061, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":243,\"submission_id\":71,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"605\",\"format\":null}', NULL, '243', '{{%forms_submission_value}}', 0),
(819, 0, 1703694061, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":244,\"submission_id\":71,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '244', '{{%forms_submission_value}}', 0),
(820, 0, 1703694116, '', 'api-forms-submission', 0, 1, '{\"id\":72,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703694116,\"updated_at\":1703694116}', NULL, '72', '{{%forms_submission}}', 0),
(821, 0, 1703694116, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":245,\"submission_id\":72,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 32_351\",\"format\":null}', NULL, '245', '{{%forms_submission_value}}', 0),
(822, 0, 1703694116, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":246,\"submission_id\":72,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\" ggfg wegfg sfsf \",\"format\":null}', NULL, '246', '{{%forms_submission_value}}', 0),
(823, 0, 1703694116, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":247,\"submission_id\":72,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+With-Egg_32_351\",\"format\":null}', NULL, '247', '{{%forms_submission_value}}', 0),
(824, 0, 1703694116, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":248,\"submission_id\":72,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '248', '{{%forms_submission_value}}', 0),
(825, 0, 1703694116, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":249,\"submission_id\":72,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"605\",\"format\":null}', NULL, '249', '{{%forms_submission_value}}', 0),
(826, 0, 1703694116, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":250,\"submission_id\":72,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '250', '{{%forms_submission_value}}', 0),
(827, 0, 1703694241, '', 'api-forms-submission', 0, 1, '{\"id\":73,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703694241,\"updated_at\":1703694241}', NULL, '73', '{{%forms_submission}}', 0),
(828, 0, 1703694241, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":251,\"submission_id\":73,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 32_351\",\"format\":null}', NULL, '251', '{{%forms_submission_value}}', 0),
(829, 0, 1703694241, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":252,\"submission_id\":73,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\" ggfg wegfg sfsf \",\"format\":null}', NULL, '252', '{{%forms_submission_value}}', 0),
(830, 0, 1703694241, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":253,\"submission_id\":73,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+With-Egg_32_351\",\"format\":null}', NULL, '253', '{{%forms_submission_value}}', 0),
(831, 0, 1703694241, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":254,\"submission_id\":73,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '254', '{{%forms_submission_value}}', 0),
(832, 0, 1703694241, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":255,\"submission_id\":73,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"605\",\"format\":null}', NULL, '255', '{{%forms_submission_value}}', 0),
(833, 0, 1703694241, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":256,\"submission_id\":73,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '256', '{{%forms_submission_value}}', 0),
(834, 0, 1703694258, '', 'api-forms-submission', 0, 1, '{\"id\":74,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703694258,\"updated_at\":1703694258}', NULL, '74', '{{%forms_submission}}', 0),
(835, 0, 1703694258, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":257,\"submission_id\":74,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 32_351\",\"format\":null}', NULL, '257', '{{%forms_submission_value}}', 0),
(836, 0, 1703694258, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":258,\"submission_id\":74,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\" ggfg wegfg sfsf \",\"format\":null}', NULL, '258', '{{%forms_submission_value}}', 0),
(837, 0, 1703694258, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":259,\"submission_id\":74,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+With-Egg_32_351\",\"format\":null}', NULL, '259', '{{%forms_submission_value}}', 0),
(838, 0, 1703694258, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":260,\"submission_id\":74,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '260', '{{%forms_submission_value}}', 0),
(839, 0, 1703694258, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":261,\"submission_id\":74,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"605\",\"format\":null}', NULL, '261', '{{%forms_submission_value}}', 0),
(840, 0, 1703694258, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":262,\"submission_id\":74,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '262', '{{%forms_submission_value}}', 0),
(841, 0, 1703694358, '', 'api-forms-submission', 0, 1, '{\"id\":75,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703694358,\"updated_at\":1703694358}', NULL, '75', '{{%forms_submission}}', 0),
(842, 0, 1703694358, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":263,\"submission_id\":75,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 32_351\",\"format\":null}', NULL, '263', '{{%forms_submission_value}}', 0),
(843, 0, 1703694358, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":264,\"submission_id\":75,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\" ggfg wegfg sfsf \",\"format\":null}', NULL, '264', '{{%forms_submission_value}}', 0),
(844, 0, 1703694358, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":265,\"submission_id\":75,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+With-Egg_32_351\",\"format\":null}', NULL, '265', '{{%forms_submission_value}}', 0),
(845, 0, 1703694358, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":266,\"submission_id\":75,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '266', '{{%forms_submission_value}}', 0),
(846, 0, 1703694358, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":267,\"submission_id\":75,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"605\",\"format\":null}', NULL, '267', '{{%forms_submission_value}}', 0),
(847, 0, 1703694358, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":268,\"submission_id\":75,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '268', '{{%forms_submission_value}}', 0),
(848, 0, 1703694376, '', 'api-forms-submission', 0, 1, '{\"id\":76,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703694376,\"updated_at\":1703694376}', NULL, '76', '{{%forms_submission}}', 0),
(849, 0, 1703694376, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":269,\"submission_id\":76,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 32_351\",\"format\":null}', NULL, '269', '{{%forms_submission_value}}', 0),
(850, 0, 1703694376, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":270,\"submission_id\":76,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\" ggfg wegfg sfsf \",\"format\":null}', NULL, '270', '{{%forms_submission_value}}', 0),
(851, 0, 1703694376, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":271,\"submission_id\":76,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+With-Egg_32_351\",\"format\":null}', NULL, '271', '{{%forms_submission_value}}', 0),
(852, 0, 1703694376, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":272,\"submission_id\":76,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '272', '{{%forms_submission_value}}', 0),
(853, 0, 1703694376, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":273,\"submission_id\":76,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"605\",\"format\":null}', NULL, '273', '{{%forms_submission_value}}', 0),
(854, 0, 1703694376, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":274,\"submission_id\":76,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '274', '{{%forms_submission_value}}', 0),
(855, 0, 1703694529, '', 'api-forms-submission', 0, 1, '{\"id\":77,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703694529,\"updated_at\":1703694529}', NULL, '77', '{{%forms_submission}}', 0),
(856, 0, 1703694529, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":275,\"submission_id\":77,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '275', '{{%forms_submission_value}}', 0),
(857, 0, 1703694529, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":276,\"submission_id\":77,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eggless 12 Inch\",\"format\":null}', NULL, '276', '{{%forms_submission_value}}', 0),
(858, 0, 1703694529, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":277,\"submission_id\":77,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '277', '{{%forms_submission_value}}', 0),
(859, 0, 1703694529, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":278,\"submission_id\":77,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '278', '{{%forms_submission_value}}', 0),
(860, 0, 1703694529, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":279,\"submission_id\":77,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '279', '{{%forms_submission_value}}', 0),
(861, 0, 1703694529, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":280,\"submission_id\":77,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '280', '{{%forms_submission_value}}', 0),
(862, 0, 1703695412, '', 'api-forms-submission', 0, 1, '{\"id\":78,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703695412,\"updated_at\":1703695412}', NULL, '78', '{{%forms_submission}}', 0),
(863, 0, 1703695413, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":281,\"submission_id\":78,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_2453, 31_251\",\"format\":null}', NULL, '281', '{{%forms_submission_value}}', 0),
(864, 0, 1703695413, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":282,\"submission_id\":78,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Previous day Delivery Edited\",\"format\":null}', NULL, '282', '{{%forms_submission_value}}', 0),
(865, 0, 1703695413, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":283,\"submission_id\":78,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_2453+Eggless_31_251\",\"format\":null}', NULL, '283', '{{%forms_submission_value}}', 0),
(866, 0, 1703695413, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":284,\"submission_id\":78,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '284', '{{%forms_submission_value}}', 0),
(867, 0, 1703695413, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":285,\"submission_id\":78,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2704\",\"format\":null}', NULL, '285', '{{%forms_submission_value}}', 0),
(868, 0, 1703695413, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":286,\"submission_id\":78,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '286', '{{%forms_submission_value}}', 0),
(869, 0, 1703696264, '', 'api-forms-submission', 0, 1, '{\"id\":79,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?submit=2\",\"is_done\":null,\"created_at\":1703696264,\"updated_at\":1703696264}', NULL, '79', '{{%forms_submission}}', 0),
(870, 0, 1703696264, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":287,\"submission_id\":79,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '287', '{{%forms_submission_value}}', 0),
(871, 0, 1703696264, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":288,\"submission_id\":79,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"gf gftr fg hgrhfh fdg\",\"format\":null}', NULL, '288', '{{%forms_submission_value}}', 0),
(872, 0, 1703696264, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":289,\"submission_id\":79,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '289', '{{%forms_submission_value}}', 0),
(873, 0, 1703696264, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":290,\"submission_id\":79,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-28\",\"format\":\"datetime\"}', NULL, '290', '{{%forms_submission_value}}', 0),
(874, 0, 1703696264, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":291,\"submission_id\":79,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '291', '{{%forms_submission_value}}', 0),
(875, 0, 1703696264, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":292,\"submission_id\":79,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '292', '{{%forms_submission_value}}', 0),
(876, 0, 1703740353, '', 'api-forms-submission', 0, 1, '{\"id\":80,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703740353,\"updated_at\":1703740353}', NULL, '80', '{{%forms_submission}}', 0),
(877, 0, 1703740353, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":293,\"submission_id\":80,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '293', '{{%forms_submission_value}}', 0),
(878, 0, 1703740353, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":294,\"submission_id\":80,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Happy Birthday KTR\",\"format\":null}', NULL, '294', '{{%forms_submission_value}}', 0),
(879, 0, 1703740353, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":295,\"submission_id\":80,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+With-Egg_32_647\",\"format\":null}', NULL, '295', '{{%forms_submission_value}}', 0),
(880, 0, 1703740353, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":296,\"submission_id\":80,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-27\",\"format\":\"datetime\"}', NULL, '296', '{{%forms_submission_value}}', 0),
(881, 0, 1703740353, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":297,\"submission_id\":80,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1433\",\"format\":null}', NULL, '297', '{{%forms_submission_value}}', 0),
(882, 0, 1703740353, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":298,\"submission_id\":80,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '298', '{{%forms_submission_value}}', 0),
(883, 0, 1703743598, '', 'api-forms-submission', 0, 1, '{\"id\":81,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703743598,\"updated_at\":1703743598}', NULL, '81', '{{%forms_submission}}', 0),
(884, 0, 1703743598, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":299,\"submission_id\":81,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '299', '{{%forms_submission_value}}', 0),
(885, 0, 1703743598, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":300,\"submission_id\":81,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"ATTICA Gold Company\",\"format\":null}', NULL, '300', '{{%forms_submission_value}}', 0),
(886, 0, 1703743598, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":301,\"submission_id\":81,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '301', '{{%forms_submission_value}}', 0),
(887, 0, 1703743598, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":302,\"submission_id\":81,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '302', '{{%forms_submission_value}}', 0),
(888, 0, 1703743598, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":303,\"submission_id\":81,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '303', '{{%forms_submission_value}}', 0),
(889, 0, 1703743598, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":304,\"submission_id\":81,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '304', '{{%forms_submission_value}}', 0),
(890, 0, 1703745007, '', 'api-forms-submission', 0, 1, '{\"id\":82,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=10&title=chocolate-chipped-cookies&submit=2\",\"is_done\":null,\"created_at\":1703745007,\"updated_at\":1703745007}', NULL, '82', '{{%forms_submission}}', 0),
(891, 0, 1703745007, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":305,\"submission_id\":82,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"37_1256, \",\"format\":null}', NULL, '305', '{{%forms_submission_value}}', 0),
(892, 0, 1703745007, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":306,\"submission_id\":82,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"ll;k llhly\",\"format\":null}', NULL, '306', '{{%forms_submission_value}}', 0),
(893, 0, 1703745007, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":307,\"submission_id\":82,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"2-Kg_37_1256\",\"format\":null}', NULL, '307', '{{%forms_submission_value}}', 0),
(894, 0, 1703745007, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":308,\"submission_id\":82,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-29\",\"format\":\"datetime\"}', NULL, '308', '{{%forms_submission_value}}', 0),
(895, 0, 1703745007, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":309,\"submission_id\":82,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1256\",\"format\":null}', NULL, '309', '{{%forms_submission_value}}', 0),
(896, 0, 1703745007, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":310,\"submission_id\":82,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"10\",\"format\":null}', NULL, '310', '{{%forms_submission_value}}', 0),
(897, 0, 1703745847, '', 'api-forms-submission', 0, 1, '{\"id\":83,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2\",\"is_done\":null,\"created_at\":1703745847,\"updated_at\":1703745847}', NULL, '83', '{{%forms_submission}}', 0),
(898, 0, 1703745847, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":311,\"submission_id\":83,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 32_580\",\"format\":null}', NULL, '311', '{{%forms_submission_value}}', 0),
(899, 0, 1703745847, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":312,\"submission_id\":83,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Six inch Five Layer\",\"format\":null}', NULL, '312', '{{%forms_submission_value}}', 0),
(900, 0, 1703745847, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":313,\"submission_id\":83,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+With-Egg_32_580\",\"format\":null}', NULL, '313', '{{%forms_submission_value}}', 0),
(901, 0, 1703745847, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":314,\"submission_id\":83,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '314', '{{%forms_submission_value}}', 0),
(902, 0, 1703745847, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":315,\"submission_id\":83,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2934\",\"format\":null}', NULL, '315', '{{%forms_submission_value}}', 0),
(903, 0, 1703745847, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":316,\"submission_id\":83,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '316', '{{%forms_submission_value}}', 0),
(904, 1, 1703763736, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":9,\"value_id\":36,\"currency_id\":3,\"qty\":1,\"price\":1248,\"unit_id\":4}', NULL, '9-36-3-1-4', 'catalog_article_price', 0),
(905, 1, 1703763798, '', 'api-catalog-articleprice', 1, 0, '{\"article_id\":9,\"value_id\":31,\"currency_id\":3,\"qty\":1,\"price\":148,\"unit_id\":4}', '{\"price\":0}', '9-31-3-1-4', 'catalog_article_price', 0),
(906, 1, 1703764099, '', 'api-forms-submission', 0, 1, '{\"id\":84,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2\",\"is_done\":null,\"created_at\":1703764099,\"updated_at\":1703764099}', NULL, '84', '{{%forms_submission}}', 0),
(907, 1, 1703764099, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":317,\"submission_id\":84,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '317', '{{%forms_submission_value}}', 0),
(908, 1, 1703764099, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":318,\"submission_id\":84,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Srilekha Gummandur\",\"format\":null}', NULL, '318', '{{%forms_submission_value}}', 0);
INSERT INTO `admin_ngrest_log` (`id`, `user_id`, `timestamp_create`, `route`, `api`, `is_update`, `is_insert`, `attributes_json`, `attributes_diff_json`, `pk_value`, `table_name`, `is_delete`) VALUES
(909, 1, 1703764099, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":319,\"submission_id\":84,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '319', '{{%forms_submission_value}}', 0),
(910, 1, 1703764099, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":320,\"submission_id\":84,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '320', '{{%forms_submission_value}}', 0),
(911, 1, 1703764099, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":321,\"submission_id\":84,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '321', '{{%forms_submission_value}}', 0),
(912, 1, 1703764099, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":322,\"submission_id\":84,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '322', '{{%forms_submission_value}}', 0),
(913, 0, 1703771943, '', 'api-forms-submission', 0, 1, '{\"id\":85,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=9&title=vanilla-cake-with-butter-cream&submit=2\",\"is_done\":null,\"created_at\":1703771943,\"updated_at\":1703771943}', NULL, '85', '{{%forms_submission}}', 0),
(914, 0, 1703771943, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":323,\"submission_id\":85,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_1248, 31_148\",\"format\":null}', NULL, '323', '{{%forms_submission_value}}', 0),
(915, 0, 1703771943, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":324,\"submission_id\":85,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"You may also be \",\"format\":null}', NULL, '324', '{{%forms_submission_value}}', 0),
(916, 0, 1703771943, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":325,\"submission_id\":85,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_1248+Eggless_31_148\",\"format\":null}', NULL, '325', '{{%forms_submission_value}}', 0),
(917, 0, 1703771943, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":326,\"submission_id\":85,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '326', '{{%forms_submission_value}}', 0),
(918, 0, 1703771943, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":327,\"submission_id\":85,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1396\",\"format\":null}', NULL, '327', '{{%forms_submission_value}}', 0),
(919, 0, 1703771943, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":328,\"submission_id\":85,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"9\",\"format\":null}', NULL, '328', '{{%forms_submission_value}}', 0),
(920, 0, 1703820915, '', 'api-forms-submission', 0, 1, '{\"id\":86,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2\",\"is_done\":null,\"created_at\":1703820915,\"updated_at\":1703820915}', NULL, '86', '{{%forms_submission}}', 0),
(921, 0, 1703820915, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":329,\"submission_id\":86,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_2453, 32_580\",\"format\":null}', NULL, '329', '{{%forms_submission_value}}', 0),
(922, 0, 1703820915, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":330,\"submission_id\":86,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Happy Birthday Guri\",\"format\":null}', NULL, '330', '{{%forms_submission_value}}', 0),
(923, 0, 1703820915, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":331,\"submission_id\":86,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_2453+With-Egg_32_580\",\"format\":null}', NULL, '331', '{{%forms_submission_value}}', 0),
(924, 0, 1703820915, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":332,\"submission_id\":86,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-31\",\"format\":\"datetime\"}', NULL, '332', '{{%forms_submission_value}}', 0),
(925, 0, 1703820915, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":333,\"submission_id\":86,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"3033\",\"format\":null}', NULL, '333', '{{%forms_submission_value}}', 0),
(926, 0, 1703820915, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":334,\"submission_id\":86,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '334', '{{%forms_submission_value}}', 0),
(927, 0, 1703825775, '', 'api-forms-submission', 0, 1, '{\"id\":87,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=8&title=creamy-butter-cookies&submit=2\",\"is_done\":null,\"created_at\":1703825775,\"updated_at\":1703825775}', NULL, '87', '{{%forms_submission}}', 0),
(928, 0, 1703825775, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":335,\"submission_id\":87,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 31_421\",\"format\":null}', NULL, '335', '{{%forms_submission_value}}', 0),
(929, 0, 1703825775, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":336,\"submission_id\":87,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Happy Birthday Ganesh\",\"format\":null}', NULL, '336', '{{%forms_submission_value}}', 0),
(930, 0, 1703825775, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":337,\"submission_id\":87,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+Eggless_31_421\",\"format\":null}', NULL, '337', '{{%forms_submission_value}}', 0),
(931, 0, 1703825775, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":338,\"submission_id\":87,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-31\",\"format\":\"datetime\"}', NULL, '338', '{{%forms_submission_value}}', 0),
(932, 0, 1703825775, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":339,\"submission_id\":87,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"675\",\"format\":null}', NULL, '339', '{{%forms_submission_value}}', 0),
(933, 0, 1703825775, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":340,\"submission_id\":87,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '340', '{{%forms_submission_value}}', 0),
(934, 1, 1703831826, '', 'api-forms-form', 0, 1, '{\"id\":3,\"title\":\"{\\\"en\\\":\\\"Delivery Address\\\"}\",\"subject\":null,\"email_intro\":null,\"email_outro\":null,\"copy_to_attribute\":null,\"recipients\":\"[]\",\"created_at\":1703831826,\"updated_at\":1703831826,\"created_by\":1,\"updated_by\":1}', NULL, '3', '{{%forms_form}}', 0),
(935, 1, 1703831859, '', 'api-forms-form', 1, 0, '{\"id\":3,\"title\":\"{\\\"en\\\":\\\"Address Form\\\"}\",\"subject\":\"{\\\"en\\\":\\\"\\\"}\",\"email_intro\":\"{\\\"en\\\":\\\"\\\"}\",\"email_outro\":\"{\\\"en\\\":\\\"\\\"}\",\"copy_to_attribute\":null,\"recipients\":\"[]\",\"created_at\":1703831826,\"updated_at\":1703831859,\"created_by\":1,\"updated_by\":1}', '{\"title\":\"Delivery Address\",\"subject\":\"\",\"email_intro\":\"\",\"email_outro\":\"\",\"updated_at\":1703831826}', '3', '{{%forms_form}}', 0),
(936, 1, 1703853709, '', 'api-forms-submission', 0, 1, '{\"id\":88,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703853709,\"updated_at\":1703853709}', NULL, '88', '{{%forms_submission}}', 0),
(937, 1, 1703853709, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":341,\"submission_id\":88,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '341', '{{%forms_submission_value}}', 0),
(938, 1, 1703853709, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":342,\"submission_id\":88,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"By 2023\",\"format\":null}', NULL, '342', '{{%forms_submission_value}}', 0),
(939, 1, 1703853709, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":343,\"submission_id\":88,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '343', '{{%forms_submission_value}}', 0),
(940, 1, 1703853709, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":344,\"submission_id\":88,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-28\",\"format\":\"datetime\"}', NULL, '344', '{{%forms_submission_value}}', 0),
(941, 1, 1703853709, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":345,\"submission_id\":88,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '345', '{{%forms_submission_value}}', 0),
(942, 1, 1703853709, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":346,\"submission_id\":88,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '346', '{{%forms_submission_value}}', 0),
(943, 1, 1703853971, '', 'api-forms-submission', 0, 1, '{\"id\":89,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2\",\"is_done\":null,\"created_at\":1703853971,\"updated_at\":1703853971}', NULL, '89', '{{%forms_submission}}', 0),
(944, 1, 1703853971, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":347,\"submission_id\":89,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1452, 31_251\",\"format\":null}', NULL, '347', '{{%forms_submission_value}}', 0),
(945, 1, 1703853971, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":348,\"submission_id\":89,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '348', '{{%forms_submission_value}}', 0),
(946, 1, 1703853971, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":349,\"submission_id\":89,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1452+Eggless_31_251\",\"format\":null}', NULL, '349', '{{%forms_submission_value}}', 0),
(947, 1, 1703853971, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":350,\"submission_id\":89,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '350', '{{%forms_submission_value}}', 0),
(948, 1, 1703853971, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":351,\"submission_id\":89,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1703\",\"format\":null}', NULL, '351', '{{%forms_submission_value}}', 0),
(949, 1, 1703853971, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":352,\"submission_id\":89,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '352', '{{%forms_submission_value}}', 0),
(950, 1, 1703853983, '', 'api-forms-submission', 0, 1, '{\"id\":90,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2\",\"is_done\":null,\"created_at\":1703853983,\"updated_at\":1703853983}', NULL, '90', '{{%forms_submission}}', 0),
(951, 1, 1703853983, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":353,\"submission_id\":90,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1452, 31_251\",\"format\":null}', NULL, '353', '{{%forms_submission_value}}', 0),
(952, 1, 1703853983, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":354,\"submission_id\":90,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '354', '{{%forms_submission_value}}', 0),
(953, 1, 1703853983, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":355,\"submission_id\":90,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1452+Eggless_31_251\",\"format\":null}', NULL, '355', '{{%forms_submission_value}}', 0),
(954, 1, 1703853983, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":356,\"submission_id\":90,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '356', '{{%forms_submission_value}}', 0),
(955, 1, 1703853983, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":357,\"submission_id\":90,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1703\",\"format\":null}', NULL, '357', '{{%forms_submission_value}}', 0),
(956, 1, 1703853983, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":358,\"submission_id\":90,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '358', '{{%forms_submission_value}}', 0),
(957, 1, 1703855937, '', 'api-forms-submission', 0, 1, '{\"id\":91,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2\",\"is_done\":null,\"created_at\":1703855937,\"updated_at\":1703855937}', NULL, '91', '{{%forms_submission}}', 0),
(958, 1, 1703855937, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":359,\"submission_id\":91,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1452, 31_251\",\"format\":null}', NULL, '359', '{{%forms_submission_value}}', 0),
(959, 1, 1703855937, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":360,\"submission_id\":91,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '360', '{{%forms_submission_value}}', 0),
(960, 1, 1703855937, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":361,\"submission_id\":91,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1452+Eggless_31_251\",\"format\":null}', NULL, '361', '{{%forms_submission_value}}', 0),
(961, 1, 1703855937, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":362,\"submission_id\":91,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '362', '{{%forms_submission_value}}', 0),
(962, 1, 1703855937, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":363,\"submission_id\":91,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1703\",\"format\":null}', NULL, '363', '{{%forms_submission_value}}', 0),
(963, 1, 1703855937, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":364,\"submission_id\":91,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '364', '{{%forms_submission_value}}', 0),
(964, 1, 1703855940, '', 'api-forms-submission', 0, 1, '{\"id\":92,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2\",\"is_done\":null,\"created_at\":1703855940,\"updated_at\":1703855940}', NULL, '92', '{{%forms_submission}}', 0),
(965, 1, 1703855940, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":365,\"submission_id\":92,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1452, 31_251\",\"format\":null}', NULL, '365', '{{%forms_submission_value}}', 0),
(966, 1, 1703855940, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":366,\"submission_id\":92,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '366', '{{%forms_submission_value}}', 0),
(967, 1, 1703855940, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":367,\"submission_id\":92,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1452+Eggless_31_251\",\"format\":null}', NULL, '367', '{{%forms_submission_value}}', 0),
(968, 1, 1703855940, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":368,\"submission_id\":92,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '368', '{{%forms_submission_value}}', 0),
(969, 1, 1703855940, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":369,\"submission_id\":92,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1703\",\"format\":null}', NULL, '369', '{{%forms_submission_value}}', 0),
(970, 1, 1703855940, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":370,\"submission_id\":92,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '370', '{{%forms_submission_value}}', 0),
(971, 1, 1703855944, '', 'api-forms-submission', 0, 1, '{\"id\":93,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703855944,\"updated_at\":1703855944}', NULL, '93', '{{%forms_submission}}', 0),
(972, 1, 1703855944, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":371,\"submission_id\":93,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1452, 31_251\",\"format\":null}', NULL, '371', '{{%forms_submission_value}}', 0),
(973, 1, 1703855944, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":372,\"submission_id\":93,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '372', '{{%forms_submission_value}}', 0),
(974, 1, 1703855944, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":373,\"submission_id\":93,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1452+Eggless_31_251\",\"format\":null}', NULL, '373', '{{%forms_submission_value}}', 0),
(975, 1, 1703855944, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":374,\"submission_id\":93,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '374', '{{%forms_submission_value}}', 0),
(976, 1, 1703855944, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":375,\"submission_id\":93,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1703\",\"format\":null}', NULL, '375', '{{%forms_submission_value}}', 0),
(977, 1, 1703855944, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":376,\"submission_id\":93,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '376', '{{%forms_submission_value}}', 0),
(978, 1, 1703855955, '', 'api-forms-submission', 0, 1, '{\"id\":94,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703855955,\"updated_at\":1703855955}', NULL, '94', '{{%forms_submission}}', 0),
(979, 1, 1703855955, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":377,\"submission_id\":94,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '377', '{{%forms_submission_value}}', 0),
(980, 1, 1703855955, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":378,\"submission_id\":94,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '378', '{{%forms_submission_value}}', 0),
(981, 1, 1703855955, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":379,\"submission_id\":94,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '379', '{{%forms_submission_value}}', 0),
(982, 1, 1703855955, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":380,\"submission_id\":94,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '380', '{{%forms_submission_value}}', 0),
(983, 1, 1703855955, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":381,\"submission_id\":94,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '381', '{{%forms_submission_value}}', 0),
(984, 1, 1703855955, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":382,\"submission_id\":94,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '382', '{{%forms_submission_value}}', 0),
(985, 1, 1703856289, '', 'api-forms-submission', 0, 1, '{\"id\":95,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703856289,\"updated_at\":1703856289}', NULL, '95', '{{%forms_submission}}', 0),
(986, 1, 1703856289, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":383,\"submission_id\":95,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '383', '{{%forms_submission_value}}', 0),
(987, 1, 1703856289, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":384,\"submission_id\":95,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '384', '{{%forms_submission_value}}', 0),
(988, 1, 1703856289, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":385,\"submission_id\":95,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '385', '{{%forms_submission_value}}', 0),
(989, 1, 1703856289, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":386,\"submission_id\":95,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '386', '{{%forms_submission_value}}', 0),
(990, 1, 1703856289, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":387,\"submission_id\":95,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '387', '{{%forms_submission_value}}', 0),
(991, 1, 1703856289, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":388,\"submission_id\":95,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '388', '{{%forms_submission_value}}', 0),
(992, 1, 1703856746, '', 'api-forms-submission', 0, 1, '{\"id\":96,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703856746,\"updated_at\":1703856746}', NULL, '96', '{{%forms_submission}}', 0),
(993, 1, 1703856746, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":389,\"submission_id\":96,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '389', '{{%forms_submission_value}}', 0),
(994, 1, 1703856746, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":390,\"submission_id\":96,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '390', '{{%forms_submission_value}}', 0),
(995, 1, 1703856746, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":391,\"submission_id\":96,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '391', '{{%forms_submission_value}}', 0),
(996, 1, 1703856746, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":392,\"submission_id\":96,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '392', '{{%forms_submission_value}}', 0),
(997, 1, 1703856746, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":393,\"submission_id\":96,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '393', '{{%forms_submission_value}}', 0),
(998, 1, 1703856746, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":394,\"submission_id\":96,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '394', '{{%forms_submission_value}}', 0),
(999, 1, 1703857047, '', 'api-forms-submission', 0, 1, '{\"id\":97,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703857047,\"updated_at\":1703857047}', NULL, '97', '{{%forms_submission}}', 0),
(1000, 1, 1703857047, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":395,\"submission_id\":97,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '395', '{{%forms_submission_value}}', 0),
(1001, 1, 1703857047, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":396,\"submission_id\":97,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '396', '{{%forms_submission_value}}', 0),
(1002, 1, 1703857047, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":397,\"submission_id\":97,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '397', '{{%forms_submission_value}}', 0),
(1003, 1, 1703857047, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":398,\"submission_id\":97,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '398', '{{%forms_submission_value}}', 0),
(1004, 1, 1703857047, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":399,\"submission_id\":97,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '399', '{{%forms_submission_value}}', 0),
(1005, 1, 1703857047, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":400,\"submission_id\":97,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '400', '{{%forms_submission_value}}', 0),
(1006, 1, 1703857052, '', 'api-forms-submission', 0, 1, '{\"id\":98,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703857052,\"updated_at\":1703857052}', NULL, '98', '{{%forms_submission}}', 0),
(1007, 1, 1703857052, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":401,\"submission_id\":98,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '401', '{{%forms_submission_value}}', 0),
(1008, 1, 1703857052, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":402,\"submission_id\":98,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '402', '{{%forms_submission_value}}', 0),
(1009, 1, 1703857052, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":403,\"submission_id\":98,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '403', '{{%forms_submission_value}}', 0),
(1010, 1, 1703857052, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":404,\"submission_id\":98,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '404', '{{%forms_submission_value}}', 0),
(1011, 1, 1703857052, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":405,\"submission_id\":98,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '405', '{{%forms_submission_value}}', 0),
(1012, 1, 1703857052, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":406,\"submission_id\":98,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '406', '{{%forms_submission_value}}', 0),
(1013, 1, 1703857454, '', 'api-forms-submission', 0, 1, '{\"id\":99,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703857454,\"updated_at\":1703857454}', NULL, '99', '{{%forms_submission}}', 0),
(1014, 1, 1703857454, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":407,\"submission_id\":99,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '407', '{{%forms_submission_value}}', 0),
(1015, 1, 1703857454, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":408,\"submission_id\":99,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '408', '{{%forms_submission_value}}', 0),
(1016, 1, 1703857454, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":409,\"submission_id\":99,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '409', '{{%forms_submission_value}}', 0),
(1017, 1, 1703857454, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":410,\"submission_id\":99,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '410', '{{%forms_submission_value}}', 0),
(1018, 1, 1703857454, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":411,\"submission_id\":99,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '411', '{{%forms_submission_value}}', 0),
(1019, 1, 1703857454, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":412,\"submission_id\":99,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '412', '{{%forms_submission_value}}', 0),
(1020, 1, 1703857459, '', 'api-forms-submission', 0, 1, '{\"id\":100,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703857459,\"updated_at\":1703857459}', NULL, '100', '{{%forms_submission}}', 0),
(1021, 1, 1703857459, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":413,\"submission_id\":100,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '413', '{{%forms_submission_value}}', 0),
(1022, 1, 1703857459, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":414,\"submission_id\":100,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '414', '{{%forms_submission_value}}', 0),
(1023, 1, 1703857459, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":415,\"submission_id\":100,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '415', '{{%forms_submission_value}}', 0),
(1024, 1, 1703857459, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":416,\"submission_id\":100,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '416', '{{%forms_submission_value}}', 0),
(1025, 1, 1703857459, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":417,\"submission_id\":100,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '417', '{{%forms_submission_value}}', 0),
(1026, 1, 1703857459, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":418,\"submission_id\":100,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '418', '{{%forms_submission_value}}', 0),
(1027, 1, 1703857545, '', 'api-forms-submission', 0, 1, '{\"id\":101,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703857545,\"updated_at\":1703857545}', NULL, '101', '{{%forms_submission}}', 0),
(1028, 1, 1703857545, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":419,\"submission_id\":101,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '419', '{{%forms_submission_value}}', 0),
(1029, 1, 1703857545, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":420,\"submission_id\":101,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '420', '{{%forms_submission_value}}', 0),
(1030, 1, 1703857545, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":421,\"submission_id\":101,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '421', '{{%forms_submission_value}}', 0),
(1031, 1, 1703857545, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":422,\"submission_id\":101,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '422', '{{%forms_submission_value}}', 0),
(1032, 1, 1703857545, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":423,\"submission_id\":101,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '423', '{{%forms_submission_value}}', 0),
(1033, 1, 1703857545, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":424,\"submission_id\":101,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '424', '{{%forms_submission_value}}', 0),
(1034, 1, 1703857548, '', 'api-forms-submission', 0, 1, '{\"id\":102,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703857548,\"updated_at\":1703857548}', NULL, '102', '{{%forms_submission}}', 0),
(1035, 1, 1703857548, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":425,\"submission_id\":102,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '425', '{{%forms_submission_value}}', 0),
(1036, 1, 1703857548, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":426,\"submission_id\":102,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '426', '{{%forms_submission_value}}', 0),
(1037, 1, 1703857548, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":427,\"submission_id\":102,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '427', '{{%forms_submission_value}}', 0),
(1038, 1, 1703857548, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":428,\"submission_id\":102,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '428', '{{%forms_submission_value}}', 0),
(1039, 1, 1703857548, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":429,\"submission_id\":102,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '429', '{{%forms_submission_value}}', 0),
(1040, 1, 1703857548, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":430,\"submission_id\":102,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '430', '{{%forms_submission_value}}', 0),
(1041, 1, 1703857607, '', 'api-forms-submission', 0, 1, '{\"id\":103,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703857607,\"updated_at\":1703857607}', NULL, '103', '{{%forms_submission}}', 0),
(1042, 1, 1703857607, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":431,\"submission_id\":103,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '431', '{{%forms_submission_value}}', 0),
(1043, 1, 1703857607, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":432,\"submission_id\":103,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '432', '{{%forms_submission_value}}', 0),
(1044, 1, 1703857607, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":433,\"submission_id\":103,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '433', '{{%forms_submission_value}}', 0),
(1045, 1, 1703857607, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":434,\"submission_id\":103,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '434', '{{%forms_submission_value}}', 0),
(1046, 1, 1703857607, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":435,\"submission_id\":103,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '435', '{{%forms_submission_value}}', 0),
(1047, 1, 1703857607, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":436,\"submission_id\":103,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '436', '{{%forms_submission_value}}', 0),
(1048, 1, 1703857611, '', 'api-forms-submission', 0, 1, '{\"id\":104,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703857610,\"updated_at\":1703857610}', NULL, '104', '{{%forms_submission}}', 0),
(1049, 1, 1703857611, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":437,\"submission_id\":104,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '437', '{{%forms_submission_value}}', 0),
(1050, 1, 1703857611, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":438,\"submission_id\":104,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '438', '{{%forms_submission_value}}', 0),
(1051, 1, 1703857611, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":439,\"submission_id\":104,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '439', '{{%forms_submission_value}}', 0),
(1052, 1, 1703857611, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":440,\"submission_id\":104,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '440', '{{%forms_submission_value}}', 0),
(1053, 1, 1703857611, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":441,\"submission_id\":104,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '441', '{{%forms_submission_value}}', 0),
(1054, 1, 1703857611, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":442,\"submission_id\":104,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '442', '{{%forms_submission_value}}', 0),
(1055, 1, 1703857653, '', 'api-forms-submission', 0, 1, '{\"id\":105,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703857653,\"updated_at\":1703857653}', NULL, '105', '{{%forms_submission}}', 0),
(1056, 1, 1703857653, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":443,\"submission_id\":105,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '443', '{{%forms_submission_value}}', 0),
(1057, 1, 1703857653, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":444,\"submission_id\":105,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '444', '{{%forms_submission_value}}', 0),
(1058, 1, 1703857653, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":445,\"submission_id\":105,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '445', '{{%forms_submission_value}}', 0),
(1059, 1, 1703857653, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":446,\"submission_id\":105,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '446', '{{%forms_submission_value}}', 0),
(1060, 1, 1703857653, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":447,\"submission_id\":105,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '447', '{{%forms_submission_value}}', 0),
(1061, 1, 1703857653, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":448,\"submission_id\":105,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '448', '{{%forms_submission_value}}', 0),
(1062, 1, 1703857658, '', 'api-forms-submission', 0, 1, '{\"id\":106,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703857658,\"updated_at\":1703857658}', NULL, '106', '{{%forms_submission}}', 0),
(1063, 1, 1703857658, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":449,\"submission_id\":106,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '449', '{{%forms_submission_value}}', 0),
(1064, 1, 1703857658, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":450,\"submission_id\":106,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '450', '{{%forms_submission_value}}', 0),
(1065, 1, 1703857658, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":451,\"submission_id\":106,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '451', '{{%forms_submission_value}}', 0),
(1066, 1, 1703857658, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":452,\"submission_id\":106,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '452', '{{%forms_submission_value}}', 0),
(1067, 1, 1703857658, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":453,\"submission_id\":106,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '453', '{{%forms_submission_value}}', 0),
(1068, 1, 1703857658, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":454,\"submission_id\":106,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '454', '{{%forms_submission_value}}', 0),
(1069, 1, 1703857666, '', 'api-forms-submission', 0, 1, '{\"id\":107,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703857666,\"updated_at\":1703857666}', NULL, '107', '{{%forms_submission}}', 0),
(1070, 1, 1703857666, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":455,\"submission_id\":107,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '455', '{{%forms_submission_value}}', 0),
(1071, 1, 1703857666, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":456,\"submission_id\":107,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '456', '{{%forms_submission_value}}', 0),
(1072, 1, 1703857666, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":457,\"submission_id\":107,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '457', '{{%forms_submission_value}}', 0),
(1073, 1, 1703857666, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":458,\"submission_id\":107,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '458', '{{%forms_submission_value}}', 0),
(1074, 1, 1703857666, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":459,\"submission_id\":107,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '459', '{{%forms_submission_value}}', 0),
(1075, 1, 1703857666, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":460,\"submission_id\":107,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '460', '{{%forms_submission_value}}', 0),
(1076, 1, 1703857680, '', 'api-forms-submission', 0, 1, '{\"id\":108,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2\",\"is_done\":null,\"created_at\":1703857680,\"updated_at\":1703857680}', NULL, '108', '{{%forms_submission}}', 0),
(1077, 1, 1703857680, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":461,\"submission_id\":108,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '461', '{{%forms_submission_value}}', 0),
(1078, 1, 1703857680, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":462,\"submission_id\":108,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '462', '{{%forms_submission_value}}', 0),
(1079, 1, 1703857680, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":463,\"submission_id\":108,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '463', '{{%forms_submission_value}}', 0),
(1080, 1, 1703857680, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":464,\"submission_id\":108,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '464', '{{%forms_submission_value}}', 0),
(1081, 1, 1703857680, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":465,\"submission_id\":108,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '465', '{{%forms_submission_value}}', 0),
(1082, 1, 1703857680, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":466,\"submission_id\":108,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '466', '{{%forms_submission_value}}', 0),
(1083, 1, 1703857686, '', 'api-forms-submission', 0, 1, '{\"id\":109,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2\",\"is_done\":null,\"created_at\":1703857686,\"updated_at\":1703857686}', NULL, '109', '{{%forms_submission}}', 0),
(1084, 1, 1703857686, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":467,\"submission_id\":109,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '467', '{{%forms_submission_value}}', 0);
INSERT INTO `admin_ngrest_log` (`id`, `user_id`, `timestamp_create`, `route`, `api`, `is_update`, `is_insert`, `attributes_json`, `attributes_diff_json`, `pk_value`, `table_name`, `is_delete`) VALUES
(1085, 1, 1703857686, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":468,\"submission_id\":109,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '468', '{{%forms_submission_value}}', 0),
(1086, 1, 1703857686, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":469,\"submission_id\":109,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '469', '{{%forms_submission_value}}', 0),
(1087, 1, 1703857686, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":470,\"submission_id\":109,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '470', '{{%forms_submission_value}}', 0),
(1088, 1, 1703857686, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":471,\"submission_id\":109,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '471', '{{%forms_submission_value}}', 0),
(1089, 1, 1703857686, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":472,\"submission_id\":109,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '472', '{{%forms_submission_value}}', 0),
(1090, 1, 1703857691, '', 'api-forms-submission', 0, 1, '{\"id\":110,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703857691,\"updated_at\":1703857691}', NULL, '110', '{{%forms_submission}}', 0),
(1091, 1, 1703857691, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":473,\"submission_id\":110,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '473', '{{%forms_submission_value}}', 0),
(1092, 1, 1703857691, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":474,\"submission_id\":110,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '474', '{{%forms_submission_value}}', 0),
(1093, 1, 1703857691, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":475,\"submission_id\":110,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '475', '{{%forms_submission_value}}', 0),
(1094, 1, 1703857691, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":476,\"submission_id\":110,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '476', '{{%forms_submission_value}}', 0),
(1095, 1, 1703857691, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":477,\"submission_id\":110,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '477', '{{%forms_submission_value}}', 0),
(1096, 1, 1703857691, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":478,\"submission_id\":110,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '478', '{{%forms_submission_value}}', 0),
(1097, 1, 1703859381, '', 'api-forms-submission', 0, 1, '{\"id\":111,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703859381,\"updated_at\":1703859381}', NULL, '111', '{{%forms_submission}}', 0),
(1098, 1, 1703859381, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":479,\"submission_id\":111,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '479', '{{%forms_submission_value}}', 0),
(1099, 1, 1703859381, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":480,\"submission_id\":111,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '480', '{{%forms_submission_value}}', 0),
(1100, 1, 1703859381, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":481,\"submission_id\":111,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+With-Egg_32_647\",\"format\":null}', NULL, '481', '{{%forms_submission_value}}', 0),
(1101, 1, 1703859381, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":482,\"submission_id\":111,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '482', '{{%forms_submission_value}}', 0),
(1102, 1, 1703859381, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":483,\"submission_id\":111,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1433\",\"format\":null}', NULL, '483', '{{%forms_submission_value}}', 0),
(1103, 1, 1703859381, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":484,\"submission_id\":111,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '484', '{{%forms_submission_value}}', 0),
(1104, 0, 1703862228, '', 'api-forms-submission', 0, 1, '{\"id\":112,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703862228,\"updated_at\":1703862228}', NULL, '112', '{{%forms_submission}}', 0),
(1105, 0, 1703862228, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":485,\"submission_id\":112,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '485', '{{%forms_submission_value}}', 0),
(1106, 0, 1703862228, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":486,\"submission_id\":112,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '486', '{{%forms_submission_value}}', 0),
(1107, 0, 1703862228, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":487,\"submission_id\":112,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+With-Egg_32_647\",\"format\":null}', NULL, '487', '{{%forms_submission_value}}', 0),
(1108, 0, 1703862228, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":488,\"submission_id\":112,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '488', '{{%forms_submission_value}}', 0),
(1109, 0, 1703862228, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":489,\"submission_id\":112,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1433\",\"format\":null}', NULL, '489', '{{%forms_submission_value}}', 0),
(1110, 0, 1703862228, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":490,\"submission_id\":112,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '490', '{{%forms_submission_value}}', 0),
(1111, 0, 1703862363, '', 'api-forms-submission', 0, 1, '{\"id\":113,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703862363,\"updated_at\":1703862363}', NULL, '113', '{{%forms_submission}}', 0),
(1112, 0, 1703862363, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":491,\"submission_id\":113,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '491', '{{%forms_submission_value}}', 0),
(1113, 0, 1703862363, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":492,\"submission_id\":113,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '492', '{{%forms_submission_value}}', 0),
(1114, 0, 1703862363, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":493,\"submission_id\":113,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+With-Egg_32_647\",\"format\":null}', NULL, '493', '{{%forms_submission_value}}', 0),
(1115, 0, 1703862363, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":494,\"submission_id\":113,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '494', '{{%forms_submission_value}}', 0),
(1116, 0, 1703862363, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":495,\"submission_id\":113,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1433\",\"format\":null}', NULL, '495', '{{%forms_submission_value}}', 0),
(1117, 0, 1703862363, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":496,\"submission_id\":113,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '496', '{{%forms_submission_value}}', 0),
(1118, 0, 1703862404, '', 'api-forms-submission', 0, 1, '{\"id\":114,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703862404,\"updated_at\":1703862404}', NULL, '114', '{{%forms_submission}}', 0),
(1119, 0, 1703862404, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":497,\"submission_id\":114,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '497', '{{%forms_submission_value}}', 0),
(1120, 0, 1703862404, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":498,\"submission_id\":114,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '498', '{{%forms_submission_value}}', 0),
(1121, 0, 1703862404, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":499,\"submission_id\":114,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+With-Egg_32_647\",\"format\":null}', NULL, '499', '{{%forms_submission_value}}', 0),
(1122, 0, 1703862404, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":500,\"submission_id\":114,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '500', '{{%forms_submission_value}}', 0),
(1123, 0, 1703862404, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":501,\"submission_id\":114,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1433\",\"format\":null}', NULL, '501', '{{%forms_submission_value}}', 0),
(1124, 0, 1703862404, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":502,\"submission_id\":114,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '502', '{{%forms_submission_value}}', 0),
(1125, 0, 1703862409, '', 'api-forms-submission', 0, 1, '{\"id\":115,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703862409,\"updated_at\":1703862409}', NULL, '115', '{{%forms_submission}}', 0),
(1126, 0, 1703862409, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":503,\"submission_id\":115,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '503', '{{%forms_submission_value}}', 0),
(1127, 0, 1703862409, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":504,\"submission_id\":115,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '504', '{{%forms_submission_value}}', 0),
(1128, 0, 1703862410, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":505,\"submission_id\":115,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+With-Egg_32_647\",\"format\":null}', NULL, '505', '{{%forms_submission_value}}', 0),
(1129, 0, 1703862410, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":506,\"submission_id\":115,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '506', '{{%forms_submission_value}}', 0),
(1130, 0, 1703862410, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":507,\"submission_id\":115,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1433\",\"format\":null}', NULL, '507', '{{%forms_submission_value}}', 0),
(1131, 0, 1703862410, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":508,\"submission_id\":115,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '508', '{{%forms_submission_value}}', 0),
(1132, 0, 1703862414, '', 'api-forms-submission', 0, 1, '{\"id\":116,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703862414,\"updated_at\":1703862414}', NULL, '116', '{{%forms_submission}}', 0),
(1133, 0, 1703862414, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":509,\"submission_id\":116,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '509', '{{%forms_submission_value}}', 0),
(1134, 0, 1703862414, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":510,\"submission_id\":116,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '510', '{{%forms_submission_value}}', 0),
(1135, 0, 1703862414, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":511,\"submission_id\":116,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+With-Egg_32_647\",\"format\":null}', NULL, '511', '{{%forms_submission_value}}', 0),
(1136, 0, 1703862414, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":512,\"submission_id\":116,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '512', '{{%forms_submission_value}}', 0),
(1137, 0, 1703862414, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":513,\"submission_id\":116,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1433\",\"format\":null}', NULL, '513', '{{%forms_submission_value}}', 0),
(1138, 0, 1703862414, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":514,\"submission_id\":116,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '514', '{{%forms_submission_value}}', 0),
(1139, 0, 1703862420, '', 'api-forms-submission', 0, 1, '{\"id\":117,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703862420,\"updated_at\":1703862420}', NULL, '117', '{{%forms_submission}}', 0),
(1140, 0, 1703862420, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":515,\"submission_id\":117,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '515', '{{%forms_submission_value}}', 0),
(1141, 0, 1703862420, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":516,\"submission_id\":117,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '516', '{{%forms_submission_value}}', 0),
(1142, 0, 1703862420, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":517,\"submission_id\":117,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '517', '{{%forms_submission_value}}', 0),
(1143, 0, 1703862420, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":518,\"submission_id\":117,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '518', '{{%forms_submission_value}}', 0),
(1144, 0, 1703862420, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":519,\"submission_id\":117,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '519', '{{%forms_submission_value}}', 0),
(1145, 0, 1703862420, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":520,\"submission_id\":117,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '520', '{{%forms_submission_value}}', 0),
(1146, 0, 1703862458, '', 'api-forms-submission', 0, 1, '{\"id\":118,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703862458,\"updated_at\":1703862458}', NULL, '118', '{{%forms_submission}}', 0),
(1147, 0, 1703862458, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":521,\"submission_id\":118,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '521', '{{%forms_submission_value}}', 0),
(1148, 0, 1703862458, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":522,\"submission_id\":118,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza\",\"format\":null}', NULL, '522', '{{%forms_submission_value}}', 0),
(1149, 0, 1703862458, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":523,\"submission_id\":118,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '523', '{{%forms_submission_value}}', 0),
(1150, 0, 1703862458, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":524,\"submission_id\":118,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '524', '{{%forms_submission_value}}', 0),
(1151, 0, 1703862458, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":525,\"submission_id\":118,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '525', '{{%forms_submission_value}}', 0),
(1152, 0, 1703862458, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":526,\"submission_id\":118,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '526', '{{%forms_submission_value}}', 0),
(1153, 0, 1703862468, '', 'api-forms-submission', 0, 1, '{\"id\":119,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703862468,\"updated_at\":1703862468}', NULL, '119', '{{%forms_submission}}', 0),
(1154, 0, 1703862468, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":527,\"submission_id\":119,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '527', '{{%forms_submission_value}}', 0),
(1155, 0, 1703862468, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":528,\"submission_id\":119,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza Me\",\"format\":null}', NULL, '528', '{{%forms_submission_value}}', 0),
(1156, 0, 1703862468, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":529,\"submission_id\":119,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '529', '{{%forms_submission_value}}', 0),
(1157, 0, 1703862468, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":530,\"submission_id\":119,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-28\",\"format\":\"datetime\"}', NULL, '530', '{{%forms_submission_value}}', 0),
(1158, 0, 1703862468, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":531,\"submission_id\":119,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '531', '{{%forms_submission_value}}', 0),
(1159, 0, 1703862468, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":532,\"submission_id\":119,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '532', '{{%forms_submission_value}}', 0),
(1160, 0, 1703862472, '', 'api-forms-submission', 0, 1, '{\"id\":120,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703862472,\"updated_at\":1703862472}', NULL, '120', '{{%forms_submission}}', 0),
(1161, 0, 1703862472, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":533,\"submission_id\":120,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '533', '{{%forms_submission_value}}', 0),
(1162, 0, 1703862472, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":534,\"submission_id\":120,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza Me\",\"format\":null}', NULL, '534', '{{%forms_submission_value}}', 0),
(1163, 0, 1703862472, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":535,\"submission_id\":120,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '535', '{{%forms_submission_value}}', 0),
(1164, 0, 1703862472, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":536,\"submission_id\":120,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-28\",\"format\":\"datetime\"}', NULL, '536', '{{%forms_submission_value}}', 0),
(1165, 0, 1703862472, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":537,\"submission_id\":120,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '537', '{{%forms_submission_value}}', 0),
(1166, 0, 1703862472, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":538,\"submission_id\":120,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '538', '{{%forms_submission_value}}', 0),
(1167, 0, 1703862573, '', 'api-forms-submission', 0, 1, '{\"id\":121,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703862573,\"updated_at\":1703862573}', NULL, '121', '{{%forms_submission}}', 0),
(1168, 0, 1703862573, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":539,\"submission_id\":121,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '539', '{{%forms_submission_value}}', 0),
(1169, 0, 1703862573, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":540,\"submission_id\":121,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza Me\",\"format\":null}', NULL, '540', '{{%forms_submission_value}}', 0),
(1170, 0, 1703862573, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":541,\"submission_id\":121,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '541', '{{%forms_submission_value}}', 0),
(1171, 0, 1703862573, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":542,\"submission_id\":121,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-28\",\"format\":\"datetime\"}', NULL, '542', '{{%forms_submission_value}}', 0),
(1172, 0, 1703862573, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":543,\"submission_id\":121,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '543', '{{%forms_submission_value}}', 0),
(1173, 0, 1703862573, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":544,\"submission_id\":121,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '544', '{{%forms_submission_value}}', 0),
(1174, 0, 1703862576, '', 'api-forms-submission', 0, 1, '{\"id\":122,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703862576,\"updated_at\":1703862576}', NULL, '122', '{{%forms_submission}}', 0),
(1175, 0, 1703862576, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":545,\"submission_id\":122,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '545', '{{%forms_submission_value}}', 0),
(1176, 0, 1703862576, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":546,\"submission_id\":122,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza Me\",\"format\":null}', NULL, '546', '{{%forms_submission_value}}', 0),
(1177, 0, 1703862576, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":547,\"submission_id\":122,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '547', '{{%forms_submission_value}}', 0),
(1178, 0, 1703862576, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":548,\"submission_id\":122,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-28\",\"format\":\"datetime\"}', NULL, '548', '{{%forms_submission_value}}', 0),
(1179, 0, 1703862576, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":549,\"submission_id\":122,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '549', '{{%forms_submission_value}}', 0),
(1180, 0, 1703862576, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":550,\"submission_id\":122,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '550', '{{%forms_submission_value}}', 0),
(1181, 0, 1703862580, '', 'api-forms-submission', 0, 1, '{\"id\":123,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703862580,\"updated_at\":1703862580}', NULL, '123', '{{%forms_submission}}', 0),
(1182, 0, 1703862580, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":551,\"submission_id\":123,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '551', '{{%forms_submission_value}}', 0),
(1183, 0, 1703862580, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":552,\"submission_id\":123,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza Me\",\"format\":null}', NULL, '552', '{{%forms_submission_value}}', 0),
(1184, 0, 1703862580, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":553,\"submission_id\":123,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '553', '{{%forms_submission_value}}', 0),
(1185, 0, 1703862580, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":554,\"submission_id\":123,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-28\",\"format\":\"datetime\"}', NULL, '554', '{{%forms_submission_value}}', 0),
(1186, 0, 1703862580, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":555,\"submission_id\":123,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '555', '{{%forms_submission_value}}', 0),
(1187, 0, 1703862580, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":556,\"submission_id\":123,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '556', '{{%forms_submission_value}}', 0),
(1188, 0, 1703862597, '', 'api-forms-submission', 0, 1, '{\"id\":124,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703862597,\"updated_at\":1703862597}', NULL, '124', '{{%forms_submission}}', 0),
(1189, 0, 1703862597, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":557,\"submission_id\":124,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '557', '{{%forms_submission_value}}', 0),
(1190, 0, 1703862597, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":558,\"submission_id\":124,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza Me\",\"format\":null}', NULL, '558', '{{%forms_submission_value}}', 0),
(1191, 0, 1703862597, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":559,\"submission_id\":124,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '559', '{{%forms_submission_value}}', 0),
(1192, 0, 1703862597, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":560,\"submission_id\":124,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-28\",\"format\":\"datetime\"}', NULL, '560', '{{%forms_submission_value}}', 0),
(1193, 0, 1703862597, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":561,\"submission_id\":124,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '561', '{{%forms_submission_value}}', 0),
(1194, 0, 1703862597, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":562,\"submission_id\":124,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '562', '{{%forms_submission_value}}', 0),
(1195, 0, 1703862600, '', 'api-forms-submission', 0, 1, '{\"id\":125,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703862600,\"updated_at\":1703862600}', NULL, '125', '{{%forms_submission}}', 0),
(1196, 0, 1703862600, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":563,\"submission_id\":125,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '563', '{{%forms_submission_value}}', 0),
(1197, 0, 1703862600, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":564,\"submission_id\":125,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza Me\",\"format\":null}', NULL, '564', '{{%forms_submission_value}}', 0),
(1198, 0, 1703862600, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":565,\"submission_id\":125,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '565', '{{%forms_submission_value}}', 0),
(1199, 0, 1703862600, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":566,\"submission_id\":125,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-28\",\"format\":\"datetime\"}', NULL, '566', '{{%forms_submission_value}}', 0),
(1200, 0, 1703862600, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":567,\"submission_id\":125,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '567', '{{%forms_submission_value}}', 0),
(1201, 0, 1703862600, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":568,\"submission_id\":125,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '568', '{{%forms_submission_value}}', 0),
(1202, 0, 1703862603, '', 'api-forms-submission', 0, 1, '{\"id\":126,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703862603,\"updated_at\":1703862603}', NULL, '126', '{{%forms_submission}}', 0),
(1203, 0, 1703862603, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":569,\"submission_id\":126,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '569', '{{%forms_submission_value}}', 0),
(1204, 0, 1703862603, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":570,\"submission_id\":126,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza Me\",\"format\":null}', NULL, '570', '{{%forms_submission_value}}', 0),
(1205, 0, 1703862603, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":571,\"submission_id\":126,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '571', '{{%forms_submission_value}}', 0),
(1206, 0, 1703862603, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":572,\"submission_id\":126,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-28\",\"format\":\"datetime\"}', NULL, '572', '{{%forms_submission_value}}', 0),
(1207, 0, 1703862603, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":573,\"submission_id\":126,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '573', '{{%forms_submission_value}}', 0),
(1208, 0, 1703862603, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":574,\"submission_id\":126,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '574', '{{%forms_submission_value}}', 0),
(1209, 0, 1703862716, '', 'api-forms-submission', 0, 1, '{\"id\":127,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703862716,\"updated_at\":1703862716}', NULL, '127', '{{%forms_submission}}', 0),
(1210, 0, 1703862716, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":575,\"submission_id\":127,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '575', '{{%forms_submission_value}}', 0),
(1211, 0, 1703862716, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":576,\"submission_id\":127,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eliza Me\",\"format\":null}', NULL, '576', '{{%forms_submission_value}}', 0),
(1212, 0, 1703862716, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":577,\"submission_id\":127,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '577', '{{%forms_submission_value}}', 0),
(1213, 0, 1703862716, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":578,\"submission_id\":127,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-28\",\"format\":\"datetime\"}', NULL, '578', '{{%forms_submission_value}}', 0),
(1214, 0, 1703862716, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":579,\"submission_id\":127,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '579', '{{%forms_submission_value}}', 0),
(1215, 0, 1703862716, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":580,\"submission_id\":127,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '580', '{{%forms_submission_value}}', 0),
(1216, 0, 1703862751, '', 'api-forms-submission', 0, 1, '{\"id\":128,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=8&title=creamy-butter-cookies&submit=2\",\"is_done\":null,\"created_at\":1703862751,\"updated_at\":1703862751}', NULL, '128', '{{%forms_submission}}', 0),
(1217, 0, 1703862751, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":581,\"submission_id\":128,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 32_351\",\"format\":null}', NULL, '581', '{{%forms_submission_value}}', 0),
(1218, 0, 1703862751, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":582,\"submission_id\":128,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Alliance BJP\",\"format\":null}', NULL, '582', '{{%forms_submission_value}}', 0),
(1219, 0, 1703862751, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":583,\"submission_id\":128,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+With-Egg_32_351\",\"format\":null}', NULL, '583', '{{%forms_submission_value}}', 0),
(1220, 0, 1703862751, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":584,\"submission_id\":128,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '584', '{{%forms_submission_value}}', 0),
(1221, 0, 1703862751, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":585,\"submission_id\":128,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"605\",\"format\":null}', NULL, '585', '{{%forms_submission_value}}', 0),
(1222, 0, 1703862751, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":586,\"submission_id\":128,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '586', '{{%forms_submission_value}}', 0),
(1223, 0, 1703862844, '', 'api-forms-submission', 0, 1, '{\"id\":129,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703862844,\"updated_at\":1703862844}', NULL, '129', '{{%forms_submission}}', 0),
(1224, 0, 1703862844, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":587,\"submission_id\":129,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1425, 31_140\",\"format\":null}', NULL, '587', '{{%forms_submission_value}}', 0),
(1225, 0, 1703862844, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":588,\"submission_id\":129,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"hfgrth fghbrthfg\",\"format\":null}', NULL, '588', '{{%forms_submission_value}}', 0),
(1226, 0, 1703862844, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":589,\"submission_id\":129,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1425+Eggless_31_140\",\"format\":null}', NULL, '589', '{{%forms_submission_value}}', 0),
(1227, 0, 1703862844, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":590,\"submission_id\":129,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '590', '{{%forms_submission_value}}', 0),
(1228, 0, 1703862844, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":591,\"submission_id\":129,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1565\",\"format\":null}', NULL, '591', '{{%forms_submission_value}}', 0),
(1229, 0, 1703862844, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":592,\"submission_id\":129,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '592', '{{%forms_submission_value}}', 0),
(1230, 0, 1703862910, '', 'api-forms-submission', 0, 1, '{\"id\":130,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703862910,\"updated_at\":1703862910}', NULL, '130', '{{%forms_submission}}', 0),
(1231, 0, 1703862910, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":593,\"submission_id\":130,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1425, 31_140\",\"format\":null}', NULL, '593', '{{%forms_submission_value}}', 0),
(1232, 0, 1703862910, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":594,\"submission_id\":130,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Sdefdgferg\",\"format\":null}', NULL, '594', '{{%forms_submission_value}}', 0),
(1233, 0, 1703862910, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":595,\"submission_id\":130,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1425+Eggless_31_140\",\"format\":null}', NULL, '595', '{{%forms_submission_value}}', 0),
(1234, 0, 1703862910, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":596,\"submission_id\":130,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '596', '{{%forms_submission_value}}', 0),
(1235, 0, 1703862910, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":597,\"submission_id\":130,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1565\",\"format\":null}', NULL, '597', '{{%forms_submission_value}}', 0),
(1236, 0, 1703862910, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":598,\"submission_id\":130,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '598', '{{%forms_submission_value}}', 0),
(1237, 0, 1703862931, '', 'api-forms-submission', 0, 1, '{\"id\":131,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703862931,\"updated_at\":1703862931}', NULL, '131', '{{%forms_submission}}', 0),
(1238, 0, 1703862931, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":599,\"submission_id\":131,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1425, 31_140\",\"format\":null}', NULL, '599', '{{%forms_submission_value}}', 0),
(1239, 0, 1703862931, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":600,\"submission_id\":131,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Sdefdgferg\",\"format\":null}', NULL, '600', '{{%forms_submission_value}}', 0),
(1240, 0, 1703862931, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":601,\"submission_id\":131,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1425+Eggless_31_140\",\"format\":null}', NULL, '601', '{{%forms_submission_value}}', 0),
(1241, 0, 1703862931, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":602,\"submission_id\":131,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '602', '{{%forms_submission_value}}', 0),
(1242, 0, 1703862931, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":603,\"submission_id\":131,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1565\",\"format\":null}', NULL, '603', '{{%forms_submission_value}}', 0),
(1243, 0, 1703862931, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":604,\"submission_id\":131,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '604', '{{%forms_submission_value}}', 0),
(1244, 1, 1703863949, '', 'api-forms-submission', 0, 1, '{\"id\":132,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703863949,\"updated_at\":1703863949}', NULL, '132', '{{%forms_submission}}', 0),
(1245, 1, 1703863949, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":605,\"submission_id\":132,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1425, 32_647\",\"format\":null}', NULL, '605', '{{%forms_submission_value}}', 0),
(1246, 1, 1703863949, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":606,\"submission_id\":132,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"As fgrebnn\",\"format\":null}', NULL, '606', '{{%forms_submission_value}}', 0),
(1247, 1, 1703863949, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":607,\"submission_id\":132,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1425+With-Egg_32_647\",\"format\":null}', NULL, '607', '{{%forms_submission_value}}', 0),
(1248, 1, 1703863949, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":608,\"submission_id\":132,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '608', '{{%forms_submission_value}}', 0),
(1249, 1, 1703863949, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":609,\"submission_id\":132,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2072\",\"format\":null}', NULL, '609', '{{%forms_submission_value}}', 0),
(1250, 1, 1703863949, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":610,\"submission_id\":132,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '610', '{{%forms_submission_value}}', 0),
(1251, 1, 1703863954, '', 'api-forms-submission', 0, 1, '{\"id\":133,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703863954,\"updated_at\":1703863954}', NULL, '133', '{{%forms_submission}}', 0),
(1252, 1, 1703863954, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":611,\"submission_id\":133,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1425, 32_647\",\"format\":null}', NULL, '611', '{{%forms_submission_value}}', 0),
(1253, 1, 1703863954, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":612,\"submission_id\":133,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"As fgrebnn\",\"format\":null}', NULL, '612', '{{%forms_submission_value}}', 0),
(1254, 1, 1703863954, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":613,\"submission_id\":133,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1425+With-Egg_32_647\",\"format\":null}', NULL, '613', '{{%forms_submission_value}}', 0),
(1255, 1, 1703863954, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":614,\"submission_id\":133,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '614', '{{%forms_submission_value}}', 0),
(1256, 1, 1703863954, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":615,\"submission_id\":133,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2072\",\"format\":null}', NULL, '615', '{{%forms_submission_value}}', 0),
(1257, 1, 1703863954, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":616,\"submission_id\":133,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '616', '{{%forms_submission_value}}', 0),
(1258, 1, 1703864037, '', 'api-forms-submission', 0, 1, '{\"id\":134,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703864037,\"updated_at\":1703864037}', NULL, '134', '{{%forms_submission}}', 0),
(1259, 1, 1703864037, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":617,\"submission_id\":134,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1425, 32_647\",\"format\":null}', NULL, '617', '{{%forms_submission_value}}', 0),
(1260, 1, 1703864037, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":618,\"submission_id\":134,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"As fgrebnn\",\"format\":null}', NULL, '618', '{{%forms_submission_value}}', 0),
(1261, 1, 1703864037, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":619,\"submission_id\":134,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1425+With-Egg_32_647\",\"format\":null}', NULL, '619', '{{%forms_submission_value}}', 0);
INSERT INTO `admin_ngrest_log` (`id`, `user_id`, `timestamp_create`, `route`, `api`, `is_update`, `is_insert`, `attributes_json`, `attributes_diff_json`, `pk_value`, `table_name`, `is_delete`) VALUES
(1262, 1, 1703864037, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":620,\"submission_id\":134,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '620', '{{%forms_submission_value}}', 0),
(1263, 1, 1703864037, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":621,\"submission_id\":134,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2072\",\"format\":null}', NULL, '621', '{{%forms_submission_value}}', 0),
(1264, 1, 1703864037, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":622,\"submission_id\":134,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '622', '{{%forms_submission_value}}', 0),
(1265, 1, 1703864042, '', 'api-forms-submission', 0, 1, '{\"id\":135,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703864042,\"updated_at\":1703864042}', NULL, '135', '{{%forms_submission}}', 0),
(1266, 1, 1703864042, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":623,\"submission_id\":135,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '623', '{{%forms_submission_value}}', 0),
(1267, 1, 1703864042, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":624,\"submission_id\":135,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"As fgrebnn\",\"format\":null}', NULL, '624', '{{%forms_submission_value}}', 0),
(1268, 1, 1703864042, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":625,\"submission_id\":135,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+With-Egg_32_647\",\"format\":null}', NULL, '625', '{{%forms_submission_value}}', 0),
(1269, 1, 1703864042, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":626,\"submission_id\":135,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '626', '{{%forms_submission_value}}', 0),
(1270, 1, 1703864042, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":627,\"submission_id\":135,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1433\",\"format\":null}', NULL, '627', '{{%forms_submission_value}}', 0),
(1271, 1, 1703864042, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":628,\"submission_id\":135,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '628', '{{%forms_submission_value}}', 0),
(1272, 1, 1703864045, '', 'api-forms-submission', 0, 1, '{\"id\":136,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703864045,\"updated_at\":1703864045}', NULL, '136', '{{%forms_submission}}', 0),
(1273, 1, 1703864045, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":629,\"submission_id\":136,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '629', '{{%forms_submission_value}}', 0),
(1274, 1, 1703864045, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":630,\"submission_id\":136,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"As fgrebnn\",\"format\":null}', NULL, '630', '{{%forms_submission_value}}', 0),
(1275, 1, 1703864045, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":631,\"submission_id\":136,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+With-Egg_32_647\",\"format\":null}', NULL, '631', '{{%forms_submission_value}}', 0),
(1276, 1, 1703864045, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":632,\"submission_id\":136,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '632', '{{%forms_submission_value}}', 0),
(1277, 1, 1703864045, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":633,\"submission_id\":136,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1433\",\"format\":null}', NULL, '633', '{{%forms_submission_value}}', 0),
(1278, 1, 1703864045, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":634,\"submission_id\":136,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '634', '{{%forms_submission_value}}', 0),
(1279, 1, 1703865193, '', 'api-forms-submission', 0, 1, '{\"id\":137,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703865193,\"updated_at\":1703865193}', NULL, '137', '{{%forms_submission}}', 0),
(1280, 1, 1703865193, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":635,\"submission_id\":137,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '635', '{{%forms_submission_value}}', 0),
(1281, 1, 1703865193, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":636,\"submission_id\":137,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"As fgrebnn\",\"format\":null}', NULL, '636', '{{%forms_submission_value}}', 0),
(1282, 1, 1703865193, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":637,\"submission_id\":137,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '637', '{{%forms_submission_value}}', 0),
(1283, 1, 1703865193, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":638,\"submission_id\":137,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '638', '{{%forms_submission_value}}', 0),
(1284, 1, 1703865193, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":639,\"submission_id\":137,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '639', '{{%forms_submission_value}}', 0),
(1285, 1, 1703865193, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":640,\"submission_id\":137,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '640', '{{%forms_submission_value}}', 0),
(1286, 1, 1703865199, '', 'api-forms-submission', 0, 1, '{\"id\":138,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703865199,\"updated_at\":1703865199}', NULL, '138', '{{%forms_submission}}', 0),
(1287, 1, 1703865199, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":641,\"submission_id\":138,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '641', '{{%forms_submission_value}}', 0),
(1288, 1, 1703865199, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":642,\"submission_id\":138,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"As fgrebnn\",\"format\":null}', NULL, '642', '{{%forms_submission_value}}', 0),
(1289, 1, 1703865199, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":643,\"submission_id\":138,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '643', '{{%forms_submission_value}}', 0),
(1290, 1, 1703865199, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":644,\"submission_id\":138,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '644', '{{%forms_submission_value}}', 0),
(1291, 1, 1703865199, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":645,\"submission_id\":138,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '645', '{{%forms_submission_value}}', 0),
(1292, 1, 1703865199, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":646,\"submission_id\":138,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '646', '{{%forms_submission_value}}', 0),
(1293, 1, 1703865595, '', 'api-forms-submission', 0, 1, '{\"id\":139,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703865595,\"updated_at\":1703865595}', NULL, '139', '{{%forms_submission}}', 0),
(1294, 1, 1703865595, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":647,\"submission_id\":139,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '647', '{{%forms_submission_value}}', 0),
(1295, 1, 1703865595, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":648,\"submission_id\":139,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"As fgrebnn\",\"format\":null}', NULL, '648', '{{%forms_submission_value}}', 0),
(1296, 1, 1703865595, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":649,\"submission_id\":139,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '649', '{{%forms_submission_value}}', 0),
(1297, 1, 1703865595, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":650,\"submission_id\":139,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '650', '{{%forms_submission_value}}', 0),
(1298, 1, 1703865595, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":651,\"submission_id\":139,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '651', '{{%forms_submission_value}}', 0),
(1299, 1, 1703865595, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":652,\"submission_id\":139,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '652', '{{%forms_submission_value}}', 0),
(1300, 1, 1703865614, '', 'api-forms-submission', 0, 1, '{\"id\":140,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703865614,\"updated_at\":1703865614}', NULL, '140', '{{%forms_submission}}', 0),
(1301, 1, 1703865614, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":653,\"submission_id\":140,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '653', '{{%forms_submission_value}}', 0),
(1302, 1, 1703865614, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":654,\"submission_id\":140,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Ramraj\",\"format\":null}', NULL, '654', '{{%forms_submission_value}}', 0),
(1303, 1, 1703865614, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":655,\"submission_id\":140,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '655', '{{%forms_submission_value}}', 0),
(1304, 1, 1703865614, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":656,\"submission_id\":140,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '656', '{{%forms_submission_value}}', 0),
(1305, 1, 1703865614, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":657,\"submission_id\":140,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '657', '{{%forms_submission_value}}', 0),
(1306, 1, 1703865614, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":658,\"submission_id\":140,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '658', '{{%forms_submission_value}}', 0),
(1307, 1, 1703865619, '', 'api-forms-submission', 0, 1, '{\"id\":141,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703865619,\"updated_at\":1703865619}', NULL, '141', '{{%forms_submission}}', 0),
(1308, 1, 1703865619, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":659,\"submission_id\":141,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '659', '{{%forms_submission_value}}', 0),
(1309, 1, 1703865619, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":660,\"submission_id\":141,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Ramraj\",\"format\":null}', NULL, '660', '{{%forms_submission_value}}', 0),
(1310, 1, 1703865619, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":661,\"submission_id\":141,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '661', '{{%forms_submission_value}}', 0),
(1311, 1, 1703865619, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":662,\"submission_id\":141,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '662', '{{%forms_submission_value}}', 0),
(1312, 1, 1703865619, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":663,\"submission_id\":141,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '663', '{{%forms_submission_value}}', 0),
(1313, 1, 1703865619, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":664,\"submission_id\":141,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '664', '{{%forms_submission_value}}', 0),
(1314, 0, 1703865669, '', 'api-forms-submission', 0, 1, '{\"id\":142,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2&submit=2\",\"is_done\":null,\"created_at\":1703865669,\"updated_at\":1703865669}', NULL, '142', '{{%forms_submission}}', 0),
(1315, 0, 1703865669, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":665,\"submission_id\":142,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 32_647\",\"format\":null}', NULL, '665', '{{%forms_submission_value}}', 0),
(1316, 0, 1703865669, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":666,\"submission_id\":142,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Nara Lok\",\"format\":null}', NULL, '666', '{{%forms_submission_value}}', 0),
(1317, 0, 1703865669, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":667,\"submission_id\":142,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+With-Egg_32_647\",\"format\":null}', NULL, '667', '{{%forms_submission_value}}', 0),
(1318, 0, 1703865669, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":668,\"submission_id\":142,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '668', '{{%forms_submission_value}}', 0),
(1319, 0, 1703865670, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":669,\"submission_id\":142,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1433\",\"format\":null}', NULL, '669', '{{%forms_submission_value}}', 0),
(1320, 0, 1703865670, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":670,\"submission_id\":142,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '670', '{{%forms_submission_value}}', 0),
(1321, 1, 1703865825, '', 'api-forms-submission', 0, 1, '{\"id\":143,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703865825,\"updated_at\":1703865825}', NULL, '143', '{{%forms_submission}}', 0),
(1322, 1, 1703865825, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":671,\"submission_id\":143,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1425, 31_140\",\"format\":null}', NULL, '671', '{{%forms_submission_value}}', 0),
(1323, 1, 1703865825, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":672,\"submission_id\":143,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Mandala Block\",\"format\":null}', NULL, '672', '{{%forms_submission_value}}', 0),
(1324, 1, 1703865825, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":673,\"submission_id\":143,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1425+Eggless_31_140\",\"format\":null}', NULL, '673', '{{%forms_submission_value}}', 0),
(1325, 1, 1703865825, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":674,\"submission_id\":143,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-27\",\"format\":\"datetime\"}', NULL, '674', '{{%forms_submission_value}}', 0),
(1326, 1, 1703865825, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":675,\"submission_id\":143,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1565\",\"format\":null}', NULL, '675', '{{%forms_submission_value}}', 0),
(1327, 1, 1703865825, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":676,\"submission_id\":143,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '676', '{{%forms_submission_value}}', 0),
(1328, 0, 1703869388, '', 'api-forms-submission', 0, 1, '{\"id\":144,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703869388,\"updated_at\":1703869388}', NULL, '144', '{{%forms_submission}}', 0),
(1329, 0, 1703869388, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":677,\"submission_id\":144,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1425, 31_140\",\"format\":null}', NULL, '677', '{{%forms_submission_value}}', 0),
(1330, 0, 1703869388, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":678,\"submission_id\":144,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Hello world\",\"format\":null}', NULL, '678', '{{%forms_submission_value}}', 0),
(1331, 0, 1703869388, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":679,\"submission_id\":144,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1425+Eggless_31_140\",\"format\":null}', NULL, '679', '{{%forms_submission_value}}', 0),
(1332, 0, 1703869388, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":680,\"submission_id\":144,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '680', '{{%forms_submission_value}}', 0),
(1333, 0, 1703869388, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":681,\"submission_id\":144,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1565\",\"format\":null}', NULL, '681', '{{%forms_submission_value}}', 0),
(1334, 0, 1703869388, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":682,\"submission_id\":144,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '682', '{{%forms_submission_value}}', 0),
(1335, 1, 1703869577, '', 'api-forms-submission', 0, 1, '{\"id\":145,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703869577,\"updated_at\":1703869577}', NULL, '145', '{{%forms_submission}}', 0),
(1336, 1, 1703869577, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":683,\"submission_id\":145,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1425, 31_140\",\"format\":null}', NULL, '683', '{{%forms_submission_value}}', 0),
(1337, 1, 1703869577, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":684,\"submission_id\":145,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Hello world\",\"format\":null}', NULL, '684', '{{%forms_submission_value}}', 0),
(1338, 1, 1703869577, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":685,\"submission_id\":145,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1425+Eggless_31_140\",\"format\":null}', NULL, '685', '{{%forms_submission_value}}', 0),
(1339, 1, 1703869577, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":686,\"submission_id\":145,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '686', '{{%forms_submission_value}}', 0),
(1340, 1, 1703869577, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":687,\"submission_id\":145,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1565\",\"format\":null}', NULL, '687', '{{%forms_submission_value}}', 0),
(1341, 1, 1703869577, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":688,\"submission_id\":145,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '688', '{{%forms_submission_value}}', 0),
(1342, 1, 1703869603, '', 'api-forms-submission', 0, 1, '{\"id\":146,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703869603,\"updated_at\":1703869603}', NULL, '146', '{{%forms_submission}}', 0),
(1343, 1, 1703869603, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":689,\"submission_id\":146,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1425, 31_140\",\"format\":null}', NULL, '689', '{{%forms_submission_value}}', 0),
(1344, 1, 1703869603, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":690,\"submission_id\":146,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Hello world\",\"format\":null}', NULL, '690', '{{%forms_submission_value}}', 0),
(1345, 1, 1703869603, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":691,\"submission_id\":146,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1425+Eggless_31_140\",\"format\":null}', NULL, '691', '{{%forms_submission_value}}', 0),
(1346, 1, 1703869603, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":692,\"submission_id\":146,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '692', '{{%forms_submission_value}}', 0),
(1347, 1, 1703869603, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":693,\"submission_id\":146,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1565\",\"format\":null}', NULL, '693', '{{%forms_submission_value}}', 0),
(1348, 1, 1703869603, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":694,\"submission_id\":146,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '694', '{{%forms_submission_value}}', 0),
(1349, 1, 1703869608, '', 'api-forms-submission', 0, 1, '{\"id\":147,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703869608,\"updated_at\":1703869608}', NULL, '147', '{{%forms_submission}}', 0),
(1350, 1, 1703869608, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":695,\"submission_id\":147,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1425, 32_647\",\"format\":null}', NULL, '695', '{{%forms_submission_value}}', 0),
(1351, 1, 1703869608, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":696,\"submission_id\":147,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Hello world\",\"format\":null}', NULL, '696', '{{%forms_submission_value}}', 0),
(1352, 1, 1703869608, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":697,\"submission_id\":147,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1425+With-Egg_32_647\",\"format\":null}', NULL, '697', '{{%forms_submission_value}}', 0),
(1353, 1, 1703869608, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":698,\"submission_id\":147,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-30\",\"format\":\"datetime\"}', NULL, '698', '{{%forms_submission_value}}', 0),
(1354, 1, 1703869608, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":699,\"submission_id\":147,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2072\",\"format\":null}', NULL, '699', '{{%forms_submission_value}}', 0),
(1355, 1, 1703869608, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":700,\"submission_id\":147,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '700', '{{%forms_submission_value}}', 0),
(1356, 0, 1703872080, '', 'api-forms-submission', 0, 1, '{\"id\":148,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=8&title=creamy-butter-cookies&submit=2\",\"is_done\":null,\"created_at\":1703872080,\"updated_at\":1703872080}', NULL, '148', '{{%forms_submission}}', 0),
(1357, 0, 1703872080, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":701,\"submission_id\":148,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 31_421\",\"format\":null}', NULL, '701', '{{%forms_submission_value}}', 0),
(1358, 0, 1703872080, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":702,\"submission_id\":148,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Amaravathi\",\"format\":null}', NULL, '702', '{{%forms_submission_value}}', 0),
(1359, 0, 1703872080, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":703,\"submission_id\":148,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+Eggless_31_421\",\"format\":null}', NULL, '703', '{{%forms_submission_value}}', 0),
(1360, 0, 1703872080, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":704,\"submission_id\":148,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '704', '{{%forms_submission_value}}', 0),
(1361, 0, 1703872080, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":705,\"submission_id\":148,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"675\",\"format\":null}', NULL, '705', '{{%forms_submission_value}}', 0),
(1362, 0, 1703872080, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":706,\"submission_id\":148,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '706', '{{%forms_submission_value}}', 0),
(1363, 0, 1703872164, '', 'api-forms-submission', 0, 1, '{\"id\":149,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703872164,\"updated_at\":1703872164}', NULL, '149', '{{%forms_submission}}', 0),
(1364, 0, 1703872164, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":707,\"submission_id\":149,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1425, 31_140\",\"format\":null}', NULL, '707', '{{%forms_submission_value}}', 0),
(1365, 0, 1703872164, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":708,\"submission_id\":149,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Hello Eggless\",\"format\":null}', NULL, '708', '{{%forms_submission_value}}', 0),
(1366, 0, 1703872164, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":709,\"submission_id\":149,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1425+Eggless_31_140\",\"format\":null}', NULL, '709', '{{%forms_submission_value}}', 0),
(1367, 0, 1703872164, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":710,\"submission_id\":149,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-27\",\"format\":\"datetime\"}', NULL, '710', '{{%forms_submission_value}}', 0),
(1368, 0, 1703872164, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":711,\"submission_id\":149,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1565\",\"format\":null}', NULL, '711', '{{%forms_submission_value}}', 0),
(1369, 0, 1703872164, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":712,\"submission_id\":149,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '712', '{{%forms_submission_value}}', 0),
(1370, 0, 1703872984, '', 'api-forms-submission', 0, 1, '{\"id\":150,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703872984,\"updated_at\":1703872984}', NULL, '150', '{{%forms_submission}}', 0),
(1371, 0, 1703872984, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":713,\"submission_id\":150,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '713', '{{%forms_submission_value}}', 0),
(1372, 0, 1703872984, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":714,\"submission_id\":150,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Start Form\",\"format\":null}', NULL, '714', '{{%forms_submission_value}}', 0),
(1373, 0, 1703872984, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":715,\"submission_id\":150,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '715', '{{%forms_submission_value}}', 0),
(1374, 0, 1703872984, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":716,\"submission_id\":150,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-28\",\"format\":\"datetime\"}', NULL, '716', '{{%forms_submission_value}}', 0),
(1375, 0, 1703872984, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":717,\"submission_id\":150,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '717', '{{%forms_submission_value}}', 0),
(1376, 0, 1703872984, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":718,\"submission_id\":150,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '718', '{{%forms_submission_value}}', 0),
(1377, 0, 1703873579, '', 'api-forms-submission', 0, 1, '{\"id\":151,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703873579,\"updated_at\":1703873579}', NULL, '151', '{{%forms_submission}}', 0),
(1378, 0, 1703873579, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":719,\"submission_id\":151,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1425, 31_140\",\"format\":null}', NULL, '719', '{{%forms_submission_value}}', 0),
(1379, 0, 1703873579, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":720,\"submission_id\":151,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"On Dance should trigger\",\"format\":null}', NULL, '720', '{{%forms_submission_value}}', 0),
(1380, 0, 1703873579, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":721,\"submission_id\":151,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1425+Eggless_31_140\",\"format\":null}', NULL, '721', '{{%forms_submission_value}}', 0),
(1381, 0, 1703873579, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":722,\"submission_id\":151,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-27\",\"format\":\"datetime\"}', NULL, '722', '{{%forms_submission_value}}', 0),
(1382, 0, 1703873579, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":723,\"submission_id\":151,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1565\",\"format\":null}', NULL, '723', '{{%forms_submission_value}}', 0),
(1383, 0, 1703873579, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":724,\"submission_id\":151,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '724', '{{%forms_submission_value}}', 0),
(1384, 0, 1703873645, '', 'api-forms-submission', 0, 1, '{\"id\":152,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703873645,\"updated_at\":1703873645}', NULL, '152', '{{%forms_submission}}', 0),
(1385, 0, 1703873645, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":725,\"submission_id\":152,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1425, 31_140\",\"format\":null}', NULL, '725', '{{%forms_submission_value}}', 0),
(1386, 0, 1703873645, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":726,\"submission_id\":152,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"On Dance should trigger\",\"format\":null}', NULL, '726', '{{%forms_submission_value}}', 0),
(1387, 0, 1703873645, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":727,\"submission_id\":152,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1425+Eggless_31_140\",\"format\":null}', NULL, '727', '{{%forms_submission_value}}', 0),
(1388, 0, 1703873645, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":728,\"submission_id\":152,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-27\",\"format\":\"datetime\"}', NULL, '728', '{{%forms_submission_value}}', 0),
(1389, 0, 1703873645, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":729,\"submission_id\":152,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1565\",\"format\":null}', NULL, '729', '{{%forms_submission_value}}', 0),
(1390, 0, 1703873645, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":730,\"submission_id\":152,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '730', '{{%forms_submission_value}}', 0),
(1391, 0, 1703873677, '', 'api-forms-submission', 0, 1, '{\"id\":153,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703873677,\"updated_at\":1703873677}', NULL, '153', '{{%forms_submission}}', 0),
(1392, 0, 1703873677, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":731,\"submission_id\":153,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1425, 31_140\",\"format\":null}', NULL, '731', '{{%forms_submission_value}}', 0),
(1393, 0, 1703873677, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":732,\"submission_id\":153,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Eggless cake\",\"format\":null}', NULL, '732', '{{%forms_submission_value}}', 0),
(1394, 0, 1703873677, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":733,\"submission_id\":153,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1425+Eggless_31_140\",\"format\":null}', NULL, '733', '{{%forms_submission_value}}', 0),
(1395, 0, 1703873677, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":734,\"submission_id\":153,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-28\",\"format\":\"datetime\"}', NULL, '734', '{{%forms_submission_value}}', 0),
(1396, 0, 1703873677, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":735,\"submission_id\":153,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1565\",\"format\":null}', NULL, '735', '{{%forms_submission_value}}', 0),
(1397, 0, 1703873677, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":736,\"submission_id\":153,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '736', '{{%forms_submission_value}}', 0),
(1398, 0, 1703873750, '', 'api-forms-submission', 0, 1, '{\"id\":154,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703873750,\"updated_at\":1703873750}', NULL, '154', '{{%forms_submission}}', 0),
(1399, 0, 1703873750, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":737,\"submission_id\":154,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"33_1425, 31_140\",\"format\":null}', NULL, '737', '{{%forms_submission_value}}', 0),
(1400, 0, 1703873750, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":738,\"submission_id\":154,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"on dance eggless\",\"format\":null}', NULL, '738', '{{%forms_submission_value}}', 0),
(1401, 0, 1703873750, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":739,\"submission_id\":154,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch_33_1425+Eggless_31_140\",\"format\":null}', NULL, '739', '{{%forms_submission_value}}', 0),
(1402, 0, 1703873750, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":740,\"submission_id\":154,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-27\",\"format\":\"datetime\"}', NULL, '740', '{{%forms_submission_value}}', 0),
(1403, 0, 1703873750, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":741,\"submission_id\":154,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1565\",\"format\":null}', NULL, '741', '{{%forms_submission_value}}', 0),
(1404, 0, 1703873750, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":742,\"submission_id\":154,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '742', '{{%forms_submission_value}}', 0),
(1405, 0, 1703874100, '', 'api-forms-submission', 0, 1, '{\"id\":155,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703874100,\"updated_at\":1703874100}', NULL, '155', '{{%forms_submission}}', 0),
(1406, 0, 1703874100, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":743,\"submission_id\":155,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '743', '{{%forms_submission_value}}', 0),
(1407, 0, 1703874100, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":744,\"submission_id\":155,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Hellow world india\",\"format\":null}', NULL, '744', '{{%forms_submission_value}}', 0),
(1408, 0, 1703874100, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":745,\"submission_id\":155,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '745', '{{%forms_submission_value}}', 0),
(1409, 0, 1703874100, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":746,\"submission_id\":155,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-27\",\"format\":\"datetime\"}', NULL, '746', '{{%forms_submission_value}}', 0),
(1410, 0, 1703874100, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":747,\"submission_id\":155,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '747', '{{%forms_submission_value}}', 0),
(1411, 0, 1703874100, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":748,\"submission_id\":155,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '748', '{{%forms_submission_value}}', 0),
(1412, 0, 1703874199, '', 'api-forms-submission', 0, 1, '{\"id\":156,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2\",\"is_done\":null,\"created_at\":1703874199,\"updated_at\":1703874199}', NULL, '156', '{{%forms_submission}}', 0),
(1413, 0, 1703874199, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":749,\"submission_id\":156,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '749', '{{%forms_submission_value}}', 0),
(1414, 0, 1703874199, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":750,\"submission_id\":156,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"gfdgergdf\",\"format\":null}', NULL, '750', '{{%forms_submission_value}}', 0),
(1415, 0, 1703874199, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":751,\"submission_id\":156,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '751', '{{%forms_submission_value}}', 0),
(1416, 0, 1703874199, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":752,\"submission_id\":156,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-27\",\"format\":\"datetime\"}', NULL, '752', '{{%forms_submission_value}}', 0),
(1417, 0, 1703874199, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":753,\"submission_id\":156,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '753', '{{%forms_submission_value}}', 0),
(1418, 0, 1703874199, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":754,\"submission_id\":156,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '754', '{{%forms_submission_value}}', 0),
(1419, 1, 1703874645, '', 'api-forms-submission', 0, 1, '{\"id\":157,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=8&title=creamy-butter-cookies&submit=2\",\"is_done\":null,\"created_at\":1703874645,\"updated_at\":1703874645}', NULL, '157', '{{%forms_submission}}', 0),
(1420, 1, 1703874645, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":755,\"submission_id\":157,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 31_421\",\"format\":null}', NULL, '755', '{{%forms_submission_value}}', 0),
(1421, 1, 1703874645, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":756,\"submission_id\":157,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"do or do\",\"format\":null}', NULL, '756', '{{%forms_submission_value}}', 0),
(1422, 1, 1703874645, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":757,\"submission_id\":157,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+Eggless_31_421\",\"format\":null}', NULL, '757', '{{%forms_submission_value}}', 0),
(1423, 1, 1703874645, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":758,\"submission_id\":157,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-27\",\"format\":\"datetime\"}', NULL, '758', '{{%forms_submission_value}}', 0),
(1424, 1, 1703874645, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":759,\"submission_id\":157,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"675\",\"format\":null}', NULL, '759', '{{%forms_submission_value}}', 0),
(1425, 1, 1703874645, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":760,\"submission_id\":157,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '760', '{{%forms_submission_value}}', 0),
(1426, 1, 1703874687, '', 'api-forms-submission', 0, 1, '{\"id\":158,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=8&title=creamy-butter-cookies&submit=2\",\"is_done\":null,\"created_at\":1703874687,\"updated_at\":1703874687}', NULL, '158', '{{%forms_submission}}', 0),
(1427, 1, 1703874687, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":761,\"submission_id\":158,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 31_421\",\"format\":null}', NULL, '761', '{{%forms_submission_value}}', 0),
(1428, 1, 1703874687, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":762,\"submission_id\":158,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"do or do\",\"format\":null}', NULL, '762', '{{%forms_submission_value}}', 0),
(1429, 1, 1703874687, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":763,\"submission_id\":158,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+Eggless_31_421\",\"format\":null}', NULL, '763', '{{%forms_submission_value}}', 0),
(1430, 1, 1703874687, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":764,\"submission_id\":158,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-27\",\"format\":\"datetime\"}', NULL, '764', '{{%forms_submission_value}}', 0),
(1431, 1, 1703874687, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":765,\"submission_id\":158,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"675\",\"format\":null}', NULL, '765', '{{%forms_submission_value}}', 0),
(1432, 1, 1703874687, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":766,\"submission_id\":158,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '766', '{{%forms_submission_value}}', 0),
(1433, 1, 1703874756, '', 'api-forms-submission', 0, 1, '{\"id\":159,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703874756,\"updated_at\":1703874756}', NULL, '159', '{{%forms_submission}}', 0),
(1434, 1, 1703874756, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":767,\"submission_id\":159,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '767', '{{%forms_submission_value}}', 0),
(1435, 1, 1703874756, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":768,\"submission_id\":159,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"ghfgerfgdfg\",\"format\":null}', NULL, '768', '{{%forms_submission_value}}', 0),
(1436, 1, 1703874756, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":769,\"submission_id\":159,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '769', '{{%forms_submission_value}}', 0),
(1437, 1, 1703874756, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":770,\"submission_id\":159,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '770', '{{%forms_submission_value}}', 0),
(1438, 1, 1703874756, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":771,\"submission_id\":159,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '771', '{{%forms_submission_value}}', 0);
INSERT INTO `admin_ngrest_log` (`id`, `user_id`, `timestamp_create`, `route`, `api`, `is_update`, `is_insert`, `attributes_json`, `attributes_diff_json`, `pk_value`, `table_name`, `is_delete`) VALUES
(1439, 1, 1703874756, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":772,\"submission_id\":159,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '772', '{{%forms_submission_value}}', 0),
(1440, 1, 1703875098, '', 'api-forms-submission', 0, 1, '{\"id\":160,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2\",\"is_done\":null,\"created_at\":1703875098,\"updated_at\":1703875098}', NULL, '160', '{{%forms_submission}}', 0),
(1441, 1, 1703875099, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":773,\"submission_id\":160,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_2453, 31_251\",\"format\":null}', NULL, '773', '{{%forms_submission_value}}', 0),
(1442, 1, 1703875099, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":774,\"submission_id\":160,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"twelve inch eggless honey dip\",\"format\":null}', NULL, '774', '{{%forms_submission_value}}', 0),
(1443, 1, 1703875099, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":775,\"submission_id\":160,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_2453+Eggless_31_251\",\"format\":null}', NULL, '775', '{{%forms_submission_value}}', 0),
(1444, 1, 1703875099, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":776,\"submission_id\":160,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-20\",\"format\":\"datetime\"}', NULL, '776', '{{%forms_submission_value}}', 0),
(1445, 1, 1703875099, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":777,\"submission_id\":160,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2704\",\"format\":null}', NULL, '777', '{{%forms_submission_value}}', 0),
(1446, 1, 1703875099, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":778,\"submission_id\":160,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '778', '{{%forms_submission_value}}', 0),
(1447, 1, 1703876012, '', 'api-forms-submission', 0, 1, '{\"id\":161,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=8&title=creamy-butter-cookies&submit=2\",\"is_done\":null,\"created_at\":1703876012,\"updated_at\":1703876012}', NULL, '161', '{{%forms_submission}}', 0),
(1448, 1, 1703876012, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":779,\"submission_id\":161,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 31_421\",\"format\":null}', NULL, '779', '{{%forms_submission_value}}', 0),
(1449, 1, 1703876012, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":780,\"submission_id\":161,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Form Event\",\"format\":null}', NULL, '780', '{{%forms_submission_value}}', 0),
(1450, 1, 1703876012, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":781,\"submission_id\":161,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+Eggless_31_421\",\"format\":null}', NULL, '781', '{{%forms_submission_value}}', 0),
(1451, 1, 1703876012, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":782,\"submission_id\":161,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '782', '{{%forms_submission_value}}', 0),
(1452, 1, 1703876012, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":783,\"submission_id\":161,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"675\",\"format\":null}', NULL, '783', '{{%forms_submission_value}}', 0),
(1453, 1, 1703876012, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":784,\"submission_id\":161,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '784', '{{%forms_submission_value}}', 0),
(1454, 1, 1703876032, '', 'api-forms-submission', 0, 1, '{\"id\":162,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=8&title=creamy-butter-cookies&submit=2\",\"is_done\":null,\"created_at\":1703876032,\"updated_at\":1703876032}', NULL, '162', '{{%forms_submission}}', 0),
(1455, 1, 1703876032, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":785,\"submission_id\":162,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 31_421\",\"format\":null}', NULL, '785', '{{%forms_submission_value}}', 0),
(1456, 1, 1703876032, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":786,\"submission_id\":162,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Form Event\",\"format\":null}', NULL, '786', '{{%forms_submission_value}}', 0),
(1457, 1, 1703876032, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":787,\"submission_id\":162,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+Eggless_31_421\",\"format\":null}', NULL, '787', '{{%forms_submission_value}}', 0),
(1458, 1, 1703876032, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":788,\"submission_id\":162,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '788', '{{%forms_submission_value}}', 0),
(1459, 1, 1703876032, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":789,\"submission_id\":162,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"675\",\"format\":null}', NULL, '789', '{{%forms_submission_value}}', 0),
(1460, 1, 1703876032, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":790,\"submission_id\":162,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '790', '{{%forms_submission_value}}', 0),
(1461, 1, 1703876179, '', 'api-forms-submission', 0, 1, '{\"id\":163,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=8&title=creamy-butter-cookies&submit=2\",\"is_done\":null,\"created_at\":1703876179,\"updated_at\":1703876179}', NULL, '163', '{{%forms_submission}}', 0),
(1462, 1, 1703876179, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":791,\"submission_id\":163,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_254, 31_421\",\"format\":null}', NULL, '791', '{{%forms_submission_value}}', 0),
(1463, 1, 1703876179, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":792,\"submission_id\":163,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"Form Event\",\"format\":null}', NULL, '792', '{{%forms_submission_value}}', 0),
(1464, 1, 1703876179, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":793,\"submission_id\":163,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_254+Eggless_31_421\",\"format\":null}', NULL, '793', '{{%forms_submission_value}}', 0),
(1465, 1, 1703876179, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":794,\"submission_id\":163,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '794', '{{%forms_submission_value}}', 0),
(1466, 1, 1703876179, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":795,\"submission_id\":163,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"675\",\"format\":null}', NULL, '795', '{{%forms_submission_value}}', 0),
(1467, 1, 1703876179, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":796,\"submission_id\":163,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '796', '{{%forms_submission_value}}', 0),
(1468, 1, 1703877748, '', 'api-forms-submission', 0, 1, '{\"id\":164,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703877748,\"updated_at\":1703877748}', NULL, '164', '{{%forms_submission}}', 0),
(1469, 1, 1703877748, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":797,\"submission_id\":164,\"attribute\":\"Id\",\"label\":\"Address Id\",\"hint\":false,\"value\":\"1\",\"format\":null}', NULL, '797', '{{%forms_submission_value}}', 0),
(1470, 1, 1703877748, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":798,\"submission_id\":164,\"attribute\":\"Name\",\"label\":\"Recipient Name\",\"hint\":false,\"value\":\"purnachandra\",\"format\":null}', NULL, '798', '{{%forms_submission_value}}', 0),
(1471, 1, 1703877748, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":799,\"submission_id\":164,\"attribute\":\"Address\",\"label\":\"Recipient Address\",\"hint\":false,\"value\":\"16-11-741/D/15\",\"format\":null}', NULL, '799', '{{%forms_submission_value}}', 0),
(1472, 1, 1703877748, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":800,\"submission_id\":164,\"attribute\":\"Landmark\",\"label\":\"Landmark\",\"hint\":false,\"value\":\"Devaki\",\"format\":null}', NULL, '800', '{{%forms_submission_value}}', 0),
(1473, 1, 1703877748, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":801,\"submission_id\":164,\"attribute\":\"Pincode\",\"label\":\"PIN Code\",\"hint\":false,\"value\":\"500036\",\"format\":null}', NULL, '801', '{{%forms_submission_value}}', 0),
(1474, 1, 1703877748, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":802,\"submission_id\":164,\"attribute\":\"Mobile1\",\"label\":\"Phone Number\",\"hint\":false,\"value\":\"8331852700\",\"format\":null}', NULL, '802', '{{%forms_submission_value}}', 0),
(1475, 1, 1703877748, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":803,\"submission_id\":164,\"attribute\":\"Mobile2\",\"label\":\"Phone Number (Alternative)\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '803', '{{%forms_submission_value}}', 0),
(1476, 1, 1703878627, '', 'api-forms-submission', 0, 1, '{\"id\":165,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2\",\"is_done\":null,\"created_at\":1703878627,\"updated_at\":1703878627}', NULL, '165', '{{%forms_submission}}', 0),
(1477, 1, 1703878627, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":804,\"submission_id\":165,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '804', '{{%forms_submission_value}}', 0),
(1478, 1, 1703878627, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":805,\"submission_id\":165,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"fdgergdfgdfg\",\"format\":null}', NULL, '805', '{{%forms_submission_value}}', 0),
(1479, 1, 1703878627, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":806,\"submission_id\":165,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '806', '{{%forms_submission_value}}', 0),
(1480, 1, 1703878627, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":807,\"submission_id\":165,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-13\",\"format\":\"datetime\"}', NULL, '807', '{{%forms_submission_value}}', 0),
(1481, 1, 1703878627, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":808,\"submission_id\":165,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '808', '{{%forms_submission_value}}', 0),
(1482, 1, 1703878627, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":809,\"submission_id\":165,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '809', '{{%forms_submission_value}}', 0),
(1483, 1, 1703878668, '', 'api-forms-submission', 0, 1, '{\"id\":166,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2\",\"is_done\":null,\"created_at\":1703878668,\"updated_at\":1703878668}', NULL, '166', '{{%forms_submission}}', 0),
(1484, 1, 1703878668, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":810,\"submission_id\":166,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '810', '{{%forms_submission_value}}', 0),
(1485, 1, 1703878668, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":811,\"submission_id\":166,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"fdgergdfgdfg\",\"format\":null}', NULL, '811', '{{%forms_submission_value}}', 0),
(1486, 1, 1703878668, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":812,\"submission_id\":166,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '812', '{{%forms_submission_value}}', 0),
(1487, 1, 1703878668, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":813,\"submission_id\":166,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-13\",\"format\":\"datetime\"}', NULL, '813', '{{%forms_submission_value}}', 0),
(1488, 1, 1703878668, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":814,\"submission_id\":166,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '814', '{{%forms_submission_value}}', 0),
(1489, 1, 1703878668, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":815,\"submission_id\":166,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '815', '{{%forms_submission_value}}', 0),
(1490, 1, 1703878700, '', 'api-forms-submission', 0, 1, '{\"id\":167,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2\",\"is_done\":null,\"created_at\":1703878700,\"updated_at\":1703878700}', NULL, '167', '{{%forms_submission}}', 0),
(1491, 1, 1703878700, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":816,\"submission_id\":167,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_2453, 31_251\",\"format\":null}', NULL, '816', '{{%forms_submission_value}}', 0),
(1492, 1, 1703878700, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":817,\"submission_id\":167,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"fghrthfghf\",\"format\":null}', NULL, '817', '{{%forms_submission_value}}', 0),
(1493, 1, 1703878700, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":818,\"submission_id\":167,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_2453+Eggless_31_251\",\"format\":null}', NULL, '818', '{{%forms_submission_value}}', 0),
(1494, 1, 1703878700, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":819,\"submission_id\":167,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-27\",\"format\":\"datetime\"}', NULL, '819', '{{%forms_submission_value}}', 0),
(1495, 1, 1703878700, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":820,\"submission_id\":167,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2704\",\"format\":null}', NULL, '820', '{{%forms_submission_value}}', 0),
(1496, 1, 1703878700, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":821,\"submission_id\":167,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '821', '{{%forms_submission_value}}', 0),
(1497, 0, 1703878780, '', 'api-forms-submission', 0, 1, '{\"id\":168,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703878780,\"updated_at\":1703878780}', NULL, '168', '{{%forms_submission}}', 0),
(1498, 0, 1703878780, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":822,\"submission_id\":168,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '822', '{{%forms_submission_value}}', 0),
(1499, 0, 1703878780, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":823,\"submission_id\":168,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"dfwefsdf\",\"format\":null}', NULL, '823', '{{%forms_submission_value}}', 0),
(1500, 0, 1703878780, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":824,\"submission_id\":168,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '824', '{{%forms_submission_value}}', 0),
(1501, 0, 1703878780, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":825,\"submission_id\":168,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '825', '{{%forms_submission_value}}', 0),
(1502, 0, 1703878780, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":826,\"submission_id\":168,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '826', '{{%forms_submission_value}}', 0),
(1503, 0, 1703878780, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":827,\"submission_id\":168,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '827', '{{%forms_submission_value}}', 0),
(1504, 0, 1703878926, '', 'api-forms-submission', 0, 1, '{\"id\":169,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=8&title=creamy-butter-cookies&submit=2\",\"is_done\":null,\"created_at\":1703878926,\"updated_at\":1703878926}', NULL, '169', '{{%forms_submission}}', 0),
(1505, 0, 1703878926, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":828,\"submission_id\":169,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"35_750, 31_421\",\"format\":null}', NULL, '828', '{{%forms_submission_value}}', 0),
(1506, 0, 1703878926, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":829,\"submission_id\":169,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"fgdgdfgdfg\",\"format\":null}', NULL, '829', '{{%forms_submission_value}}', 0),
(1507, 0, 1703878926, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":830,\"submission_id\":169,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"Pack_35_750+Eggless_31_421\",\"format\":null}', NULL, '830', '{{%forms_submission_value}}', 0),
(1508, 0, 1703878926, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":831,\"submission_id\":169,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-26\",\"format\":\"datetime\"}', NULL, '831', '{{%forms_submission_value}}', 0),
(1509, 0, 1703878926, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":832,\"submission_id\":169,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1171\",\"format\":null}', NULL, '832', '{{%forms_submission_value}}', 0),
(1510, 0, 1703878926, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":833,\"submission_id\":169,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"8\",\"format\":null}', NULL, '833', '{{%forms_submission_value}}', 0),
(1511, 0, 1703879185, '', 'api-forms-submission', 0, 1, '{\"id\":170,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703879185,\"updated_at\":1703879185}', NULL, '170', '{{%forms_submission}}', 0),
(1512, 0, 1703879185, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":834,\"submission_id\":170,\"attribute\":\"Id\",\"label\":\"Address Id\",\"hint\":false,\"value\":\"1\",\"format\":null}', NULL, '834', '{{%forms_submission_value}}', 0),
(1513, 0, 1703879185, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":835,\"submission_id\":170,\"attribute\":\"Name\",\"label\":\"Recipient Name\",\"hint\":false,\"value\":\"chandra\",\"format\":null}', NULL, '835', '{{%forms_submission_value}}', 0),
(1514, 0, 1703879185, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":836,\"submission_id\":170,\"attribute\":\"Address\",\"label\":\"Recipient Address\",\"hint\":false,\"value\":\"16-11-741/D/15, SBI Officers Colony\",\"format\":null}', NULL, '836', '{{%forms_submission_value}}', 0),
(1515, 0, 1703879185, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":837,\"submission_id\":170,\"attribute\":\"Landmark\",\"label\":\"Landmark\",\"hint\":false,\"value\":\"fdfefdf\",\"format\":null}', NULL, '837', '{{%forms_submission_value}}', 0),
(1516, 0, 1703879185, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":838,\"submission_id\":170,\"attribute\":\"Pincode\",\"label\":\"PIN Code\",\"hint\":false,\"value\":\"500036\",\"format\":null}', NULL, '838', '{{%forms_submission_value}}', 0),
(1517, 0, 1703879185, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":839,\"submission_id\":170,\"attribute\":\"Mobile1\",\"label\":\"Phone Number\",\"hint\":false,\"value\":\"918331852700\",\"format\":null}', NULL, '839', '{{%forms_submission_value}}', 0),
(1518, 0, 1703879185, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":840,\"submission_id\":170,\"attribute\":\"Mobile2\",\"label\":\"Phone Number (Alternative)\",\"hint\":false,\"value\":\"500036\",\"format\":null}', NULL, '840', '{{%forms_submission_value}}', 0),
(1519, 0, 1703879272, '', 'api-forms-submission', 0, 1, '{\"id\":171,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=6&title=brown-choclolate-cake&submit=2\",\"is_done\":null,\"created_at\":1703879272,\"updated_at\":1703879272}', NULL, '171', '{{%forms_submission}}', 0),
(1520, 0, 1703879272, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":841,\"submission_id\":171,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"34_786, 31_140\",\"format\":null}', NULL, '841', '{{%forms_submission_value}}', 0),
(1521, 0, 1703879272, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":842,\"submission_id\":171,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"gertgdfgdfgdf\",\"format\":null}', NULL, '842', '{{%forms_submission_value}}', 0),
(1522, 0, 1703879272, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":843,\"submission_id\":171,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"12-inch_34_786+Eggless_31_140\",\"format\":null}', NULL, '843', '{{%forms_submission_value}}', 0),
(1523, 0, 1703879272, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":844,\"submission_id\":171,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-19\",\"format\":\"datetime\"}', NULL, '844', '{{%forms_submission_value}}', 0),
(1524, 0, 1703879272, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":845,\"submission_id\":171,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"926\",\"format\":null}', NULL, '845', '{{%forms_submission_value}}', 0),
(1525, 0, 1703879272, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":846,\"submission_id\":171,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"6\",\"format\":null}', NULL, '846', '{{%forms_submission_value}}', 0),
(1526, 0, 1703879418, '', 'api-forms-submission', 0, 1, '{\"id\":172,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703879418,\"updated_at\":1703879418}', NULL, '172', '{{%forms_submission}}', 0),
(1527, 0, 1703879418, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":847,\"submission_id\":172,\"attribute\":\"Id\",\"label\":\"Address Id\",\"hint\":false,\"value\":\"1\",\"format\":null}', NULL, '847', '{{%forms_submission_value}}', 0),
(1528, 0, 1703879418, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":848,\"submission_id\":172,\"attribute\":\"Name\",\"label\":\"Recipient Name\",\"hint\":false,\"value\":\"chandra reddy\",\"format\":null}', NULL, '848', '{{%forms_submission_value}}', 0),
(1529, 0, 1703879418, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":849,\"submission_id\":172,\"attribute\":\"Address\",\"label\":\"Recipient Address\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '849', '{{%forms_submission_value}}', 0),
(1530, 0, 1703879418, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":850,\"submission_id\":172,\"attribute\":\"Landmark\",\"label\":\"Landmark\",\"hint\":false,\"value\":\"fdfefdf\",\"format\":null}', NULL, '850', '{{%forms_submission_value}}', 0),
(1531, 0, 1703879418, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":851,\"submission_id\":172,\"attribute\":\"Pincode\",\"label\":\"PIN Code\",\"hint\":false,\"value\":\"500036\",\"format\":null}', NULL, '851', '{{%forms_submission_value}}', 0),
(1532, 0, 1703879418, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":852,\"submission_id\":172,\"attribute\":\"Mobile1\",\"label\":\"Phone Number\",\"hint\":false,\"value\":\"918331852700\",\"format\":null}', NULL, '852', '{{%forms_submission_value}}', 0),
(1533, 0, 1703879418, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":853,\"submission_id\":172,\"attribute\":\"Mobile2\",\"label\":\"Phone Number (Alternative)\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '853', '{{%forms_submission_value}}', 0),
(1534, 0, 1703879741, '', 'api-forms-submission', 0, 1, '{\"id\":173,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703879741,\"updated_at\":1703879741}', NULL, '173', '{{%forms_submission}}', 0),
(1535, 0, 1703879741, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":854,\"submission_id\":173,\"attribute\":\"Id\",\"label\":\"Address Id\",\"hint\":false,\"value\":\"1\",\"format\":null}', NULL, '854', '{{%forms_submission_value}}', 0),
(1536, 0, 1703879741, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":855,\"submission_id\":173,\"attribute\":\"Name\",\"label\":\"Recipient Name\",\"hint\":false,\"value\":\"guruji guru\",\"format\":null}', NULL, '855', '{{%forms_submission_value}}', 0),
(1537, 0, 1703879741, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":856,\"submission_id\":173,\"attribute\":\"Address\",\"label\":\"Recipient Address\",\"hint\":false,\"value\":\"Parvathnagar\",\"format\":null}', NULL, '856', '{{%forms_submission_value}}', 0),
(1538, 0, 1703879741, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":857,\"submission_id\":173,\"attribute\":\"Landmark\",\"label\":\"Landmark\",\"hint\":false,\"value\":\"fdfefdf guru\",\"format\":null}', NULL, '857', '{{%forms_submission_value}}', 0),
(1539, 0, 1703879741, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":858,\"submission_id\":173,\"attribute\":\"Pincode\",\"label\":\"PIN Code\",\"hint\":false,\"value\":\"500018\",\"format\":null}', NULL, '858', '{{%forms_submission_value}}', 0),
(1540, 0, 1703879741, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":859,\"submission_id\":173,\"attribute\":\"Mobile1\",\"label\":\"Phone Number\",\"hint\":false,\"value\":\"752457878\",\"format\":null}', NULL, '859', '{{%forms_submission_value}}', 0),
(1541, 0, 1703879741, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":860,\"submission_id\":173,\"attribute\":\"Mobile2\",\"label\":\"Phone Number (Alternative)\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '860', '{{%forms_submission_value}}', 0),
(1542, 1, 1703880177, '', 'api-forms-submission', 0, 1, '{\"id\":174,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703880177,\"updated_at\":1703880177}', NULL, '174', '{{%forms_submission}}', 0),
(1543, 1, 1703880177, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":861,\"submission_id\":174,\"attribute\":\"Id\",\"label\":\"Address Id\",\"hint\":false,\"value\":\"1\",\"format\":null}', NULL, '861', '{{%forms_submission_value}}', 0),
(1544, 1, 1703880177, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":862,\"submission_id\":174,\"attribute\":\"Name\",\"label\":\"Recipient Name\",\"hint\":false,\"value\":\"chandra reddy guruji\",\"format\":null}', NULL, '862', '{{%forms_submission_value}}', 0),
(1545, 1, 1703880177, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":863,\"submission_id\":174,\"attribute\":\"Address\",\"label\":\"Recipient Address\",\"hint\":false,\"value\":\"16-11-741/D/15, SBI Officers Colony\",\"format\":null}', NULL, '863', '{{%forms_submission_value}}', 0),
(1546, 1, 1703880177, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":864,\"submission_id\":174,\"attribute\":\"Landmark\",\"label\":\"Landmark\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '864', '{{%forms_submission_value}}', 0),
(1547, 1, 1703880177, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":865,\"submission_id\":174,\"attribute\":\"Pincode\",\"label\":\"PIN Code\",\"hint\":false,\"value\":\"500036\",\"format\":null}', NULL, '865', '{{%forms_submission_value}}', 0),
(1548, 1, 1703880177, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":866,\"submission_id\":174,\"attribute\":\"Mobile1\",\"label\":\"Phone Number\",\"hint\":false,\"value\":\"918331852700\",\"format\":null}', NULL, '866', '{{%forms_submission_value}}', 0),
(1549, 1, 1703880177, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":867,\"submission_id\":174,\"attribute\":\"Mobile2\",\"label\":\"Phone Number (Alternative)\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '867', '{{%forms_submission_value}}', 0),
(1550, 1, 1703880774, '', 'api-forms-submission', 0, 1, '{\"id\":175,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=7&title=honey-chocolate-dip-cake&submit=2\",\"is_done\":null,\"created_at\":1703880774,\"updated_at\":1703880774}', NULL, '175', '{{%forms_submission}}', 0),
(1551, 1, 1703880774, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":868,\"submission_id\":175,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"36_2354, 31_251\",\"format\":null}', NULL, '868', '{{%forms_submission_value}}', 0),
(1552, 1, 1703880774, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":869,\"submission_id\":175,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"h ftrdhffgh \",\"format\":null}', NULL, '869', '{{%forms_submission_value}}', 0),
(1553, 1, 1703880774, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":870,\"submission_id\":175,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"6-inch-5-layer_36_2354+Eggless_31_251\",\"format\":null}', NULL, '870', '{{%forms_submission_value}}', 0),
(1554, 1, 1703880774, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":871,\"submission_id\":175,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-19\",\"format\":\"datetime\"}', NULL, '871', '{{%forms_submission_value}}', 0),
(1555, 1, 1703880774, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":872,\"submission_id\":175,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"2605\",\"format\":null}', NULL, '872', '{{%forms_submission_value}}', 0),
(1556, 1, 1703880774, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":873,\"submission_id\":175,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"7\",\"format\":null}', NULL, '873', '{{%forms_submission_value}}', 0),
(1557, 1, 1703880904, '', 'api-forms-submission', 0, 1, '{\"id\":176,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=10&title=chocolate-chipped-cookies&submit=2\",\"is_done\":null,\"created_at\":1703880903,\"updated_at\":1703880903}', NULL, '176', '{{%forms_submission}}', 0),
(1558, 1, 1703880904, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":874,\"submission_id\":176,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"37_1256, \",\"format\":null}', NULL, '874', '{{%forms_submission_value}}', 0),
(1559, 1, 1703880904, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":875,\"submission_id\":176,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"hgdryhdf bdf\",\"format\":null}', NULL, '875', '{{%forms_submission_value}}', 0),
(1560, 1, 1703880904, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":876,\"submission_id\":176,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"2-Kg_37_1256\",\"format\":null}', NULL, '876', '{{%forms_submission_value}}', 0),
(1561, 1, 1703880904, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":877,\"submission_id\":176,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-20\",\"format\":\"datetime\"}', NULL, '877', '{{%forms_submission_value}}', 0),
(1562, 1, 1703880904, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":878,\"submission_id\":176,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1256\",\"format\":null}', NULL, '878', '{{%forms_submission_value}}', 0),
(1563, 1, 1703880904, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":879,\"submission_id\":176,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"10\",\"format\":null}', NULL, '879', '{{%forms_submission_value}}', 0),
(1564, 1, 1703881095, '', 'api-forms-submission', 0, 1, '{\"id\":177,\"form_id\":2,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/product-info?id=10&title=chocolate-chipped-cookies&submit=2\",\"is_done\":null,\"created_at\":1703881095,\"updated_at\":1703881095}', NULL, '177', '{{%forms_submission}}', 0),
(1565, 1, 1703881095, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":880,\"submission_id\":177,\"attribute\":\"Features\",\"label\":\"features\",\"hint\":false,\"value\":\"37_1256, \",\"format\":null}', NULL, '880', '{{%forms_submission_value}}', 0),
(1566, 1, 1703881095, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":881,\"submission_id\":177,\"attribute\":\"Message\",\"label\":\"Message On Cake\",\"hint\":false,\"value\":\"fdxgergdfgbfv dsfgdf\",\"format\":null}', NULL, '881', '{{%forms_submission_value}}', 0),
(1567, 1, 1703881095, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":882,\"submission_id\":177,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\",\"hint\":false,\"value\":\"2-Kg_37_1256\",\"format\":null}', NULL, '882', '{{%forms_submission_value}}', 0),
(1568, 1, 1703881095, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":883,\"submission_id\":177,\"attribute\":\"Delivery\",\"label\":\"Delivery Date\",\"hint\":false,\"value\":\"2023-12-06\",\"format\":\"datetime\"}', NULL, '883', '{{%forms_submission_value}}', 0),
(1569, 1, 1703881095, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":884,\"submission_id\":177,\"attribute\":\"Price\",\"label\":\"Price\",\"hint\":false,\"value\":\"1256\",\"format\":null}', NULL, '884', '{{%forms_submission_value}}', 0),
(1570, 1, 1703881095, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":885,\"submission_id\":177,\"attribute\":\"Pid\",\"label\":\"Product\",\"hint\":false,\"value\":\"10\",\"format\":null}', NULL, '885', '{{%forms_submission_value}}', 0),
(1571, 1, 1703881188, '', 'api-forms-submission', 0, 1, '{\"id\":178,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703881188,\"updated_at\":1703881188}', NULL, '178', '{{%forms_submission}}', 0),
(1572, 1, 1703881188, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":886,\"submission_id\":178,\"attribute\":\"Id\",\"label\":\"Address Id\",\"hint\":false,\"value\":\"1\",\"format\":null}', NULL, '886', '{{%forms_submission_value}}', 0),
(1573, 1, 1703881188, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":887,\"submission_id\":178,\"attribute\":\"Name\",\"label\":\"Recipient Name\",\"hint\":false,\"value\":\"Arjun Pandey\",\"format\":null}', NULL, '887', '{{%forms_submission_value}}', 0),
(1574, 1, 1703881188, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":888,\"submission_id\":178,\"attribute\":\"Address\",\"label\":\"Recipient Address\",\"hint\":false,\"value\":\"16-11-741/D/15, SBI Officers Colony\",\"format\":null}', NULL, '888', '{{%forms_submission_value}}', 0),
(1575, 1, 1703881188, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":889,\"submission_id\":178,\"attribute\":\"Landmark\",\"label\":\"Landmark\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '889', '{{%forms_submission_value}}', 0),
(1576, 1, 1703881188, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":890,\"submission_id\":178,\"attribute\":\"Pincode\",\"label\":\"PIN Code\",\"hint\":false,\"value\":\"500036\",\"format\":null}', NULL, '890', '{{%forms_submission_value}}', 0),
(1577, 1, 1703881188, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":891,\"submission_id\":178,\"attribute\":\"Mobile1\",\"label\":\"Phone Number\",\"hint\":false,\"value\":\"380833185270\",\"format\":null}', NULL, '891', '{{%forms_submission_value}}', 0),
(1578, 1, 1703881188, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":892,\"submission_id\":178,\"attribute\":\"Mobile2\",\"label\":\"Phone Number (Alternative)\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '892', '{{%forms_submission_value}}', 0),
(1579, 1, 1703881517, '', 'api-forms-submission', 0, 1, '{\"id\":179,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703881517,\"updated_at\":1703881517}', NULL, '179', '{{%forms_submission}}', 0),
(1580, 1, 1703881517, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":893,\"submission_id\":179,\"attribute\":\"Id\",\"label\":\"Address Id\",\"hint\":false,\"value\":\"1\",\"format\":null}', NULL, '893', '{{%forms_submission_value}}', 0),
(1581, 1, 1703881517, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":894,\"submission_id\":179,\"attribute\":\"Name\",\"label\":\"Recipient Name\",\"hint\":false,\"value\":\"Haranadh Goud\",\"format\":null}', NULL, '894', '{{%forms_submission_value}}', 0),
(1582, 1, 1703881517, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":895,\"submission_id\":179,\"attribute\":\"Address\",\"label\":\"Recipient Address\",\"hint\":false,\"value\":\"Parvathnagar\",\"format\":null}', NULL, '895', '{{%forms_submission_value}}', 0),
(1583, 1, 1703881517, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":896,\"submission_id\":179,\"attribute\":\"Landmark\",\"label\":\"Landmark\",\"hint\":false,\"value\":\"defde\",\"format\":null}', NULL, '896', '{{%forms_submission_value}}', 0),
(1584, 1, 1703881517, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":897,\"submission_id\":179,\"attribute\":\"Pincode\",\"label\":\"PIN Code\",\"hint\":false,\"value\":\"500018\",\"format\":null}', NULL, '897', '{{%forms_submission_value}}', 0),
(1585, 1, 1703881517, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":898,\"submission_id\":179,\"attribute\":\"Mobile1\",\"label\":\"Phone Number\",\"hint\":false,\"value\":\"75245787845\",\"format\":null}', NULL, '898', '{{%forms_submission_value}}', 0),
(1586, 1, 1703881517, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":899,\"submission_id\":179,\"attribute\":\"Mobile2\",\"label\":\"Phone Number (Alternative)\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '899', '{{%forms_submission_value}}', 0),
(1587, 1, 1703881861, '', 'api-forms-form', 1, 0, '{\"id\":3,\"title\":\"{\\\"en\\\":\\\"Address Form\\\"}\",\"subject\":\"{\\\"en\\\":\\\"\\\"}\",\"email_intro\":\"{\\\"en\\\":\\\"\\\"}\",\"email_outro\":\"{\\\"en\\\":\\\"\\\"}\",\"copy_to_attribute\":null,\"recipients\":\"[{\\\"value\\\":\\\"provdigi@gmail.com\\\"}]\",\"created_at\":1703831826,\"updated_at\":1703881861,\"created_by\":1,\"updated_by\":1}', '{\"title\":\"Address Form\",\"subject\":\"\",\"email_intro\":\"\",\"email_outro\":\"\",\"recipients\":\"[]\",\"updated_at\":1703831859}', '3', '{{%forms_form}}', 0),
(1588, 1, 1703881894, '', 'api-forms-submission', 0, 1, '{\"id\":180,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703881894,\"updated_at\":1703881894}', NULL, '180', '{{%forms_submission}}', 0),
(1589, 1, 1703881894, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":900,\"submission_id\":180,\"attribute\":\"Id\",\"label\":\"Address Id\",\"hint\":false,\"value\":\"1\",\"format\":null}', NULL, '900', '{{%forms_submission_value}}', 0),
(1590, 1, 1703881894, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":901,\"submission_id\":180,\"attribute\":\"Name\",\"label\":\"Recipient Name\",\"hint\":false,\"value\":\"Do Not Save\",\"format\":null}', NULL, '901', '{{%forms_submission_value}}', 0),
(1591, 1, 1703881894, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":902,\"submission_id\":180,\"attribute\":\"Address\",\"label\":\"Recipient Address\",\"hint\":false,\"value\":\"2-90/2, SC COLONY KOLPUR, MAGANOOR\",\"format\":null}', NULL, '902', '{{%forms_submission_value}}', 0),
(1592, 1, 1703881894, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":903,\"submission_id\":180,\"attribute\":\"Landmark\",\"label\":\"Landmark\",\"hint\":false,\"value\":\"do not\",\"format\":null}', NULL, '903', '{{%forms_submission_value}}', 0),
(1593, 1, 1703881894, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":904,\"submission_id\":180,\"attribute\":\"Pincode\",\"label\":\"PIN Code\",\"hint\":false,\"value\":\"509352\",\"format\":null}', NULL, '904', '{{%forms_submission_value}}', 0),
(1594, 1, 1703881894, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":905,\"submission_id\":180,\"attribute\":\"Mobile1\",\"label\":\"Phone Number\",\"hint\":false,\"value\":\"9666753123\",\"format\":null}', NULL, '905', '{{%forms_submission_value}}', 0),
(1595, 1, 1703881894, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":906,\"submission_id\":180,\"attribute\":\"Mobile2\",\"label\":\"Phone Number (Alternative)\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '906', '{{%forms_submission_value}}', 0),
(1596, 1, 1703881896, '', 'api-forms-submission', 0, 0, '{\"id\":180,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703881894,\"updated_at\":1703881894}', NULL, '180', '{{%forms_submission}}', 1),
(1597, 1, 1703881948, '', 'api-forms-submission', 0, 1, '{\"id\":181,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703881948,\"updated_at\":1703881948}', NULL, '181', '{{%forms_submission}}', 0),
(1598, 1, 1703881948, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":907,\"submission_id\":181,\"attribute\":\"Id\",\"label\":\"Address Id\",\"hint\":false,\"value\":\"1\",\"format\":null}', NULL, '907', '{{%forms_submission_value}}', 0),
(1599, 1, 1703881948, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":908,\"submission_id\":181,\"attribute\":\"Name\",\"label\":\"Recipient Name\",\"hint\":false,\"value\":\"Do Not Save\",\"format\":null}', NULL, '908', '{{%forms_submission_value}}', 0),
(1600, 1, 1703881948, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":909,\"submission_id\":181,\"attribute\":\"Address\",\"label\":\"Recipient Address\",\"hint\":false,\"value\":\"2-90/2, SC COLONY KOLPUR, MAGANOOR\",\"format\":null}', NULL, '909', '{{%forms_submission_value}}', 0),
(1601, 1, 1703881948, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":910,\"submission_id\":181,\"attribute\":\"Landmark\",\"label\":\"Landmark\",\"hint\":false,\"value\":\"do not\",\"format\":null}', NULL, '910', '{{%forms_submission_value}}', 0),
(1602, 1, 1703881948, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":911,\"submission_id\":181,\"attribute\":\"Pincode\",\"label\":\"PIN Code\",\"hint\":false,\"value\":\"509352\",\"format\":null}', NULL, '911', '{{%forms_submission_value}}', 0),
(1603, 1, 1703881948, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":912,\"submission_id\":181,\"attribute\":\"Mobile1\",\"label\":\"Phone Number\",\"hint\":false,\"value\":\"9666753123\",\"format\":null}', NULL, '912', '{{%forms_submission_value}}', 0),
(1604, 1, 1703881948, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":913,\"submission_id\":181,\"attribute\":\"Mobile2\",\"label\":\"Phone Number (Alternative)\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '913', '{{%forms_submission_value}}', 0),
(1605, 1, 1703881948, '', 'api-forms-submission', 0, 0, '{\"id\":181,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703881948,\"updated_at\":1703881948}', NULL, '181', '{{%forms_submission}}', 1),
(1606, 1, 1703883020, '', 'api-forms-submission', 0, 1, '{\"id\":182,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703883020,\"updated_at\":1703883020}', NULL, '182', '{{%forms_submission}}', 0),
(1607, 1, 1703883020, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":914,\"submission_id\":182,\"attribute\":\"Id\",\"label\":\"Address Id\",\"hint\":false,\"value\":\"1\",\"format\":null}', NULL, '914', '{{%forms_submission_value}}', 0),
(1608, 1, 1703883020, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":915,\"submission_id\":182,\"attribute\":\"Name\",\"label\":\"Recipient Name\",\"hint\":false,\"value\":\"Do Not Save\",\"format\":null}', NULL, '915', '{{%forms_submission_value}}', 0),
(1609, 1, 1703883020, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":916,\"submission_id\":182,\"attribute\":\"Address\",\"label\":\"Recipient Address\",\"hint\":false,\"value\":\"2-90/2, SC COLONY KOLPUR, MAGANOOR\",\"format\":null}', NULL, '916', '{{%forms_submission_value}}', 0),
(1610, 1, 1703883020, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":917,\"submission_id\":182,\"attribute\":\"Landmark\",\"label\":\"Landmark\",\"hint\":false,\"value\":\"do not\",\"format\":null}', NULL, '917', '{{%forms_submission_value}}', 0),
(1611, 1, 1703883020, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":918,\"submission_id\":182,\"attribute\":\"Pincode\",\"label\":\"PIN Code\",\"hint\":false,\"value\":\"509352\",\"format\":null}', NULL, '918', '{{%forms_submission_value}}', 0),
(1612, 1, 1703883020, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":919,\"submission_id\":182,\"attribute\":\"Mobile1\",\"label\":\"Phone Number\",\"hint\":false,\"value\":\"9666753123\",\"format\":null}', NULL, '919', '{{%forms_submission_value}}', 0),
(1613, 1, 1703883020, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":920,\"submission_id\":182,\"attribute\":\"Mobile2\",\"label\":\"Phone Number (Alternative)\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '920', '{{%forms_submission_value}}', 0),
(1614, 1, 1703883020, '', 'api-forms-submission', 0, 0, '{\"id\":182,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703883020,\"updated_at\":1703883020}', NULL, '182', '{{%forms_submission}}', 1),
(1615, 1, 1703883045, '', 'api-forms-submission', 0, 1, '{\"id\":183,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703883045,\"updated_at\":1703883045}', NULL, '183', '{{%forms_submission}}', 0),
(1616, 1, 1703883045, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":921,\"submission_id\":183,\"attribute\":\"Id\",\"label\":\"Address Id\",\"hint\":false,\"value\":\"1\",\"format\":null}', NULL, '921', '{{%forms_submission_value}}', 0);
INSERT INTO `admin_ngrest_log` (`id`, `user_id`, `timestamp_create`, `route`, `api`, `is_update`, `is_insert`, `attributes_json`, `attributes_diff_json`, `pk_value`, `table_name`, `is_delete`) VALUES
(1617, 1, 1703883045, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":922,\"submission_id\":183,\"attribute\":\"Name\",\"label\":\"Recipient Name\",\"hint\":false,\"value\":\"Do Not Save\",\"format\":null}', NULL, '922', '{{%forms_submission_value}}', 0),
(1618, 1, 1703883045, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":923,\"submission_id\":183,\"attribute\":\"Address\",\"label\":\"Recipient Address\",\"hint\":false,\"value\":\"2-90/2, SC COLONY KOLPUR, MAGANOOR\",\"format\":null}', NULL, '923', '{{%forms_submission_value}}', 0),
(1619, 1, 1703883045, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":924,\"submission_id\":183,\"attribute\":\"Landmark\",\"label\":\"Landmark\",\"hint\":false,\"value\":\"do not\",\"format\":null}', NULL, '924', '{{%forms_submission_value}}', 0),
(1620, 1, 1703883045, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":925,\"submission_id\":183,\"attribute\":\"Pincode\",\"label\":\"PIN Code\",\"hint\":false,\"value\":\"509352\",\"format\":null}', NULL, '925', '{{%forms_submission_value}}', 0),
(1621, 1, 1703883045, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":926,\"submission_id\":183,\"attribute\":\"Mobile1\",\"label\":\"Phone Number\",\"hint\":false,\"value\":\"9666753123\",\"format\":null}', NULL, '926', '{{%forms_submission_value}}', 0),
(1622, 1, 1703883045, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":927,\"submission_id\":183,\"attribute\":\"Mobile2\",\"label\":\"Phone Number (Alternative)\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '927', '{{%forms_submission_value}}', 0),
(1623, 1, 1703883045, '', 'api-forms-submission', 0, 0, '{\"id\":183,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703883045,\"updated_at\":1703883045}', NULL, '183', '{{%forms_submission}}', 1),
(1624, 0, 1703884051, '', 'api-forms-submission', 0, 1, '{\"id\":184,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703884051,\"updated_at\":1703884051}', NULL, '184', '{{%forms_submission}}', 0),
(1625, 0, 1703884051, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":928,\"submission_id\":184,\"attribute\":\"Id\",\"label\":\"Address Id\",\"hint\":false,\"value\":\"1\",\"format\":null}', NULL, '928', '{{%forms_submission_value}}', 0),
(1626, 0, 1703884051, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":929,\"submission_id\":184,\"attribute\":\"Name\",\"label\":\"Recipient Name\",\"hint\":false,\"value\":\"Do Not Save\",\"format\":null}', NULL, '929', '{{%forms_submission_value}}', 0),
(1627, 0, 1703884051, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":930,\"submission_id\":184,\"attribute\":\"Address\",\"label\":\"Recipient Address\",\"hint\":false,\"value\":\"2-90/2, SC COLONY KOLPUR, MAGANOOR\",\"format\":null}', NULL, '930', '{{%forms_submission_value}}', 0),
(1628, 0, 1703884051, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":931,\"submission_id\":184,\"attribute\":\"Landmark\",\"label\":\"Landmark\",\"hint\":false,\"value\":\"do not\",\"format\":null}', NULL, '931', '{{%forms_submission_value}}', 0),
(1629, 0, 1703884051, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":932,\"submission_id\":184,\"attribute\":\"Pincode\",\"label\":\"PIN Code\",\"hint\":false,\"value\":\"509352\",\"format\":null}', NULL, '932', '{{%forms_submission_value}}', 0),
(1630, 0, 1703884051, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":933,\"submission_id\":184,\"attribute\":\"Mobile1\",\"label\":\"Phone Number\",\"hint\":false,\"value\":\"9666753123\",\"format\":null}', NULL, '933', '{{%forms_submission_value}}', 0),
(1631, 0, 1703884051, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":934,\"submission_id\":184,\"attribute\":\"Mobile2\",\"label\":\"Phone Number (Alternative)\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '934', '{{%forms_submission_value}}', 0),
(1632, 0, 1703884051, '', 'api-forms-submission', 0, 0, '{\"id\":184,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703884051,\"updated_at\":1703884051}', NULL, '184', '{{%forms_submission}}', 1),
(1633, 0, 1703884808, '', 'api-forms-submission', 0, 1, '{\"id\":185,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703884808,\"updated_at\":1703884808}', NULL, '185', '{{%forms_submission}}', 0),
(1634, 0, 1703884808, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":935,\"submission_id\":185,\"attribute\":\"Id\",\"label\":\"Address Id\",\"hint\":false,\"value\":\"1\",\"format\":null}', NULL, '935', '{{%forms_submission_value}}', 0),
(1635, 0, 1703884808, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":936,\"submission_id\":185,\"attribute\":\"Name\",\"label\":\"Recipient Name\",\"hint\":false,\"value\":\"Do Not Save\",\"format\":null}', NULL, '936', '{{%forms_submission_value}}', 0),
(1636, 0, 1703884808, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":937,\"submission_id\":185,\"attribute\":\"Address\",\"label\":\"Recipient Address\",\"hint\":false,\"value\":\"2-90/2, SC COLONY KOLPUR, MAGANOOR\",\"format\":null}', NULL, '937', '{{%forms_submission_value}}', 0),
(1637, 0, 1703884808, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":938,\"submission_id\":185,\"attribute\":\"Landmark\",\"label\":\"Landmark\",\"hint\":false,\"value\":\"do not\",\"format\":null}', NULL, '938', '{{%forms_submission_value}}', 0),
(1638, 0, 1703884808, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":939,\"submission_id\":185,\"attribute\":\"Pincode\",\"label\":\"PIN Code\",\"hint\":false,\"value\":\"509352\",\"format\":null}', NULL, '939', '{{%forms_submission_value}}', 0),
(1639, 0, 1703884809, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":940,\"submission_id\":185,\"attribute\":\"Mobile1\",\"label\":\"Phone Number\",\"hint\":false,\"value\":\"9666753123\",\"format\":null}', NULL, '940', '{{%forms_submission_value}}', 0),
(1640, 0, 1703884809, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":941,\"submission_id\":185,\"attribute\":\"Mobile2\",\"label\":\"Phone Number (Alternative)\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '941', '{{%forms_submission_value}}', 0),
(1641, 0, 1703884809, '', 'api-forms-submission', 0, 0, '{\"id\":185,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703884808,\"updated_at\":1703884808}', NULL, '185', '{{%forms_submission}}', 1),
(1642, 0, 1703886200, '', 'api-forms-submission', 0, 1, '{\"id\":186,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703886200,\"updated_at\":1703886200}', NULL, '186', '{{%forms_submission}}', 0),
(1643, 0, 1703886200, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":942,\"submission_id\":186,\"attribute\":\"Id\",\"label\":\"Address Id\",\"hint\":false,\"value\":\"1\",\"format\":null}', NULL, '942', '{{%forms_submission_value}}', 0),
(1644, 0, 1703886200, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":943,\"submission_id\":186,\"attribute\":\"Name\",\"label\":\"Recipient Name\",\"hint\":false,\"value\":\"Do Not Save\",\"format\":null}', NULL, '943', '{{%forms_submission_value}}', 0),
(1645, 0, 1703886200, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":944,\"submission_id\":186,\"attribute\":\"Address\",\"label\":\"Recipient Address\",\"hint\":false,\"value\":\"2-90/2, SC COLONY KOLPUR, MAGANOOR\",\"format\":null}', NULL, '944', '{{%forms_submission_value}}', 0),
(1646, 0, 1703886200, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":945,\"submission_id\":186,\"attribute\":\"Landmark\",\"label\":\"Landmark\",\"hint\":false,\"value\":\"do not\",\"format\":null}', NULL, '945', '{{%forms_submission_value}}', 0),
(1647, 0, 1703886200, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":946,\"submission_id\":186,\"attribute\":\"Pincode\",\"label\":\"PIN Code\",\"hint\":false,\"value\":\"509352\",\"format\":null}', NULL, '946', '{{%forms_submission_value}}', 0),
(1648, 0, 1703886200, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":947,\"submission_id\":186,\"attribute\":\"Mobile1\",\"label\":\"Phone Number\",\"hint\":false,\"value\":\"9666753123\",\"format\":null}', NULL, '947', '{{%forms_submission_value}}', 0),
(1649, 0, 1703886200, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":948,\"submission_id\":186,\"attribute\":\"Mobile2\",\"label\":\"Phone Number (Alternative)\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '948', '{{%forms_submission_value}}', 0),
(1650, 0, 1703886200, '', 'api-forms-submission', 0, 0, '{\"id\":186,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703886200,\"updated_at\":1703886200}', NULL, '186', '{{%forms_submission}}', 1),
(1651, 1, 1703886327, '', 'api-forms-form', 1, 0, '{\"id\":3,\"title\":\"{\\\"en\\\":\\\"Address Form\\\"}\",\"subject\":\"{\\\"en\\\":\\\"Address Form Data\\\"}\",\"email_intro\":\"{\\\"en\\\":\\\"\\\"}\",\"email_outro\":\"{\\\"en\\\":\\\"\\\"}\",\"copy_to_attribute\":null,\"recipients\":\"[{\\\"value\\\":\\\"provdigi@gmail.com\\\"}]\",\"created_at\":1703831826,\"updated_at\":1703886327,\"created_by\":1,\"updated_by\":1}', '{\"title\":\"Address Form\",\"subject\":\"\",\"email_intro\":\"\",\"email_outro\":\"\",\"updated_at\":1703881861}', '3', '{{%forms_form}}', 0),
(1652, 1, 1703886333, '', 'api-forms-submission', 0, 1, '{\"id\":187,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703886332,\"updated_at\":1703886332}', NULL, '187', '{{%forms_submission}}', 0),
(1653, 1, 1703886333, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":949,\"submission_id\":187,\"attribute\":\"Id\",\"label\":\"Address Id\",\"hint\":false,\"value\":\"1\",\"format\":null}', NULL, '949', '{{%forms_submission_value}}', 0),
(1654, 1, 1703886333, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":950,\"submission_id\":187,\"attribute\":\"Name\",\"label\":\"Recipient Name\",\"hint\":false,\"value\":\"Do Not Save\",\"format\":null}', NULL, '950', '{{%forms_submission_value}}', 0),
(1655, 1, 1703886333, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":951,\"submission_id\":187,\"attribute\":\"Address\",\"label\":\"Recipient Address\",\"hint\":false,\"value\":\"2-90/2, SC COLONY KOLPUR, MAGANOOR\",\"format\":null}', NULL, '951', '{{%forms_submission_value}}', 0),
(1656, 1, 1703886333, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":952,\"submission_id\":187,\"attribute\":\"Landmark\",\"label\":\"Landmark\",\"hint\":false,\"value\":\"do not\",\"format\":null}', NULL, '952', '{{%forms_submission_value}}', 0),
(1657, 1, 1703886333, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":953,\"submission_id\":187,\"attribute\":\"Pincode\",\"label\":\"PIN Code\",\"hint\":false,\"value\":\"509352\",\"format\":null}', NULL, '953', '{{%forms_submission_value}}', 0),
(1658, 1, 1703886333, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":954,\"submission_id\":187,\"attribute\":\"Mobile1\",\"label\":\"Phone Number\",\"hint\":false,\"value\":\"9666753123\",\"format\":null}', NULL, '954', '{{%forms_submission_value}}', 0),
(1659, 1, 1703886333, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":955,\"submission_id\":187,\"attribute\":\"Mobile2\",\"label\":\"Phone Number (Alternative)\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '955', '{{%forms_submission_value}}', 0),
(1660, 1, 1703886333, '', 'api-forms-submission', 0, 0, '{\"id\":187,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703886332,\"updated_at\":1703886332}', NULL, '187', '{{%forms_submission}}', 1),
(1661, 1, 1703886374, '', 'api-forms-submission', 0, 1, '{\"id\":188,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703886374,\"updated_at\":1703886374}', NULL, '188', '{{%forms_submission}}', 0),
(1662, 1, 1703886374, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":956,\"submission_id\":188,\"attribute\":\"Id\",\"label\":\"Address Id\",\"hint\":false,\"value\":\"1\",\"format\":null}', NULL, '956', '{{%forms_submission_value}}', 0),
(1663, 1, 1703886374, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":957,\"submission_id\":188,\"attribute\":\"Name\",\"label\":\"Recipient Name\",\"hint\":false,\"value\":\"Do Not Save\",\"format\":null}', NULL, '957', '{{%forms_submission_value}}', 0),
(1664, 1, 1703886374, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":958,\"submission_id\":188,\"attribute\":\"Address\",\"label\":\"Recipient Address\",\"hint\":false,\"value\":\"2-90/2, SC COLONY KOLPUR, MAGANOOR\",\"format\":null}', NULL, '958', '{{%forms_submission_value}}', 0),
(1665, 1, 1703886374, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":959,\"submission_id\":188,\"attribute\":\"Landmark\",\"label\":\"Landmark\",\"hint\":false,\"value\":\"do not\",\"format\":null}', NULL, '959', '{{%forms_submission_value}}', 0),
(1666, 1, 1703886374, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":960,\"submission_id\":188,\"attribute\":\"Pincode\",\"label\":\"PIN Code\",\"hint\":false,\"value\":\"509352\",\"format\":null}', NULL, '960', '{{%forms_submission_value}}', 0),
(1667, 1, 1703886374, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":961,\"submission_id\":188,\"attribute\":\"Mobile1\",\"label\":\"Phone Number\",\"hint\":false,\"value\":\"9666753123\",\"format\":null}', NULL, '961', '{{%forms_submission_value}}', 0),
(1668, 1, 1703886374, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":962,\"submission_id\":188,\"attribute\":\"Mobile2\",\"label\":\"Phone Number (Alternative)\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '962', '{{%forms_submission_value}}', 0),
(1669, 1, 1703886374, '', 'api-forms-submission', 0, 0, '{\"id\":188,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703886374,\"updated_at\":1703886374}', NULL, '188', '{{%forms_submission}}', 1),
(1670, 1, 1703886578, '', 'api-forms-submission', 0, 1, '{\"id\":189,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703886578,\"updated_at\":1703886578}', NULL, '189', '{{%forms_submission}}', 0),
(1671, 1, 1703886578, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":963,\"submission_id\":189,\"attribute\":\"Id\",\"label\":\"Address Id\",\"hint\":false,\"value\":\"1\",\"format\":null}', NULL, '963', '{{%forms_submission_value}}', 0),
(1672, 1, 1703886578, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":964,\"submission_id\":189,\"attribute\":\"Name\",\"label\":\"Recipient Name\",\"hint\":false,\"value\":\"chandra reddy\",\"format\":null}', NULL, '964', '{{%forms_submission_value}}', 0),
(1673, 1, 1703886578, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":965,\"submission_id\":189,\"attribute\":\"Address\",\"label\":\"Recipient Address\",\"hint\":false,\"value\":\"16, SBI Officers Colony Road, Moosarambagh\",\"format\":null}', NULL, '965', '{{%forms_submission_value}}', 0),
(1674, 1, 1703886578, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":966,\"submission_id\":189,\"attribute\":\"Landmark\",\"label\":\"Landmark\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '966', '{{%forms_submission_value}}', 0),
(1675, 1, 1703886578, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":967,\"submission_id\":189,\"attribute\":\"Pincode\",\"label\":\"PIN Code\",\"hint\":false,\"value\":\"500036\",\"format\":null}', NULL, '967', '{{%forms_submission_value}}', 0),
(1676, 1, 1703886578, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":968,\"submission_id\":189,\"attribute\":\"Mobile1\",\"label\":\"Phone Number\",\"hint\":false,\"value\":\"918331852700\",\"format\":null}', NULL, '968', '{{%forms_submission_value}}', 0),
(1677, 1, 1703886578, '', 'api-forms-submissionvalue', 0, 1, '{\"id\":969,\"submission_id\":189,\"attribute\":\"Mobile2\",\"label\":\"Phone Number (Alternative)\",\"hint\":false,\"value\":\"\",\"format\":null}', NULL, '969', '{{%forms_submission_value}}', 0),
(1678, 1, 1703886578, '', 'api-forms-submission', 0, 0, '{\"id\":189,\"form_id\":3,\"useragent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",\"language\":\"en\",\"url\":\"/shopping-cart?submit=3\",\"is_done\":null,\"created_at\":1703886578,\"updated_at\":1703886578}', NULL, '189', '{{%forms_submission}}', 1),
(1679, 0, 1703887012, '', 'api-admin-storageimage', 0, 1, '{\"id\":200,\"file_id\":30,\"filter_id\":10,\"resolution_width\":100,\"resolution_height\":100,\"created_at\":1703887012,\"updated_at\":1703887012}', NULL, '200', '{{%admin_storage_image}}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_property`
--

CREATE TABLE `admin_property` (
  `id` int(11) NOT NULL,
  `module_name` varchar(120) DEFAULT NULL,
  `var_name` varchar(40) NOT NULL,
  `class_name` varchar(200) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `sort_index` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_property`
--

INSERT INTO `admin_property` (`id`, `module_name`, `var_name`, `class_name`, `created_at`, `updated_at`, `is_deleted`, `sort_index`) VALUES
(1, 'catalog', 'mainImage', 'siripravi\\catalog\\frontend\\properties\\MainImageProperty', 1701455421, 1701455421, 0, NULL),
(2, 'catalog', 'primaryColor', 'siripravi\\catalog\\frontend\\properties\\PrimaryColorProperty', 1701455421, 1701455421, 0, NULL),
(3, 'catalog', 'secondaryColor', 'siripravi\\catalog\\frontend\\properties\\SecondaryColorProperty', 1701455421, 1701455421, 0, NULL),
(4, 'app', 'Request', 'app\\properties\\GetParamProperty', 1703647469, 1703647469, 1, NULL),
(5, 'app', 'foobar', 'app\\properties\\FooBarProperty', 1703833029, 1703833029, 1, NULL),
(6, 'catalog', 'model', 'siripravi\\catalog\\frontend\\properties\\FormModelProperty', 1703833273, 1703833273, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_proxy_build`
--

CREATE TABLE `admin_proxy_build` (
  `id` int(11) NOT NULL,
  `machine_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `build_token` varchar(190) NOT NULL,
  `config` text NOT NULL,
  `is_complet` tinyint(1) DEFAULT 0,
  `expiration_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_proxy_machine`
--

CREATE TABLE `admin_proxy_machine` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `access_token` varchar(255) NOT NULL,
  `identifier` varchar(190) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `is_disabled` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_queue`
--

CREATE TABLE `admin_queue` (
  `id` int(11) NOT NULL,
  `channel` varchar(255) NOT NULL,
  `job` blob NOT NULL,
  `pushed_at` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT 0,
  `priority` int(11) UNSIGNED NOT NULL DEFAULT 1024,
  `reserved_at` int(11) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `done_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_queue_log`
--

CREATE TABLE `admin_queue_log` (
  `id` int(11) NOT NULL,
  `queue_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `push_timestamp` int(11) NOT NULL,
  `run_timestamp` int(11) DEFAULT NULL,
  `end_timestamp` int(11) DEFAULT NULL,
  `is_error` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_queue_log`
--

INSERT INTO `admin_queue_log` (`id`, `queue_id`, `title`, `push_timestamp`, `run_timestamp`, `end_timestamp`, `is_error`) VALUES
(2, 2, 'luya\\admin\\jobs\\ScheduleJob (attempt: 5, PID: 9620)', 1702621377, 1702627430, 1702627430, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_queue_log_error`
--

CREATE TABLE `admin_queue_log_error` (
  `id` int(11) NOT NULL,
  `queue_log_id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `trace` text DEFAULT NULL,
  `file` text DEFAULT NULL,
  `line` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_queue_log_error`
--

INSERT INTO `admin_queue_log_error` (`id`, `queue_log_id`, `message`, `code`, `trace`, `file`, `line`, `created_at`, `updated_at`) VALUES
(1, 1, 'Undefined array key \"placeholder_var\"', '2', '#0 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php(199): yii\\base\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\luya-kicksta...\', 199)\n#1 [internal function]: luya\\cms\\models\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\db\\AfterSaveEvent))\n#2 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\db\\AfterSaveEvent))\n#3 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(1008): yii\\base\\Component->trigger(\'afterUpdate\', Object(yii\\db\\AfterSaveEvent))\n#4 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(834): yii\\db\\BaseActiveRecord->afterSave(false, Array)\n#5 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\ActiveRecord.php(680): yii\\db\\BaseActiveRecord->updateInternal(Array)\n#6 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(690): yii\\db\\ActiveRecord->update(true, Array)\n#7 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\models\\Scheduler.php(102): yii\\db\\BaseActiveRecord->save(true, Array)\n#8 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\jobs\\ScheduleJob.php(32): luya\\admin\\models\\Scheduler->triggerJob()\n#9 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\Queue.php(243): luya\\admin\\jobs\\ScheduleJob->execute(Object(yii\\queue\\db\\Queue))\n#10 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(147): yii\\queue\\Queue->handleMessage(1, \'O:27:\"luya\\\\admi...\', 300, 1)\n#11 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(79): yii\\queue\\cli\\Queue->handleMessage(1, \'O:27:\"luya\\\\admi...\', 300, 1)\n#12 [internal function]: yii\\queue\\db\\Queue->yii\\queue\\db\\{closure}(Object(Closure))\n#13 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\n#14 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(76): yii\\queue\\cli\\Queue->runWorker(Object(Closure))\n#15 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\apis\\CommonController.php(117): yii\\queue\\db\\Queue->run(false)\n#16 [internal function]: luya\\admin\\apis\\CommonController->actionSchedulerAdd()\n#17 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(57): call_user_func_array(Array, Array)\n#18 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Controller.php(178): yii\\base\\InlineAction->runWithParams(Array)\n#19 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Module.php(552): yii\\base\\Controller->runAction(\'scheduler-add\', Array)\n#20 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\web\\Application.php(103): yii\\base\\Module->runAction(\'admin/api-admin...\', Array)\n#21 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\web\\Application.php(52): yii\\web\\Application->handleRequest(Object(luya\\web\\Request))\n#22 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Application.php(384): luya\\web\\Application->handleRequest(Object(luya\\web\\Request))\n#23 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(251): yii\\base\\Application->run()\n#24 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(195): luya\\base\\Boot->applicationWeb()\n#25 C:\\luya-kickstarter-bootstrap4\\public_html\\index.php(8): luya\\base\\Boot->run()\n#26 {main}', 'C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php', '199', 1702621351, 1702621351),
(2, 2, 'Undefined array key \"placeholder_var\"', '2', '#0 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php(199): yii\\base\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\luya-kicksta...\', 199)\n#1 [internal function]: luya\\cms\\models\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\db\\AfterSaveEvent))\n#2 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\db\\AfterSaveEvent))\n#3 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(1008): yii\\base\\Component->trigger(\'afterUpdate\', Object(yii\\db\\AfterSaveEvent))\n#4 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(808): yii\\db\\BaseActiveRecord->afterSave(false, Array)\n#5 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\ActiveRecord.php(680): yii\\db\\BaseActiveRecord->updateInternal(Array)\n#6 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(690): yii\\db\\ActiveRecord->update(true, Array)\n#7 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\models\\Scheduler.php(102): yii\\db\\BaseActiveRecord->save(true, Array)\n#8 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\jobs\\ScheduleJob.php(32): luya\\admin\\models\\Scheduler->triggerJob()\n#9 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\Queue.php(243): luya\\admin\\jobs\\ScheduleJob->execute(Object(yii\\queue\\db\\Queue))\n#10 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(147): yii\\queue\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 1)\n#11 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(79): yii\\queue\\cli\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 1)\n#12 [internal function]: yii\\queue\\db\\Queue->yii\\queue\\db\\{closure}(Object(Closure))\n#13 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\n#14 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(76): yii\\queue\\cli\\Queue->runWorker(Object(Closure))\n#15 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\apis\\CommonController.php(117): yii\\queue\\db\\Queue->run(false)\n#16 [internal function]: luya\\admin\\apis\\CommonController->actionSchedulerAdd()\n#17 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(57): call_user_func_array(Array, Array)\n#18 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Controller.php(178): yii\\base\\InlineAction->runWithParams(Array)\n#19 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Module.php(552): yii\\base\\Controller->runAction(\'scheduler-add\', Array)\n#20 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\web\\Application.php(103): yii\\base\\Module->runAction(\'admin/api-admin...\', Array)\n#21 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\web\\Application.php(52): yii\\web\\Application->handleRequest(Object(luya\\web\\Request))\n#22 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Application.php(384): luya\\web\\Application->handleRequest(Object(luya\\web\\Request))\n#23 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(251): yii\\base\\Application->run()\n#24 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(195): luya\\base\\Boot->applicationWeb()\n#25 C:\\luya-kickstarter-bootstrap4\\public_html\\index.php(8): luya\\base\\Boot->run()\n#26 {main}', 'C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php', '199', 1702621379, 1702621379),
(3, 2, 'Undefined array key \"placeholder_var\"', '2', '#0 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php(199): yii\\base\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\luya-kicksta...\', 199)\n#1 [internal function]: luya\\cms\\models\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\db\\AfterSaveEvent))\n#2 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\db\\AfterSaveEvent))\n#3 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(1008): yii\\base\\Component->trigger(\'afterUpdate\', Object(yii\\db\\AfterSaveEvent))\n#4 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(808): yii\\db\\BaseActiveRecord->afterSave(false, Array)\n#5 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\ActiveRecord.php(680): yii\\db\\BaseActiveRecord->updateInternal(Array)\n#6 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(690): yii\\db\\ActiveRecord->update(true, Array)\n#7 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\models\\Scheduler.php(102): yii\\db\\BaseActiveRecord->save(true, Array)\n#8 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\jobs\\ScheduleJob.php(32): luya\\admin\\models\\Scheduler->triggerJob()\n#9 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\Queue.php(243): luya\\admin\\jobs\\ScheduleJob->execute(Object(yii\\queue\\db\\Queue))\n#10 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(147): yii\\queue\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 2)\n#11 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(79): yii\\queue\\cli\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 2)\n#12 [internal function]: yii\\queue\\db\\Queue->yii\\queue\\db\\{closure}(Object(Closure))\n#13 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\n#14 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(76): yii\\queue\\cli\\Queue->runWorker(Object(Closure))\n#15 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\Bootstrap.php(52): yii\\queue\\db\\Queue->run(false)\n#16 [internal function]: luya\\admin\\Bootstrap->luya\\admin\\{closure}(Object(luya\\admin\\Bootstrap))\n#17 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\traits\\CacheableTrait.php(110): call_user_func(Object(Closure), Object(luya\\admin\\Bootstrap))\n#18 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\Bootstrap.php(47): luya\\admin\\Bootstrap->getOrSetHasCache(Array, Object(Closure), 1800)\n#19 [internal function]: luya\\admin\\Bootstrap->runQueueJob(Object(yii\\base\\Event))\n#20 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\base\\Event))\n#21 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Application.php(381): yii\\base\\Component->trigger(\'beforeRequest\')\n#22 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(251): yii\\base\\Application->run()\n#23 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(195): luya\\base\\Boot->applicationWeb()\n#24 C:\\luya-kickstarter-bootstrap4\\public_html\\index.php(8): luya\\base\\Boot->run()\n#25 {main}', 'C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php', '199', 1702622895, 1702622895),
(4, 2, 'Undefined array key \"placeholder_var\"', '2', '#0 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php(199): yii\\base\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\luya-kicksta...\', 199)\n#1 [internal function]: luya\\cms\\models\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\db\\AfterSaveEvent))\n#2 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\db\\AfterSaveEvent))\n#3 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(1008): yii\\base\\Component->trigger(\'afterUpdate\', Object(yii\\db\\AfterSaveEvent))\n#4 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(808): yii\\db\\BaseActiveRecord->afterSave(false, Array)\n#5 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\ActiveRecord.php(680): yii\\db\\BaseActiveRecord->updateInternal(Array)\n#6 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(690): yii\\db\\ActiveRecord->update(true, Array)\n#7 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\models\\Scheduler.php(102): yii\\db\\BaseActiveRecord->save(true, Array)\n#8 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\jobs\\ScheduleJob.php(32): luya\\admin\\models\\Scheduler->triggerJob()\n#9 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\Queue.php(243): luya\\admin\\jobs\\ScheduleJob->execute(Object(yii\\queue\\db\\Queue))\n#10 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(147): yii\\queue\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 3)\n#11 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(79): yii\\queue\\cli\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 3)\n#12 [internal function]: yii\\queue\\db\\Queue->yii\\queue\\db\\{closure}(Object(Closure))\n#13 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\n#14 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(76): yii\\queue\\cli\\Queue->runWorker(Object(Closure))\n#15 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\Bootstrap.php(52): yii\\queue\\db\\Queue->run(false)\n#16 [internal function]: luya\\admin\\Bootstrap->luya\\admin\\{closure}(Object(luya\\admin\\Bootstrap))\n#17 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\traits\\CacheableTrait.php(110): call_user_func(Object(Closure), Object(luya\\admin\\Bootstrap))\n#18 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\Bootstrap.php(47): luya\\admin\\Bootstrap->getOrSetHasCache(Array, Object(Closure), 1800)\n#19 [internal function]: luya\\admin\\Bootstrap->runQueueJob(Object(yii\\base\\Event))\n#20 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\base\\Event))\n#21 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Application.php(381): yii\\base\\Component->trigger(\'beforeRequest\')\n#22 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(251): yii\\base\\Application->run()\n#23 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(195): luya\\base\\Boot->applicationWeb()\n#24 C:\\luya-kickstarter-bootstrap4\\public_html\\index.php(8): luya\\base\\Boot->run()\n#25 {main}', 'C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php', '199', 1702624408, 1702624408),
(5, 2, 'Undefined array key \"placeholder_var\"', '2', '#0 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php(199): yii\\base\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\luya-kicksta...\', 199)\n#1 [internal function]: luya\\cms\\models\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\db\\AfterSaveEvent))\n#2 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\db\\AfterSaveEvent))\n#3 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(1008): yii\\base\\Component->trigger(\'afterUpdate\', Object(yii\\db\\AfterSaveEvent))\n#4 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(808): yii\\db\\BaseActiveRecord->afterSave(false, Array)\n#5 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\ActiveRecord.php(680): yii\\db\\BaseActiveRecord->updateInternal(Array)\n#6 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(690): yii\\db\\ActiveRecord->update(true, Array)\n#7 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\models\\Scheduler.php(102): yii\\db\\BaseActiveRecord->save(true, Array)\n#8 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\jobs\\ScheduleJob.php(32): luya\\admin\\models\\Scheduler->triggerJob()\n#9 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\Queue.php(243): luya\\admin\\jobs\\ScheduleJob->execute(Object(yii\\queue\\db\\Queue))\n#10 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(147): yii\\queue\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 4)\n#11 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(79): yii\\queue\\cli\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 4)\n#12 [internal function]: yii\\queue\\db\\Queue->yii\\queue\\db\\{closure}(Object(Closure))\n#13 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\n#14 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(76): yii\\queue\\cli\\Queue->runWorker(Object(Closure))\n#15 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\Bootstrap.php(52): yii\\queue\\db\\Queue->run(false)\n#16 [internal function]: luya\\admin\\Bootstrap->luya\\admin\\{closure}(Object(luya\\admin\\Bootstrap))\n#17 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\traits\\CacheableTrait.php(110): call_user_func(Object(Closure), Object(luya\\admin\\Bootstrap))\n#18 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\Bootstrap.php(47): luya\\admin\\Bootstrap->getOrSetHasCache(Array, Object(Closure), 1800)\n#19 [internal function]: luya\\admin\\Bootstrap->runQueueJob(Object(yii\\base\\Event))\n#20 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\base\\Event))\n#21 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Application.php(381): yii\\base\\Component->trigger(\'beforeRequest\')\n#22 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(251): yii\\base\\Application->run()\n#23 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(195): luya\\base\\Boot->applicationWeb()\n#24 C:\\luya-kickstarter-bootstrap4\\public_html\\index.php(8): luya\\base\\Boot->run()\n#25 {main}', 'C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php', '199', 1702625919, 1702625919),
(6, 2, 'Undefined array key \"placeholder_var\"', '2', '#0 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php(199): yii\\base\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\luya-kicksta...\', 199)\n#1 [internal function]: luya\\cms\\models\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\db\\AfterSaveEvent))\n#2 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\db\\AfterSaveEvent))\n#3 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(1008): yii\\base\\Component->trigger(\'afterUpdate\', Object(yii\\db\\AfterSaveEvent))\n#4 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(808): yii\\db\\BaseActiveRecord->afterSave(false, Array)\n#5 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\ActiveRecord.php(680): yii\\db\\BaseActiveRecord->updateInternal(Array)\n#6 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(690): yii\\db\\ActiveRecord->update(true, Array)\n#7 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\models\\Scheduler.php(102): yii\\db\\BaseActiveRecord->save(true, Array)\n#8 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\jobs\\ScheduleJob.php(32): luya\\admin\\models\\Scheduler->triggerJob()\n#9 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\Queue.php(243): luya\\admin\\jobs\\ScheduleJob->execute(Object(yii\\queue\\db\\Queue))\n#10 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(147): yii\\queue\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 5)\n#11 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(79): yii\\queue\\cli\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 5)\n#12 [internal function]: yii\\queue\\db\\Queue->yii\\queue\\db\\{closure}(Object(Closure))\n#13 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\n#14 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(76): yii\\queue\\cli\\Queue->runWorker(Object(Closure))\n#15 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\Bootstrap.php(52): yii\\queue\\db\\Queue->run(false)\n#16 [internal function]: luya\\admin\\Bootstrap->luya\\admin\\{closure}(Object(luya\\admin\\Bootstrap))\n#17 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\traits\\CacheableTrait.php(110): call_user_func(Object(Closure), Object(luya\\admin\\Bootstrap))\n#18 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\Bootstrap.php(47): luya\\admin\\Bootstrap->getOrSetHasCache(Array, Object(Closure), 1800)\n#19 [internal function]: luya\\admin\\Bootstrap->runQueueJob(Object(yii\\base\\Event))\n#20 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\base\\Event))\n#21 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Application.php(381): yii\\base\\Component->trigger(\'beforeRequest\')\n#22 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(251): yii\\base\\Application->run()\n#23 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(195): luya\\base\\Boot->applicationWeb()\n#24 C:\\luya-kickstarter-bootstrap4\\public_html\\index.php(8): luya\\base\\Boot->run()\n#25 {main}', 'C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php', '199', 1702627430, 1702627430);

-- --------------------------------------------------------

--
-- Table structure for table `admin_scheduler`
--

CREATE TABLE `admin_scheduler` (
  `id` int(11) NOT NULL,
  `model_class` varchar(255) NOT NULL,
  `primary_key` varchar(255) NOT NULL,
  `target_attribute_name` varchar(255) NOT NULL,
  `new_attribute_value` varchar(255) NOT NULL,
  `old_attribute_value` varchar(255) DEFAULT NULL,
  `schedule_timestamp` int(11) NOT NULL,
  `is_done` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_scheduler`
--

INSERT INTO `admin_scheduler` (`id`, `model_class`, `primary_key`, `target_attribute_name`, `new_attribute_value`, `old_attribute_value`, `schedule_timestamp`, `is_done`) VALUES
(2, 'luya\\cms\\models\\NavItemPageBlockItem', '4', 'is_hidden', '0', NULL, 1702621332, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_search_data`
--

CREATE TABLE `admin_search_data` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp_create` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `num_rows` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_session`
--

CREATE TABLE `admin_session` (
  `id` char(64) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_storage_effect`
--

CREATE TABLE `admin_storage_effect` (
  `id` int(11) NOT NULL,
  `identifier` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `imagine_name` varchar(255) DEFAULT NULL,
  `imagine_json_params` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_storage_effect`
--

INSERT INTO `admin_storage_effect` (`id`, `identifier`, `name`, `imagine_name`, `imagine_json_params`) VALUES
(1, 'thumbnail', 'Thumbnail', 'thumbnail', '{\"vars\":[{\"var\":\"width\",\"label\":\"Breit in Pixel\"},{\"var\":\"height\",\"label\":\"Hoehe in Pixel\"},{\"var\":\"mode\",\"label\":\"outbound or inset\"},{\"var\":\"saveOptions\",\"label\":\"save options\"}]}'),
(2, 'crop', 'Crop', 'crop', '{\"vars\":[{\"var\":\"width\",\"label\":\"Breit in Pixel\"},{\"var\":\"height\",\"label\":\"Hoehe in Pixel\"},{\"var\":\"saveOptions\",\"label\":\"save options\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `admin_storage_file`
--

CREATE TABLE `admin_storage_file` (
  `id` int(11) NOT NULL,
  `is_hidden` tinyint(1) DEFAULT 0,
  `folder_id` int(11) DEFAULT 0,
  `name_original` varchar(255) DEFAULT NULL,
  `name_new` varchar(255) DEFAULT NULL,
  `name_new_compound` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `hash_file` varchar(255) DEFAULT NULL,
  `hash_name` varchar(255) DEFAULT NULL,
  `upload_timestamp` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT 0,
  `upload_user_id` int(11) DEFAULT 0,
  `is_deleted` tinyint(1) DEFAULT 0,
  `passthrough_file` tinyint(1) DEFAULT 0,
  `passthrough_file_password` varchar(40) DEFAULT NULL,
  `passthrough_file_stats` int(11) DEFAULT 0,
  `caption` text DEFAULT NULL,
  `inline_disposition` tinyint(1) DEFAULT 0,
  `update_timestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_storage_file`
--

INSERT INTO `admin_storage_file` (`id`, `is_hidden`, `folder_id`, `name_original`, `name_new`, `name_new_compound`, `mime_type`, `extension`, `hash_file`, `hash_name`, `upload_timestamp`, `file_size`, `upload_user_id`, `is_deleted`, `passthrough_file`, `passthrough_file_password`, `passthrough_file_stats`, `caption`, `inline_disposition`, `update_timestamp`) VALUES
(1, 0, 0, 'background.jpg', 'background', 'background_7479ffd7.jpg', 'image/jpeg', 'jpg', '1086924feaee626ef7f207457c629395', '7479ffd7', 1701456844, 466161, 1, 0, 0, NULL, 0, NULL, 0, 1701456844),
(2, 0, 0, 'wallpaper-header.jpg', 'wallpaper-header', 'wallpaper-header_e7b10580.jpg', 'image/jpeg', 'jpg', '7838efc76470a910c820883a9039783d', 'e7b10580', 1701457181, 235479, 1, 0, 0, NULL, 0, NULL, 0, 1701457181),
(3, 0, 0, 'service.jpg', 'service', 'service_f1d1a4a3.jpg', 'image/jpeg', 'jpg', 'b334b1d9f070a2b268b54a4f21115257', 'f1d1a4a3', 1701457266, 81689, 1, 0, 0, NULL, 0, NULL, 0, 1701457266),
(4, 0, 0, 'team-1.jpg', 'team-1', 'team-1_bb8f120f.jpg', 'image/jpeg', 'jpg', '6d9188afa2250b3186066fb28a2be23c', 'bb8f120f', 1701457348, 17144, 1, 0, 0, NULL, 0, NULL, 0, 1701457348),
(5, 0, 0, 'team-2.jpg', 'team-2', 'team-2_010f90e4.jpg', 'image/jpeg', 'jpg', '93d35053a4e35c26ce32682bdfd68b01', '010f90e4', 1701457361, 12969, 1, 0, 0, NULL, 0, NULL, 0, 1701457361),
(6, 0, 0, 'team-3.jpg', 'team-3', 'team-3_23b44480.jpg', 'image/jpeg', 'jpg', '30fcf193ba7939efa0d12c8843c22a0c', '23b44480', 1701457375, 27060, 1, 0, 0, NULL, 0, NULL, 0, 1701457375),
(7, 0, 0, 'hero.jpg', 'hero', 'hero_6609a51e.jpg', 'image/jpeg', 'jpg', '36c7d351382bff7ca147fe74f2c46079', '6609a51e', 1701457536, 145988, 1, 0, 0, NULL, 0, NULL, 0, 1701457536),
(8, 0, 0, 'main.jpeg', 'main', 'main_f02545c1.jpeg', 'image/jpeg', 'jpeg', 'c2261b0c1be04193f40115ccea34a823', 'f02545c1', 1701457670, 226645, 1, 0, 0, NULL, 0, NULL, 0, 1701457670),
(9, 0, 0, 'cake-3.jpg', 'cake-3', 'cake-3_6014e8ed.jpg', 'image/jpeg', 'jpg', 'b8888758fc435b042437b13df1b90062', '6014e8ed', 1701457714, 3756, 1, 0, 0, NULL, 0, NULL, 0, 1701457714),
(10, 0, 0, 'food.jpg', 'food', 'food_d15c4c2c.jpg', 'image/jpeg', 'jpg', 'e9f25f9e9daf2e355e7c44b5877c46ba', 'd15c4c2c', 1701457770, 1313772, 1, 0, 0, NULL, 0, NULL, 0, 1701457770),
(11, 0, 0, 'menu.jpg', 'menu', 'menu_b554dca6.jpg', 'image/jpeg', 'jpg', '668ae73d7b9ead7c0594c4fdc228088b', 'b554dca6', 1701457917, 75218, 1, 0, 0, NULL, 0, NULL, 0, 1701457917),
(12, 0, 0, 'cake-2.jpg', 'cake-2', 'cake-2_c1a4c1ec.jpg', 'image/jpeg', 'jpg', '49af060e60bab77851c6f456472b1d92', 'c1a4c1ec', 1701457970, 3239, 1, 0, 0, NULL, 0, NULL, 0, 1701457970),
(13, 0, 0, 'DSCN3070.JPG', 'dscn3070', 'dscn3070_47e227dc.jpg', 'image/jpeg', 'jpg', 'f30c70c09564f0ce3368c23cb0124023', '47e227dc', 1701484994, 2108333, 1, 0, 0, NULL, 0, NULL, 0, 1701484994),
(14, 0, 0, 'DSCN4124.JPG', 'dscn4124', 'dscn4124_46182e7d.jpg', 'image/jpeg', 'jpg', 'ed6683a02340a1bc779813b559e29f42', '46182e7d', 1701485042, 2090490, 1, 0, 0, NULL, 0, NULL, 0, 1701485042),
(15, 0, 0, 'DSCN4153.JPG', 'dscn4153', 'dscn4153_c5de8c38.jpg', 'image/jpeg', 'jpg', '292ada33b0d6ab60ea4d71242693f07c', 'c5de8c38', 1701485109, 2145613, 1, 0, 0, NULL, 0, NULL, 0, 1701485109),
(16, 0, 0, 'DSCN4155.JPG', 'dscn4155', 'dscn4155_e8ea4cce.jpg', 'image/jpeg', 'jpg', '25a9bc68814e0b79bf2ea1c1bc99d188', 'e8ea4cce', 1701485109, 2210101, 1, 0, 0, NULL, 0, NULL, 0, 1701485109),
(17, 0, 0, 'DSCN4157.JPG', 'dscn4157', 'dscn4157_35d45367.jpg', 'image/jpeg', 'jpg', '779fdb08fad63908e200e54d75777a3c', '35d45367', 1701485110, 2308614, 1, 0, 0, NULL, 0, NULL, 0, 1701485110),
(18, 0, 0, 'DSCN4158.JPG', 'dscn4158', 'dscn4158_1a876e32.jpg', 'image/jpeg', 'jpg', '7010c2b57610136ec685be79a97d7c8c', '1a876e32', 1701485110, 2126838, 1, 0, 0, NULL, 0, NULL, 0, 1701485110),
(19, 0, 0, 'DSCN4160.JPG', 'dscn4160', 'dscn4160_06be5247.jpg', 'image/jpeg', 'jpg', '00bdc599cd5483719fb3477b3eda470f', '06be5247', 1701485111, 2297791, 1, 0, 0, NULL, 0, NULL, 0, 1701485111),
(20, 0, 0, 'DSCN3068.JPG', 'dscn3068', 'dscn3068_fbae9c09.jpg', 'image/jpeg', 'jpg', '657133dccd3c13ff2feb1736554988ab', 'fbae9c09', 1701485302, 2042621, 1, 0, 0, NULL, 0, NULL, 0, 1701485302),
(21, 0, 0, 'DSCN3069.JPG', 'dscn3069', 'dscn3069_01058c7c.jpg', 'image/jpeg', 'jpg', 'e1057e26681522dff10760de22b5a2ad', '01058c7c', 1701485461, 2185481, 1, 0, 0, NULL, 0, NULL, 0, 1701485461),
(22, 0, 0, 'DSCN3068.JPG', 'dscn3068', 'dscn3068_47f4b343.jpg', 'image/jpeg', 'jpg', '657133dccd3c13ff2feb1736554988ab', '47f4b343', 1701486287, 2042621, 1, 0, 0, NULL, 0, NULL, 0, 1701486287),
(23, 0, 0, 'Copy of 969591_353205668136069_260131175_n.jpg', 'copy-of-969591-353205668136069-260131175-n', 'copy-of-969591-353205668136069-260131175-n_dbc481c5.jpg', 'image/jpeg', 'jpg', '74d65b06032b56214913ff84cea7af37', 'dbc481c5', 1701486513, 82565, 1, 0, 0, NULL, 0, NULL, 0, 1701486513),
(24, 0, 0, 'Copy (2) of 8649_359303160859653_1471872640_n.jpg', 'copy-2-of-8649-359303160859653-1471872640-n', 'copy-2-of-8649-359303160859653-1471872640-n_e0b31ae0.jpg', 'image/jpeg', 'jpg', '2163cbf388fbda54131c32581acda074', 'e0b31ae0', 1701486699, 28597, 1, 0, 0, NULL, 0, NULL, 0, 1701486699),
(25, 0, 0, 'Copy of 969930_380158885440747_788752854_n.jpg', 'copy-of-969930-380158885440747-788752854-n', 'copy-of-969930-380158885440747-788752854-n_eb02ff2f.jpg', 'image/jpeg', 'jpg', 'a56d320e84cc075ed6e9160acbf9097e', 'eb02ff2f', 1701525395, 30911, 1, 0, 0, NULL, 0, NULL, 0, 1701525395),
(26, 0, 0, 'cupcake (10).png', 'cupcake-10', 'cupcake-10_cecb3953.png', 'image/png', 'png', 'b947fe82bc713f8c891847f60382b966', 'cecb3953', 1701569002, 1112994, 1, 0, 0, NULL, 0, NULL, 0, 1701569002),
(27, 0, 0, '2.jpg', '2', '2_4e02b7a5.jpg', 'image/jpeg', 'jpg', 'eed6eeed1dc5bf1bc3cce28291fdc8f1', '4e02b7a5', 1701831152, 40055, 1, 0, 0, NULL, 0, NULL, 0, 1701831152),
(28, 0, 0, '1.jpg', '1', '1_3b75a1e0.jpg', 'image/jpeg', 'jpg', '214d048bd79d7861146a4446f22e255a', '3b75a1e0', 1701831227, 94066, 1, 0, 0, NULL, 0, NULL, 0, 1701831227),
(29, 0, 0, '3.jpg', '3', '3_d94b5339.jpg', 'image/jpeg', 'jpg', 'ad6196a35bfbb197858915ab02c9c7e0', 'd94b5339', 1701831395, 32544, 1, 0, 0, NULL, 0, NULL, 0, 1701831395),
(30, 0, 0, '0_biscuits-06_fdaf7dd3.jpg', '0-biscuits-06-fdaf7dd3', '0-biscuits-06-fdaf7dd3_deda9bfb.jpg', 'image/jpeg', 'jpg', '3b8c76249f156e7297d0dbd3f2977cb3', 'deda9bfb', 1702619674, 74954, 1, 0, 0, NULL, 0, NULL, 0, 1702619674),
(31, 0, 0, 'best-product-5.jpg', 'best-product-5', 'best-product-5_7a25d4cf.jpg', 'image/jpeg', 'jpg', '88f5965d0e7669242a96a2f7a7469fd6', '7a25d4cf', 1702887321, 30441, 1, 0, 0, NULL, 0, NULL, 0, 1702887321),
(32, 0, 0, '0-removebg-preview.png', '0-removebg-preview', '0-removebg-preview_5d8d21d7.png', 'image/png', 'png', '7365fafadd9264be4fec87a492a43801', '5d8d21d7', 1702966713, 345799, 1, 0, 0, NULL, 0, NULL, 0, 1702966713),
(33, 0, 0, 'bg.jpg', 'bg', 'bg_e4919bcd.jpg', 'image/jpeg', 'jpg', '79abc63662fb2386a854595e0bdce13b', 'e4919bcd', 1702977912, 168691, 1, 0, 0, NULL, 0, NULL, 0, 1702977912),
(34, 0, 0, '1.jpg', '1', '1_ec5c6a9b.jpg', 'image/jpeg', 'jpg', 'd91cccf188e339f3e49c61d8edaae396', 'ec5c6a9b', 1702978111, 42563, 1, 0, 0, NULL, 0, NULL, 0, 1702978111),
(35, 0, 0, 'cart-page-header-img.jpg', 'cart-page-header-img', 'cart-page-header-img_7f071c47.jpg', 'image/jpeg', 'jpg', 'd287b5c5c719b8b01946ca12b8b184aa', '7f071c47', 1702994417, 37306, 1, 0, 0, NULL, 0, NULL, 0, 1702994417),
(36, 0, 0, 'vegetable-item-1.jpg', 'vegetable-item-1', 'vegetable-item-1_4d60fefd.jpg', 'image/jpeg', 'jpg', 'b4f15ebc4566cc80de0dc18d0e81f401', '4d60fefd', 1703138131, 26589, 1, 0, 0, NULL, 0, NULL, 0, 1703138131),
(37, 0, 0, '7.jpg', '7', '7_129d6d4c.jpg', 'image/jpeg', 'jpg', '3bc23eae4b7fb648efa603872746738a', '129d6d4c', 1703152148, 68512, 1, 0, 0, NULL, 0, NULL, 0, 1703152148),
(38, 0, 0, '8.jpg', '8', '8_5c298e59.jpg', 'image/jpeg', 'jpg', 'cea08b4d231a255a77387dae96e5ed2d', '5c298e59', 1703178146, 43801, 1, 0, 0, NULL, 0, NULL, 0, 1703178146),
(39, 0, 0, '7.jpg', '7', '7_3c58e327.jpg', 'image/jpeg', 'jpg', 'da2322d2effb7fd070d69614fbf7bd8f', '3c58e327', 1703178195, 13890, 1, 0, 0, NULL, 0, NULL, 0, 1703178195),
(40, 0, 0, '15.jpg', '15', '15_ba8fdabd.jpg', 'image/jpeg', 'jpg', '1924e7d32514cc0962d5d710c78fac26', 'ba8fdabd', 1703178317, 106360, 1, 0, 0, NULL, 0, NULL, 0, 1703178317),
(41, 0, 0, '10.jpg', '10', '10_558b1df5.jpg', 'image/jpeg', 'jpg', '092a0fffdc4c47e0cae18fee86b559c2', '558b1df5', 1703178508, 32001, 1, 0, 0, NULL, 0, NULL, 0, 1703178508),
(42, 0, 0, '13.jpg', '13', '13_f3fa3cd4.jpg', 'image/jpeg', 'jpg', '7c9900af0b8e48480278bb0961c497a9', 'f3fa3cd4', 1703179401, 14297, 1, 0, 0, NULL, 0, NULL, 0, 1703179401),
(43, 0, 0, '5.jpg', '5', '5_5126c542.jpg', 'image/jpeg', 'jpg', '6890b52976e00b2d50c19c728dbee0df', '5126c542', 1703179638, 15756, 1, 0, 0, NULL, 0, NULL, 0, 1703179638),
(44, 0, 0, '3.jpg', '3', '3_fb06eed3.jpg', 'image/jpeg', 'jpg', 'ab722fc1763cfe0830e363a5308d1c82', 'fb06eed3', 1703267599, 32383, 1, 0, 0, NULL, 0, NULL, 0, 1703267599),
(45, 0, 0, 'android-chrome-192x192.png', 'android-chrome-192x192', 'android-chrome-192x192_205dd4d0.png', 'image/png', 'png', 'd1bdb41260636da0317299beca1318ba', '205dd4d0', 1703307150, 39617, 1, 0, 0, NULL, 0, NULL, 0, 1703307150),
(46, 0, 0, 'Bakery Logo.png', 'bakery-logo', 'bakery-logo_e8a18459.png', 'image/png', 'png', '62ee20e2509583bd1c782e91388a5e3b', 'e8a18459', 1703310721, 54159, 1, 0, 0, NULL, 0, NULL, 0, 1703310721);

-- --------------------------------------------------------

--
-- Table structure for table `admin_storage_filter`
--

CREATE TABLE `admin_storage_filter` (
  `id` int(11) NOT NULL,
  `identifier` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_storage_filter`
--

INSERT INTO `admin_storage_filter` (`id`, `identifier`, `name`) VALUES
(1, 'large-crop', 'Crop large (800x800)'),
(2, 'large-thumbnail', 'Thumbnail large (800xnull)'),
(3, 'medium-crop', 'Crop medium (300x300)'),
(4, 'medium-thumbnail', 'Thumbnail medium (300xnull)'),
(5, 'small-crop', 'Crop small (100x100)'),
(6, 'small-landscape', 'Landscape small (150x50)'),
(7, 'small-thumbnail', 'Thumbnail small (100xnull)'),
(8, 'tiny-crop', 'Crop tiny (40x40)'),
(9, 'tiny-thumbnail', 'Thumbnail tiny (40xnull)'),
(10, 'my-filter', 'my App Filter');

-- --------------------------------------------------------

--
-- Table structure for table `admin_storage_filter_chain`
--

CREATE TABLE `admin_storage_filter_chain` (
  `id` int(11) NOT NULL,
  `sort_index` int(11) DEFAULT NULL,
  `filter_id` int(11) DEFAULT NULL,
  `effect_id` int(11) DEFAULT NULL,
  `effect_json_values` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_storage_filter_chain`
--

INSERT INTO `admin_storage_filter_chain` (`id`, `sort_index`, `filter_id`, `effect_id`, `effect_json_values`) VALUES
(1, NULL, 1, 1, '{\"width\":800,\"height\":800}'),
(2, NULL, 2, 1, '{\"width\":800,\"height\":null}'),
(3, NULL, 3, 1, '{\"width\":300,\"height\":300}'),
(4, NULL, 4, 1, '{\"width\":300,\"height\":null}'),
(5, NULL, 5, 1, '{\"width\":100,\"height\":100}'),
(6, NULL, 6, 1, '{\"width\":150,\"height\":50}'),
(7, NULL, 7, 1, '{\"width\":100,\"height\":null}'),
(8, NULL, 8, 1, '{\"width\":40,\"height\":40}'),
(9, NULL, 9, 1, '{\"width\":40,\"height\":null}'),
(10, NULL, 10, 1, '{\"width\":100,\"height\":100}');

-- --------------------------------------------------------

--
-- Table structure for table `admin_storage_folder`
--

CREATE TABLE `admin_storage_folder` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `timestamp_create` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_storage_image`
--

CREATE TABLE `admin_storage_image` (
  `id` int(11) NOT NULL,
  `file_id` int(11) DEFAULT NULL,
  `filter_id` int(11) DEFAULT NULL,
  `resolution_width` int(11) DEFAULT NULL,
  `resolution_height` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_storage_image`
--

INSERT INTO `admin_storage_image` (`id`, `file_id`, `filter_id`, `resolution_width`, `resolution_height`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 40, 40, 1701456845, 1701456845),
(2, 1, 4, 300, 169, 1701456845, 1701456845),
(3, 1, 0, 1366, 768, 1701456848, 1701456848),
(4, 1, 1, 800, 768, 1701457143, 1701457143),
(5, 2, 8, 40, 40, 1701457182, 1701457182),
(6, 2, 4, 300, 188, 1701457182, 1701457182),
(7, 2, 1, 800, 800, 1701457183, 1701457183),
(8, 2, 0, 1280, 800, 1701457200, 1701457200),
(9, 3, 8, 40, 40, 1701457267, 1701457267),
(10, 3, 4, 300, 169, 1701457267, 1701457267),
(11, 3, 0, 1920, 1080, 1701457269, 1701457269),
(12, 4, 8, 40, 40, 1701457348, 1701457348),
(13, 4, 4, 300, 300, 1701457348, 1701457348),
(14, 4, 0, 500, 500, 1701457350, 1701457350),
(15, 5, 8, 40, 40, 1701457362, 1701457362),
(16, 5, 4, 300, 300, 1701457362, 1701457362),
(17, 5, 0, 500, 500, 1701457364, 1701457364),
(18, 6, 8, 40, 40, 1701457376, 1701457376),
(19, 6, 4, 300, 300, 1701457376, 1701457376),
(20, 6, 0, 500, 500, 1701457378, 1701457378),
(21, 7, 8, 40, 40, 1701457537, 1701457537),
(22, 7, 4, 300, 169, 1701457537, 1701457537),
(23, 7, 0, 1920, 1080, 1701457540, 1701457540),
(24, 7, 3, 300, 300, 1701457551, 1701457551),
(25, 8, 8, 40, 40, 1701457671, 1701457671),
(26, 8, 4, 300, 123, 1701457671, 1701457671),
(27, 8, 0, 1670, 680, 1701457675, 1701457675),
(28, 9, 8, 40, 40, 1701457714, 1701457714),
(29, 9, 4, 150, 85, 1701457714, 1701457714),
(30, 9, 0, 150, 85, 1701457721, 1701457721),
(31, 9, 3, 150, 85, 1701457730, 1701457730),
(32, 10, 8, 40, 40, 1701457771, 1701457771),
(33, 10, 4, 300, 201, 1701457771, 1701457771),
(34, 10, 3, 300, 300, 1701457773, 1701457773),
(35, 1, 3, 300, 300, 1701457889, 1701457889),
(36, 11, 8, 40, 40, 1701457918, 1701457918),
(37, 11, 4, 300, 215, 1701457918, 1701457918),
(38, 11, 0, 600, 430, 1701457922, 1701457922),
(39, 12, 8, 40, 40, 1701457970, 1701457970),
(40, 12, 4, 150, 85, 1701457970, 1701457970),
(41, 12, 0, 150, 85, 1701457973, 1701457973),
(42, 12, 3, 150, 85, 1701457978, 1701457978),
(43, 10, 0, 2500, 1667, 1701458445, 1701458445),
(44, 10, 1, 800, 800, 1701458452, 1701458452),
(45, 9, 1, 150, 85, 1701458499, 1701458499),
(46, 13, 8, 40, 40, 1701484995, 1701484995),
(47, 13, 4, 300, 225, 1701484996, 1701484996),
(48, 13, 1, 800, 800, 1701485012, 1701485012),
(49, 14, 8, 40, 40, 1701485043, 1701485043),
(50, 14, 4, 300, 225, 1701485043, 1701485043),
(51, 14, 0, 3648, 2736, 1701485052, 1701485052),
(52, 14, 1, 800, 800, 1701485062, 1701485062),
(53, 15, 8, 40, 40, 1701485111, 1701485111),
(54, 15, 4, 300, 225, 1701485112, 1701485112),
(55, 16, 8, 40, 40, 1701485112, 1701485112),
(56, 16, 4, 300, 225, 1701485112, 1701485112),
(57, 17, 8, 40, 40, 1701485113, 1701485113),
(58, 17, 4, 300, 225, 1701485113, 1701485113),
(59, 18, 8, 40, 40, 1701485114, 1701485114),
(60, 18, 4, 300, 225, 1701485114, 1701485114),
(61, 19, 8, 40, 40, 1701485114, 1701485114),
(62, 19, 4, 300, 225, 1701485115, 1701485115),
(63, 19, 0, 3648, 2736, 1701485134, 1701485134),
(64, 19, 3, 300, 300, 1701485135, 1701485135),
(65, 18, 0, 3648, 2736, 1701485136, 1701485136),
(66, 18, 3, 300, 300, 1701485137, 1701485137),
(67, 16, 0, 3648, 2736, 1701485137, 1701485137),
(68, 16, 3, 300, 300, 1701485138, 1701485138),
(69, 14, 3, 300, 300, 1701485139, 1701485139),
(70, 15, 0, 3648, 2736, 1701485140, 1701485140),
(71, 15, 3, 300, 300, 1701485141, 1701485141),
(72, 20, 8, 40, 40, 1701485303, 1701485303),
(73, 20, 4, 300, 225, 1701485303, 1701485303),
(74, 20, 0, 3648, 2736, 1701485323, 1701485323),
(75, 20, 1, 800, 800, 1701485331, 1701485331),
(76, 21, 8, 40, 40, 1701485461, 1701485461),
(77, 21, 4, 300, 225, 1701485462, 1701485462),
(78, 21, 0, 3648, 2736, 1701485467, 1701485467),
(79, 21, 1, 800, 800, 1701485472, 1701485472),
(80, 20, 3, 300, 300, 1701485906, 1701485906),
(81, 22, 8, 40, 40, 1701486287, 1701486287),
(82, 22, 4, 300, 225, 1701486288, 1701486288),
(83, 22, 1, 800, 800, 1701486297, 1701486297),
(84, 23, 8, 40, 40, 1701486514, 1701486514),
(85, 23, 4, 300, 438, 1701486514, 1701486514),
(86, 23, 1, 565, 800, 1701486531, 1701486531),
(87, 24, 8, 40, 40, 1701486699, 1701486699),
(88, 24, 4, 300, 400, 1701486699, 1701486699),
(89, 23, 3, 300, 300, 1701486701, 1701486701),
(90, 25, 8, 40, 40, 1701525396, 1701525396),
(91, 25, 4, 300, 201, 1701525396, 1701525396),
(92, 25, 3, 300, 300, 1701525400, 1701525400),
(93, 26, 8, 40, 40, 1701569003, 1701569003),
(94, 26, 4, 300, 300, 1701569003, 1701569003),
(95, 26, 0, 1000, 1000, 1701569007, 1701569007),
(96, 22, 3, 300, 300, 1701675544, 1701675544),
(97, 13, 3, 300, 300, 1701675585, 1701675585),
(98, 19, 1, 800, 800, 1701685001, 1701685001),
(99, 18, 1, 800, 800, 1701685002, 1701685002),
(100, 16, 1, 800, 800, 1701685002, 1701685002),
(101, 15, 1, 800, 800, 1701685003, 1701685003),
(102, 19, 2, 800, 600, 1701685090, 1701685090),
(103, 18, 2, 800, 600, 1701685090, 1701685090),
(104, 16, 2, 800, 600, 1701685091, 1701685091),
(105, 14, 2, 800, 600, 1701685091, 1701685091),
(106, 15, 2, 800, 600, 1701685092, 1701685092),
(107, 27, 8, 40, 40, 1701831152, 1701831152),
(108, 27, 4, 300, 300, 1701831152, 1701831152),
(109, 27, 0, 400, 400, 1701831156, 1701831156),
(110, 28, 8, 40, 40, 1701831228, 1701831228),
(111, 28, 4, 300, 169, 1701831228, 1701831228),
(112, 28, 0, 1280, 720, 1701831236, 1701831236),
(113, 28, 1, 800, 720, 1701831254, 1701831254),
(114, 29, 8, 40, 40, 1701831395, 1701831395),
(115, 29, 4, 300, 300, 1701831395, 1701831395),
(116, 24, 1, 360, 480, 1701831408, 1701831408),
(117, 24, 3, 300, 300, 1701831420, 1701831420),
(118, 28, 3, 300, 300, 1701831866, 1701831866),
(119, 27, 3, 300, 300, 1701831867, 1701831867),
(120, 24, 0, 360, 480, 1701831870, 1701831870),
(121, 27, 1, 400, 400, 1701831968, 1701831968),
(122, 13, 0, 3648, 2736, 1701832026, 1701832026),
(123, 22, 10, 100, 100, 1702353134, 1702353134),
(124, 23, 10, 100, 100, 1702353135, 1702353135),
(125, 14, 10, 100, 100, 1702409632, 1702409632),
(126, 24, 10, 100, 100, 1702409775, 1702409775),
(127, 29, 0, 720, 720, 1702530940, 1702530940),
(128, 25, 0, 500, 334, 1702531263, 1702531263),
(129, 30, 8, 40, 40, 1702619688, 1702619688),
(130, 30, 4, 300, 200, 1702619688, 1702619688),
(131, 30, 1, 800, 800, 1702619694, 1702619694),
(132, 30, 3, 300, 300, 1702619698, 1702619698),
(133, 31, 8, 40, 40, 1702887322, 1702887322),
(134, 31, 4, 300, 300, 1702887322, 1702887322),
(135, 31, 0, 500, 500, 1702887349, 1702887349),
(136, 26, 3, 300, 300, 1702888923, 1702888923),
(137, 31, 3, 300, 300, 1702966581, 1702966581),
(138, 32, 8, 40, 40, 1702966791, 1702966791),
(139, 32, 4, 300, 226, 1702966791, 1702966791),
(140, 33, 8, 40, 40, 1702977912, 1702977912),
(141, 33, 4, 300, 200, 1702977912, 1702977912),
(142, 33, 3, 300, 300, 1702977920, 1702977920),
(143, 33, 1, 800, 593, 1702977925, 1702977925),
(144, 34, 8, 40, 40, 1702978111, 1702978111),
(145, 34, 4, 300, 201, 1702978111, 1702978111),
(146, 34, 1, 800, 534, 1702978114, 1702978114),
(147, 34, 0, 800, 534, 1702978119, 1702978119),
(148, 35, 8, 40, 40, 1702994418, 1702994418),
(149, 35, 4, 300, 47, 1702994418, 1702994418),
(150, 35, 0, 1920, 300, 1702994423, 1702994423),
(151, 36, 8, 40, 40, 1703138145, 1703138145),
(152, 36, 4, 300, 240, 1703138145, 1703138145),
(153, 36, 0, 500, 400, 1703138151, 1703138151),
(154, 36, 3, 300, 300, 1703138160, 1703138160),
(155, 37, 8, 40, 40, 1703152148, 1703152148),
(156, 37, 4, 300, 300, 1703152148, 1703152148),
(157, 37, 0, 564, 564, 1703152151, 1703152151),
(158, 37, 3, 300, 300, 1703153799, 1703153799),
(159, 23, 7, 100, 146, 1703168286, 1703168286),
(160, 7, 7, 100, 57, 1703168286, 1703168286),
(161, 10, 7, 100, 67, 1703168287, 1703168287),
(162, 23, 5, 100, 100, 1703176969, 1703176969),
(163, 7, 5, 100, 100, 1703176969, 1703176969),
(164, 10, 5, 100, 100, 1703176969, 1703176969),
(165, 37, 1, 564, 564, 1703178093, 1703178093),
(166, 38, 8, 40, 40, 1703178146, 1703178146),
(167, 38, 4, 300, 225, 1703178146, 1703178146),
(168, 38, 3, 300, 300, 1703178152, 1703178152),
(169, 39, 8, 40, 40, 1703178195, 1703178195),
(170, 39, 4, 266, 190, 1703178195, 1703178195),
(171, 39, 3, 266, 190, 1703178197, 1703178197),
(172, 40, 8, 40, 40, 1703178317, 1703178317),
(173, 40, 4, 300, 189, 1703178317, 1703178317),
(174, 40, 0, 1000, 630, 1703178320, 1703178320),
(175, 40, 1, 800, 630, 1703178333, 1703178333),
(176, 40, 3, 300, 300, 1703178377, 1703178377),
(177, 41, 8, 40, 40, 1703178508, 1703178508),
(178, 41, 4, 300, 261, 1703178508, 1703178508),
(179, 41, 0, 473, 410, 1703178515, 1703178515),
(180, 41, 3, 300, 300, 1703178521, 1703178521),
(181, 42, 8, 40, 40, 1703179402, 1703179402),
(182, 42, 4, 259, 194, 1703179402, 1703179402),
(183, 42, 0, 259, 194, 1703179404, 1703179404),
(184, 42, 3, 259, 194, 1703179513, 1703179513),
(185, 43, 8, 40, 40, 1703179639, 1703179639),
(186, 43, 4, 281, 180, 1703179639, 1703179639),
(187, 43, 0, 281, 180, 1703179778, 1703179778),
(188, 43, 3, 281, 180, 1703179872, 1703179872),
(189, 44, 8, 40, 40, 1703267600, 1703267600),
(190, 44, 4, 300, 200, 1703267600, 1703267600),
(191, 30, 0, 1200, 800, 1703267605, 1703267605),
(192, 45, 8, 40, 40, 1703307151, 1703307151),
(193, 45, 4, 192, 192, 1703307151, 1703307151),
(194, 45, 0, 192, 192, 1703307158, 1703307158),
(195, 46, 8, 40, 40, 1703311910, 1703311910),
(196, 46, 4, 216, 245, 1703311910, 1703311910),
(197, 26, 5, 100, 100, 1703311936, 1703311936),
(198, 8, 3, 300, 300, 1703320440, 1703320440),
(199, 45, 3, 192, 192, 1703481239, 1703481239),
(200, 30, 10, 100, 100, 1703887012, 1703887012);

-- --------------------------------------------------------

--
-- Table structure for table `admin_tag`
--

CREATE TABLE `admin_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `translation` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_tag_relation`
--

CREATE TABLE `admin_tag_relation` (
  `tag_id` int(11) NOT NULL,
  `table_name` varchar(120) NOT NULL,
  `pk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `title` smallint(1) DEFAULT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_salt` varchar(255) DEFAULT NULL,
  `auth_token` varchar(190) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `secure_token` varchar(40) DEFAULT NULL,
  `secure_token_timestamp` int(11) DEFAULT 0,
  `force_reload` tinyint(1) DEFAULT 0,
  `settings` text DEFAULT NULL,
  `cookie_token` varchar(255) DEFAULT NULL,
  `is_api_user` tinyint(1) DEFAULT 0,
  `api_rate_limit` int(11) DEFAULT NULL,
  `api_allowed_ips` varchar(255) DEFAULT NULL,
  `api_last_activity` int(11) DEFAULT NULL,
  `email_verification_token` varchar(40) DEFAULT NULL,
  `email_verification_token_timestamp` int(11) DEFAULT NULL,
  `login_attempt` int(11) DEFAULT NULL,
  `login_attempt_lock_expiration` int(11) DEFAULT NULL,
  `is_request_logger_enabled` tinyint(1) DEFAULT 0,
  `login_2fa_enabled` tinyint(1) DEFAULT 0,
  `login_2fa_secret` varchar(255) DEFAULT NULL,
  `login_2fa_backup_key` varchar(255) DEFAULT NULL,
  `password_verification_token` varchar(40) DEFAULT NULL,
  `password_verification_token_timestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `firstname`, `lastname`, `title`, `email`, `password`, `password_salt`, `auth_token`, `is_deleted`, `secure_token`, `secure_token_timestamp`, `force_reload`, `settings`, `cookie_token`, `is_api_user`, `api_rate_limit`, `api_allowed_ips`, `api_last_activity`, `email_verification_token`, `email_verification_token_timestamp`, `login_attempt`, `login_attempt_lock_expiration`, `is_request_logger_enabled`, `login_2fa_enabled`, `login_2fa_secret`, `login_2fa_backup_key`, `password_verification_token`, `password_verification_token_timestamp`) VALUES
(1, 'purnachandra', 'valluri', 1, 'provdigi@gmail.com', '$2y$13$oLGNgAFtW2EdjN/uzyPQs.O43OH0LZGE9WDqFYCfePULir6RDhG/W', 'RbxHfWbDZCd0U_L-Hm99FzylRICq-2AD', '5b9b2590e493de51c38008c7747a157fbebb19caf13c2bbcb284c57711c251e9jTJiImjFvXCby3L6HRKYWDTXL4lbfkzD', 0, NULL, 0, 0, '{\"ngrestorder\":{\"admin/api-gallery-album\":{\"sort\":4,\"field\":\"sort_index\"},\"admin/api-catalog-featuregroupref\":{\"sort\":3,\"field\":\"group_id\"}},\"togglegroup\":{\"8\":1},\"blockfav\":{\"16\":{\"id\":16,\"name\":\"Post Block\",\"icon\":\"cake\",\"preview_enabled\":false,\"full_name\":\"<i class=\\\"material-icons\\\">cake</i> <span>Post Block</span>\",\"favorized\":false,\"newblock\":1}},\"tree\":{\"1\":0}}', NULL, 0, NULL, NULL, 1703887560, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_auth_notification`
--

CREATE TABLE `admin_user_auth_notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL,
  `is_muted` tinyint(1) DEFAULT 0,
  `model_latest_pk_value` varchar(255) DEFAULT NULL,
  `model_class` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_user_auth_notification`
--

INSERT INTO `admin_user_auth_notification` (`id`, `user_id`, `auth_id`, `is_muted`, `model_latest_pk_value`, `model_class`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 0, '[50]', 'luya\\cms\\models\\Block', 1701455568, 1703396287),
(2, 1, 27, 0, '[]', 'luya\\admin\\models\\Logger', 1701455632, 1701455632),
(3, 1, 26, 0, '[6]', 'luya\\admin\\models\\QueueLogError', 1701455636, 1702743680),
(4, 1, 28, 0, '[396]', 'luya\\admin\\models\\NgrestLog', 1701455639, 1702889396),
(5, 1, 31, 0, '[]', 'luya\\admin\\models\\StorageImage', 1701455654, 1701455654),
(6, 1, 35, 0, '[13]', 'siripravi\\catalog\\models\\Group', 1701456276, 1703179852),
(7, 1, 36, 0, '[30]', 'siripravi\\catalog\\models\\Product', 1701456279, 1701456279),
(8, 1, 37, 0, '[10]', 'siripravi\\catalog\\models\\Article', 1701456280, 1703267715),
(9, 1, 5, 0, '[1]', 'luya\\cms\\models\\Theme', 1701456867, 1701456867),
(10, 1, 46, 0, '[4]', 'luya\\gallery\\models\\Cat', 1701458423, 1701831160),
(11, 1, 45, 0, '[3]', 'luya\\gallery\\models\\Album', 1701458459, 1701831256),
(12, 1, 38, 0, '[6]', 'siripravi\\catalog\\models\\Related', 1701484913, 1701484913),
(13, 1, 7, 0, '[8]', 'luya\\cms\\models\\BlockGroup', 1701511238, 1702618714),
(14, 1, 20, 0, '[1]', 'luya\\admin\\models\\Group', 1701511253, 1701511253),
(15, 1, 47, 0, '[11]', 'app\\modules\\cart\\models\\Buyer', 1701511542, 1702618702),
(16, 1, 50, 0, '[3]', 'app\\modules\\cart\\models\\Delivery', 1701511593, 1701511593),
(17, 1, 51, 0, '[6]', 'app\\modules\\cart\\models\\Payment', 1701511597, 1701511597),
(18, 1, 48, 0, '[25]', 'app\\modules\\cart\\models\\Order', 1701511741, 1702530769),
(19, 1, 52, 0, '[10]', 'app\\modules\\cart\\models\\OrderProduct', 1701512932, 1702530790),
(20, 1, 44, 0, '[37]', 'siripravi\\catalog\\models\\Value', 1701529001, 1703267962),
(21, 1, 41, 0, '[3]', 'siripravi\\catalog\\models\\Currency', 1701529073, 1701529073),
(22, 1, 40, 0, '[5]', 'siripravi\\catalog\\models\\Unit', 1701529082, 1701529082),
(23, 1, 43, 0, '[10]', 'siripravi\\catalog\\models\\Feature', 1701529415, 1702793200),
(24, 1, 4, 0, '[11]', 'luya\\cms\\models\\Layout', 1701670979, 1703267460),
(25, 1, 3, 0, '[1]', 'luya\\cms\\models\\Website', 1701670982, 1701670982),
(26, 1, 53, 0, '[10]', 'siripravi\\catalog\\models\\FeatureGroupRef', 1701966701, 1702794069),
(27, 1, 39, 0, '[10]', 'siripravi\\catalog\\models\\ArticlePrice', 1702131070, 1703763627),
(28, 1, 42, 0, '[4]', 'siripravi\\catalog\\models\\Brand', 1702625473, 1702625473),
(29, 1, 6, 0, '[1]', 'luya\\cms\\models\\NavContainer', 1702734112, 1702734112),
(30, 1, 9, 0, '[]', 'luya\\cms\\models\\Redirect', 1702734135, 1702734135),
(31, 1, 55, 0, '[138]', 'luya\\forms\\models\\Submission', 1703306492, 1703865220),
(32, 1, 54, 0, '[3]', 'luya\\forms\\models\\Form', 1703306498, 1703831827);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_device`
--

CREATE TABLE `admin_user_device` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `auth_key` varchar(190) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `user_agent_checksum` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_user_device`
--

INSERT INTO `admin_user_device` (`id`, `user_id`, `auth_key`, `user_agent`, `user_agent_checksum`, `created_at`, `updated_at`) VALUES
(70, 1, '$2y$13$APwp/Uocp8hdz.WP/phxQeMvtHpaUR2wy2z30LXeUTAHNvBjZgtOm', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', '9a06b74d179be932b2c28a940b278ea1b3eeb1bc', 1703886257, 1703886257);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_group`
--

CREATE TABLE `admin_user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_user_group`
--

INSERT INTO `admin_user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_login`
--

CREATE TABLE `admin_user_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp_create` int(11) NOT NULL,
  `auth_token` varchar(120) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `is_destroyed` tinyint(1) DEFAULT 1,
  `user_agent` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_user_login`
--

INSERT INTO `admin_user_login` (`id`, `user_id`, `timestamp_create`, `auth_token`, `ip`, `is_destroyed`, `user_agent`) VALUES
(1, 1, 1701455551, '21e351594d17ef350273ab028f339f7e87db2dddb4bff895788772a1cf6ab5d6-pbsl4HSboP291D7m-_wqHUDp2Jhm3EV', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(2, 1, 1701484879, '90603f41d71eae0d7e44b4339dcbfaadbd6b159ef27617c1f7dc8723eda38daeladN0eeTHxCt23GrGm-h10rhKILVnx8Z', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(3, 1, 1701509847, 'a94dc4ef36f8b78dfc416cbf5682fd59f7a13b0ef18c544300b5c0b328117471OXdueu4v5wOoJaXOS9YXTJFwGCLgZ46t', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(4, 1, 1701521118, 'b3198a22dd210ee173747f580f91f8a05cd8122fdf19d5a5bc8f97291be3569dE3yJR9ZFpyXzvX1jTntqnXa1LbMRlgKV', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(5, 1, 1701525307, 'a0c3d03af58d2b9be1e4cf70ece0efcf21d21712664fef729c2316ef1c016ed595v6Mvqo7X6IH1Y8fGX1zlXpGbmspA_6', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(6, 1, 1701532221, 'dcb6836cea9beff79b7964366561e3b6f848ada5f6a3f40b0143f45783b3ae98gn7ispO9e4p3E1JvLaIXvPdddcx0ZPe1', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(7, 1, 1701568359, '6b539f01ae17ffc059b5a4ecf82be23198561d7ec602df6849d63f01e53faf81WEgf8-JJM6j5fZt7ofrTB-4KRb9xHrTg', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(8, 1, 1701664657, 'd95b88a69c5f1284abe9b191c86bfa6884ad1e610bcfa8bda1be23ff40361aad20qrS36hWZD2Mo1jZpHxLNcUlGQkpiII', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(9, 1, 1701670959, '5ff1f076a3c64a20cf39c339cf05e1e111df7ed230c181775f8de4441610c35cToXj-X9Jmix3IcqQWpE6S0DYMU4eliah', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(10, 1, 1701675320, '8da7bbd1913fe260d6a7a7a04dfb4e6bcfec55f0dd6e88f12361015448f023497b9iN8YLGLpQZaRlOH6C1hh5XMva2N0A', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(11, 1, 1701830947, 'a985e2d40e74b17e069fbc3f174ed1010d9f71d1e2d0053c204930f6e03c1e57Yw5arehmNOxOZfA9ztoAp2fLZGAeW4oC', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(12, 1, 1701851798, '3475ac834a2cee19902762a1e71fc4d3d3f804f567020e2d165093f4495bd6d8bp6uCQ9Zfp3nAZlA1tpS0Cldqhvlawyk', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(13, 1, 1701951584, 'b3fe19c67e3dca3586d778d4cd3154f8c5940646254ca186766d35637a4ff917tddhx2jgNHlxrGVBnNe_hDWDd8wbXYoV', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(14, 1, 1701963199, '10ebb393d38a577a78f8ea1f7d97cb1071ef0e363a9543cbc00e5afb60469b0753PYm4YsawAZWDih4hpoxLNN9AMQZwiu', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(15, 1, 1701968603, '20ac782d6d38899cac4cd19270d1917f293bd457bbda3b139d65177101eac192B772BCrVK2xy3ACFe5E9Cgxh874ZQ-46', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(16, 1, 1702004440, '6ba981b4890e66d631bdb363083c57de48d09c9ee18fe19c1f8a80c859e03560a0C0mlCdgMNgeBpyuR3HyXbHMh2FrxJg', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(17, 1, 1702026806, '67cda8ff9e43cf7ab53479944959de7662999e6858571e5b02c11e68ffca6688gAXh_k75kcvEFShk0rewU1mufGN1Ef26', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(18, 1, 1702093048, 'd253f4b1fc113b1fae86bc2b484cb83a8e84336b7f5fdb05b003a42ce0cb6fca2vg9FmBRg8vtNbycL9SA46tCeBkyqUru', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(19, 1, 1702121452, '86a9cfb4dd0bab503aafa691f3a3b1f199fb884b6820de6260ae1eaab59b211cxwoqGtf82Z5jhk9Cw9YLEIbtB3OQslWA', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(20, 1, 1702135991, '0a96f2199fd43addb0e90b8b5c803477dd1fe5503d935c2f2a250d342e3cdb53wbkQBzOClKJFSuDG9J-qPdzybEXps4vt', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(21, 1, 1702190420, 'cc9ce78bf918cbc8ed76dd2bd2893bf26168ab73191e5b1b5c61df08959342da6dgTa3D4z6hQwg7aFGYxm0DDqIon-D26', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(22, 1, 1702530752, '923685135be14ba60db596e2ea117ef119a5106d3aeb081a6722245e5366f44f3fNPwGzigg43sZLF8fPX499TtiH9SpIy', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(23, 1, 1702616075, 'be8ff7e1e9ab66b3e0188c3a48f1cc07bd25ae8e585b5875840b166095e107abD5v2CH7P7kbpXPtQgPeWXyJZ7WtcLLap', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(24, 1, 1702657340, 'e1b1c0d953b9365611bf26c00b013327d0afdee9117fcc396596454834b59476UWH95Vkb0Rqx9vkwq6Ne4khsg7Kl6-Sd', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(25, 1, 1702657939, '76bb292b263326bbba7f159a6b1a461725d61f9706f64de247924150bd8f96124m3ebfiAQoAMlGRr0k9_EKRXniZwl_e1', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(26, 1, 1702732149, 'aa7565ff7de9ecb7b23868fe8f5644dee71819c94a99342b5e0002220ab074e3UmzwJ8P3rjHpkWHydb4ymuUd-e7FJeCP', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(27, 1, 1702738274, 'ca18cb555f9d39948e12a133bc0f7dc2df51012eb90a67b6f39bfede76221554c0xSGPyqVkw42A527z4BaYlzvjnLO26e', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(28, 1, 1702743414, '6bd0796a3ff0a58f1b34e418c68c2961d5e8149cfe53bb01d84e3a390c4004dbN3rCGH8Pmy9nGIgMGFJ7YyMQ4D0a1x-_', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(29, 1, 1702792544, '876b1d21a715a4d89b2e94d82f298d003edda1bae3966ac8cdfedb2d85f6937fJbhsiBI0tPihb38_S2mpnmW14Lwb__jL', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(30, 1, 1702797510, '35f9da112d97bc8f1c12dea47005e123eac7f2836f52b4481707aa08b184e4f0llCUte06nUVv4I-0zG6cLyMTwgio8JTU', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(31, 1, 1702817226, '3e36e85566125ac6f859d03c9e5f2eda96b177ec6f2c51eedfdaf433366cee51MyGPfv0QI4KH2i7rTlZ-sXQWH3Y9kfcl', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(32, 1, 1702827970, 'fad590635e50f316b38777883e116519e0dd995a3bdb5e8b557879a2c63c3d1cB6aUtp4e_mIVUmKBdPBBV1fx6Yym-mrk', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(33, 1, 1702833151, 'b5b5aa094fea9d07a2b38b3a7ee191249781e8643d2ea958ba92ef0bb8620ad2rMFtKxoKfXV4AHS4iIG3oqNfF3rKPT4N', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(34, 1, 1702876380, 'cbbf27882a88d64a705fb4ecfd532174baef0924cf6c342b5d62a5bdcf5d6904UqWgntFZiba0dU54AqZL3LoTZ_ImLJ52', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(35, 1, 1702882212, '1dc0e21d4d0c2ea066df6014549a9a852386871656f8a35ad0b708d0d3a9d0f7LpO0SuqCnVORJ4S4165hW8dF-Ab3lfEU', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(36, 1, 1702883194, '23a1eacdf4f83d3331e767d4bdaf3e64e3480042a5b05c8bd95854c03a8d8d4ey3EHhBQEboFppPYbr5dy0S7BHCFy1PXd', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(37, 1, 1702886532, 'e2ec91b5f96d44245a032b68c92790a237bfdcfb079fd9be6d2c445058b13a60-0e1xFSJA_U0eKDh7PPhJx7_43n2XGbu', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(38, 1, 1702889954, '9096ad32e26be5246cf660fc2ebc007e9521cb861f36073b55df238b534da3d95STJUbF2KP99k6_4BzVXWY6pkOoNdw_1', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(39, 1, 1702893173, '9bc7d11987a0f2bdaf621b69ab3702e81587278b763e52987cadd953a4ec5c59cEiwIspcJ5ShJFbPTcOW6xikB62wGDpb', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(40, 1, 1702954696, '6eeb4d65bdad493e40b6eb82ab9c35613584681516037772d7c5f9e136488daed_PDx59kdsyePUuSKE4hQy2hg4V4F40t', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(41, 1, 1702958045, '0e28f98517733c1324ce151ddf0ad7975042e2334ad31b577805603fdc4820afxiQ9LtITk0tZW5KsRfYqjR8MfAzlPlOJ', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(42, 1, 1702960871, 'cf8f4afd0036f840f514283fbbaabfe112b55eae279b06a7527378e514ae7eda1I-oqsVpmuwYP90QudREXcR3cw7SLHEi', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(43, 1, 1702965065, '7533f0cb6429d50a89931ee010a8d1a8ede4c14e66353a7d0296685ab97a9beaPFeftiM0Ec1zv9qsV-FMmddOX-BRWqOd', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(44, 1, 1702975753, 'b194dd9fc34c403c96f83404089912d7f9f375138effacfe9fc14196c467e984biU2hHrFbrJhU7QJ_KtWCnO26etNgxNL', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(45, 1, 1702994010, '9ce6797352fedbc4daef80d577cbda0930c7ab105483cae221342f3b6f09b971s9rFs6pspIUZxArEXsOn3e0bWtPXsbJd', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(46, 1, 1703056659, '839274d59fb5502d1ffc7f740093e34be2c7265bd37985c015a768601d944500CmC8hupEw3PCyxHZMLAS3gzkWKwmNEgj', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(47, 1, 1703129718, 'f63132b85845dc47d87beddf4066065bc3aae44e917afd8168b1957a75268d0bmxbECoN5hQKG_kQfONLKBWktHm6of8Fw', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(48, 1, 1703132104, '7f7a48e6b711f5a11256e58a545213b6f55b10f44773493135363e140c618098LPdmR2uVKJAz1EugmQC0t_gTV8xZcpMl', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(49, 1, 1703135535, '254c81dd9196d03e396f52591db698b5ce43d5a4208fc7eef177eb909cab2948LpGxMw9RFnCCaeSoboADhg0lc2XSxZSr', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(50, 1, 1703151239, '080882059d20e3213e1ab968d27485f00f3028aaa1d369c4074df44649b71aa7EFSHysUgJD1XPtTozG_ZtrjSZ1LKIlHD', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(51, 1, 1703178057, 'aca284a68349e2a1af6b8845beb083e4f6159c72e7fe176dd19e7ce1e1daa3b2ds9_CA7SM6kJQJ2RiWyD0GQRQonaldc5', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(52, 1, 1703267439, '96a4b0f853cdfa995c46b28edb453e7813e55366789f2278df524ccf13828d661m7tI70xwzD7vj4JmIbNHJ3RlTts1mel', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(53, 1, 1703306472, '3067cb634cbf81e18a45fdd58896070f540ccad96696ddf2ce55eb4e4599bddfG4i1YOmbl2yd12hfBcuTgHF7TSnMaJaq', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(54, 1, 1703315046, '6c7baa7728473f4967bb69f3dafa5b189f2cc13f4dd985ef78fe66621573406bcGFwiIJpV1Ef6cI2Qbodumng8zB16fto', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(55, 1, 1703320037, 'ff1bf5a1117bdb59dddee1d0bded5503559a7790828f8799d76815613d60e4d3DRwUpsCTYBX0bCMge7DQWuULfYSeZ712', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(56, 1, 1703328863, 'f17832b96942c8674407adb87a3a60d8e27b86c0aa64a39b090b14622a8f33aet1Twp-K3GA6ljVU19EoFDa0o3vxh1ysX', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(57, 1, 1703331646, 'ac4daad99fef733a903668910488e4794d42e60e1b27e904f3be695f3d53fbebzDnNXvVNKkU14YxakpWb_ezkCySIfNdy', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(58, 1, 1703339710, '8862d26ad5969651dfcbbe2ffc6d847eb14dc7b19669f41e09bca0335c244407GeTj40KAnIEth5PqdVpPYiaZCt6PRCHD', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(59, 1, 1703387459, 'bc4e0141a531943dd40f6038720e100af0766531224a5004683a6759928d09dfleCIHIiQuRXqOKyFL-i0jz0bIBVHRHK0', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(60, 1, 1703390010, '5aaf84509e6a58db67c5fff51ec1f6e5491a840e92fa7d9544fd6782c9adb21fg0mFN_etd0b0TcZ892UDeE1TDNlJmp-_', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(61, 1, 1703395105, '1614fa66d1a47a042603a14dc95a0651f2c6a09764352bc0c6a52915f6eee1448R2W85KHRPxmzVKkl162W3DXbI4INwUU', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(62, 1, 1703480880, '1eba0d5f3a04f6a5e18ec86eebae7385bd95309f84f2eae1299c6001a76d0bd8sra7QT3tMm-y6PgKwA-kioUPol60ojqw', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(63, 1, 1703483699, '8f2677ccce58d55d2ccfb01e0dd0a5c1f08cb96a83122c9d23228247517d0a138lLPZwezWY7txb64jRSrjbzvSxwjJK8t', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(64, 1, 1703567741, '9edf32983d0d5bb8f36346c13c94acf34a773aaef3aeae43122b3d4de17b8544gjsrCF3IHPOraTPbtLWaNGgzwTNpPO78', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(65, 1, 1703573814, '4cec9f883b7b90cc7236d14f01ea7294cbdbfb89da109865bd54cdbde687c1b3miUGxlDhy2C0eVybWUtTz7Ftl1g31fYh', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(66, 1, 1703581949, '06ae2e09eb875419b9764b49808955b7a0154f9fc103116f886ad0a7ce17afb8vAWQfs4t4tIIZbv9TLKB_NEDQaHlj9YO', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(67, 1, 1703584187, '5da1b9d949139b956eaa21c17e51da38bc6f381a8871956e068451afc8eae88dk2ud3Q7x_OXPkd2yjQOUFF0p3vPZ1h4W', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(68, 1, 1703588703, '69b3aee68d23d50ab32f8abe97d91d5bedb0c2aeaa87ee318072c6fc9448c8d2C11q1zuVOjBRTEUIPYofTQ4xbqnGKKkm', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(69, 1, 1703596958, '2ea68f014fe6a40c4b6c4669d7deb0425c8d232467b289647d8e8ec6788d4fd8Q5LjzvfN9vzOIHb1O9wlUvLaAGjkzo8q', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(70, 1, 1703600074, '7d4ec8f0cb049573ce1ac83946b3a554fc71daa1e91c6c3ee7e17469806459c9E3eKm7I9taIBI817ByAInTy8RjqRt8QT', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(71, 1, 1703606320, 'c3dd935f22beaff6a3e2103ab12966e8e5cd9f7cdaa794076fe9ef7af214e973dIianVFPlGcmd13LCUZeBnJRer4yxicK', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(72, 1, 1703644141, '1c91f308cedc59bb617369cc697785bcf00a3ddbfa9f4cb55dbb685854f68d5fjcRaM5z1GPGebUhVmrmQmqLYhz-s30v_', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(73, 1, 1703647148, '1e1adc6f911db5e2aa528ba7e78ed78266d62d8b0d9a0ab67b19566d0920386fco-m0GQpwch18XKx0A7rcglwnEtZXqoV', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(74, 1, 1703662715, 'e9a6f4bda462f2fbe9157d5a9a23429ca4d30439f048f773d1b7b95755034aafhL4LLTU2XBgctSkx8gf2kw-TyE9ut1fT', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(75, 1, 1703670412, '9ac74f04efe6049595cf431a01c93724f0a61983b835dd5d2e13c93f940d3b73TQoWHXMiIGdA19JUmnUwanYFS-V0CuV9', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(76, 1, 1703674236, '84606475d8978f8d79aa1b7092ec0bfbfb065c6844162002a87f5f6618074752ZERQFZEd5dY8wTVt03p0DkM8wK4q4HCe', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(77, 1, 1703679973, 'ef17fad4f3af4d7f179b5b4fb312307d08a48cdb08d98e456099b43ff66094bfxNUFuSys16Uwm_cJBanUUSvhVdb1sFfQ', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(78, 1, 1703682659, '75def69a83aaea5cbeca42350c6757f057fec2997d1545a141c91a55d2d78218QSALlZ5vMYovGeu8V4xlGXbbwgtczG93', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(79, 1, 1703763597, 'fcdb84df87a5994d612efde7b332b77b15d87199c4ddcc8e3e38f7210abeb4d3-k-d16_Svkod2RGRUpGk65RCTI1EhzqE', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(80, 1, 1703768439, '7733b2bf02cfdfc84fe402a8e53e3362f7034e76f0da6d95d19546e7c9b28845-1sVvF1hImEUh4Kyq0nXqB-Y-v77uaGM', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(81, 1, 1703774296, '34ebe13d483c3080d1c6aca9862da8c99e0fe0d7ab18d09ecf4596fb2edcd9f7NTsbnNOG24gAqwWWYkkPLwzP_kjO_idP', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(82, 1, 1703821510, '7470393aaf180834a664fcaff53d03039e395dfaa6a8c78c95e95138ad9a5810MMttHIGgJUobASCx5h5PbQB7mjqtUMW0', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(83, 1, 1703831785, '7e2f72a07841f1c5b27cc9f13c9e0f5711a849371d69c6f21f1a06f98c5f3157zyElSnLSbLuBv7yufOnFlAAF4soy6vhR', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(84, 1, 1703837965, '926bf48f9a7d560e7f735192bb4eca1ad51679cdb0aca9171b9c93d3d3def4128b-udQgq8XcZNHSRQbrhm4PhXGkjjSSJ', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(85, 1, 1703849813, '44dcbcc90e435dc98460a002391fd03c69f2e2d26dbbbc8f52a0e3a2f5440adeJZQVcpGEGOkMWPRBh_7ttzFSl6epgZpC', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(86, 1, 1703863673, '6aa301f0771a45d477d1201d262c44f47e671f25bf1f219c4d31511bb761a489phqx2qRRsBgkUv-ClSI8YyxYOQkov29H', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(87, 1, 1703865693, '58d13d8bb43dd243c1111a6af35b1e58c55e88a9692b561b75dbcf4e55795f3eK17ERL0TEyLwqHK0GeWjBnqH9ypDix1O', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(88, 1, 1703869494, 'bfaffcc1a0e29c0b7a22cc31c725ae518b1f98626c3c9fa13a10f8d9cf515debf3ENgTGsX2saKWrTPmqtYI3LnxBFwCpC', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(89, 1, 1703874214, 'a9c4b4c7a9e86b4efe18f22448d3dc7792bcb030ae5566e6a7e55b7a89a6fc7cMAO1SxxnD4iDU8lgHPiIHV0HJiDtmHKJ', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(90, 1, 1703877665, '13bc6f2bb7aee34454593b688865a806aadcc6f17262dc10e558bf9a3a1ffd1bVPlR7w6CPe6VH_WJWUJIalYGSs38RYJq', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(91, 1, 1703880113, 'daa645d433c5b4801fe77e24f244c1ebafa0953526e8cf2575781aa58b96c1eflNcoYy3GuSD_O53lUovgZdKUb-G7A-1K', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(92, 1, 1703886256, '5b9b2590e493de51c38008c7747a157fbebb19caf13c2bbcb284c57711c251e9jTJiImjFvXCby3L6HRKYWDTXL4lbfkzD', '::1', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_login_lockout`
--

CREATE TABLE `admin_user_login_lockout` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `attempt_count` int(11) DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_online`
--

CREATE TABLE `admin_user_online` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_timestamp` int(11) NOT NULL,
  `invoken_route` varchar(120) NOT NULL,
  `lock_pk` varchar(255) DEFAULT NULL,
  `lock_table` varchar(255) DEFAULT NULL,
  `lock_translation` varchar(255) DEFAULT NULL,
  `lock_translation_args` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_user_online`
--

INSERT INTO `admin_user_online` (`id`, `user_id`, `last_timestamp`, `invoken_route`, `lock_pk`, `lock_table`, `lock_translation`, `lock_translation_args`) VALUES
(86, 1, 1703886328, 'unlock', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_request`
--

CREATE TABLE `admin_user_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `request_url` varchar(255) NOT NULL,
  `request_method` varchar(255) NOT NULL,
  `response_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `a_user`
--

CREATE TABLE `a_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `notify_about_comment_on_email` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a_user`
--

INSERT INTO `a_user` (`id`, `username`, `fullname`, `avatar`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `github`, `twitter`, `facebook`, `status`, `created_at`, `updated_at`, `notify_about_comment_on_email`) VALUES
(1, 'purnachandra', NULL, NULL, 'GQpu6cRQRVaUL9G58W4-eYfdpkCNKBHS', '$2y$13$7TCFMGPJIJjixJAo5lXeweiVgUdSN7Pf49Xo.0l8Chbw.3wV5fpOS', 'A-KX-etvNLaQ0NvMc_Lg_WLkevVsRBeD_1700125338', 'provdigi@gmail.com', NULL, NULL, NULL, 10, 1700125338, 1700125338, 0),
(2, 'pravinya', '', '2.jpg', 'Yx_Jm5u207zO-mwX1Uqj3iUXzkH1g1Zk', '$2y$13$c5IR6yvAz/QwUegcEWT9xeizt.M5JKJuzt4pm/./yiPLqa.MuEGse', 'uC1Jf8jBPFDqcLeCgyXTHZjkJ98jl_dX_1700327593', 'pravinya.valluri@gmail.com', NULL, NULL, NULL, 10, 1700327593, 1700328192, 0);

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `entity` tinyint(1) DEFAULT NULL,
  `delivery` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`id`, `name`, `phone`, `email`, `created_at`, `entity`, `delivery`) VALUES
(9, 'Purnachandra Rao V', '383838083318', 'provdigi@gmail.com', 1702294163, 0, NULL),
(10, 'Purnachandra Rao V', '389183318527', 'provdigi@gmail.com', 1702294419, 0, ''),
(11, 'Purnachandra Rao V', '380833185270', 'provdigi@gmail.com', 1702297795, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_article`
--

CREATE TABLE `catalog_article` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `product_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `price` decimal(9,2) DEFAULT NULL,
  `price_old` decimal(9,2) DEFAULT NULL,
  `currency_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `available` int(11) NOT NULL DEFAULT 1,
  `image_id` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `album_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog_article`
--

INSERT INTO `catalog_article` (`id`, `name`, `product_id`, `text`, `code`, `price`, `price_old`, `currency_id`, `unit_id`, `available`, `image_id`, `created_at`, `updated_at`, `position`, `enabled`, `album_id`) VALUES
(6, '{\"en\":\"Brown Choclolate Cake\"}', 28, 'Cakes are frequently described according to their physical form. Cakes may be small and intended for individual consumption. Larger cakes may be made to be sliced and served as part of a meal or social function. Common shapes include: Bundt cakesCake dressCake ballsCake popsConical, such as the …', '{\"en\":\"BROW0001\"}', 2425.00, 2640.00, 0, 0, 1, 83, 2147483647, 2147483647, 0, 1, 3),
(7, '{\"en\":\"Honey Chocolate Dip Cake\"}', 28, 'Honey cake has had a long and diverse evolution. From breadcrumbs mashed with honey came the sweet and spiced cake we know today. Whether you like it, love it, or will always pass on this Rosh Hashanah classic, its evolution exemplifies the culinary journey of Jewish Diaspora. This is more than a cake; it connects Jews to Torah, holidays and the sweetness of life.', '{\"en\":\"HONCHK0001\"}', NULL, NULL, 0, 0, 126, 116, 2147483647, 2147483647, 0, 1, 3),
(8, '{\"en\":\"Creamy Butter Cookies\"}', 29, 'Buttor Cream biscuites topped with chocolate drops', '{\"en\":\"BISC9034\"}', 0.00, 0.00, 0, 0, 1, 52, 2147483647, 2147483647, 0, 1, 1),
(9, '{\"en\":\"Vanilla Cake with Butter Cream\"}', 30, 'It’s notoriously hard to find a really good, classic cupcake recipe. Many promise game changing techniques, but all too often they fall short.\n\nSo why should you believe me when I say this is the last Vanilla Cupcake recipe you’ll ever use?', '{\"en\":\"VNL00234\"}', 875.00, 1020.00, 0, 0, 100, 86, 2147483647, 2147483647, 0, 1, 2),
(10, '{\"en\":\"Chocolate Chipped Cookies\"}', 29, 'Chocolate Chips Dipped Cookis', '{\"en\":\"CHK0001\"}', 365.00, 443.00, 0, 0, 120, 132, 2147483647, 2147483647, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_article_price`
--

CREATE TABLE `catalog_article_price` (
  `article_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `unit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catalog_article_price`
--

INSERT INTO `catalog_article_price` (`article_id`, `value_id`, `currency_id`, `qty`, `price`, `unit_id`) VALUES
(6, 31, 3, 1, 140, 4),
(6, 32, 3, 1, 647, 4),
(6, 33, 3, 1, 1425, 4),
(6, 34, 3, 1, 786, 4),
(7, 31, 3, 1, 251, 4),
(7, 33, 3, 1, 1452, 4),
(7, 34, 3, 1, 2453, 4),
(7, 36, 3, 1, 2354, 4),
(7, 32, 3, 20, 580, 4),
(8, 31, 3, 1, 421, 4),
(8, 32, 3, 1, 351, 4),
(8, 34, 3, 1, 254, 4),
(8, 35, 3, 1, 20, 4),
(8, 35, 3, 1, 750, 5),
(9, 31, 3, 1, 148, 4),
(9, 32, 3, 1, 140, 4),
(9, 33, 3, 1, 849, 4),
(9, 34, 3, 1, 1499, 4),
(9, 36, 3, 1, 1248, 4),
(10, 37, 3, 1, 1256, 4),
(10, 35, 3, 1, 1435, 5);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_article_value_ref`
--

CREATE TABLE `catalog_article_value_ref` (
  `article_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `catalog_article_value_ref`
--

INSERT INTO `catalog_article_value_ref` (`article_id`, `value_id`) VALUES
(6, 31),
(6, 32),
(6, 33),
(6, 34),
(7, 31),
(7, 32),
(7, 33),
(7, 34),
(7, 36),
(8, 31),
(8, 32),
(8, 34),
(8, 35),
(9, 31),
(9, 32),
(9, 33),
(9, 34),
(9, 36),
(10, 35),
(10, 37);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_brand`
--

CREATE TABLE `catalog_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog_brand`
--

INSERT INTO `catalog_brand` (`id`, `name`, `image_id`, `position`, `enabled`) VALUES
(3, 'Britannia', 38, 0, 1),
(4, 'Cookie', 41, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_currency`
--

CREATE TABLE `catalog_currency` (
  `id` int(11) NOT NULL,
  `code` varchar(3) NOT NULL,
  `rate` decimal(8,4) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `before` varchar(20) NOT NULL,
  `after` varchar(20) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog_currency`
--

INSERT INTO `catalog_currency` (`id`, `code`, `rate`, `position`, `name`, `before`, `after`, `enabled`) VALUES
(3, 'INR', 0.2500, 0, 'Indian Rupee', '₹', '/-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_delivery`
--

CREATE TABLE `catalog_delivery` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_feature`
--

CREATE TABLE `catalog_feature` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input` varchar(225) NOT NULL,
  `after` varchar(32) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `value_text` text NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `catalog_feature`
--

INSERT INTO `catalog_feature` (`id`, `name`, `input`, `after`, `type`, `value_text`, `position`, `enabled`) VALUES
(8, 'Size', 'zaa-select', '', 1, '', 1, 1),
(9, 'Version', 'zaa-select', '', 1, '', 2, 1),
(10, 'Message', 'zaa-textarea', '', 3, '', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_feature_filter`
--

CREATE TABLE `catalog_feature_filter` (
  `feature_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `catalog_feature_filter`
--

INSERT INTO `catalog_feature_filter` (`feature_id`, `group_id`) VALUES
(8, 7);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_feature_group_ref`
--

CREATE TABLE `catalog_feature_group_ref` (
  `feature_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `is_base` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `catalog_feature_group_ref`
--

INSERT INTO `catalog_feature_group_ref` (`feature_id`, `group_id`, `position`, `is_base`) VALUES
(8, 7, 0, 0),
(8, 8, 0, 0),
(8, 11, 0, 0),
(9, 7, 0, 0),
(9, 8, 0, 0),
(9, 9, 0, 0),
(9, 10, 0, 0),
(9, 11, 0, 0),
(9, 13, 0, 0),
(10, 7, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_group`
--

CREATE TABLE `catalog_group` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(225) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `cover_image_id` int(11) DEFAULT NULL,
  `images_list` text DEFAULT NULL,
  `teaser` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog_group`
--

INSERT INTO `catalog_group` (`id`, `parent_id`, `name`, `slug`, `cover_image_id`, `images_list`, `teaser`, `text`, `created_at`, `updated_at`, `main`, `position`, `enabled`) VALUES
(7, 0, 'Cakes', 'cakes', 165, NULL, 'delicious cakes', 'A cake is a type of flour confection that is usually baked and made from flour, sugar, eggs, fat, a liquid, and a leavening agent, such as baking soda or baking powder. Cakes can be simple or elaborate and share features with desserts such as pastries, meringues, custards, and pies. The most common ingredients include flour, sugar, eggs, fat (such as butter, oil, or margarine), a liquid, and a leavening agent, such as baking soda or baking powder. Common additional ingredients include dried, candied, or fresh fruit, nuts, cocoa, and...', 2147483647, 2147483647, 1, 1, 1),
(8, 0, 'Cookies', 'cookies', 168, NULL, 'crispy cookies', NULL, 2147483647, 2147483647, 1, 2, 1),
(9, NULL, 'Cupcakes', 'cupcakes', 171, NULL, 'Cupcakes', 'Cupcakes', 2147483647, 2147483647, 1, 3, 1),
(10, NULL, 'Bread', 'bread', 175, NULL, 'Hot Bread', 'bread', 2147483647, 2147483647, 1, 4, 1),
(11, NULL, 'Pasteries', 'pasteries', 179, NULL, 'pasteries', 'Pasteries', 2147483647, 2147483647, 1, 5, 1),
(12, NULL, 'Party Props', 'party-props', 183, NULL, 'Party Decoration Items', 'Party Decoration items', 2147483647, 2147483647, 1, 6, 1),
(13, NULL, 'Waffles', 'waffles', 187, NULL, 'Waffles', 'Waffles', 2147483647, 2147483647, 1, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_payment`
--

CREATE TABLE `catalog_payment` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product`
--

CREATE TABLE `catalog_product` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `cover_image_id` int(11) DEFAULT NULL,
  `images_list` text DEFAULT NULL,
  `teaser` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `price_from` int(11) NOT NULL DEFAULT 0,
  `view` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog_product`
--

INSERT INTO `catalog_product` (`id`, `name`, `slug`, `brand_id`, `cover_image_id`, `images_list`, `teaser`, `text`, `created_at`, `updated_at`, `price_from`, `view`, `position`, `enabled`) VALUES
(28, 'Chocolate Cake', 'chocolate-cake', NULL, 75, NULL, NULL, NULL, 2147483647, 2147483647, 1250, '1', 1, 1),
(29, 'Butter Cookies', 'butter-cookies', NULL, 92, NULL, NULL, NULL, 2147483647, 2147483647, 25, NULL, 0, 1),
(30, 'Vanilla Cake', 'vanilla-cake', 3, 38, NULL, NULL, NULL, 2147483647, 2147483647, 254, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_group_ref`
--

CREATE TABLE `catalog_product_group_ref` (
  `product_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog_product_group_ref`
--

INSERT INTO `catalog_product_group_ref` (`product_id`, `group_id`) VALUES
(28, 7),
(28, 8),
(29, 7),
(29, 8),
(30, 7);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_related_ref`
--

CREATE TABLE `catalog_product_related_ref` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog_product_related_ref`
--

INSERT INTO `catalog_product_related_ref` (`product_id`, `related_id`, `position`) VALUES
(28, 6, 0),
(29, 6, 0),
(30, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_status`
--

CREATE TABLE `catalog_product_status` (
  `product_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_related`
--

CREATE TABLE `catalog_related` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `catalog_related`
--

INSERT INTO `catalog_related` (`id`, `name`, `position`) VALUES
(6, 'Popular Cakes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_review`
--

CREATE TABLE `catalog_review` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `rating` smallint(6) NOT NULL,
  `created_at` int(11) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_set`
--

CREATE TABLE `catalog_set` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_unit`
--

CREATE TABLE `catalog_unit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(100) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog_unit`
--

INSERT INTO `catalog_unit` (`id`, `name`, `code`, `position`, `enabled`) VALUES
(4, 'Piece', 'PCS', 0, 1),
(5, 'Pack of 20', 'PKT', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_value`
--

CREATE TABLE `catalog_value` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `feature_id` int(11) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `catalog_value`
--

INSERT INTO `catalog_value` (`id`, `name`, `feature_id`, `position`) VALUES
(31, 'Eggless', 9, 2),
(32, 'With Egg', 9, 1),
(33, '6 inch', 8, 1),
(34, '12 inch', 8, 2),
(35, 'Pack', 8, 1),
(36, '6 inch 5 layer', 8, 3),
(37, '2 Kg', 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `cms_block`
--

CREATE TABLE `cms_block` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `class` varchar(255) NOT NULL,
  `is_disabled` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_block`
--

INSERT INTO `cms_block` (`id`, `group_id`, `class`, `is_disabled`) VALUES
(1, 1, '\\luya\\cms\\frontend\\blocks\\HtmlBlock', 0),
(2, 1, '\\luya\\cms\\frontend\\blocks\\MirrorLanguageBlock', 0),
(3, 1, '\\luya\\cms\\frontend\\blocks\\ModuleBlock', 0),
(4, 2, '\\siripravi\\catalog\\frontend\\blocks\\CategoryBlock', 0),
(5, 2, '\\siripravi\\catalog\\frontend\\blocks\\HeadTeaserBlock', 0),
(6, 2, '\\siripravi\\catalog\\frontend\\blocks\\RelatedGroupBlock', 0),
(7, 3, '\\luya\\gallery\\frontend\\blocks\\GalleryAlbum', 0),
(8, 4, '\\app\\blocks\\AboutBlock', 0),
(9, 4, '\\app\\blocks\\BannerBlock', 0),
(10, 4, '\\app\\blocks\\CarouselBlock', 0),
(11, 4, '\\app\\blocks\\ContactBlock', 0),
(12, 4, '\\app\\blocks\\FactsBlock', 0),
(13, 4, '\\app\\blocks\\FeatureBlock', 0),
(14, 4, '\\app\\blocks\\MenuBlock', 0),
(15, 4, '\\app\\blocks\\NavbarBlock', 0),
(16, 4, '\\app\\blocks\\PostBlock', 0),
(17, 4, '\\app\\blocks\\ReviewBlock', 0),
(18, 4, '\\app\\blocks\\SectionBlock', 0),
(19, 4, '\\app\\blocks\\ServicesBlock', 0),
(20, 4, '\\app\\blocks\\SiteAboutBlock', 0),
(21, 4, '\\app\\blocks\\TeamBlock', 0),
(22, 4, '\\app\\blocks\\TopbarBlock', 0),
(23, 2, '\\luya\\themes\\frontend\\blocks\\BannerBlock', 0),
(24, 2, '\\luya\\themes\\frontend\\blocks\\CarouselBlock', 0),
(25, 2, '\\luya\\themes\\frontend\\blocks\\FeatureBlock', 0),
(26, 2, '\\luya\\themes\\frontend\\blocks\\HeadTeaserBlock', 0),
(27, 2, '\\luya\\themes\\frontend\\blocks\\MenuBlock', 0),
(28, 2, '\\luya\\themes\\frontend\\blocks\\PostBlock', 0),
(29, 2, '\\luya\\themes\\frontend\\blocks\\SectionBlock', 0),
(30, 5, '\\luya\\bootstrap4\\blocks\\CarouselBlock', 0),
(31, 6, '\\luya\\bootstrap4\\blocks\\ImageBlock', 0),
(32, 3, '\\luya\\generic\\blocks\\FileListBlock', 0),
(33, 3, '\\luya\\generic\\blocks\\LineBlock', 0),
(34, 7, '\\luya\\generic\\blocks\\ListBlock', 0),
(35, 7, '\\luya\\generic\\blocks\\QuoteBlock', 0),
(36, 7, '\\luya\\generic\\blocks\\TextBlock', 0),
(37, 7, '\\luya\\generic\\blocks\\TitleBlock', 0),
(38, 7, '\\luya\\generic\\blocks\\WysiwygBlock', 0),
(39, 4, '\\dev7ch\\slick\\blocks\\SlickBlock', 0),
(40, 8, '\\luya\\forms\\blocks\\CheckboxesBlock', 0),
(41, 8, '\\luya\\forms\\blocks\\DatepickerBlock', 0),
(42, 8, '\\luya\\forms\\blocks\\FileBlock', 0),
(43, 8, '\\luya\\forms\\blocks\\FormBlock', 0),
(44, 8, '\\luya\\forms\\blocks\\SelectBlock', 0),
(45, 8, '\\luya\\forms\\blocks\\SummaryBlock', 0),
(46, 8, '\\luya\\forms\\blocks\\TextBlock', 0),
(47, 2, '\\siripravi\\catalog\\frontend\\blocks\\ArticleBlock', 0),
(48, 2, '\\app\\modules\\cart\\frontend\\blocks\\CartBlock', 0),
(49, 4, '\\app\\blocks\\HeroBlock', 0),
(50, 3, '\\siripravi\\catalog\\frontend\\blocks\\FeatureBlock', 0),
(51, 8, '\\siripravi\\catalog\\frontend\\blocks\\HiddenBlock', 0),
(52, 8, '\\siripravi\\catalog\\frontend\\blocks\\FormBlock', 0),
(53, 8, '\\siripravi\\catalog\\frontend\\blocks\\SummaryBlock', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_block_group`
--

CREATE TABLE `cms_block_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `identifier` varchar(120) NOT NULL,
  `created_timestamp` int(11) DEFAULT 0,
  `class` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_block_group`
--

INSERT INTO `cms_block_group` (`id`, `name`, `is_deleted`, `identifier`, `created_timestamp`, `class`) VALUES
(1, 'block_group_dev_elements', 0, 'development-group', 1701455421, '\\luya\\cms\\frontend\\blockgroups\\DevelopmentGroup'),
(2, 'Catalog Blocks', 0, 'theme-collection-group', 1701455421, '\\siripravi\\catalog\\frontend\\blockgroups\\BlockCollectionGroup'),
(3, 'block_group_basic_elements', 0, 'main-group', 1701455421, '\\luya\\cms\\frontend\\blockgroups\\MainGroup'),
(4, 'block_group_project_elements', 0, 'project-group', 1701455421, '\\luya\\cms\\frontend\\blockgroups\\ProjectGroup'),
(5, 'Bootstrap 4', 0, 'bootstrap4', 1701455421, '\\luya\\bootstrap4\\blockgroups\\BootstrapGroup'),
(6, 'block_group_media_group', 0, 'media-group', 1701455421, '\\luya\\cms\\frontend\\blockgroups\\MediaGroup'),
(7, 'block_group_text_elements', 0, 'text-group', 1701455421, '\\luya\\cms\\frontend\\blockgroups\\TextGroup'),
(8, 'Forms', 0, 'forms-group', 1702617151, '\\luya\\forms\\blockgroups\\FormGroup');

-- --------------------------------------------------------

--
-- Table structure for table `cms_config`
--

CREATE TABLE `cms_config` (
  `name` varchar(80) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_layout`
--

CREATE TABLE `cms_layout` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `json_config` text DEFAULT NULL,
  `view_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_layout`
--

INSERT INTO `cms_layout` (`id`, `name`, `json_config`, `view_file`) VALUES
(1, 'Main', '{\"placeholders\":[[{\"label\":\"Content\",\"var\":\"content\"}]]}', '@app/views/cmslayouts\\main.php'),
(3, 'Cake Baker - Detail', '{\"placeholders\":[[{\"label\":\"Banner\",\"var\":\"banner\"},{\"label\":\"Main\",\"var\":\"main\"},{\"label\":\"Related\",\"var\":\"related\"}]]}', '@app/themes/cakeBaker/views\\cmslayouts\\detail.php'),
(5, 'Cake Baker - Twocol', '{\"placeholders\":[[{\"label\":\"Top\",\"var\":\"top\"},{\"label\":\"Left\",\"var\":\"left\"},{\"label\":\"Right\",\"var\":\"right\"},{\"label\":\"Bottom\",\"var\":\"bottom\"}]]}', '@app/themes/cakeBaker/views\\cmslayouts\\twocol.php'),
(7, 'Cake Baker - Atheme', '{\"placeholders\":[[{\"label\":\"Header\",\"var\":\"header\"},{\"label\":\"Main\",\"var\":\"main\"},{\"label\":\"Highlights\",\"var\":\"highlights\"}]]}', '@app/themes/cakeBaker/views\\cmslayouts\\atheme.php'),
(9, 'Atwocol', '{\"placeholders\":[[{\"label\":\"Left\",\"var\":\"left\"},{\"label\":\"Right\",\"var\":\"right\"}]]}', '@app/views/cmslayouts\\atwocol.php'),
(10, 'Cake Baker - Atwocol2', '{\"placeholders\":[[{\"label\":\"Top\",\"var\":\"top\"},{\"label\":\"Left\",\"var\":\"left\"},{\"label\":\"Right\",\"var\":\"right\"},{\"label\":\"Bottom\",\"var\":\"bottom\"}]]}', '@app/themes/cakeBaker/views\\cmslayouts\\atwocol2.php'),
(11, 'Cake Baker - Shopcart', '{\"placeholders\":[[{\"cols\":12,\"var\":\"carttop\",\"label\":\"Shop Top\"}],[{\"cols\":8,\"var\":\"cartleft\",\"label\":\"Shop Left\"},{\"cols\":4,\"var\":\"cartright\",\"label\":\"Shop Right\"}],[{\"cols\":12,\"var\":\"cartbottom\",\"label\":\"Shop Bottom\"}]]}', '@app/themes/cakeBaker/views\\cmslayouts\\shopcart.php');

-- --------------------------------------------------------

--
-- Table structure for table `cms_log`
--

CREATE TABLE `cms_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT 0,
  `is_insertion` tinyint(1) DEFAULT 0,
  `is_update` tinyint(1) DEFAULT 0,
  `is_deletion` tinyint(1) DEFAULT 0,
  `timestamp` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `data_json` text DEFAULT NULL,
  `table_name` varchar(120) DEFAULT NULL,
  `row_id` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_nav`
--

CREATE TABLE `cms_nav` (
  `id` int(11) NOT NULL,
  `nav_container_id` int(11) NOT NULL,
  `parent_nav_id` int(11) NOT NULL DEFAULT 0,
  `sort_index` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `is_hidden` tinyint(1) DEFAULT 0,
  `is_home` tinyint(1) DEFAULT 0,
  `is_offline` tinyint(1) DEFAULT 0,
  `is_draft` tinyint(1) DEFAULT 0,
  `layout_file` varchar(255) DEFAULT NULL,
  `publish_from` int(11) DEFAULT NULL,
  `publish_till` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_nav`
--

INSERT INTO `cms_nav` (`id`, `nav_container_id`, `parent_nav_id`, `sort_index`, `is_deleted`, `is_hidden`, `is_home`, `is_offline`, `is_draft`, `layout_file`, `publish_from`, `publish_till`) VALUES
(1, 1, 0, 1, 0, 0, 1, 0, 0, NULL, NULL, NULL),
(2, 1, 0, 2, 0, 0, 0, 0, 0, '', NULL, NULL),
(3, 1, 0, 3, 0, 0, 0, 0, 0, '', NULL, NULL),
(4, 1, 0, 4, 1, 1, 0, 1, 0, NULL, NULL, NULL),
(5, 1, 0, 5, 1, 0, 0, 0, 0, 'twocol', NULL, NULL),
(6, 1, 0, 6, 1, 0, 0, 0, 0, NULL, NULL, NULL),
(7, 1, 0, 7, 1, 0, 0, 0, 0, 'twocol', NULL, NULL),
(8, 1, 1, 1, 0, 1, 0, 1, 0, NULL, NULL, NULL),
(9, 1, 0, 8, 1, 0, 0, 0, 0, NULL, NULL, NULL),
(10, 1, 0, 9, 1, 0, 0, 0, 0, NULL, NULL, NULL),
(11, 1, 0, 10, 1, 0, 0, 0, 0, NULL, NULL, NULL),
(12, 1, 0, 11, 1, 0, 0, 0, 0, 'twocol2', NULL, NULL),
(13, 1, 0, 12, 1, 0, 0, 0, 0, NULL, NULL, NULL),
(14, 1, 0, 13, 1, 0, 0, 0, 0, 'twocol', NULL, NULL),
(15, 1, 0, 14, 1, 0, 0, 0, 0, 'atheme', NULL, NULL),
(16, 1, 0, 15, 1, 0, 0, 0, 0, NULL, NULL, NULL),
(17, 1, 0, 16, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(18, 1, 0, 17, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(19, 1, 0, 18, 0, 0, 0, 0, 0, 'detail', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_nav_container`
--

CREATE TABLE `cms_nav_container` (
  `id` int(11) NOT NULL,
  `website_id` int(11) NOT NULL DEFAULT 1,
  `name` varchar(180) NOT NULL,
  `alias` varchar(180) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_nav_container`
--

INSERT INTO `cms_nav_container` (`id`, `website_id`, `name`, `alias`, `is_deleted`) VALUES
(1, 1, 'Default Container', 'default', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_nav_item`
--

CREATE TABLE `cms_nav_item` (
  `id` int(11) NOT NULL,
  `nav_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `nav_item_type` int(11) NOT NULL,
  `nav_item_type_id` int(11) NOT NULL,
  `create_user_id` int(11) NOT NULL,
  `update_user_id` int(11) NOT NULL,
  `timestamp_create` int(11) DEFAULT 0,
  `timestamp_update` int(11) DEFAULT 0,
  `title` varchar(180) NOT NULL,
  `alias` varchar(180) NOT NULL,
  `description` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `title_tag` varchar(255) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `is_url_strict_parsing_disabled` tinyint(1) DEFAULT 0,
  `is_cacheable` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_nav_item`
--

INSERT INTO `cms_nav_item` (`id`, `nav_id`, `lang_id`, `nav_item_type`, `nav_item_type_id`, `create_user_id`, `update_user_id`, `timestamp_create`, `timestamp_update`, `title`, `alias`, `description`, `keywords`, `title_tag`, `image_id`, `is_url_strict_parsing_disabled`, `is_cacheable`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1701455525, 1703138202, 'Homepage', 'homepage', NULL, NULL, NULL, NULL, 0, 0),
(2, 2, 1, 1, 2, 1, 1, 1701568768, 1703329418, 'Contact Us', 'contact-us', NULL, NULL, NULL, NULL, 0, 0),
(3, 3, 1, 2, 1, 1, 1, 1702738901, 1702743991, 'Product Detail', 'product-detail', '', '', '', NULL, 0, 0),
(4, 4, 1, 1, 3, 1, 1, 1702741138, 0, 'Contact Us', '2023-12-17-15-12-deleted-contact-us', NULL, NULL, NULL, NULL, 0, 0),
(5, 5, 1, 2, 2, 1, 1, 1702829778, 1702830045, 'Test', '2023-12-18-06-20-deleted-test', '', '', '', NULL, 0, 0),
(6, 6, 1, 1, 5, 1, 1, 1702877191, 1702882415, 'Test', '2023-12-18-09-05-deleted-test', NULL, NULL, NULL, NULL, 0, 0),
(7, 7, 1, 2, 3, 1, 1, 1702877385, 0, 'cake-detail', '2023-12-18-09-05-deleted-cake-detail', NULL, NULL, NULL, NULL, 0, 0),
(8, 8, 1, 1, 6, 1, 1, 1702886782, 0, 'product', 'product', NULL, NULL, NULL, NULL, 0, 0),
(9, 9, 1, 1, 7, 1, 1, 1702886837, 1702886860, 'product Info', '2023-12-18-09-12-deleted-product-info', NULL, NULL, NULL, NULL, 0, 0),
(10, 10, 1, 1, 8, 1, 1, 1702887147, 1702887596, 'product Info', '2023-12-18-09-22-deleted-product-info', NULL, NULL, NULL, NULL, 0, 0),
(11, 11, 1, 1, 9, 1, 1, 1702887760, 1702887971, 'product Info', '2023-12-18-09-27-deleted-product-info', NULL, NULL, NULL, NULL, 0, 0),
(12, 12, 1, 1, 10, 1, 1, 1702888071, 1702888927, 'product Info', '2023-12-18-11-04-deleted-product-info', NULL, NULL, NULL, NULL, 0, 0),
(13, 13, 1, 1, 11, 1, 1, 1702893982, 0, 'product Info', '2023-12-18-11-06-deleted-product-info', NULL, NULL, NULL, NULL, 0, 0),
(14, 14, 1, 1, 12, 1, 1, 1702894107, 1702962418, 'product Info', '2023-12-19-07-02-deleted-product-info', NULL, NULL, NULL, NULL, 0, 0),
(15, 15, 1, 1, 13, 1, 1, 1702965789, 1702965850, 'product Info', '2023-12-19-07-08-deleted-product-info', NULL, NULL, NULL, NULL, 0, 0),
(16, 16, 1, 1, 14, 1, 1, 1702966145, 1702966273, 'Test', '2023-12-19-07-15-deleted-test', NULL, NULL, NULL, NULL, 0, 0),
(17, 17, 1, 1, 15, 1, 1, 1702966547, 1703857602, 'product Info', 'product-info', NULL, NULL, NULL, NULL, 0, 0),
(18, 18, 1, 1, 16, 1, 1, 1702967948, 1702967983, 'Test', 'test', NULL, NULL, NULL, NULL, 0, 0),
(19, 19, 1, 1, 17, 1, 1, 1703133302, 1703880096, 'shopping cart', 'shopping-cart', NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_nav_item_module`
--

CREATE TABLE `cms_nav_item_module` (
  `id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `controller_name` varchar(255) DEFAULT NULL,
  `action_name` varchar(255) DEFAULT NULL,
  `action_params` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_nav_item_module`
--

INSERT INTO `cms_nav_item_module` (`id`, `module_name`, `controller_name`, `action_name`, `action_params`) VALUES
(1, 'catalog', 'default', 'detail', '{\"undefined\":\"id\"}'),
(2, 'catalog', 'default', 'detail', 'null'),
(3, 'catalog', 'default', 'detail', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `cms_nav_item_page`
--

CREATE TABLE `cms_nav_item_page` (
  `id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `nav_item_id` int(11) DEFAULT NULL,
  `timestamp_create` int(11) NOT NULL,
  `create_user_id` int(11) NOT NULL,
  `version_alias` varchar(250) DEFAULT NULL,
  `timestamp_update` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_nav_item_page`
--

INSERT INTO `cms_nav_item_page` (`id`, `layout_id`, `nav_item_id`, `timestamp_create`, `create_user_id`, `version_alias`, `timestamp_update`) VALUES
(1, 1, 1, 1701455525, 1, 'Initial', NULL),
(2, 5, 2, 1701568768, 1, 'Initial', 1701568768),
(3, 5, 4, 1702741138, 1, 'Initial', 1702741138),
(4, 4, 5, 1702829778, 1, 'Initial', 1702829778),
(5, 5, 6, 1702877191, 1, 'Initial', 1702877191),
(6, 5, 8, 1702886782, 1, 'Initial', 1702886782),
(7, 5, 9, 1702886837, 1, 'Initial', 1702886837),
(8, 5, 10, 1702887147, 1, 'Initial', 1702887147),
(9, 5, 11, 1702887760, 1, 'Initial', 1702887760),
(10, 5, 12, 1702888071, 1, 'Initial', 1702888071),
(11, 6, 13, 1702893982, 1, 'Initial', 1702893982),
(12, 5, 14, 1702894107, 1, 'Initial', 1702894107),
(13, 5, 15, 1702965789, 1, 'Initial', 1702965789),
(14, 7, 16, 1702966145, 1, 'Initial', 1702966145),
(15, 5, 17, 1702966547, 1, 'Initial', 1702966547),
(16, 7, 18, 1702967948, 1, 'Initial', 1702967948),
(17, 11, 19, 1703133302, 1, 'Initial', 1703133302);

-- --------------------------------------------------------

--
-- Table structure for table `cms_nav_item_page_block_item`
--

CREATE TABLE `cms_nav_item_page_block_item` (
  `id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `placeholder_var` varchar(80) NOT NULL,
  `nav_item_page_id` int(11) DEFAULT NULL,
  `prev_id` int(11) DEFAULT NULL,
  `json_config_values` text DEFAULT NULL,
  `json_config_cfg_values` text DEFAULT NULL,
  `is_dirty` tinyint(1) DEFAULT 0,
  `create_user_id` int(11) DEFAULT 0,
  `update_user_id` int(11) DEFAULT 0,
  `timestamp_create` int(11) DEFAULT 0,
  `timestamp_update` int(11) DEFAULT 0,
  `sort_index` int(11) DEFAULT 0,
  `is_hidden` tinyint(1) DEFAULT 0,
  `variation` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_nav_item_page_block_item`
--

INSERT INTO `cms_nav_item_page_block_item` (`id`, `block_id`, `placeholder_var`, `nav_item_page_id`, `prev_id`, `json_config_values`, `json_config_cfg_values`, `is_dirty`, `create_user_id`, `update_user_id`, `timestamp_create`, `timestamp_update`, `sort_index`, `is_hidden`, `variation`) VALUES
(2, 8, 'content', 1, 0, NULL, NULL, 0, 1, 0, 1701457074, 1701457074, 2, 0, '0'),
(4, 21, 'content', 1, 0, '{\"__e\":\"__o\"}', '{\"images\":{\"0\":{\"imageId\":14,\"caption\":\"\"},\"1\":{\"imageId\":17,\"caption\":\"\"},\"2\":{\"imageId\":20,\"caption\":\"\"}}}', 1, 1, 1, 1701457105, 1701457382, 4, 0, '0'),
(5, 4, 'content', 1, 0, NULL, NULL, 0, 1, 0, 1701457488, 1701457488, 1, 0, '0'),
(7, 11, 'left', 2, 0, NULL, NULL, 0, 1, 0, 1701568884, 1701568884, 0, 0, '0'),
(19, 3, 'left', 5, 0, '{\"moduleName\":\"catalog\"}', '{\"moduleController\":\"default\",\"strictRender\":0,\"moduleAction\":\"detail\",\"moduleActionArgs\":\"\"}', 1, 1, 1, 1702878151, 1702882415, 0, 0, '0'),
(20, 47, 'right', 5, 0, NULL, NULL, 0, 1, 0, 1702878708, 1702878708, 0, 0, '0'),
(21, 47, 'left', 7, 0, NULL, NULL, 0, 1, 0, 1702886854, 1702886854, 0, 0, '0'),
(22, 4, 'right', 7, 0, NULL, NULL, 0, 1, 0, 1702886860, 1702886860, 0, 0, '0'),
(23, 31, 'top', 8, 0, '{\"image\":135,\"align\":\"\",\"showCaption\":0}', '{\"__e\":\"__o\"}', 1, 1, 1, 1702887223, 1702887523, 0, 0, '0'),
(24, 47, 'left', 8, 0, NULL, NULL, 0, 1, 0, 1702887543, 1702887543, 1, 0, '0'),
(25, 47, 'left', 8, 0, NULL, NULL, 0, 1, 0, 1702887555, 1702887555, 0, 0, '0'),
(26, 47, 'right', 8, 0, NULL, NULL, 0, 1, 0, 1702887596, 1702887596, 0, 0, '0'),
(27, 31, 'top', 9, 0, '{\"image\":135,\"align\":\"center\",\"showCaption\":0}', '{\"__e\":\"__o\"}', 1, 1, 1, 1702887775, 1702887789, 0, 0, '0'),
(29, 47, 'left', 9, 0, NULL, NULL, 0, 1, 0, 1702887947, 1702887947, 0, 0, '0'),
(30, 6, 'bottom', 9, 0, NULL, NULL, 0, 1, 0, 1702887971, 1702887971, 0, 0, '0'),
(31, 31, 'top', 10, 0, '{\"image\":135,\"align\":\"center\",\"showCaption\":0}', '{\"__e\":\"__o\"}', 1, 1, 1, 1702888081, 1702888095, 0, 0, '0'),
(32, 47, 'left', 10, 0, NULL, NULL, 0, 1, 0, 1702888103, 1702888103, 0, 0, '0'),
(33, 4, 'bottom', 10, 0, NULL, NULL, 0, 1, 0, 1702888113, 1702888113, 0, 0, '0'),
(34, 31, 'right', 10, 0, '{\"image\":136,\"align\":\"\",\"showCaption\":0}', '{\"__e\":\"__o\"}', 1, 1, 1, 1702888893, 1702888927, 0, 0, '0'),
(36, 47, 'left', 12, 0, NULL, NULL, 0, 1, 0, 1702954745, 1702954745, 0, 0, '0'),
(39, 12, 'bottom', 12, 0, NULL, NULL, 1, 1, 1, 1702955205, 1702955222, 0, 0, '0'),
(40, 31, 'top', 12, 0, '{\"image\":3,\"align\":\"center\",\"showCaption\":0}', '{\"__e\":\"__o\"}', 1, 1, 1, 1702962364, 1702962418, 0, 0, '0'),
(41, 31, 'top', 13, 0, '{\"image\":3,\"align\":\"center\",\"showCaption\":0}', '{\"__e\":\"__o\"}', 1, 1, 1, 1702965808, 1702965824, 0, 0, '0'),
(42, 47, 'left', 13, 0, NULL, NULL, 0, 1, 0, 1702965850, 1702965850, 0, 0, '0'),
(44, 31, 'header', 14, 0, '{\"image\":3,\"align\":\"\",\"showCaption\":0}', '{\"__e\":\"__o\"}', 1, 1, 1, 1702966260, 1702966273, 0, 0, '0'),
(51, 47, 'main', 16, 0, NULL, NULL, 0, 1, 0, 1702967967, 1702967967, 0, 0, '0'),
(52, 4, 'highlights', 16, 0, NULL, NULL, 0, 1, 0, 1702967983, 1702967983, 0, 0, '0'),
(53, 31, 'top', 2, 0, '{\"image\":194,\"align\":\"\",\"showCaption\":0}', '{\"__e\":\"__o\"}', 1, 1, 1, 1702968597, 1703307162, 0, 0, '0'),
(54, 6, 'bottom', 15, 0, NULL, NULL, 0, 1, 0, 1702979189, 1702979189, 0, 0, '0'),
(55, 31, 'top', 15, 0, '{\"image\":27,\"align\":\"center\",\"showCaption\":0}', '{\"__e\":\"__o\"}', 1, 1, 1, 1702994376, 1703320604, 0, 0, '0'),
(58, 49, 'content', 1, 0, NULL, NULL, 0, 1, 0, 1703136417, 1703136417, 0, 0, '0'),
(60, 17, 'content', 1, 0, '{\"foobar\":{\"0\":{\"value\":3},\"1\":{\"value\":4}}}', '{\"images\":{\"0\":{\"imageId\":154,\"caption\":\"It is a sequence of Latin words that, as they are positioned, do not form sentences with a complete sense, but give life to a test text useful to fill spaces that will subsequently be occupied from ad hoc texts composed by communication professionals.\"}},\"client_name\":\"chandra\",\"profession\":\"software engineer\",\"review\":\"Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\"}', 1, 1, 1, 1703137000, 1703138202, 3, 0, '0'),
(61, 43, 'right', 2, 0, '{\"confirmStep\":1,\"formId\":1}', '{\"__e\":\"__o\"}', 1, 1, 1, 1703306561, 1703307754, 0, 0, '0'),
(62, 46, 'content', 2, 61, '{\"isRequired\":1,\"rule\":\"number\",\"formatAs\":\"\",\"isTextarea\":1,\"attribute\":\"Quantity\",\"label\":\"Quantity\",\"hint\":\"Order Quantitiy\"}', '{\"__e\":\"__o\"}', 1, 1, 1, 1703306569, 1703308176, 1, 0, '0'),
(63, 41, 'content', 2, 61, '{\"isRequired\":0,\"formatAs\":\"\",\"attribute\":\"delivery\",\"label\":\"Delivery Date\",\"hint\":\"date and time of delivery\"}', '{\"__e\":\"__o\"}', 1, 1, 1, 1703307737, 1703307817, 0, 0, '0'),
(64, 45, 'content', 2, 61, '{\"__e\":\"__o\"}', '{\"__e\":\"__o\"}', 1, 1, 1, 1703309545, 1703309556, 4, 0, '0'),
(65, 44, 'content', 2, 61, '{\"values\":{\"0\":{\"value\":1},\"1\":{\"value\":2},\"2\":{\"value\":3}},\"type\":1,\"isRequired\":0,\"rule\":\"safe\",\"formatAs\":\"\",\"attribute\":\"Weight\",\"label\":\"Weight\"}', '{\"__e\":\"__o\"}', 1, 1, 1, 1703309651, 1703309774, 2, 0, '0'),
(68, 31, 'cartright', 17, 0, '{\"image\":197,\"align\":\"\",\"showCaption\":0}', '{\"__e\":\"__o\"}', 1, 1, 1, 1703310665, 1703311999, 0, 0, '0'),
(69, 44, 'content', 2, 61, '{\"values\":{\"0\":{\"value\":\"L\"},\"1\":{\"value\":\"XL\"},\"2\":{\"value\":\"S\"},\"3\":{\"value\":\"XS\"}},\"type\":2,\"isRequired\":0,\"rule\":\"string\",\"formatAs\":\"\",\"attribute\":\"Size\",\"label\":\"Size\"}', '{\"__e\":\"__o\"}', 1, 1, 1, 1703329333, 1703329418, 3, 0, '0'),
(85, 47, 'left', 15, 0, NULL, NULL, 1, 1, 1, 1703582371, 1703584305, 0, 0, '0'),
(91, 46, 'content', 15, 104, '{\"isRequired\":0,\"rule\":\"string\",\"formatAs\":\"\",\"isTextarea\":1,\"attribute\":\"Message\",\"label\":\"Message On Cake\"}', '{\"__e\":\"__o\"}', 1, 1, 1, 1703583586, 1703670466, 1, 0, '0'),
(94, 41, 'content', 15, 104, '{\"isRequired\":1,\"formatAs\":\"datetime\",\"attribute\":\"Delivery\",\"label\":\"Delivery Date\"}', '{\"__e\":\"__o\"}', 1, 1, 1, 1703584031, 1703682683, 3, 0, '0'),
(97, 50, 'content', 15, 104, '{\"isRequired\":0,\"rule\":\"safe\",\"formatAs\":\"\",\"attribute\":\"Features\",\"label\":\"features\"}', '{\"__e\":\"__o\"}', 1, 1, 1, 1703589111, 1703670725, 0, 0, '0'),
(98, 46, 'content', 15, 104, '{\"isRequired\":0,\"rule\":\"string\",\"formatAs\":\"\",\"isTextarea\":1,\"attribute\":\"FeatureText\",\"label\":\"FeatureText\"}', '{\"hiddenInputValue\":\"\\\"\\\"\"}', 1, 1, 1, 1703589415, 1703670473, 2, 0, '0'),
(99, 46, 'content', 15, 104, '{\"isRequired\":0,\"rule\":\"safe\",\"formatAs\":\"\",\"isTextarea\":0,\"attribute\":\"Price\",\"label\":\"Price\"}', '{\"hiddenInputValue\":1}', 1, 1, 1, 1703589464, 1703670477, 4, 0, '0'),
(103, 46, 'content', 15, 104, '{\"isRequired\":0,\"rule\":\"number\",\"formatAs\":\"\",\"isTextarea\":0,\"attribute\":\"Pid\",\"label\":\"Product\"}', '{\"hiddenInputValue\":6}', 1, 1, 1, 1703652649, 1703670485, 5, 0, '0'),
(104, 52, 'pright', 15, 85, '{\"confirmStep\":1,\"formId\":2}', '{\"doNotSaveData\":0}', 1, 1, 1, 1703670460, 1703857602, 0, 0, '0'),
(106, 53, 'preview', 15, 104, NULL, NULL, 0, 1, 0, 1703684126, 1703684126, 0, 0, '0'),
(107, 43, 'cartright', 17, 0, '{\"confirmStep\":1,\"formId\":3}', '{\"doNotSaveData\":1}', 1, 1, 1, 1703841002, 1703880096, 1, 0, '0'),
(109, 46, 'content', 17, 107, '{\"isRequired\":0,\"rule\":\"string\",\"formatAs\":\"\",\"isTextarea\":0,\"attribute\":\"Name\",\"label\":\"Recipient Name\"}', '{\"__e\":\"__o\"}', 1, 1, 1, 1703841068, 1703850816, 1, 0, '0'),
(110, 46, 'content', 17, 107, '{\"isRequired\":0,\"rule\":\"number\",\"formatAs\":\"\",\"isTextarea\":0,\"attribute\":\"Id\",\"label\":\"Address Id\"}', '{\"hiddenInputValue\":1}', 1, 1, 1, 1703841095, 1703850689, 0, 0, '0'),
(111, 46, 'content', 17, 107, '{\"isRequired\":0,\"rule\":\"string\",\"formatAs\":\"\",\"isTextarea\":0,\"attribute\":\"Landmark\",\"label\":\"Landmark\"}', '{\"__e\":\"__o\"}', 1, 1, 1, 1703850835, 1703850904, 3, 0, '0'),
(112, 46, 'content', 17, 107, '{\"isRequired\":1,\"rule\":\"number\",\"formatAs\":\"\",\"isTextarea\":0,\"attribute\":\"Pincode\",\"label\":\"PIN Code\"}', '{\"__e\":\"__o\"}', 1, 1, 1, 1703850911, 1703877743, 4, 0, '0'),
(113, 46, 'content', 17, 107, '{\"isRequired\":0,\"rule\":\"number\",\"formatAs\":\"\",\"isTextarea\":0,\"attribute\":\"Mobile1\",\"label\":\"Phone Number\"}', '{\"__e\":\"__o\"}', 1, 1, 1, 1703851004, 1703877730, 5, 0, '0'),
(114, 46, 'content', 17, 107, '{\"isRequired\":0,\"rule\":\"number\",\"formatAs\":\"\",\"isTextarea\":0,\"attribute\":\"Mobile2\",\"label\":\"Phone Number (Alternative)\"}', '{\"__e\":\"__o\"}', 1, 1, 1, 1703851054, 1703877706, 6, 0, '0'),
(116, 46, 'content', 17, 107, '{\"isRequired\":0,\"rule\":\"string\",\"formatAs\":\"\",\"isTextarea\":1,\"attribute\":\"Address\",\"label\":\"Recipient Address\"}', '{\"__e\":\"__o\"}', 1, 1, 1, 1703851130, 1703851160, 2, 0, '0'),
(117, 48, 'cartleft', 17, 0, NULL, NULL, 0, 1, 0, 1703865751, 1703865751, 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `cms_nav_item_redirect`
--

CREATE TABLE `cms_nav_item_redirect` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `target` varchar(255) DEFAULT NULL,
  `anchor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_nav_permission`
--

CREATE TABLE `cms_nav_permission` (
  `group_id` int(11) NOT NULL,
  `nav_id` int(11) NOT NULL,
  `inheritance` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_nav_property`
--

CREATE TABLE `cms_nav_property` (
  `id` int(11) NOT NULL,
  `nav_id` int(11) NOT NULL,
  `admin_prop_id` int(11) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_nav_property`
--

INSERT INTO `cms_nav_property` (`id`, `nav_id`, `admin_prop_id`, `value`) VALUES
(1, 2, 1, '0'),
(2, 2, 2, '#282024'),
(3, 2, 3, '#282028'),
(4, 17, 1, '174'),
(5, 17, 2, 'false'),
(6, 17, 3, 'false'),
(7, 19, 1, '0'),
(8, 19, 2, 'false'),
(9, 19, 3, 'false'),
(10, 19, 6, 'siripravi\\catalog\\AddressModel'),
(11, 17, 6, 'siripravi\\catalog\\FeatureModel');

-- --------------------------------------------------------

--
-- Table structure for table `cms_redirect`
--

CREATE TABLE `cms_redirect` (
  `id` int(11) NOT NULL,
  `timestamp_create` int(11) DEFAULT NULL,
  `catch_path` varchar(255) NOT NULL,
  `redirect_path` varchar(255) NOT NULL,
  `redirect_status_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme`
--

CREATE TABLE `cms_theme` (
  `id` int(11) NOT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `base_path` varchar(191) NOT NULL,
  `json_config` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_theme`
--

INSERT INTO `cms_theme` (`id`, `is_default`, `base_path`, `json_config`) VALUES
(1, 1, '@app/themes/cakeBaker', '{\"name\":\"cakeBaker\",\"parentTheme\":null,\"pathMap\":[],\"description\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `cms_website`
--

CREATE TABLE `cms_website` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `host` varchar(191) NOT NULL,
  `aliases` varchar(255) DEFAULT NULL,
  `redirect_to_host` tinyint(1) NOT NULL DEFAULT 0,
  `theme_id` int(11) DEFAULT NULL,
  `default_lang` varchar(2) DEFAULT NULL,
  `group_ids` text DEFAULT NULL,
  `user_ids` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_website`
--

INSERT INTO `cms_website` (`id`, `name`, `is_default`, `is_active`, `is_deleted`, `host`, `aliases`, `redirect_to_host`, `theme_id`, `default_lang`, `group_ids`, `user_ids`) VALUES
(1, 'default', 1, 1, 0, '', NULL, 0, NULL, NULL, '[{\"value\":0}]', '[{\"value\":0}]');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `position` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `type`, `position`, `name`, `enabled`) VALUES
(1, 2, 1, 'Pickup', 1),
(2, 3, 2, 'By Post', 1),
(3, 4, 3, 'Delivery by courier', 1);

-- --------------------------------------------------------

--
-- Table structure for table `forms_form`
--

CREATE TABLE `forms_form` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `subject` text DEFAULT NULL,
  `email_intro` text DEFAULT NULL,
  `email_outro` text DEFAULT NULL,
  `copy_to_attribute` varchar(255) DEFAULT NULL,
  `recipients` text DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forms_form`
--

INSERT INTO `forms_form` (`id`, `title`, `subject`, `email_intro`, `email_outro`, `copy_to_attribute`, `recipients`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, '{\"en\":\"Order Form\"}', NULL, NULL, NULL, NULL, '[]', 1703307035, 1703307035, 1, 1),
(2, '{\"en\":\"Product Form\"}', NULL, NULL, NULL, NULL, '[]', 1703320237, 1703320237, 1, 1),
(3, '{\"en\":\"Address Form\"}', '{\"en\":\"Address Form Data\"}', '{\"en\":\"\"}', '{\"en\":\"\"}', NULL, '[{\"value\":\"provdigi@gmail.com\"}]', 1703831826, 1703886327, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `forms_submission`
--

CREATE TABLE `forms_submission` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `is_done` tinyint(1) DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forms_submission`
--

INSERT INTO `forms_submission` (`id`, `form_id`, `useragent`, `language`, `url`, `is_done`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/contact-us?submit=1', 0, 1703309604, 1703309604),
(2, 2, 'Product Form', NULL, '/shopping-cart', 0, 1703320242, 1703320242),
(3, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703344044, 1703344044),
(4, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703347408, 1703347408),
(5, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703348660, 1703348660),
(6, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703348710, 1703348710),
(7, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703354862, 1703354862),
(8, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703354893, 1703354893),
(9, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703354981, 1703354981),
(10, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703355652, 1703355652),
(11, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703357641, 1703357641),
(12, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703357738, 1703357738),
(13, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703357899, 1703357899),
(14, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703358171, 1703358171),
(15, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703358201, 1703358201),
(16, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703358698, 1703358698),
(17, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703359537, 1703359537),
(18, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703387437, 1703387437),
(19, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703390472, 1703390472),
(20, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703390683, 1703390683),
(21, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703391332, 1703391332),
(22, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703391852, 1703391852),
(23, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703395083, 1703395083),
(24, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703397687, 1703397687),
(25, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703397800, 1703397800),
(26, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703398575, 1703398575),
(27, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703398677, 1703398677),
(28, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703398848, 1703398848),
(29, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703400870, 1703400870),
(30, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703568057, 1703568057),
(31, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703573123, 1703573123),
(32, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703573228, 1703573228),
(33, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703573534, 1703573534),
(34, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703573699, 1703573699),
(35, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703574116, 1703574116),
(36, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703574340, 1703574340),
(37, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703574344, 1703574344),
(38, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703574723, 1703574723),
(39, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703575263, 1703575263),
(40, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703575292, 1703575292),
(41, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703575444, 1703575444),
(42, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703575447, 1703575447),
(43, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703575547, 1703575547),
(44, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703589570, 1703589570),
(45, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703604710, 1703604710),
(46, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703651116, 1703651116),
(47, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703652482, 1703652482),
(48, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703653151, 1703653151),
(49, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703653501, 1703653501),
(50, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703657554, 1703657554),
(51, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703657592, 1703657592),
(52, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703657636, 1703657636),
(53, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703657652, 1703657652),
(54, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703657803, 1703657803),
(55, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703657856, 1703657856),
(56, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703657890, 1703657890),
(57, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703659375, 1703659375),
(58, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703659531, 1703659531),
(59, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?reload=2', 0, 1703674290, 1703674290),
(60, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info', 0, 1703674311, 1703674311),
(61, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info', 0, 1703674344, 1703674344),
(62, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info', 0, 1703674405, 1703674405),
(63, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info', 0, 1703674471, 1703674471),
(64, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=8&title=creamy-butter-cookies', 0, 1703679938, 1703679938),
(65, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake', 0, 1703680103, 1703680103),
(66, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=10&title=chocolate-chipped-cookies', 0, 1703680124, 1703680124),
(67, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703693730, 1703693730),
(68, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703693923, 1703693923),
(69, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703693971, 1703693971),
(70, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703694048, 1703694048),
(71, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703694061, 1703694061),
(72, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703694116, 1703694116),
(73, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703694241, 1703694241),
(74, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703694258, 1703694258),
(75, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703694358, 1703694358),
(76, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703694376, 1703694376),
(77, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703694529, 1703694529),
(78, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703695412, 1703695412),
(79, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?submit=2', 0, 1703696264, 1703696264),
(80, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703740353, 1703740353),
(81, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703743598, 1703743598),
(82, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=10&title=chocolate-chipped-cookies&submit=2', 0, 1703745007, 1703745007),
(83, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2', 0, 1703745847, 1703745847),
(84, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2', 0, 1703764099, 1703764099),
(85, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=9&title=vanilla-cake-with-butter-cream&submit=2', 0, 1703771943, 1703771943),
(86, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2', 0, 1703820915, 1703820915),
(87, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=8&title=creamy-butter-cookies&submit=2', 0, 1703825775, 1703825775),
(88, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703853709, 1703853709),
(89, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2', 0, 1703853971, 1703853971),
(90, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2', 0, 1703853983, 1703853983),
(91, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2', 0, 1703855937, 1703855937),
(92, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2', 0, 1703855940, 1703855940),
(93, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2', 0, 1703855944, 1703855944),
(94, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2', 0, 1703855955, 1703855955),
(95, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2', 0, 1703856289, 1703856289),
(96, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2', 0, 1703856746, 1703856746),
(97, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2', 0, 1703857047, 1703857047),
(98, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2', 0, 1703857052, 1703857052),
(99, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2', 0, 1703857454, 1703857454),
(100, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2', 0, 1703857459, 1703857459),
(101, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2', 0, 1703857545, 1703857545),
(102, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2', 0, 1703857548, 1703857548),
(103, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2', 0, 1703857607, 1703857607),
(104, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2&submit=2', 0, 1703857610, 1703857610),
(105, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2&submit=2', 0, 1703857653, 1703857653),
(106, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2&submit=2', 0, 1703857658, 1703857658),
(107, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2&submit=2&submit=2&submit=2', 0, 1703857666, 1703857666),
(108, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2', 0, 1703857680, 1703857680),
(109, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2', 0, 1703857686, 1703857686),
(110, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2&submit=2', 0, 1703857691, 1703857691),
(111, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703859381, 1703859381),
(112, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703862228, 1703862228),
(113, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703862363, 1703862363),
(114, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703862404, 1703862404),
(115, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703862409, 1703862409),
(116, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2', 0, 1703862414, 1703862414),
(117, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2', 0, 1703862420, 1703862420),
(118, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2', 0, 1703862458, 1703862458),
(119, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2', 0, 1703862468, 1703862468),
(120, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2', 0, 1703862472, 1703862472),
(121, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2', 0, 1703862573, 1703862573),
(122, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2', 0, 1703862576, 1703862576),
(123, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2&submit=2', 0, 1703862580, 1703862580),
(124, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2&submit=2', 0, 1703862597, 1703862597),
(125, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2&submit=2', 0, 1703862600, 1703862600),
(126, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2&submit=2&submit=2', 0, 1703862603, 1703862603),
(127, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2&submit=2&submit=2', 0, 1703862716, 1703862716),
(128, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=8&title=creamy-butter-cookies&submit=2', 0, 1703862751, 1703862751),
(129, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703862844, 1703862844),
(130, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703862910, 1703862910),
(131, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703862931, 1703862931),
(132, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703863949, 1703863949),
(133, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2', 0, 1703863954, 1703863954),
(134, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2', 0, 1703864037, 1703864037),
(135, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2', 0, 1703864042, 1703864042),
(136, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2', 0, 1703864045, 1703864045),
(137, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2', 0, 1703865193, 1703865193),
(138, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2&submit=2', 0, 1703865199, 1703865199),
(139, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2&submit=2', 0, 1703865595, 1703865595),
(140, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2', 0, 1703865614, 1703865614),
(141, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2&submit=2', 0, 1703865619, 1703865619),
(142, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2&submit=2&submit=2&submit=2', 0, 1703865669, 1703865669),
(143, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703865825, 1703865825),
(144, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703869388, 1703869388),
(145, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703869577, 1703869577),
(146, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703869603, 1703869603),
(147, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703869608, 1703869608),
(148, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=8&title=creamy-butter-cookies&submit=2', 0, 1703872080, 1703872080),
(149, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703872164, 1703872164),
(150, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703872984, 1703872984),
(151, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703873579, 1703873579),
(152, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703873645, 1703873645),
(153, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703873677, 1703873677),
(154, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703873750, 1703873750),
(155, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703874100, 1703874100),
(156, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2', 0, 1703874199, 1703874199),
(157, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=8&title=creamy-butter-cookies&submit=2', 0, 1703874645, 1703874645),
(158, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=8&title=creamy-butter-cookies&submit=2', 0, 1703874687, 1703874687),
(159, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703874756, 1703874756),
(160, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2', 0, 1703875098, 1703875098),
(161, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=8&title=creamy-butter-cookies&submit=2', 0, 1703876012, 1703876012),
(162, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=8&title=creamy-butter-cookies&submit=2', 0, 1703876032, 1703876032),
(163, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=8&title=creamy-butter-cookies&submit=2', 0, 1703876179, 1703876179),
(164, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/shopping-cart?submit=3', 0, 1703877748, 1703877748),
(165, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2', 0, 1703878627, 1703878627),
(166, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2', 0, 1703878668, 1703878668),
(167, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2', 0, 1703878700, 1703878700),
(168, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703878780, 1703878780),
(169, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=8&title=creamy-butter-cookies&submit=2', 0, 1703878926, 1703878926),
(170, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/shopping-cart?submit=3', 0, 1703879185, 1703879185),
(171, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=6&title=brown-choclolate-cake&submit=2', 0, 1703879272, 1703879272),
(172, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/shopping-cart?submit=3', 0, 1703879418, 1703879418),
(173, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/shopping-cart?submit=3', 0, 1703879741, 1703879741),
(174, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/shopping-cart?submit=3', 0, 1703880177, 1703880177),
(175, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=7&title=honey-chocolate-dip-cake&submit=2', 0, 1703880774, 1703880774),
(176, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=10&title=chocolate-chipped-cookies&submit=2', 0, 1703880903, 1703880903),
(177, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/product-info?id=10&title=chocolate-chipped-cookies&submit=2', 0, 1703881095, 1703881095),
(178, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/shopping-cart?submit=3', 0, 1703881188, 1703881188),
(179, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'en', '/shopping-cart?submit=3', 0, 1703881517, 1703881517);

-- --------------------------------------------------------

--
-- Table structure for table `forms_submission_value`
--

CREATE TABLE `forms_submission_value` (
  `id` int(11) NOT NULL,
  `submission_id` int(11) DEFAULT NULL,
  `attribute` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `hint` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forms_submission_value`
--

INSERT INTO `forms_submission_value` (`id`, `submission_id`, `attribute`, `label`, `hint`, `value`, `format`) VALUES
(1, 1, 'delivery', 'Delivery Date', 'date and time of delivery', '', NULL),
(2, 1, 'Quantity', 'Quantity', 'Order Quantitiy', '44', NULL),
(3, 3, 'Features', 'Features', 'Features', '', NULL),
(4, 3, 'Message', 'Message', 'Message on Cake', 'hellow world', NULL),
(5, 3, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-27', NULL),
(6, 4, 'Features', 'Features', 'Features', '', NULL),
(7, 4, 'Message', 'Message', 'Message on Cake', 'Happy Birthday Siri Pravi', NULL),
(8, 4, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-28', NULL),
(9, 5, 'Features', 'Features', 'Features', '', NULL),
(10, 5, 'Message', 'Message', 'Message on Cake', 'Hello Its me', NULL),
(11, 5, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-27', NULL),
(12, 6, 'Features', 'Features', 'Features', '', NULL),
(13, 6, 'Message', 'Message', 'Message on Cake', 'Hello Its me too', NULL),
(14, 6, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-20', NULL),
(15, 7, 'Features', 'Features', 'Features', '786, 647, ', NULL),
(16, 7, 'Message', 'Message', 'Message on Cake', 'Features are added 6 inch with egg', NULL),
(17, 7, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-27', NULL),
(18, 8, 'Features', 'Features', 'Features', '786, 647, ', NULL),
(19, 8, 'Message', 'Message', 'Message on Cake', 'Features are added 6 inch with egg', NULL),
(20, 8, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-27', NULL),
(21, 9, 'Features', 'Features', 'Features', '786, 647, ', NULL),
(22, 9, 'Message', 'Message', 'Message on Cake', 'Features are added 6 inch with egg', NULL),
(23, 9, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-27', NULL),
(24, 10, 'Features', 'Features', 'Features', '786, 647, ', NULL),
(25, 10, 'Message', 'Message', 'Message on Cake', 'twelve inch eggless', NULL),
(26, 10, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-19', NULL),
(27, 11, 'Features', 'Features', 'Features', '33-1425, 32-647, ', NULL),
(28, 11, 'Message', 'Message', 'Message on Cake', 'twelve inch eggless', NULL),
(29, 11, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-19', NULL),
(30, 12, 'Features', 'Features', 'Features', '33-1425, 32-647, ', NULL),
(31, 12, 'Message', 'Message', 'Message on Cake', 'twelve inch eggless', NULL),
(32, 12, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-19', NULL),
(33, 13, 'Features', 'Features', 'Features', '33-1425, 32-647, ', NULL),
(34, 13, 'Message', 'Message', 'Message on Cake', 'six inch egg', NULL),
(35, 13, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-20', NULL),
(36, 14, 'Features', 'Features', 'Features', '33-1425, 32-647, ', NULL),
(37, 14, 'Message', 'Message', 'Message on Cake', 'six inch egg', NULL),
(38, 14, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-20', NULL),
(39, 15, 'Features', 'Features', 'Features', '33-1425, 32-647, ', NULL),
(40, 15, 'Message', 'Message', 'Message on Cake', 'six inch egg', NULL),
(41, 15, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-20', NULL),
(42, 16, 'Features', 'Features', 'Features', '33-1425, 32-647, ', NULL),
(43, 16, 'Message', 'Message', 'Message on Cake', 'button styles', NULL),
(44, 16, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-26', NULL),
(45, 17, 'Features', 'Features', 'Features', '33-1425, 31-140, ', NULL),
(46, 17, 'Message', 'Message', 'Message on Cake', '', NULL),
(47, 17, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-25', NULL),
(48, 18, 'Features', 'Features', 'Features', '34_786, 32_647, ', NULL),
(49, 18, 'Message', 'Message', 'Message on Cake', 'Welcome world', NULL),
(50, 18, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-27', NULL),
(51, 19, 'Features', 'Features', 'Features', '34_786, 32_647', NULL),
(52, 19, 'Message', 'Message', 'Message on Cake', 'jk7yuikhjktuhj', NULL),
(53, 19, 'Price', 'Price', 'Price', '1433', NULL),
(54, 19, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-26', NULL),
(55, 20, 'Features', 'Features', 'Features', '34_786, 32_647', NULL),
(56, 20, 'Message', 'Message', 'Message on Cake', 'fgertgdfgdf', NULL),
(57, 20, 'Price', 'Price', 'Price', '1433', NULL),
(58, 20, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-26', NULL),
(59, 21, 'Features', 'Features', 'Features', '34_786, 32_647', NULL),
(60, 21, 'Message', 'Message', 'Message on Cake', 'By 27th Delivery', NULL),
(61, 21, 'Price', 'Price', 'Price', '1433', NULL),
(62, 21, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-27', NULL),
(63, 22, 'Features', 'Features', 'Features', '34_786, 32_647', NULL),
(64, 22, 'Message', 'Message', 'Message on Cake', 'six inch eggless by 27th', NULL),
(65, 22, 'Price', 'Price', 'Price', '1433', NULL),
(66, 22, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-27', NULL),
(67, 23, 'Features', 'Features', 'Features', '34_786, 32_647', NULL),
(68, 23, 'Message', 'Message', 'Message on Cake', 'hjtrfujhftgjhfghdfdfh', NULL),
(69, 23, 'Price', 'Price', 'Price', '1433', NULL),
(70, 23, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-26', NULL),
(71, 24, 'Features', 'Features', 'Features', '34_786, 32_647', NULL),
(72, 24, 'Message', 'Message', 'Message on Cake', 'hellow world ', NULL),
(73, 24, 'Price', 'Price', '', '1433', NULL),
(74, 24, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-26', NULL),
(75, 25, 'Features', 'Features', 'Features', '33_1425, 31_140', NULL),
(76, 25, 'Message', 'Message', 'Message on Cake', 'Six inch eggless brown chocolate', NULL),
(77, 25, 'Price', 'Price', '', '1565', NULL),
(78, 25, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-30', NULL),
(79, 26, 'Features', 'Features', 'Features', '34_786, 32_647', NULL),
(80, 26, 'Message', 'Message', 'Message on Cake', 'hghthgh', NULL),
(81, 26, 'Price', 'Price', '', '1433', NULL),
(82, 26, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-26', NULL),
(83, 27, 'Features', 'Features', 'Features', '34_786, 32_647', NULL),
(84, 27, 'Message', 'Message', 'Message on Cake', 'kjkytgkbk', NULL),
(85, 27, 'Price', 'Price', '', '1433', NULL),
(86, 27, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-25', NULL),
(87, 28, 'Features', 'Features', 'Features', '33_1425, 32_647', NULL),
(88, 28, 'Message', 'Message', 'Message on Cake', 'love all', NULL),
(89, 28, 'Price', 'Price', '', '2072', NULL),
(90, 28, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-29', NULL),
(91, 29, 'Features', 'Features', 'Features', '33_1425, 31_140', NULL),
(92, 29, 'Message', 'Message', 'Message on Cake', 'jhjyh fgjnfgjhnfghn', NULL),
(93, 29, 'Price', 'Price', '', '1565', NULL),
(94, 29, 'FeatureText', 'Feature Text', '', ' 6-inch_33_1425 Eggless_31_140', NULL),
(95, 29, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-26', NULL),
(96, 30, 'Features', 'Features', 'Features', '34_786, 32_647', NULL),
(97, 30, 'Message', 'Message', 'Message on Cake', 'Happy Birthday Siri', NULL),
(98, 30, 'Price', 'Price', '', '1433', NULL),
(99, 30, 'FeatureText', 'Feature Text', '', '12-inch_34_786+With-Egg_32_647', NULL),
(100, 30, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-28', NULL),
(101, 31, 'Features', 'Features', 'Features', '34_786, 32_647', NULL),
(102, 31, 'Message', 'Message', 'Message on Cake', 'Pradhaan Mantri', NULL),
(103, 31, 'Price', 'Price', '', '1433', NULL),
(104, 31, 'FeatureText', 'Feature Text', '', '12-inch_34_786+With-Egg_32_647', NULL),
(105, 31, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-28', NULL),
(106, 32, 'Features', 'Features', 'Features', '34_786, 32_647', NULL),
(107, 32, 'Message', 'Message', 'Message on Cake', 'Gaali Khaana', NULL),
(108, 32, 'Price', 'Price', '', '1433', NULL),
(109, 32, 'FeatureText', 'Feature Text', '', '12-inch_34_786+With-Egg_32_647', NULL),
(110, 32, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-30', NULL),
(111, 43, 'Features', 'Features', 'Features', '34_786, 31_140', NULL),
(112, 43, 'Message', 'Message', 'Message on Cake', 'Aageh Cahoo', NULL),
(113, 43, 'Price', 'Price', '', '926', NULL),
(114, 43, 'FeatureText', 'Feature Text', '', '12-inch_34_786+Eggless_31_140', NULL),
(115, 43, 'delivery', 'Delivery Date', 'Delivery Date', '2023-12-31', NULL),
(116, 44, 'Features', 'features', '', '33_1425, 32_647', NULL),
(117, 44, 'Message', 'Message On Cake', '', 'Hello world vanilla cake', NULL),
(118, 44, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(119, 44, 'FeatureText', 'FeatureText', '', '6-inch_33_1425+With-Egg_32_647', NULL),
(120, 44, 'Price', 'Price', '', '2072', NULL),
(121, 45, 'Features', 'features', '', '35_750, 0', NULL),
(122, 45, 'Message', 'Message On Cake', '', 'kjkukhj', NULL),
(123, 45, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(124, 45, 'FeatureText', 'FeatureText', '', 'Pack_35_750+_0', NULL),
(125, 45, 'Price', 'Price', '', 'NaN', NULL),
(126, 45, 'Pid', 'Product', '', '1', NULL),
(127, 46, 'Features', 'features', '', '34_254, 32_351', NULL),
(128, 46, 'Message', 'Message On Cake', '', 'hgjhgjrtuyjjhgjg', NULL),
(129, 46, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(130, 46, 'FeatureText', 'FeatureText', '', '12-inch_34_254+With-Egg_32_351', NULL),
(131, 46, 'Price', 'Price', '', '605', NULL),
(132, 47, 'Features', 'features', '', '35_750, 31_421', NULL),
(133, 47, 'Message', 'Message On Cake', '', 'Aasaraa Pension Fhoni', NULL),
(134, 47, 'Delivery', 'Delivery Date', '', '2023-12-31', 'datetime'),
(135, 47, 'FeatureText', 'FeatureText', '', 'Pack_35_750+Eggless_31_421', NULL),
(136, 47, 'Price', 'Price', '', '1171', NULL),
(137, 48, 'Features', 'features', '', '34_254, 31_421', NULL),
(138, 48, 'Message', 'Message On Cake', '', 'Swarga seema', NULL),
(139, 48, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(140, 48, 'FeatureText', 'FeatureText', '', '12-inch_34_254+Eggless_31_421', NULL),
(141, 48, 'Price', 'Price', '', '675', NULL),
(142, 48, 'Pid', 'Product', '', '6', NULL),
(143, 49, 'Features', 'features', '', '34_1499, 32_140', NULL),
(144, 49, 'Message', 'Message On Cake', '', 'vdfevc v fedvweffbx xcvedsfdfvsdfad', NULL),
(145, 49, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(146, 49, 'FeatureText', 'FeatureText', '', '12-inch_34_1499+With-Egg_32_140', NULL),
(147, 49, 'Price', 'Price', '', '1639', NULL),
(148, 49, 'Pid', 'Product', '', '6', NULL),
(149, 56, 'Features', 'features', '', '33_849, 31_0', NULL),
(150, 56, 'Message', 'Message On Cake', '', 'dfsrwegd fdgwertgdfgdfg', NULL),
(151, 56, 'Delivery', 'Delivery Date', '', '2023-12-25', 'datetime'),
(152, 56, 'FeatureText', 'FeatureText', '', '6-inch_33_849+Eggless_31_0', NULL),
(153, 56, 'Price', 'Price', '', '849', NULL),
(154, 56, 'Pid', 'Product', '', '6', NULL),
(155, 57, 'Features', 'features', '', '35_1435, ', NULL),
(156, 57, 'Message', 'Message On Cake', '', 'dfsdfwefs sdf werfsdfsd fdf', NULL),
(157, 57, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(158, 57, 'FeatureText', 'FeatureText', '', 'Pack_35_1435', NULL),
(159, 57, 'Price', 'Price', '', '1435', NULL),
(160, 57, 'Pid', 'Product', '', '10', NULL),
(161, 58, 'Features', 'features', '', '37_1256, ', NULL),
(162, 58, 'Message', 'Message On Cake', '', 'anganwadi', NULL),
(163, 58, 'Delivery', 'Delivery Date', '', '2023-12-25', 'datetime'),
(164, 58, 'FeatureText', 'FeatureText', '', '2-Kg_37_1256', NULL),
(165, 58, 'Price', 'Price', '', '1256', NULL),
(166, 58, 'Pid', 'Product', '', '10', NULL),
(167, 59, 'Features', 'features', '', '34_254, 32_351', NULL),
(168, 59, 'Message', 'Message On Cake', '', 'fourteen thirty five', NULL),
(169, 59, 'FeatureText', 'FeatureText', '', '12-inch_34_254+With-Egg_32_351', NULL),
(170, 59, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(171, 59, 'Price', 'Price', '', '605', NULL),
(172, 59, 'Pid', 'Product', '', '8', NULL),
(173, 60, 'Features', 'features', '', '34_254, 31_421', NULL),
(174, 60, 'Message', 'Message On Cake', '', 'hgrtyghrfthfgh', NULL),
(175, 60, 'FeatureText', 'FeatureText', '', '12-inch_34_254+Eggless_31_421', NULL),
(176, 60, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(177, 60, 'Price', 'Price', '', '675', NULL),
(178, 60, 'Pid', 'Product', '', '8', NULL),
(179, 61, 'Features', 'features', '', '35_750, 31_421', NULL),
(180, 61, 'Message', 'Message On Cake', '', 'rwthydfhdfhdf', NULL),
(181, 61, 'FeatureText', 'FeatureText', '', 'Pack_35_750+Eggless_31_421', NULL),
(182, 61, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(183, 61, 'Price', 'Price', '', '1171', NULL),
(184, 61, 'Pid', 'Product', '', '8', NULL),
(185, 62, 'Features', 'features', '', '34_254, 31_421', NULL),
(186, 62, 'Message', 'Message On Cake', '', 'fdwesfsdfsdf', NULL),
(187, 62, 'FeatureText', 'FeatureText', '', '12-inch_34_254+Eggless_31_421', NULL),
(188, 62, 'Delivery', 'Delivery Date', '', '2023-12-20', 'datetime'),
(189, 62, 'Price', 'Price', '', '675', NULL),
(190, 62, 'Pid', 'Product', '', '8', NULL),
(191, 63, 'Features', 'features', '', '35_750, 32_351', NULL),
(192, 63, 'Message', 'Message On Cake', '', 'ghj yurt yhed', NULL),
(193, 63, 'FeatureText', 'FeatureText', '', 'Pack_35_750+With-Egg_32_351', NULL),
(194, 63, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(195, 63, 'Price', 'Price', '', '1101', NULL),
(196, 63, 'Pid', 'Product', '', '8', NULL),
(197, 64, 'Features', 'features', '', '35_750, 31_421', NULL),
(198, 64, 'Message', 'Message On Cake', '', '', NULL),
(199, 64, 'FeatureText', 'FeatureText', '', 'Pack_35_750+Eggless_31_421', NULL),
(200, 64, 'Delivery', 'Delivery Date', '', '', 'datetime'),
(201, 64, 'Price', 'Price', '', '1171', NULL),
(202, 64, 'Pid', 'Product', '', '8', NULL),
(203, 65, 'Features', 'features', '', '34_2453, 31_251', NULL),
(204, 65, 'Message', 'Message On Cake', '', 'dfefdfdf', NULL),
(205, 65, 'FeatureText', 'FeatureText', '', '12-inch_34_2453+Eggless_31_251', NULL),
(206, 65, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(207, 65, 'Price', 'Price', '', '2704', NULL),
(208, 65, 'Pid', 'Product', '', '7', NULL),
(209, 66, 'Features', 'features', '', '37_1256, ', NULL),
(210, 66, 'Message', 'Message On Cake', '', 'defdfefd dfererf', NULL),
(211, 66, 'FeatureText', 'FeatureText', '', '2-Kg_37_1256', NULL),
(212, 66, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(213, 66, 'Price', 'Price', '', '1256', NULL),
(214, 66, 'Pid', 'Product', '', '10', NULL),
(215, 67, 'Features', 'features', '', '34_254, 32_351', NULL),
(216, 67, 'Message', 'Message On Cake', '', ' ggfg wegfg sfsf ', NULL),
(217, 67, 'FeatureText', 'FeatureText', '', '12-inch_34_254+With-Egg_32_351', NULL),
(218, 67, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(219, 67, 'Price', 'Price', '', '605', NULL),
(220, 67, 'Pid', 'Product', '', '8', NULL),
(221, 68, 'Features', 'features', '', '34_254, 32_351', NULL),
(222, 68, 'Message', 'Message On Cake', '', ' ggfg wegfg sfsf ', NULL),
(223, 68, 'FeatureText', 'FeatureText', '', '12-inch_34_254+With-Egg_32_351', NULL),
(224, 68, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(225, 68, 'Price', 'Price', '', '605', NULL),
(226, 68, 'Pid', 'Product', '', '8', NULL),
(227, 69, 'Features', 'features', '', '34_254, 32_351', NULL),
(228, 69, 'Message', 'Message On Cake', '', ' ggfg wegfg sfsf ', NULL),
(229, 69, 'FeatureText', 'FeatureText', '', '12-inch_34_254+With-Egg_32_351', NULL),
(230, 69, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(231, 69, 'Price', 'Price', '', '605', NULL),
(232, 69, 'Pid', 'Product', '', '8', NULL),
(233, 70, 'Features', 'features', '', '34_254, 32_351', NULL),
(234, 70, 'Message', 'Message On Cake', '', ' ggfg wegfg sfsf ', NULL),
(235, 70, 'FeatureText', 'FeatureText', '', '12-inch_34_254+With-Egg_32_351', NULL),
(236, 70, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(237, 70, 'Price', 'Price', '', '605', NULL),
(238, 70, 'Pid', 'Product', '', '8', NULL),
(239, 71, 'Features', 'features', '', '34_254, 32_351', NULL),
(240, 71, 'Message', 'Message On Cake', '', ' ggfg wegfg sfsf ', NULL),
(241, 71, 'FeatureText', 'FeatureText', '', '12-inch_34_254+With-Egg_32_351', NULL),
(242, 71, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(243, 71, 'Price', 'Price', '', '605', NULL),
(244, 71, 'Pid', 'Product', '', '8', NULL),
(245, 72, 'Features', 'features', '', '34_254, 32_351', NULL),
(246, 72, 'Message', 'Message On Cake', '', ' ggfg wegfg sfsf ', NULL),
(247, 72, 'FeatureText', 'FeatureText', '', '12-inch_34_254+With-Egg_32_351', NULL),
(248, 72, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(249, 72, 'Price', 'Price', '', '605', NULL),
(250, 72, 'Pid', 'Product', '', '8', NULL),
(251, 73, 'Features', 'features', '', '34_254, 32_351', NULL),
(252, 73, 'Message', 'Message On Cake', '', ' ggfg wegfg sfsf ', NULL),
(253, 73, 'FeatureText', 'FeatureText', '', '12-inch_34_254+With-Egg_32_351', NULL),
(254, 73, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(255, 73, 'Price', 'Price', '', '605', NULL),
(256, 73, 'Pid', 'Product', '', '8', NULL),
(257, 74, 'Features', 'features', '', '34_254, 32_351', NULL),
(258, 74, 'Message', 'Message On Cake', '', ' ggfg wegfg sfsf ', NULL),
(259, 74, 'FeatureText', 'FeatureText', '', '12-inch_34_254+With-Egg_32_351', NULL),
(260, 74, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(261, 74, 'Price', 'Price', '', '605', NULL),
(262, 74, 'Pid', 'Product', '', '8', NULL),
(263, 75, 'Features', 'features', '', '34_254, 32_351', NULL),
(264, 75, 'Message', 'Message On Cake', '', ' ggfg wegfg sfsf ', NULL),
(265, 75, 'FeatureText', 'FeatureText', '', '12-inch_34_254+With-Egg_32_351', NULL),
(266, 75, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(267, 75, 'Price', 'Price', '', '605', NULL),
(268, 75, 'Pid', 'Product', '', '8', NULL),
(269, 76, 'Features', 'features', '', '34_254, 32_351', NULL),
(270, 76, 'Message', 'Message On Cake', '', ' ggfg wegfg sfsf ', NULL),
(271, 76, 'FeatureText', 'FeatureText', '', '12-inch_34_254+With-Egg_32_351', NULL),
(272, 76, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(273, 76, 'Price', 'Price', '', '605', NULL),
(274, 76, 'Pid', 'Product', '', '8', NULL),
(275, 77, 'Features', 'features', '', '34_786, 31_140', NULL),
(276, 77, 'Message', 'Message On Cake', '', 'Eggless 12 Inch', NULL),
(277, 77, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(278, 77, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(279, 77, 'Price', 'Price', '', '926', NULL),
(280, 77, 'Pid', 'Product', '', '6', NULL),
(281, 78, 'Features', 'features', '', '34_2453, 31_251', NULL),
(282, 78, 'Message', 'Message On Cake', '', 'Previous day Delivery Edited', NULL),
(283, 78, 'FeatureText', 'FeatureText', '', '12-inch_34_2453+Eggless_31_251', NULL),
(284, 78, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(285, 78, 'Price', 'Price', '', '2704', NULL),
(286, 78, 'Pid', 'Product', '', '7', NULL),
(287, 79, 'Features', 'features', '', '36_2354, 31_251', NULL),
(288, 79, 'Message', 'Message On Cake', '', 'gf gftr fg hgrhfh fdg', NULL),
(289, 79, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(290, 79, 'Delivery', 'Delivery Date', '', '2023-12-28', 'datetime'),
(291, 79, 'Price', 'Price', '', '2605', NULL),
(292, 79, 'Pid', 'Product', '', '7', NULL),
(293, 80, 'Features', 'features', '', '34_786, 32_647', NULL),
(294, 80, 'Message', 'Message On Cake', '', 'Happy Birthday KTR', NULL),
(295, 80, 'FeatureText', 'FeatureText', '', '12-inch_34_786+With-Egg_32_647', NULL),
(296, 80, 'Delivery', 'Delivery Date', '', '2023-12-27', 'datetime'),
(297, 80, 'Price', 'Price', '', '1433', NULL),
(298, 80, 'Pid', 'Product', '', '6', NULL),
(299, 81, 'Features', 'features', '', '34_786, 31_140', NULL),
(300, 81, 'Message', 'Message On Cake', '', 'ATTICA Gold Company', NULL),
(301, 81, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(302, 81, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(303, 81, 'Price', 'Price', '', '926', NULL),
(304, 81, 'Pid', 'Product', '', '6', NULL),
(305, 82, 'Features', 'features', '', '37_1256, ', NULL),
(306, 82, 'Message', 'Message On Cake', '', 'll;k llhly', NULL),
(307, 82, 'FeatureText', 'FeatureText', '', '2-Kg_37_1256', NULL),
(308, 82, 'Delivery', 'Delivery Date', '', '2023-12-29', 'datetime'),
(309, 82, 'Price', 'Price', '', '1256', NULL),
(310, 82, 'Pid', 'Product', '', '10', NULL),
(311, 83, 'Features', 'features', '', '36_2354, 32_580', NULL),
(312, 83, 'Message', 'Message On Cake', '', 'Six inch Five Layer', NULL),
(313, 83, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+With-Egg_32_580', NULL),
(314, 83, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(315, 83, 'Price', 'Price', '', '2934', NULL),
(316, 83, 'Pid', 'Product', '', '7', NULL),
(317, 84, 'Features', 'features', '', '36_2354, 31_251', NULL),
(318, 84, 'Message', 'Message On Cake', '', 'Srilekha Gummandur', NULL),
(319, 84, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(320, 84, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(321, 84, 'Price', 'Price', '', '2605', NULL),
(322, 84, 'Pid', 'Product', '', '7', NULL),
(323, 85, 'Features', 'features', '', '36_1248, 31_148', NULL),
(324, 85, 'Message', 'Message On Cake', '', 'You may also be ', NULL),
(325, 85, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_1248+Eggless_31_148', NULL),
(326, 85, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(327, 85, 'Price', 'Price', '', '1396', NULL),
(328, 85, 'Pid', 'Product', '', '9', NULL),
(329, 86, 'Features', 'features', '', '34_2453, 32_580', NULL),
(330, 86, 'Message', 'Message On Cake', '', 'Happy Birthday Guri', NULL),
(331, 86, 'FeatureText', 'FeatureText', '', '12-inch_34_2453+With-Egg_32_580', NULL),
(332, 86, 'Delivery', 'Delivery Date', '', '2023-12-31', 'datetime'),
(333, 86, 'Price', 'Price', '', '3033', NULL),
(334, 86, 'Pid', 'Product', '', '7', NULL),
(335, 87, 'Features', 'features', '', '34_254, 31_421', NULL),
(336, 87, 'Message', 'Message On Cake', '', 'Happy Birthday Ganesh', NULL),
(337, 87, 'FeatureText', 'FeatureText', '', '12-inch_34_254+Eggless_31_421', NULL),
(338, 87, 'Delivery', 'Delivery Date', '', '2023-12-31', 'datetime'),
(339, 87, 'Price', 'Price', '', '675', NULL),
(340, 87, 'Pid', 'Product', '', '8', NULL),
(341, 88, 'Features', 'features', '', '34_786, 31_140', NULL),
(342, 88, 'Message', 'Message On Cake', '', 'By 2023', NULL),
(343, 88, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(344, 88, 'Delivery', 'Delivery Date', '', '2023-12-28', 'datetime'),
(345, 88, 'Price', 'Price', '', '926', NULL),
(346, 88, 'Pid', 'Product', '', '6', NULL),
(347, 89, 'Features', 'features', '', '33_1452, 31_251', NULL),
(348, 89, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(349, 89, 'FeatureText', 'FeatureText', '', '6-inch_33_1452+Eggless_31_251', NULL),
(350, 89, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(351, 89, 'Price', 'Price', '', '1703', NULL),
(352, 89, 'Pid', 'Product', '', '7', NULL),
(353, 90, 'Features', 'features', '', '33_1452, 31_251', NULL),
(354, 90, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(355, 90, 'FeatureText', 'FeatureText', '', '6-inch_33_1452+Eggless_31_251', NULL),
(356, 90, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(357, 90, 'Price', 'Price', '', '1703', NULL),
(358, 90, 'Pid', 'Product', '', '7', NULL),
(359, 91, 'Features', 'features', '', '33_1452, 31_251', NULL),
(360, 91, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(361, 91, 'FeatureText', 'FeatureText', '', '6-inch_33_1452+Eggless_31_251', NULL),
(362, 91, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(363, 91, 'Price', 'Price', '', '1703', NULL),
(364, 91, 'Pid', 'Product', '', '7', NULL),
(365, 92, 'Features', 'features', '', '33_1452, 31_251', NULL),
(366, 92, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(367, 92, 'FeatureText', 'FeatureText', '', '6-inch_33_1452+Eggless_31_251', NULL),
(368, 92, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(369, 92, 'Price', 'Price', '', '1703', NULL),
(370, 92, 'Pid', 'Product', '', '7', NULL),
(371, 93, 'Features', 'features', '', '33_1452, 31_251', NULL),
(372, 93, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(373, 93, 'FeatureText', 'FeatureText', '', '6-inch_33_1452+Eggless_31_251', NULL),
(374, 93, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(375, 93, 'Price', 'Price', '', '1703', NULL),
(376, 93, 'Pid', 'Product', '', '7', NULL),
(377, 94, 'Features', 'features', '', '36_2354, 31_251', NULL),
(378, 94, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(379, 94, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(380, 94, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(381, 94, 'Price', 'Price', '', '2605', NULL),
(382, 94, 'Pid', 'Product', '', '7', NULL),
(383, 95, 'Features', 'features', '', '36_2354, 31_251', NULL),
(384, 95, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(385, 95, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(386, 95, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(387, 95, 'Price', 'Price', '', '2605', NULL),
(388, 95, 'Pid', 'Product', '', '7', NULL),
(389, 96, 'Features', 'features', '', '36_2354, 31_251', NULL),
(390, 96, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(391, 96, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(392, 96, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(393, 96, 'Price', 'Price', '', '2605', NULL),
(394, 96, 'Pid', 'Product', '', '7', NULL),
(395, 97, 'Features', 'features', '', '36_2354, 31_251', NULL),
(396, 97, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(397, 97, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(398, 97, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(399, 97, 'Price', 'Price', '', '2605', NULL),
(400, 97, 'Pid', 'Product', '', '7', NULL),
(401, 98, 'Features', 'features', '', '36_2354, 31_251', NULL),
(402, 98, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(403, 98, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(404, 98, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(405, 98, 'Price', 'Price', '', '2605', NULL),
(406, 98, 'Pid', 'Product', '', '7', NULL),
(407, 99, 'Features', 'features', '', '36_2354, 31_251', NULL),
(408, 99, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(409, 99, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(410, 99, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(411, 99, 'Price', 'Price', '', '2605', NULL),
(412, 99, 'Pid', 'Product', '', '7', NULL),
(413, 100, 'Features', 'features', '', '36_2354, 31_251', NULL),
(414, 100, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(415, 100, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(416, 100, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(417, 100, 'Price', 'Price', '', '2605', NULL),
(418, 100, 'Pid', 'Product', '', '7', NULL),
(419, 101, 'Features', 'features', '', '36_2354, 31_251', NULL),
(420, 101, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(421, 101, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(422, 101, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(423, 101, 'Price', 'Price', '', '2605', NULL),
(424, 101, 'Pid', 'Product', '', '7', NULL),
(425, 102, 'Features', 'features', '', '36_2354, 31_251', NULL),
(426, 102, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(427, 102, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(428, 102, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(429, 102, 'Price', 'Price', '', '2605', NULL),
(430, 102, 'Pid', 'Product', '', '7', NULL),
(431, 103, 'Features', 'features', '', '36_2354, 31_251', NULL),
(432, 103, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(433, 103, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(434, 103, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(435, 103, 'Price', 'Price', '', '2605', NULL),
(436, 103, 'Pid', 'Product', '', '7', NULL),
(437, 104, 'Features', 'features', '', '36_2354, 31_251', NULL),
(438, 104, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(439, 104, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(440, 104, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(441, 104, 'Price', 'Price', '', '2605', NULL),
(442, 104, 'Pid', 'Product', '', '7', NULL),
(443, 105, 'Features', 'features', '', '36_2354, 31_251', NULL),
(444, 105, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(445, 105, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(446, 105, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(447, 105, 'Price', 'Price', '', '2605', NULL),
(448, 105, 'Pid', 'Product', '', '7', NULL),
(449, 106, 'Features', 'features', '', '36_2354, 31_251', NULL),
(450, 106, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(451, 106, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(452, 106, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(453, 106, 'Price', 'Price', '', '2605', NULL),
(454, 106, 'Pid', 'Product', '', '7', NULL),
(455, 107, 'Features', 'features', '', '36_2354, 31_251', NULL),
(456, 107, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(457, 107, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(458, 107, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(459, 107, 'Price', 'Price', '', '2605', NULL),
(460, 107, 'Pid', 'Product', '', '7', NULL),
(461, 108, 'Features', 'features', '', '36_2354, 31_251', NULL),
(462, 108, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(463, 108, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(464, 108, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(465, 108, 'Price', 'Price', '', '2605', NULL),
(466, 108, 'Pid', 'Product', '', '7', NULL),
(467, 109, 'Features', 'features', '', '36_2354, 31_251', NULL),
(468, 109, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(469, 109, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(470, 109, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(471, 109, 'Price', 'Price', '', '2605', NULL),
(472, 109, 'Pid', 'Product', '', '7', NULL),
(473, 110, 'Features', 'features', '', '36_2354, 31_251', NULL),
(474, 110, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(475, 110, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(476, 110, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(477, 110, 'Price', 'Price', '', '2605', NULL),
(478, 110, 'Pid', 'Product', '', '7', NULL),
(479, 111, 'Features', 'features', '', '34_786, 32_647', NULL),
(480, 111, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(481, 111, 'FeatureText', 'FeatureText', '', '12-inch_34_786+With-Egg_32_647', NULL),
(482, 111, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(483, 111, 'Price', 'Price', '', '1433', NULL),
(484, 111, 'Pid', 'Product', '', '6', NULL),
(485, 112, 'Features', 'features', '', '34_786, 32_647', NULL),
(486, 112, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(487, 112, 'FeatureText', 'FeatureText', '', '12-inch_34_786+With-Egg_32_647', NULL),
(488, 112, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(489, 112, 'Price', 'Price', '', '1433', NULL),
(490, 112, 'Pid', 'Product', '', '6', NULL),
(491, 113, 'Features', 'features', '', '34_786, 32_647', NULL),
(492, 113, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(493, 113, 'FeatureText', 'FeatureText', '', '12-inch_34_786+With-Egg_32_647', NULL),
(494, 113, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(495, 113, 'Price', 'Price', '', '1433', NULL),
(496, 113, 'Pid', 'Product', '', '6', NULL),
(497, 114, 'Features', 'features', '', '34_786, 32_647', NULL),
(498, 114, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(499, 114, 'FeatureText', 'FeatureText', '', '12-inch_34_786+With-Egg_32_647', NULL),
(500, 114, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(501, 114, 'Price', 'Price', '', '1433', NULL),
(502, 114, 'Pid', 'Product', '', '6', NULL),
(503, 115, 'Features', 'features', '', '34_786, 32_647', NULL),
(504, 115, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(505, 115, 'FeatureText', 'FeatureText', '', '12-inch_34_786+With-Egg_32_647', NULL),
(506, 115, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(507, 115, 'Price', 'Price', '', '1433', NULL),
(508, 115, 'Pid', 'Product', '', '6', NULL),
(509, 116, 'Features', 'features', '', '34_786, 32_647', NULL),
(510, 116, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(511, 116, 'FeatureText', 'FeatureText', '', '12-inch_34_786+With-Egg_32_647', NULL),
(512, 116, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(513, 116, 'Price', 'Price', '', '1433', NULL),
(514, 116, 'Pid', 'Product', '', '6', NULL),
(515, 117, 'Features', 'features', '', '34_786, 31_140', NULL),
(516, 117, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(517, 117, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(518, 117, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(519, 117, 'Price', 'Price', '', '926', NULL),
(520, 117, 'Pid', 'Product', '', '6', NULL),
(521, 118, 'Features', 'features', '', '34_786, 31_140', NULL),
(522, 118, 'Message', 'Message On Cake', '', 'Eliza', NULL),
(523, 118, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(524, 118, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(525, 118, 'Price', 'Price', '', '926', NULL),
(526, 118, 'Pid', 'Product', '', '6', NULL),
(527, 119, 'Features', 'features', '', '34_786, 31_140', NULL),
(528, 119, 'Message', 'Message On Cake', '', 'Eliza Me', NULL),
(529, 119, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(530, 119, 'Delivery', 'Delivery Date', '', '2023-12-28', 'datetime'),
(531, 119, 'Price', 'Price', '', '926', NULL),
(532, 119, 'Pid', 'Product', '', '6', NULL),
(533, 120, 'Features', 'features', '', '34_786, 31_140', NULL),
(534, 120, 'Message', 'Message On Cake', '', 'Eliza Me', NULL),
(535, 120, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(536, 120, 'Delivery', 'Delivery Date', '', '2023-12-28', 'datetime'),
(537, 120, 'Price', 'Price', '', '926', NULL),
(538, 120, 'Pid', 'Product', '', '6', NULL),
(539, 121, 'Features', 'features', '', '34_786, 31_140', NULL),
(540, 121, 'Message', 'Message On Cake', '', 'Eliza Me', NULL),
(541, 121, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(542, 121, 'Delivery', 'Delivery Date', '', '2023-12-28', 'datetime'),
(543, 121, 'Price', 'Price', '', '926', NULL),
(544, 121, 'Pid', 'Product', '', '6', NULL),
(545, 122, 'Features', 'features', '', '34_786, 31_140', NULL),
(546, 122, 'Message', 'Message On Cake', '', 'Eliza Me', NULL),
(547, 122, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(548, 122, 'Delivery', 'Delivery Date', '', '2023-12-28', 'datetime'),
(549, 122, 'Price', 'Price', '', '926', NULL),
(550, 122, 'Pid', 'Product', '', '6', NULL),
(551, 123, 'Features', 'features', '', '34_786, 31_140', NULL),
(552, 123, 'Message', 'Message On Cake', '', 'Eliza Me', NULL),
(553, 123, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(554, 123, 'Delivery', 'Delivery Date', '', '2023-12-28', 'datetime'),
(555, 123, 'Price', 'Price', '', '926', NULL),
(556, 123, 'Pid', 'Product', '', '6', NULL),
(557, 124, 'Features', 'features', '', '34_786, 31_140', NULL),
(558, 124, 'Message', 'Message On Cake', '', 'Eliza Me', NULL),
(559, 124, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(560, 124, 'Delivery', 'Delivery Date', '', '2023-12-28', 'datetime'),
(561, 124, 'Price', 'Price', '', '926', NULL),
(562, 124, 'Pid', 'Product', '', '6', NULL),
(563, 125, 'Features', 'features', '', '34_786, 31_140', NULL),
(564, 125, 'Message', 'Message On Cake', '', 'Eliza Me', NULL),
(565, 125, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(566, 125, 'Delivery', 'Delivery Date', '', '2023-12-28', 'datetime'),
(567, 125, 'Price', 'Price', '', '926', NULL),
(568, 125, 'Pid', 'Product', '', '6', NULL),
(569, 126, 'Features', 'features', '', '34_786, 31_140', NULL),
(570, 126, 'Message', 'Message On Cake', '', 'Eliza Me', NULL),
(571, 126, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(572, 126, 'Delivery', 'Delivery Date', '', '2023-12-28', 'datetime'),
(573, 126, 'Price', 'Price', '', '926', NULL),
(574, 126, 'Pid', 'Product', '', '6', NULL),
(575, 127, 'Features', 'features', '', '34_786, 31_140', NULL),
(576, 127, 'Message', 'Message On Cake', '', 'Eliza Me', NULL),
(577, 127, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(578, 127, 'Delivery', 'Delivery Date', '', '2023-12-28', 'datetime'),
(579, 127, 'Price', 'Price', '', '926', NULL),
(580, 127, 'Pid', 'Product', '', '6', NULL),
(581, 128, 'Features', 'features', '', '34_254, 32_351', NULL),
(582, 128, 'Message', 'Message On Cake', '', 'Alliance BJP', NULL),
(583, 128, 'FeatureText', 'FeatureText', '', '12-inch_34_254+With-Egg_32_351', NULL),
(584, 128, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(585, 128, 'Price', 'Price', '', '605', NULL),
(586, 128, 'Pid', 'Product', '', '8', NULL),
(587, 129, 'Features', 'features', '', '33_1425, 31_140', NULL),
(588, 129, 'Message', 'Message On Cake', '', 'hfgrth fghbrthfg', NULL),
(589, 129, 'FeatureText', 'FeatureText', '', '6-inch_33_1425+Eggless_31_140', NULL),
(590, 129, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(591, 129, 'Price', 'Price', '', '1565', NULL),
(592, 129, 'Pid', 'Product', '', '6', NULL),
(593, 130, 'Features', 'features', '', '33_1425, 31_140', NULL),
(594, 130, 'Message', 'Message On Cake', '', 'Sdefdgferg', NULL),
(595, 130, 'FeatureText', 'FeatureText', '', '6-inch_33_1425+Eggless_31_140', NULL),
(596, 130, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(597, 130, 'Price', 'Price', '', '1565', NULL),
(598, 130, 'Pid', 'Product', '', '6', NULL),
(599, 131, 'Features', 'features', '', '33_1425, 31_140', NULL),
(600, 131, 'Message', 'Message On Cake', '', 'Sdefdgferg', NULL),
(601, 131, 'FeatureText', 'FeatureText', '', '6-inch_33_1425+Eggless_31_140', NULL),
(602, 131, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(603, 131, 'Price', 'Price', '', '1565', NULL),
(604, 131, 'Pid', 'Product', '', '6', NULL),
(605, 132, 'Features', 'features', '', '33_1425, 32_647', NULL),
(606, 132, 'Message', 'Message On Cake', '', 'As fgrebnn', NULL),
(607, 132, 'FeatureText', 'FeatureText', '', '6-inch_33_1425+With-Egg_32_647', NULL),
(608, 132, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(609, 132, 'Price', 'Price', '', '2072', NULL),
(610, 132, 'Pid', 'Product', '', '6', NULL),
(611, 133, 'Features', 'features', '', '33_1425, 32_647', NULL),
(612, 133, 'Message', 'Message On Cake', '', 'As fgrebnn', NULL),
(613, 133, 'FeatureText', 'FeatureText', '', '6-inch_33_1425+With-Egg_32_647', NULL),
(614, 133, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(615, 133, 'Price', 'Price', '', '2072', NULL),
(616, 133, 'Pid', 'Product', '', '6', NULL),
(617, 134, 'Features', 'features', '', '33_1425, 32_647', NULL),
(618, 134, 'Message', 'Message On Cake', '', 'As fgrebnn', NULL),
(619, 134, 'FeatureText', 'FeatureText', '', '6-inch_33_1425+With-Egg_32_647', NULL),
(620, 134, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(621, 134, 'Price', 'Price', '', '2072', NULL),
(622, 134, 'Pid', 'Product', '', '6', NULL),
(623, 135, 'Features', 'features', '', '34_786, 32_647', NULL),
(624, 135, 'Message', 'Message On Cake', '', 'As fgrebnn', NULL),
(625, 135, 'FeatureText', 'FeatureText', '', '12-inch_34_786+With-Egg_32_647', NULL),
(626, 135, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(627, 135, 'Price', 'Price', '', '1433', NULL),
(628, 135, 'Pid', 'Product', '', '6', NULL),
(629, 136, 'Features', 'features', '', '34_786, 32_647', NULL),
(630, 136, 'Message', 'Message On Cake', '', 'As fgrebnn', NULL),
(631, 136, 'FeatureText', 'FeatureText', '', '12-inch_34_786+With-Egg_32_647', NULL),
(632, 136, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(633, 136, 'Price', 'Price', '', '1433', NULL),
(634, 136, 'Pid', 'Product', '', '6', NULL),
(635, 137, 'Features', 'features', '', '34_786, 31_140', NULL),
(636, 137, 'Message', 'Message On Cake', '', 'As fgrebnn', NULL),
(637, 137, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(638, 137, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(639, 137, 'Price', 'Price', '', '926', NULL),
(640, 137, 'Pid', 'Product', '', '6', NULL),
(641, 138, 'Features', 'features', '', '34_786, 31_140', NULL),
(642, 138, 'Message', 'Message On Cake', '', 'As fgrebnn', NULL),
(643, 138, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(644, 138, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(645, 138, 'Price', 'Price', '', '926', NULL),
(646, 138, 'Pid', 'Product', '', '6', NULL),
(647, 139, 'Features', 'features', '', '34_786, 31_140', NULL),
(648, 139, 'Message', 'Message On Cake', '', 'As fgrebnn', NULL),
(649, 139, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(650, 139, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(651, 139, 'Price', 'Price', '', '926', NULL),
(652, 139, 'Pid', 'Product', '', '6', NULL),
(653, 140, 'Features', 'features', '', '34_786, 31_140', NULL),
(654, 140, 'Message', 'Message On Cake', '', 'Ramraj', NULL),
(655, 140, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(656, 140, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(657, 140, 'Price', 'Price', '', '926', NULL),
(658, 140, 'Pid', 'Product', '', '6', NULL),
(659, 141, 'Features', 'features', '', '34_786, 31_140', NULL),
(660, 141, 'Message', 'Message On Cake', '', 'Ramraj', NULL),
(661, 141, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(662, 141, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(663, 141, 'Price', 'Price', '', '926', NULL),
(664, 141, 'Pid', 'Product', '', '6', NULL),
(665, 142, 'Features', 'features', '', '34_786, 32_647', NULL),
(666, 142, 'Message', 'Message On Cake', '', 'Nara Lok', NULL),
(667, 142, 'FeatureText', 'FeatureText', '', '12-inch_34_786+With-Egg_32_647', NULL),
(668, 142, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(669, 142, 'Price', 'Price', '', '1433', NULL),
(670, 142, 'Pid', 'Product', '', '6', NULL),
(671, 143, 'Features', 'features', '', '33_1425, 31_140', NULL),
(672, 143, 'Message', 'Message On Cake', '', 'Mandala Block', NULL),
(673, 143, 'FeatureText', 'FeatureText', '', '6-inch_33_1425+Eggless_31_140', NULL),
(674, 143, 'Delivery', 'Delivery Date', '', '2023-12-27', 'datetime'),
(675, 143, 'Price', 'Price', '', '1565', NULL),
(676, 143, 'Pid', 'Product', '', '6', NULL),
(677, 144, 'Features', 'features', '', '33_1425, 31_140', NULL),
(678, 144, 'Message', 'Message On Cake', '', 'Hello world', NULL),
(679, 144, 'FeatureText', 'FeatureText', '', '6-inch_33_1425+Eggless_31_140', NULL),
(680, 144, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(681, 144, 'Price', 'Price', '', '1565', NULL),
(682, 144, 'Pid', 'Product', '', '6', NULL),
(683, 145, 'Features', 'features', '', '33_1425, 31_140', NULL),
(684, 145, 'Message', 'Message On Cake', '', 'Hello world', NULL),
(685, 145, 'FeatureText', 'FeatureText', '', '6-inch_33_1425+Eggless_31_140', NULL),
(686, 145, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(687, 145, 'Price', 'Price', '', '1565', NULL),
(688, 145, 'Pid', 'Product', '', '6', NULL),
(689, 146, 'Features', 'features', '', '33_1425, 31_140', NULL),
(690, 146, 'Message', 'Message On Cake', '', 'Hello world', NULL),
(691, 146, 'FeatureText', 'FeatureText', '', '6-inch_33_1425+Eggless_31_140', NULL),
(692, 146, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(693, 146, 'Price', 'Price', '', '1565', NULL),
(694, 146, 'Pid', 'Product', '', '6', NULL),
(695, 147, 'Features', 'features', '', '33_1425, 32_647', NULL),
(696, 147, 'Message', 'Message On Cake', '', 'Hello world', NULL),
(697, 147, 'FeatureText', 'FeatureText', '', '6-inch_33_1425+With-Egg_32_647', NULL),
(698, 147, 'Delivery', 'Delivery Date', '', '2023-12-30', 'datetime'),
(699, 147, 'Price', 'Price', '', '2072', NULL),
(700, 147, 'Pid', 'Product', '', '6', NULL),
(701, 148, 'Features', 'features', '', '34_254, 31_421', NULL),
(702, 148, 'Message', 'Message On Cake', '', 'Amaravathi', NULL),
(703, 148, 'FeatureText', 'FeatureText', '', '12-inch_34_254+Eggless_31_421', NULL),
(704, 148, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(705, 148, 'Price', 'Price', '', '675', NULL),
(706, 148, 'Pid', 'Product', '', '8', NULL),
(707, 149, 'Features', 'features', '', '33_1425, 31_140', NULL),
(708, 149, 'Message', 'Message On Cake', '', 'Hello Eggless', NULL),
(709, 149, 'FeatureText', 'FeatureText', '', '6-inch_33_1425+Eggless_31_140', NULL),
(710, 149, 'Delivery', 'Delivery Date', '', '2023-12-27', 'datetime'),
(711, 149, 'Price', 'Price', '', '1565', NULL),
(712, 149, 'Pid', 'Product', '', '6', NULL),
(713, 150, 'Features', 'features', '', '34_786, 31_140', NULL),
(714, 150, 'Message', 'Message On Cake', '', 'Start Form', NULL),
(715, 150, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(716, 150, 'Delivery', 'Delivery Date', '', '2023-12-28', 'datetime'),
(717, 150, 'Price', 'Price', '', '926', NULL),
(718, 150, 'Pid', 'Product', '', '6', NULL),
(719, 151, 'Features', 'features', '', '33_1425, 31_140', NULL),
(720, 151, 'Message', 'Message On Cake', '', 'On Dance should trigger', NULL),
(721, 151, 'FeatureText', 'FeatureText', '', '6-inch_33_1425+Eggless_31_140', NULL),
(722, 151, 'Delivery', 'Delivery Date', '', '2023-12-27', 'datetime'),
(723, 151, 'Price', 'Price', '', '1565', NULL),
(724, 151, 'Pid', 'Product', '', '6', NULL),
(725, 152, 'Features', 'features', '', '33_1425, 31_140', NULL),
(726, 152, 'Message', 'Message On Cake', '', 'On Dance should trigger', NULL),
(727, 152, 'FeatureText', 'FeatureText', '', '6-inch_33_1425+Eggless_31_140', NULL),
(728, 152, 'Delivery', 'Delivery Date', '', '2023-12-27', 'datetime'),
(729, 152, 'Price', 'Price', '', '1565', NULL),
(730, 152, 'Pid', 'Product', '', '6', NULL),
(731, 153, 'Features', 'features', '', '33_1425, 31_140', NULL),
(732, 153, 'Message', 'Message On Cake', '', 'Eggless cake', NULL),
(733, 153, 'FeatureText', 'FeatureText', '', '6-inch_33_1425+Eggless_31_140', NULL),
(734, 153, 'Delivery', 'Delivery Date', '', '2023-12-28', 'datetime'),
(735, 153, 'Price', 'Price', '', '1565', NULL),
(736, 153, 'Pid', 'Product', '', '6', NULL),
(737, 154, 'Features', 'features', '', '33_1425, 31_140', NULL),
(738, 154, 'Message', 'Message On Cake', '', 'on dance eggless', NULL),
(739, 154, 'FeatureText', 'FeatureText', '', '6-inch_33_1425+Eggless_31_140', NULL),
(740, 154, 'Delivery', 'Delivery Date', '', '2023-12-27', 'datetime'),
(741, 154, 'Price', 'Price', '', '1565', NULL),
(742, 154, 'Pid', 'Product', '', '6', NULL),
(743, 155, 'Features', 'features', '', '34_786, 31_140', NULL),
(744, 155, 'Message', 'Message On Cake', '', 'Hellow world india', NULL),
(745, 155, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(746, 155, 'Delivery', 'Delivery Date', '', '2023-12-27', 'datetime'),
(747, 155, 'Price', 'Price', '', '926', NULL),
(748, 155, 'Pid', 'Product', '', '6', NULL),
(749, 156, 'Features', 'features', '', '36_2354, 31_251', NULL),
(750, 156, 'Message', 'Message On Cake', '', 'gfdgergdf', NULL),
(751, 156, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(752, 156, 'Delivery', 'Delivery Date', '', '2023-12-27', 'datetime'),
(753, 156, 'Price', 'Price', '', '2605', NULL),
(754, 156, 'Pid', 'Product', '', '7', NULL),
(755, 157, 'Features', 'features', '', '34_254, 31_421', NULL),
(756, 157, 'Message', 'Message On Cake', '', 'do or do', NULL),
(757, 157, 'FeatureText', 'FeatureText', '', '12-inch_34_254+Eggless_31_421', NULL),
(758, 157, 'Delivery', 'Delivery Date', '', '2023-12-27', 'datetime'),
(759, 157, 'Price', 'Price', '', '675', NULL),
(760, 157, 'Pid', 'Product', '', '8', NULL),
(761, 158, 'Features', 'features', '', '34_254, 31_421', NULL),
(762, 158, 'Message', 'Message On Cake', '', 'do or do', NULL),
(763, 158, 'FeatureText', 'FeatureText', '', '12-inch_34_254+Eggless_31_421', NULL),
(764, 158, 'Delivery', 'Delivery Date', '', '2023-12-27', 'datetime'),
(765, 158, 'Price', 'Price', '', '675', NULL),
(766, 158, 'Pid', 'Product', '', '8', NULL),
(767, 159, 'Features', 'features', '', '34_786, 31_140', NULL),
(768, 159, 'Message', 'Message On Cake', '', 'ghfgerfgdfg', NULL),
(769, 159, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(770, 159, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(771, 159, 'Price', 'Price', '', '926', NULL),
(772, 159, 'Pid', 'Product', '', '6', NULL),
(773, 160, 'Features', 'features', '', '34_2453, 31_251', NULL),
(774, 160, 'Message', 'Message On Cake', '', 'twelve inch eggless honey dip', NULL),
(775, 160, 'FeatureText', 'FeatureText', '', '12-inch_34_2453+Eggless_31_251', NULL),
(776, 160, 'Delivery', 'Delivery Date', '', '2023-12-20', 'datetime'),
(777, 160, 'Price', 'Price', '', '2704', NULL),
(778, 160, 'Pid', 'Product', '', '7', NULL),
(779, 161, 'Features', 'features', '', '34_254, 31_421', NULL),
(780, 161, 'Message', 'Message On Cake', '', 'Form Event', NULL),
(781, 161, 'FeatureText', 'FeatureText', '', '12-inch_34_254+Eggless_31_421', NULL),
(782, 161, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(783, 161, 'Price', 'Price', '', '675', NULL),
(784, 161, 'Pid', 'Product', '', '8', NULL),
(785, 162, 'Features', 'features', '', '34_254, 31_421', NULL),
(786, 162, 'Message', 'Message On Cake', '', 'Form Event', NULL),
(787, 162, 'FeatureText', 'FeatureText', '', '12-inch_34_254+Eggless_31_421', NULL),
(788, 162, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(789, 162, 'Price', 'Price', '', '675', NULL),
(790, 162, 'Pid', 'Product', '', '8', NULL),
(791, 163, 'Features', 'features', '', '34_254, 31_421', NULL),
(792, 163, 'Message', 'Message On Cake', '', 'Form Event', NULL),
(793, 163, 'FeatureText', 'FeatureText', '', '12-inch_34_254+Eggless_31_421', NULL),
(794, 163, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(795, 163, 'Price', 'Price', '', '675', NULL),
(796, 163, 'Pid', 'Product', '', '8', NULL),
(797, 164, 'Id', 'Address Id', '', '1', NULL),
(798, 164, 'Name', 'Recipient Name', '', 'purnachandra', NULL),
(799, 164, 'Address', 'Recipient Address', '', '16-11-741/D/15', NULL),
(800, 164, 'Landmark', 'Landmark', '', 'Devaki', NULL),
(801, 164, 'Pincode', 'PIN Code', '', '500036', NULL);
INSERT INTO `forms_submission_value` (`id`, `submission_id`, `attribute`, `label`, `hint`, `value`, `format`) VALUES
(802, 164, 'Mobile1', 'Phone Number', '', '8331852700', NULL),
(803, 164, 'Mobile2', 'Phone Number (Alternative)', '', '', NULL),
(804, 165, 'Features', 'features', '', '36_2354, 31_251', NULL),
(805, 165, 'Message', 'Message On Cake', '', 'fdgergdfgdfg', NULL),
(806, 165, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(807, 165, 'Delivery', 'Delivery Date', '', '2023-12-13', 'datetime'),
(808, 165, 'Price', 'Price', '', '2605', NULL),
(809, 165, 'Pid', 'Product', '', '7', NULL),
(810, 166, 'Features', 'features', '', '36_2354, 31_251', NULL),
(811, 166, 'Message', 'Message On Cake', '', 'fdgergdfgdfg', NULL),
(812, 166, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(813, 166, 'Delivery', 'Delivery Date', '', '2023-12-13', 'datetime'),
(814, 166, 'Price', 'Price', '', '2605', NULL),
(815, 166, 'Pid', 'Product', '', '7', NULL),
(816, 167, 'Features', 'features', '', '34_2453, 31_251', NULL),
(817, 167, 'Message', 'Message On Cake', '', 'fghrthfghf', NULL),
(818, 167, 'FeatureText', 'FeatureText', '', '12-inch_34_2453+Eggless_31_251', NULL),
(819, 167, 'Delivery', 'Delivery Date', '', '2023-12-27', 'datetime'),
(820, 167, 'Price', 'Price', '', '2704', NULL),
(821, 167, 'Pid', 'Product', '', '7', NULL),
(822, 168, 'Features', 'features', '', '34_786, 31_140', NULL),
(823, 168, 'Message', 'Message On Cake', '', 'dfwefsdf', NULL),
(824, 168, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(825, 168, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(826, 168, 'Price', 'Price', '', '926', NULL),
(827, 168, 'Pid', 'Product', '', '6', NULL),
(828, 169, 'Features', 'features', '', '35_750, 31_421', NULL),
(829, 169, 'Message', 'Message On Cake', '', 'fgdgdfgdfg', NULL),
(830, 169, 'FeatureText', 'FeatureText', '', 'Pack_35_750+Eggless_31_421', NULL),
(831, 169, 'Delivery', 'Delivery Date', '', '2023-12-26', 'datetime'),
(832, 169, 'Price', 'Price', '', '1171', NULL),
(833, 169, 'Pid', 'Product', '', '8', NULL),
(834, 170, 'Id', 'Address Id', '', '1', NULL),
(835, 170, 'Name', 'Recipient Name', '', 'chandra', NULL),
(836, 170, 'Address', 'Recipient Address', '', '16-11-741/D/15, SBI Officers Colony', NULL),
(837, 170, 'Landmark', 'Landmark', '', 'fdfefdf', NULL),
(838, 170, 'Pincode', 'PIN Code', '', '500036', NULL),
(839, 170, 'Mobile1', 'Phone Number', '', '918331852700', NULL),
(840, 170, 'Mobile2', 'Phone Number (Alternative)', '', '500036', NULL),
(841, 171, 'Features', 'features', '', '34_786, 31_140', NULL),
(842, 171, 'Message', 'Message On Cake', '', 'gertgdfgdfgdf', NULL),
(843, 171, 'FeatureText', 'FeatureText', '', '12-inch_34_786+Eggless_31_140', NULL),
(844, 171, 'Delivery', 'Delivery Date', '', '2023-12-19', 'datetime'),
(845, 171, 'Price', 'Price', '', '926', NULL),
(846, 171, 'Pid', 'Product', '', '6', NULL),
(847, 172, 'Id', 'Address Id', '', '1', NULL),
(848, 172, 'Name', 'Recipient Name', '', 'chandra reddy', NULL),
(849, 172, 'Address', 'Recipient Address', '', '', NULL),
(850, 172, 'Landmark', 'Landmark', '', 'fdfefdf', NULL),
(851, 172, 'Pincode', 'PIN Code', '', '500036', NULL),
(852, 172, 'Mobile1', 'Phone Number', '', '918331852700', NULL),
(853, 172, 'Mobile2', 'Phone Number (Alternative)', '', '', NULL),
(854, 173, 'Id', 'Address Id', '', '1', NULL),
(855, 173, 'Name', 'Recipient Name', '', 'guruji guru', NULL),
(856, 173, 'Address', 'Recipient Address', '', 'Parvathnagar', NULL),
(857, 173, 'Landmark', 'Landmark', '', 'fdfefdf guru', NULL),
(858, 173, 'Pincode', 'PIN Code', '', '500018', NULL),
(859, 173, 'Mobile1', 'Phone Number', '', '752457878', NULL),
(860, 173, 'Mobile2', 'Phone Number (Alternative)', '', '', NULL),
(861, 174, 'Id', 'Address Id', '', '1', NULL),
(862, 174, 'Name', 'Recipient Name', '', 'chandra reddy guruji', NULL),
(863, 174, 'Address', 'Recipient Address', '', '16-11-741/D/15, SBI Officers Colony', NULL),
(864, 174, 'Landmark', 'Landmark', '', '', NULL),
(865, 174, 'Pincode', 'PIN Code', '', '500036', NULL),
(866, 174, 'Mobile1', 'Phone Number', '', '918331852700', NULL),
(867, 174, 'Mobile2', 'Phone Number (Alternative)', '', '', NULL),
(868, 175, 'Features', 'features', '', '36_2354, 31_251', NULL),
(869, 175, 'Message', 'Message On Cake', '', 'h ftrdhffgh ', NULL),
(870, 175, 'FeatureText', 'FeatureText', '', '6-inch-5-layer_36_2354+Eggless_31_251', NULL),
(871, 175, 'Delivery', 'Delivery Date', '', '2023-12-19', 'datetime'),
(872, 175, 'Price', 'Price', '', '2605', NULL),
(873, 175, 'Pid', 'Product', '', '7', NULL),
(874, 176, 'Features', 'features', '', '37_1256, ', NULL),
(875, 176, 'Message', 'Message On Cake', '', 'hgdryhdf bdf', NULL),
(876, 176, 'FeatureText', 'FeatureText', '', '2-Kg_37_1256', NULL),
(877, 176, 'Delivery', 'Delivery Date', '', '2023-12-20', 'datetime'),
(878, 176, 'Price', 'Price', '', '1256', NULL),
(879, 176, 'Pid', 'Product', '', '10', NULL),
(880, 177, 'Features', 'features', '', '37_1256, ', NULL),
(881, 177, 'Message', 'Message On Cake', '', 'fdxgergdfgbfv dsfgdf', NULL),
(882, 177, 'FeatureText', 'FeatureText', '', '2-Kg_37_1256', NULL),
(883, 177, 'Delivery', 'Delivery Date', '', '2023-12-06', 'datetime'),
(884, 177, 'Price', 'Price', '', '1256', NULL),
(885, 177, 'Pid', 'Product', '', '10', NULL),
(886, 178, 'Id', 'Address Id', '', '1', NULL),
(887, 178, 'Name', 'Recipient Name', '', 'Arjun Pandey', NULL),
(888, 178, 'Address', 'Recipient Address', '', '16-11-741/D/15, SBI Officers Colony', NULL),
(889, 178, 'Landmark', 'Landmark', '', '', NULL),
(890, 178, 'Pincode', 'PIN Code', '', '500036', NULL),
(891, 178, 'Mobile1', 'Phone Number', '', '380833185270', NULL),
(892, 178, 'Mobile2', 'Phone Number (Alternative)', '', '', NULL),
(893, 179, 'Id', 'Address Id', '', '1', NULL),
(894, 179, 'Name', 'Recipient Name', '', 'Haranadh Goud', NULL),
(895, 179, 'Address', 'Recipient Address', '', 'Parvathnagar', NULL),
(896, 179, 'Landmark', 'Landmark', '', 'defde', NULL),
(897, 179, 'Pincode', 'PIN Code', '', '500018', NULL),
(898, 179, 'Mobile1', 'Phone Number', '', '75245787845', NULL),
(899, 179, 'Mobile2', 'Phone Number (Alternative)', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_album`
--

CREATE TABLE `gallery_album` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT 0,
  `title` text NOT NULL,
  `description` text DEFAULT NULL,
  `cover_image_id` int(11) DEFAULT 0,
  `timestamp_create` int(11) DEFAULT 0,
  `timestamp_update` int(11) DEFAULT 0,
  `is_highlight` tinyint(1) DEFAULT 0,
  `sort_index` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery_album`
--

INSERT INTO `gallery_album` (`id`, `cat_id`, `title`, `description`, `cover_image_id`, `timestamp_create`, `timestamp_update`, `is_highlight`, `sort_index`) VALUES
(1, 1, '{\"en\":\"Butter Cookies\"}', '{\"en\":\"butter cookies\"}', 45, 0, 0, 1, 1),
(2, 2, '{\"en\":\"Chocolate Cakes\"}', '{\"en\":\"chocolate cakes\"}', 75, 0, 0, 1, 0),
(3, 4, '{\"en\":\"Honey Chocolate Cake\"}', '{\"en\":\"Honey Chocolate Cakes are made with Honey and Chocolate\"}', 113, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_album_image`
--

CREATE TABLE `gallery_album_image` (
  `image_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `sortindex` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery_album_image`
--

INSERT INTO `gallery_album_image` (`image_id`, `album_id`, `sortindex`) VALUES
(51, 1, 4),
(63, 1, 1),
(65, 1, 2),
(67, 1, 3),
(70, 1, 5),
(109, 2, 2),
(109, 3, 2),
(112, 2, 1),
(112, 3, 1),
(120, 2, 4),
(120, 3, 4),
(122, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_cat`
--

CREATE TABLE `gallery_cat` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `cover_image_id` int(11) DEFAULT 0,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery_cat`
--

INSERT INTO `gallery_cat` (`id`, `title`, `cover_image_id`, `description`) VALUES
(1, '{\"en\":\"Butter Cookies\"}', 132, '{\"en\":\"Butter Cookies\"}'),
(2, '{\"en\":\"Chocolate Cakes\"}', 75, '{\"en\":\"chocaolate cakes\"}'),
(3, '{\"en\":\"Vanilla Cakes\"}', 79, '{\"en\":\"vanilla cakes\"}'),
(4, '{\"en\":\"Honey Chocolate Cake\"}', 109, '{\"en\":\"Honey Chocolate Dip Cake\"}');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1701455399),
('m140209_132017_init', 1702388063),
('m140403_174025_create_account_table', 1702388063),
('m140504_113157_update_tables', 1702388063),
('m140504_130429_create_token_table', 1702388063),
('m140830_171933_fix_ip_field', 1702388063),
('m140830_172703_change_account_table_name', 1702388063),
('m141104_104622_admin_group', 1701455401),
('m141104_104631_admin_user_group', 1701455401),
('m141104_114809_admin_user', 1701455401),
('m141203_121042_admin_lang', 1701455401),
('m141203_143052_cms_cat', 1701455401),
('m141203_143059_cms_nav', 1701455401),
('m141203_143111_cms_nav_item', 1701455401),
('m141208_134038_cms_nav_item_page', 1701455401),
('m141222_110026_update_ip_field', 1702388063),
('m141222_135246_alter_username_length', 1702399410),
('m150106_095003_cms_layout', 1701455401),
('m150108_154017_cms_block', 1701455401),
('m150108_155009_cms_nav_item_page_block_item', 1701455401),
('m150122_125429_cms_nav_item_module', 1701455401),
('m150205_141350_block_group', 1701455401),
('m150304_152220_admin_storage_folder', 1701455401),
('m150304_152238_admin_storage_file', 1701455401),
('m150304_152244_admin_storage_filter', 1701455401),
('m150304_152250_admin_storage_effect', 1701455401),
('m150304_152256_admin_storage_image', 1701455401),
('m150309_142652_admin_storage_filter_chain', 1701455401),
('m150323_125407_admin_auth', 1701455401),
('m150323_132625_admin_group_auth', 1701455401),
('m150331_125022_admin_ngrest_log', 1701455401),
('m150504_094950_gallery_album', 1701455401),
('m150504_132138_gallery_album_image', 1701455401),
('m150601_105400_gallery_cat', 1701455401),
('m150614_103145_update_social_account_table', 1702399410),
('m150615_094744_admin_user_login', 1701455401),
('m150617_200836_admin_user_online', 1701455401),
('m150623_212711_fix_username_notnull', 1702399410),
('m150626_084948_admin_search_data', 1701455401),
('m150915_081559_admin_config', 1701455401),
('m150924_112309_cms_nav_prop', 1701455401),
('m150924_120914_admin_prop', 1701455401),
('m151012_072207_cms_log', 1701455401),
('m151022_143429_cms_nav_item_redirect', 1701455401),
('m151026_161841_admin_tag', 1701455401),
('m151218_234654_add_timezone_to_profile', 1702399411),
('m160629_092417_cmspermissiontable', 1701455402),
('m160915_081618_create_admin_logger_table', 1701455402),
('m161219_150240_admin_lang_soft_delete', 1701455402),
('m161220_183300_lcp_base_tables', 1701455402),
('m161226_003706_add_user_group_table', 1702399411),
('m170106_160013_add_approved_at_column_to_user', 1702399411),
('m170116_120553_cms_block_variation_field', 1701455402),
('m170131_104109_user_model_updates', 1701455402),
('m170218_215610_cms_nav_layout_file', 1701455402),
('m170301_084325_cms_config', 1701455402),
('m170304_083000_override_user_profile', 1702446044),
('m170619_103728_cms_blocksettings', 1701455402),
('m170926_144137_add_admin_user_session_id_column', 1701455402),
('m170926_164913_add_ngrest_log_diff_data', 1701455402),
('m171003_065811_add_class_column_to_block_group_table', 1701455402),
('m171009_083835_add_admin_user_login_destroy_info', 1701455402),
('m171023_145135_gallery_ref_table_sortindex', 1701455402),
('m171121_170909_add_publish_at_date', 1701455402),
('m171129_104706_config_add_system_type', 1701455402),
('m171206_113949_cms_redirection_table', 1701455402),
('m180120_153829_create_buyer_table', 1701492272),
('m180120_154828_create_order_table', 1701493986),
('m180120_154829_create_order_table', 1701505506),
('m180214_134657_system_user_ngrest_deletion', 1701455402),
('m180326_170839_file_disposition', 1701455402),
('m180412_092824_user_security_columns_v12', 1701455402),
('m180527_225613_user_login_ipv6', 1701455402),
('m180619_134519_indexes', 1701455402),
('m180723_120432_indexes', 1701455403),
('m180723_123237_indexes', 1701455403),
('m181023_135132_scheduler', 1701455403),
('m181113_120432_user_index', 1701455403),
('m190219_142706_og_image', 1701455403),
('m190220_105505_cms_redirect_target_field', 1701455403),
('m190227_123549_cms_nav_item_strict_url_parsing', 1701455403),
('m190327_140741_auth_pool_field', 1701455403),
('m190508_142342_admin_user_api_request', 1701455403),
('m190521_145029_admin_user_notification', 1701455403),
('m190529_123549_cms_nav_item_module_route_and_params', 1701455404),
('m190728_084936_cms_theme', 1701455404),
('m200128_141129_v3_update', 1701455404),
('m200226_211908_nav_item_is_cacheable', 1701455404),
('m200706_202002_cms_website', 1701455404),
('m200910_114548_basetables', 1702617021),
('m201112_133820_db_session_table', 1701455404),
('m210422_134420_v4_update', 1701455404),
('m210510_082714_admin_config_text', 1701455404),
('m210605_172811_cms_website_permissions', 1701455404),
('m210708_091145_v4', 1701455404),
('m230720_130000_page_link_anchor', 1703344679),
('m231202_083449_create_buyer_table', 1701508170),
('m311024_135132_tag', 1701455404);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `delivery` varchar(255) DEFAULT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `buyer_id`, `amount`, `phone`, `email`, `delivery`, `delivery_id`, `payment_id`, `text`, `comment`, `created_at`, `updated_at`, `status`) VALUES
(1, 10, 12579, '389183318527', 'provdigi@gmail.com', NULL, 2, 2, NULL, 'gfhrt bf drthbrtd', 2147483647, 2147483647, 5),
(2, 10, 8112, '389183318527', 'provdigi@gmail.com', NULL, 1, 2, NULL, 'sdfwef sdfs efwe wfe ', 2147483647, 2147483647, 5),
(3, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(4, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(5, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(6, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(7, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(8, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(9, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(10, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(11, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(12, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(13, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(14, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(15, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(16, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(17, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(18, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(19, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(20, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(21, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(22, 11, 0, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(23, 10, 3477, '389183318527', 'provdigi@gmail.com', NULL, 1, 3, NULL, 'l jkhjrtfhnfgv rtdyh', 2147483647, 2147483647, 1),
(24, 10, 0, '389183318527', 'provdigi@gmail.com', NULL, 1, 3, NULL, 'l jkhjrtfhnfgv rtdyh', 2147483647, 2147483647, 1),
(25, 11, 4953, '380833185270', 'provdigi@gmail.com', NULL, 2, 1, NULL, 'yjgghjm vcbdfghd', 2147483647, 2147483647, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `count` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `features` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `article_id`, `name`, `count`, `price`, `features`) VALUES
(1, 1, 7, NULL, 0, 0, ''),
(2, 1, 7, NULL, 0, 0, ''),
(3, 21, 7, 'Chocolate Cake, Honey Chocolate Dip Cake', 3, 2704, '[28][8]1+[28][9]1'),
(4, 21, 6, 'Chocolate Cake, Brown Choclolate Cake', 1, 1565, '[28][8]0+[28][9]1'),
(5, 23, 9, 'Vanilla Cake, Vanilla Cake with Butter Cream', 1, 1639, '[30][8]1+[30][9]0'),
(6, 23, 9, 'Vanilla Cake, Vanilla Cake with Butter Cream', 1, 989, '[30][8]0+[30][9]0'),
(7, 23, 9, 'Vanilla Cake, Vanilla Cake with Butter Cream', 1, 849, '[30][8]0+[30][9]1'),
(8, 25, 9, 'Vanilla Cake, Vanilla Cake with Butter Cream', 1, 1499, '[30][8]1+[30][9]1'),
(9, 25, 7, 'Chocolate Cake, Honey Chocolate Dip Cake', 1, 2704, '[28][8]1+[28][9]1'),
(10, 25, 8, 'Butter Cookies, Creamy Butter Cookies', 1, 750, '[29][8]0+[29][9]0');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `position` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `type`, `position`, `name`, `enabled`) VALUES
(1, 2, 1, 'Cash upon receipt', 1),
(2, 3, 2, 'Payment by card', 1),
(3, 2, 3, 'Cash on delivery', 1),
(4, 1, 4, 'Payment to a PrivatBank card', 1),
(5, 4, 5, 'Payment in installments', 1),
(6, 5, 6, 'Installment', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `patronymic` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `phone` int(16) DEFAULT NULL,
  `info` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `name`, `surname`, `patronymic`, `avatar`, `phone`, `info`) VALUES
(1, 8, 'pravinya', NULL, NULL, '2.jpg', NULL, ''),
(2, 10, 'hello', NULL, NULL, '2.jpg', NULL, ''),
(3, 12, 'Gunn', 'Chandra Reddy', '', NULL, 0, ''),
(4, 30, 'two', 'hello2', 'dsd', NULL, 2147483647, ''),
(5, 31, 'nbd', 'hgrr', '', NULL, 2147483647, ''),
(6, 32, 'user', 'coma', 'hi', NULL, 2147483647, '');

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `data` text DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(8, 'Rcxu8ShIIEknyPYG0zVYuTAlCbnw8EX8', 1702401461, 0),
(10, '4-VVjVwk_dX3l9Fv5BK4fE3uacLo6Vcq', 1702442225, 0),
(32, 'rpJ7_o1yb9j4wYOPQ77cI5oJvRrS-Jmz', 1703885427, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `user_group_id` int(11) DEFAULT NULL,
  `approved_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `user_group_id`, `approved_at`) VALUES
(8, 'provdigi1@gmail.com', 'provdigi1@gmail.com', '$2y$13$GmuVZdEOd/XNTq23FW9fWeGpFiQwRvqvEpLYbHqbYBYNQsfW8SWD.', 'KGt8JcaqQ1LaWlNA0Q3rEFAytTEnQLHe', 1702401460, NULL, NULL, '::1', 1702401461, 1702401461, 0, NULL, NULL),
(10, 'hello@coderseden.com', 'hello@coderseden.com', '$2y$13$EpU3dtGwyf802g6XaBk2/uzwdgufDpyHSO4.VfQHwNhV7DcEm9gba', 'GdQzN_qdvTyaaaSbMVnRJ6Ct65Ldc00r', 1702442270, NULL, NULL, '::1', 1702442225, 1702442225, 0, NULL, NULL),
(12, 'provdigi@gmail.com', 'provdigi@gmail.com', '$2y$13$hOdTJWxGa7tUeLLm4jkS0.8gPZUY5rsLU1kciX3sg6nLqFue1Ehvi', 'ijWRLD1L2LHxVxB7Bh678W697gVKr-Od', 1702494185, NULL, NULL, '::1', 1702476958, 1702476958, 0, NULL, 1702476958),
(30, 'hello2@coderseden.com', 'hello2@coderseden.com', '$2y$13$YVANK0CG04dyzppC49AK8.R.Iw2tUSkWU1MIMU/6fghoWiqBLVN3m', 'h10hNq8h-5frAzOW_scnls16R0PbnLri', 1702497244, NULL, NULL, '::1', 1702497223, 1702497223, 0, NULL, NULL),
(31, 'hello3@coderseden.com', 'hello3@coderseden.com', '$2y$13$3QY4/DpBvygXZSdsLUSNLO.35JqPQtX7O2eWmuKCMEza4ut8SBaVC', 'KQxNpjTwSb5t5HOihNc22goUAp1jGLKE', 1702497830, NULL, NULL, '::1', 1702497795, 1702497795, 0, NULL, NULL),
(32, 'provdigi@gmail.coma', 'provdigi@gmail.coma', '$2y$13$ibOcVxgsvG3ONxWNX/0HOuRNLvGm3WCud.bvSaxIP7MaRDQ2BTuVe', 'bqXRMMLR8MqtshPKemmQKlCbg-9Yat5I', NULL, NULL, NULL, '::1', 1703885427, 1703885427, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `user_profile_id` int(11) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `house` varchar(255) DEFAULT NULL,
  `apartment` varchar(11) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `postoffice` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`id`, `user_profile_id`, `country`, `region`, `city`, `street`, `house`, `apartment`, `zipcode`, `postoffice`) VALUES
(1, 2, 'India', 'Telangana', 'Hyderabad', 'Lakshmi Nagar Colony', '16-11-741/D/15, SBI Officers Colony', 'Mathrukrupa', 500036, NULL),
(2, 5, 'India', 'Meridian Villa,#678,Banjarahills,Hyderabad,TG-85654852,52874563', 'Hyderabad', 'Parvathnagar', '111-14-254/55/4', 'Meghana', 500018, NULL),
(4, 3, 'India', 'వల్లూరి', 'Hyderabad', '16, SBI Officers Colony Road, Moosarambagh', '12478', 'My House', 500036, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_group_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_auth`
--
ALTER TABLE `admin_auth`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_route` (`route`),
  ADD KEY `index_api` (`api`);

--
-- Indexes for table `admin_config`
--
ALTER TABLE `admin_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_name` (`name`);

--
-- Indexes for table `admin_group`
--
ALTER TABLE `admin_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_group_auth`
--
ALTER TABLE `admin_group_auth`
  ADD KEY `index_admin_group_auth_group_id` (`group_id`),
  ADD KEY `index_auth_id` (`auth_id`),
  ADD KEY `index_group_id_auth_id` (`group_id`,`auth_id`);

--
-- Indexes for table `admin_lang`
--
ALTER TABLE `admin_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_short_code` (`short_code`);

--
-- Indexes for table `admin_logger`
--
ALTER TABLE `admin_logger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_ngrest_log`
--
ALTER TABLE `admin_ngrest_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_admin_ngrest_log_user_id` (`user_id`);

--
-- Indexes for table `admin_property`
--
ALTER TABLE `admin_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `var_name` (`var_name`),
  ADD KEY `index_var_name` (`var_name`),
  ADD KEY `index_class_name` (`class_name`);

--
-- Indexes for table `admin_proxy_build`
--
ALTER TABLE `admin_proxy_build`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `build_token` (`build_token`),
  ADD KEY `index_machine_id` (`machine_id`),
  ADD KEY `index_build_token` (`build_token`);

--
-- Indexes for table `admin_proxy_machine`
--
ALTER TABLE `admin_proxy_machine`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identifier` (`identifier`),
  ADD KEY `index_access_token` (`access_token`),
  ADD KEY `index_identifier` (`identifier`),
  ADD KEY `index_is_deleted` (`is_deleted`),
  ADD KEY `index_identifier_is_deleted` (`identifier`,`is_deleted`);

--
-- Indexes for table `admin_queue`
--
ALTER TABLE `admin_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channel` (`channel`),
  ADD KEY `reserved_at` (`reserved_at`),
  ADD KEY `priority` (`priority`);

--
-- Indexes for table `admin_queue_log`
--
ALTER TABLE `admin_queue_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue_id` (`queue_id`);

--
-- Indexes for table `admin_queue_log_error`
--
ALTER TABLE `admin_queue_log_error`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_admin_queue_log_error_queue_log_id` (`queue_log_id`);

--
-- Indexes for table `admin_scheduler`
--
ALTER TABLE `admin_scheduler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_search_data`
--
ALTER TABLE `admin_search_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_session`
--
ALTER TABLE `admin_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_storage_effect`
--
ALTER TABLE `admin_storage_effect`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identifier` (`identifier`);

--
-- Indexes for table `admin_storage_file`
--
ALTER TABLE `admin_storage_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_storage_file_index1` (`folder_id`,`is_hidden`,`is_deleted`,`name_original`),
  ADD KEY `admin_storage_file_index2` (`is_deleted`,`id`),
  ADD KEY `index_upload_user_id` (`upload_user_id`),
  ADD KEY `index_id_hash_name_is_deleted` (`id`,`hash_name`,`is_deleted`),
  ADD KEY `index_name_new_compound` (`name_new_compound`);

--
-- Indexes for table `admin_storage_filter`
--
ALTER TABLE `admin_storage_filter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identifier` (`identifier`);

--
-- Indexes for table `admin_storage_filter_chain`
--
ALTER TABLE `admin_storage_filter_chain`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_filter_id` (`filter_id`),
  ADD KEY `index_effect_id` (`effect_id`);

--
-- Indexes for table `admin_storage_folder`
--
ALTER TABLE `admin_storage_folder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_storage_image`
--
ALTER TABLE `admin_storage_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_storage_image_index1` (`file_id`),
  ADD KEY `index_image_filter_id` (`filter_id`),
  ADD KEY `index_file_id_filter_id` (`file_id`,`filter_id`);

--
-- Indexes for table `admin_tag`
--
ALTER TABLE `admin_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `admin_tag_relation`
--
ALTER TABLE `admin_tag_relation`
  ADD PRIMARY KEY (`tag_id`,`table_name`,`pk_id`),
  ADD KEY `index_tag_id` (`tag_id`),
  ADD KEY `index_table_name` (`table_name`),
  ADD KEY `index_pk_id` (`pk_id`),
  ADD KEY `index_table_name_pk_id` (`table_name`,`pk_id`);

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `auth_token` (`auth_token`),
  ADD KEY `index_email` (`email`),
  ADD KEY `index_admin_user_auth_token` (`auth_token`),
  ADD KEY `index_is_deleted_auth_token` (`is_deleted`,`auth_token`),
  ADD KEY `index_is_deleted_id` (`is_deleted`,`id`),
  ADD KEY `index_api_last_activity_id` (`api_last_activity`,`id`);

--
-- Indexes for table `admin_user_auth_notification`
--
ALTER TABLE `admin_user_auth_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_admin_user_auth_notification_user_id` (`user_id`),
  ADD KEY `index_admin_user_auth_notification_auth_id` (`auth_id`);

--
-- Indexes for table `admin_user_device`
--
ALTER TABLE `admin_user_device`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_key` (`auth_key`),
  ADD KEY `index_admin_user_device_user_id` (`user_id`);

--
-- Indexes for table `admin_user_group`
--
ALTER TABLE `admin_user_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_admin_user_group_user_id` (`user_id`),
  ADD KEY `index_admin_user_group_group_id` (`group_id`),
  ADD KEY `index_user_id_group_id` (`user_id`,`group_id`);

--
-- Indexes for table `admin_user_login`
--
ALTER TABLE `admin_user_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_admin_user_login_user_id` (`user_id`),
  ADD KEY `index_ip` (`ip`),
  ADD KEY `index_admin_user_login_auth_token` (`auth_token`),
  ADD KEY `index_is_destroyed` (`is_destroyed`),
  ADD KEY `index_user_id_timestamp_create` (`user_id`,`timestamp_create`);

--
-- Indexes for table `admin_user_login_lockout`
--
ALTER TABLE `admin_user_login_lockout`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_admin_user_login_lockout_user_id` (`user_id`);

--
-- Indexes for table `admin_user_online`
--
ALTER TABLE `admin_user_online`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_admin_user_online_user_id` (`user_id`);

--
-- Indexes for table `admin_user_request`
--
ALTER TABLE `admin_user_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_admin_user_admin_user_id` (`user_id`);

--
-- Indexes for table `a_user`
--
ALTER TABLE `a_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_article`
--
ALTER TABLE `catalog_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_article_price`
--
ALTER TABLE `catalog_article_price`
  ADD PRIMARY KEY (`article_id`,`currency_id`,`unit_id`,`qty`,`value_id`) USING BTREE,
  ADD KEY `fk-catalog_article_price-currency_id` (`currency_id`);

--
-- Indexes for table `catalog_article_value_ref`
--
ALTER TABLE `catalog_article_value_ref`
  ADD PRIMARY KEY (`article_id`,`value_id`),
  ADD KEY `fk-catalog_article_value_ref-value_id` (`value_id`);

--
-- Indexes for table `catalog_brand`
--
ALTER TABLE `catalog_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-catalog_brand-image_id` (`image_id`);

--
-- Indexes for table `catalog_currency`
--
ALTER TABLE `catalog_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_delivery`
--
ALTER TABLE `catalog_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_feature`
--
ALTER TABLE `catalog_feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_feature_filter`
--
ALTER TABLE `catalog_feature_filter`
  ADD PRIMARY KEY (`feature_id`,`group_id`),
  ADD KEY `fk-nxt_feature_filter-category_id` (`group_id`);

--
-- Indexes for table `catalog_feature_group_ref`
--
ALTER TABLE `catalog_feature_group_ref`
  ADD PRIMARY KEY (`feature_id`,`group_id`);

--
-- Indexes for table `catalog_group`
--
ALTER TABLE `catalog_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-catalog_group-parent_id` (`parent_id`),
  ADD KEY `fk-catalog_group-cover_image_id` (`cover_image_id`);

--
-- Indexes for table `catalog_payment`
--
ALTER TABLE `catalog_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_product`
--
ALTER TABLE `catalog_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-catalog_product-brand_id` (`brand_id`);

--
-- Indexes for table `catalog_product_group_ref`
--
ALTER TABLE `catalog_product_group_ref`
  ADD PRIMARY KEY (`product_id`,`group_id`),
  ADD KEY `fk-catalog_product_group_ref-group_id` (`group_id`);

--
-- Indexes for table `catalog_product_related_ref`
--
ALTER TABLE `catalog_product_related_ref`
  ADD PRIMARY KEY (`product_id`,`related_id`),
  ADD KEY `fk-catalog_product_related_ref-related_id` (`related_id`) USING BTREE;

--
-- Indexes for table `catalog_product_status`
--
ALTER TABLE `catalog_product_status`
  ADD PRIMARY KEY (`product_id`,`status_id`),
  ADD KEY `fk-product_status-status_id` (`status_id`);

--
-- Indexes for table `catalog_related`
--
ALTER TABLE `catalog_related`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_review`
--
ALTER TABLE `catalog_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-review-product_id` (`product_id`) USING BTREE;

--
-- Indexes for table `catalog_set`
--
ALTER TABLE `catalog_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_unit`
--
ALTER TABLE `catalog_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_value`
--
ALTER TABLE `catalog_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-catalog_value-feature_id` (`feature_id`);

--
-- Indexes for table `cms_block`
--
ALTER TABLE `cms_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_cms_block_group_id` (`group_id`),
  ADD KEY `index_cms_block_class` (`class`);

--
-- Indexes for table `cms_block_group`
--
ALTER TABLE `cms_block_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_config`
--
ALTER TABLE `cms_config`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `cms_layout`
--
ALTER TABLE `cms_layout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_log`
--
ALTER TABLE `cms_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_cms_log_user_id` (`user_id`);

--
-- Indexes for table `cms_nav`
--
ALTER TABLE `cms_nav`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_cms_nav_nav_container` (`nav_container_id`),
  ADD KEY `index_cms_nav_parent_nav_id` (`parent_nav_id`);

--
-- Indexes for table `cms_nav_container`
--
ALTER TABLE `cms_nav_container`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_nav_item`
--
ALTER TABLE `cms_nav_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_cms_nav_item_alias` (`alias`),
  ADD KEY `index_cms_nav_item_nav_id` (`nav_id`),
  ADD KEY `index_cms_nav_item_lang_id` (`lang_id`),
  ADD KEY `index_cms_nav_item_nav_item_type_id` (`nav_item_type_id`),
  ADD KEY `index_cms_nav_item_create_user_id` (`create_user_id`),
  ADD KEY `index_cms_nav_item_update_user_id` (`update_user_id`);

--
-- Indexes for table `cms_nav_item_module`
--
ALTER TABLE `cms_nav_item_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_nav_item_page`
--
ALTER TABLE `cms_nav_item_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_cms_nav_item_page_layout_id` (`layout_id`),
  ADD KEY `index_cms_nav_item_page_nav_item_id` (`nav_item_id`),
  ADD KEY `index_cms_nav_item_page_create_user_id` (`create_user_id`);

--
-- Indexes for table `cms_nav_item_page_block_item`
--
ALTER TABLE `cms_nav_item_page_block_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_cms_nav_item_page_block_item_block_id` (`block_id`),
  ADD KEY `index_cms_nav_item_page_block_item_placeholder_var` (`placeholder_var`),
  ADD KEY `index_cms_nav_item_page_block_item_nav_item_page_id` (`nav_item_page_id`),
  ADD KEY `index_cms_nav_item_page_block_item_prev_id` (`prev_id`),
  ADD KEY `index_cms_nav_item_page_block_item_create_user_id` (`create_user_id`),
  ADD KEY `index_cms_nav_item_page_block_item_update_user_id` (`update_user_id`),
  ADD KEY `index_nipi_pv_pi_ih_si` (`nav_item_page_id`,`placeholder_var`,`prev_id`,`is_hidden`,`sort_index`);

--
-- Indexes for table `cms_nav_item_redirect`
--
ALTER TABLE `cms_nav_item_redirect`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_nav_permission`
--
ALTER TABLE `cms_nav_permission`
  ADD KEY `index_cms_nav_permission_group_id` (`group_id`),
  ADD KEY `index_cms_nav_permission_nav_id` (`nav_id`),
  ADD KEY `index_cms_nav_permission_group_id_nav_id` (`group_id`,`nav_id`);

--
-- Indexes for table `cms_nav_property`
--
ALTER TABLE `cms_nav_property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_cms_nav_property_nav_id` (`nav_id`),
  ADD KEY `index_cms_nav_property_admin_prop_id` (`admin_prop_id`);

--
-- Indexes for table `cms_redirect`
--
ALTER TABLE `cms_redirect`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_theme`
--
ALTER TABLE `cms_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_path` (`base_path`);

--
-- Indexes for table `cms_website`
--
ALTER TABLE `cms_website`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `host` (`host`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms_form`
--
ALTER TABLE `forms_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms_submission`
--
ALTER TABLE `forms_submission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `forms_submission_value`
--
ALTER TABLE `forms_submission_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `submission_id` (`submission_id`);

--
-- Indexes for table `gallery_album`
--
ALTER TABLE `gallery_album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_album_image`
--
ALTER TABLE `gallery_album_image`
  ADD PRIMARY KEY (`image_id`,`album_id`);

--
-- Indexes for table `gallery_cat`
--
ALTER TABLE `gallery_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-order-buyer_id` (`buyer_id`),
  ADD KEY `fk-order-delivery_id` (`delivery_id`),
  ADD KEY `fk-order-payment_id` (`payment_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-order_product-order_id` (`order_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_user_id:user_id` (`user_id`);

--
-- Indexes for table `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`),
  ADD UNIQUE KEY `user_unique_email` (`email`),
  ADD KEY `user:user_group_id` (`user_group_id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_address_user_profile_id:profile_id` (`user_profile_id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_auth`
--
ALTER TABLE `admin_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `admin_config`
--
ALTER TABLE `admin_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_group`
--
ALTER TABLE `admin_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_lang`
--
ALTER TABLE `admin_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_logger`
--
ALTER TABLE `admin_logger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_ngrest_log`
--
ALTER TABLE `admin_ngrest_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1680;

--
-- AUTO_INCREMENT for table `admin_property`
--
ALTER TABLE `admin_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_proxy_build`
--
ALTER TABLE `admin_proxy_build`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_proxy_machine`
--
ALTER TABLE `admin_proxy_machine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_queue`
--
ALTER TABLE `admin_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_queue_log`
--
ALTER TABLE `admin_queue_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_queue_log_error`
--
ALTER TABLE `admin_queue_log_error`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_scheduler`
--
ALTER TABLE `admin_scheduler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_search_data`
--
ALTER TABLE `admin_search_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_storage_effect`
--
ALTER TABLE `admin_storage_effect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_storage_file`
--
ALTER TABLE `admin_storage_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `admin_storage_filter`
--
ALTER TABLE `admin_storage_filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_storage_filter_chain`
--
ALTER TABLE `admin_storage_filter_chain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_storage_folder`
--
ALTER TABLE `admin_storage_folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_storage_image`
--
ALTER TABLE `admin_storage_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `admin_tag`
--
ALTER TABLE `admin_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_user_auth_notification`
--
ALTER TABLE `admin_user_auth_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `admin_user_device`
--
ALTER TABLE `admin_user_device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `admin_user_group`
--
ALTER TABLE `admin_user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_user_login`
--
ALTER TABLE `admin_user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `admin_user_login_lockout`
--
ALTER TABLE `admin_user_login_lockout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `admin_user_online`
--
ALTER TABLE `admin_user_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `admin_user_request`
--
ALTER TABLE `admin_user_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `a_user`
--
ALTER TABLE `a_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `catalog_article`
--
ALTER TABLE `catalog_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `catalog_brand`
--
ALTER TABLE `catalog_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `catalog_currency`
--
ALTER TABLE `catalog_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `catalog_delivery`
--
ALTER TABLE `catalog_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `catalog_feature`
--
ALTER TABLE `catalog_feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `catalog_group`
--
ALTER TABLE `catalog_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `catalog_payment`
--
ALTER TABLE `catalog_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `catalog_product`
--
ALTER TABLE `catalog_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `catalog_related`
--
ALTER TABLE `catalog_related`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `catalog_review`
--
ALTER TABLE `catalog_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `catalog_set`
--
ALTER TABLE `catalog_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `catalog_unit`
--
ALTER TABLE `catalog_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `catalog_value`
--
ALTER TABLE `catalog_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `cms_block`
--
ALTER TABLE `cms_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `cms_block_group`
--
ALTER TABLE `cms_block_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cms_layout`
--
ALTER TABLE `cms_layout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cms_log`
--
ALTER TABLE `cms_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_nav`
--
ALTER TABLE `cms_nav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cms_nav_container`
--
ALTER TABLE `cms_nav_container`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_nav_item`
--
ALTER TABLE `cms_nav_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cms_nav_item_module`
--
ALTER TABLE `cms_nav_item_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cms_nav_item_page`
--
ALTER TABLE `cms_nav_item_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cms_nav_item_page_block_item`
--
ALTER TABLE `cms_nav_item_page_block_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `cms_nav_item_redirect`
--
ALTER TABLE `cms_nav_item_redirect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_nav_property`
--
ALTER TABLE `cms_nav_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cms_redirect`
--
ALTER TABLE `cms_redirect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_theme`
--
ALTER TABLE `cms_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_website`
--
ALTER TABLE `cms_website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `forms_form`
--
ALTER TABLE `forms_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `forms_submission`
--
ALTER TABLE `forms_submission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `forms_submission_value`
--
ALTER TABLE `forms_submission_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=970;

--
-- AUTO_INCREMENT for table `gallery_album`
--
ALTER TABLE `gallery_album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gallery_cat`
--
ALTER TABLE `gallery_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `catalog_review`
--
ALTER TABLE `catalog_review`
  ADD CONSTRAINT `fk-review_product_id` FOREIGN KEY (`product_id`) REFERENCES `catalog_product` (`id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_user_id:user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user:user_group_id` FOREIGN KEY (`user_group_id`) REFERENCES `user_group` (`id`);

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_user_profile_id:profile_id` FOREIGN KEY (`user_profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
