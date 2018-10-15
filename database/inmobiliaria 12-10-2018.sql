-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-10-2018 a las 23:21:03
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inmobiliaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrio_propiedad`
--

CREATE TABLE `barrio_propiedad` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `barrio_propiedad`
--

INSERT INTO `barrio_propiedad` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2018-10-01 01:21:05', NULL, 'Abasto'),
(2, '2018-10-01 01:21:14', NULL, 'Agronomía'),
(3, '2018-10-01 01:21:21', NULL, 'Almagro'),
(4, '2018-10-01 01:21:27', NULL, 'Balvanera'),
(5, '2018-10-01 01:21:34', NULL, 'Barracas'),
(6, '2018-10-01 01:21:41', NULL, 'Barrio Norte'),
(7, '2018-10-01 01:21:48', NULL, 'Belgrano'),
(8, '2018-10-01 01:21:54', NULL, 'Caballito'),
(9, '2018-10-01 01:22:01', NULL, 'Chacarita'),
(10, '2018-10-01 01:22:07', NULL, 'Coghlan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `parameters` text COLLATE utf8mb4_unicode_ci,
  `responses` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2017-11-07 02:05:02', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-09-30 21:10:06', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/tipopropiedad/add-save', 'Add New Data departamento at TipoPropiedad', '', 1, '2018-09-30 22:00:24', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/tipopropiedad/add-save', 'Add New Data casa at TipoPropiedad', '', 1, '2018-09-30 22:00:28', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/tipopropiedad/add-save', 'Add New Data terreno at TipoPropiedad', '', 1, '2018-09-30 22:03:01', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/tipopropiedad/add-save', 'Add New Data oficina at TipoPropiedad', '', 1, '2018-09-30 22:03:21', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/tipopropiedad/add-save', 'Add New Data local at TipoPropiedad', '', 1, '2018-09-30 22:03:30', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/tipopropiedad/add-save', 'Add New Data Edificio comercial at TipoPropiedad', '', 1, '2018-09-30 22:03:46', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/tipopropiedad/add-save', 'Add New Data Cochera at TipoPropiedad', '', 1, '2018-09-30 22:03:53', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/tipopropiedad/add-save', 'Add New Data Deposito at TipoPropiedad', '', 1, '2018-09-30 22:04:06', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/tipopropiedad/add-save', 'Add New Data P.H. at TipoPropiedad', '', 1, '2018-09-30 22:04:19', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/tipopropiedad/edit-save/5', 'Update data Local at TipoPropiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>local</td><td>Local</td></tr></tbody></table>', 1, '2018-09-30 22:04:32', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/tipopropiedad/edit-save/4', 'Update data Oficina at TipoPropiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>oficina</td><td>Oficina</td></tr></tbody></table>', 1, '2018-09-30 22:04:40', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/tipopropiedad/edit-save/3', 'Update data Terreno at TipoPropiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>terreno</td><td>Terreno</td></tr></tbody></table>', 1, '2018-09-30 22:04:52', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/tipopropiedad/edit-save/2', 'Update data Casa at TipoPropiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>casa</td><td>Casa</td></tr></tbody></table>', 1, '2018-09-30 22:05:08', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/tipopropiedad/edit-save/1', 'Update data Departamento at TipoPropiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>departamento</td><td>Departamento</td></tr></tbody></table>', 1, '2018-09-30 22:05:15', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/tipooperacion/add-save', 'Add New Data Venta at tipooperacion', '', 1, '2018-10-01 00:40:28', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/tipooperacion/add-save', 'Add New Data Alquiler at tipooperacion', '', 1, '2018-10-01 00:40:36', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/tipooperacion/add-save', 'Add New Data Alquiler Temporario at tipooperacion', '', 1, '2018-10-01 00:40:46', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Buenos Aires at provincia', '', 1, '2018-10-01 00:43:18', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Catamarca at provincia', '', 1, '2018-10-01 00:43:26', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Chaco at provincia', '', 1, '2018-10-01 00:43:35', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Chubut at provincia', '', 1, '2018-10-01 00:43:43', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Córdoba at provincia', '', 1, '2018-10-01 00:43:51', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Corrientes at provincia', '', 1, '2018-10-01 00:43:58', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Entre Ríos at provincia', '', 1, '2018-10-01 00:44:06', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Formosa at provincia', '', 1, '2018-10-01 00:44:13', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/action-selected', 'Delete data 8,7,6,5,4,3,2,1 at provincia', '', 1, '2018-10-01 00:46:40', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Buenos Aires at provincia', '', 1, '2018-10-01 01:14:45', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Buenos Aires-GBA at provincia', '', 1, '2018-10-01 01:15:07', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Capital Federal at provincia', '', 1, '2018-10-01 01:15:14', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Catamarca at provincia', '', 1, '2018-10-01 01:15:20', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Chaco at provincia', '', 1, '2018-10-01 01:15:26', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Chubut at provincia', '', 1, '2018-10-01 01:15:33', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Córdoba at provincia', '', 1, '2018-10-01 01:15:38', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Corrientes at provincia', '', 1, '2018-10-01 01:15:43', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Entre Ríos at provincia', '', 1, '2018-10-01 01:15:49', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Formosa at provincia', '', 1, '2018-10-01 01:15:53', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Jujuy at provincia', '', 1, '2018-10-01 01:15:58', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data La Pampa at provincia', '', 1, '2018-10-01 01:16:03', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data La Rioja at provincia', '', 1, '2018-10-01 01:16:09', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Mendoza at provincia', '', 1, '2018-10-01 01:16:14', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Misiones at provincia', '', 1, '2018-10-01 01:16:19', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Neuquén at provincia', '', 1, '2018-10-01 01:16:24', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Río Negro at provincia', '', 1, '2018-10-01 01:16:30', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Salta at provincia', '', 1, '2018-10-01 01:16:34', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data San Juan at provincia', '', 1, '2018-10-01 01:16:40', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data San Luis at provincia', '', 1, '2018-10-01 01:16:45', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Santa Cruz at provincia', '', 1, '2018-10-01 01:16:51', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Santa Fe at provincia', '', 1, '2018-10-01 01:16:57', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Santiago del Estero at provincia', '', 1, '2018-10-01 01:17:03', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Tierra del Fuego at provincia', '', 1, '2018-10-01 01:17:10', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/provincia_propiedad/add-save', 'Add New Data Tucumán at provincia', '', 1, '2018-10-01 01:17:14', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/localidad_propiedad/add-save', 'Add New Data Ciudad Autónoma de Buenos Aires at localidad', '', 1, '2018-10-01 01:20:47', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/barrio_propiedad/add-save', 'Add New Data Abasto at barrio', '', 1, '2018-10-01 01:21:05', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/barrio_propiedad/add-save', 'Add New Data Agronomía at barrio', '', 1, '2018-10-01 01:21:14', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/barrio_propiedad/add-save', 'Add New Data Almagro at barrio', '', 1, '2018-10-01 01:21:21', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/barrio_propiedad/add-save', 'Add New Data Balvanera at barrio', '', 1, '2018-10-01 01:21:27', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/barrio_propiedad/add-save', 'Add New Data Barracas at barrio', '', 1, '2018-10-01 01:21:34', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/barrio_propiedad/add-save', 'Add New Data Barrio Norte at barrio', '', 1, '2018-10-01 01:21:41', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/barrio_propiedad/add-save', 'Add New Data Belgrano at barrio', '', 1, '2018-10-01 01:21:48', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/barrio_propiedad/add-save', 'Add New Data Caballito at barrio', '', 1, '2018-10-01 01:21:54', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/barrio_propiedad/add-save', 'Add New Data Chacarita at barrio', '', 1, '2018-10-01 01:22:01', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/barrio_propiedad/add-save', 'Add New Data Coghlan at barrio', '', 1, '2018-10-01 01:22:07', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/localidad_propiedad/add-save', 'Add New Data Azul at localidad', '', 1, '2018-10-01 01:22:44', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/localidad_propiedad/add-save', 'Add New Data Balcarce at localidad', '', 1, '2018-10-01 01:22:49', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/localidad_propiedad/add-save', 'Add New Data Baradero at localidad', '', 1, '2018-10-01 01:22:53', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/localidad_propiedad/add-save', 'Add New Data Carapachay at localidad', '', 1, '2018-10-01 01:22:59', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/localidad_propiedad/add-save', 'Add New Data Castelli at localidad', '', 1, '2018-10-01 01:23:03', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/localidad_propiedad/add-save', 'Add New Data Chacabuco at localidad', '', 1, '2018-10-01 01:23:08', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/localidad_propiedad/add-save', 'Add New Data Chascomús at localidad', '', 1, '2018-10-01 01:23:13', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost:8000/admin/localidad_propiedad/add-save', 'Add New Data Dolores at localidad', '', 1, '2018-10-01 01:23:17', NULL),
(72, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/add-save', 'Añadir nueva información  en propiedad', '', 1, '2018-10-01 21:56:59', NULL),
(73, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/1', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>precio_compra</td><td></td><td></td></tr><tr><td>precio_alquiler</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr><tr><td>map_latitude</td><td></td><td></td></tr><tr><td>map_longitude</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-01 21:58:38', NULL),
(74, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/1', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>publicado</td><td>0</td><td>1</td></tr><tr><td>precio_compra</td><td></td><td></td></tr><tr><td>precio_alquiler</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr><tr><td>map_latitude</td><td></td><td></td></tr><tr><td>map_longitude</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-01 21:58:48', NULL),
(75, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/1', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>precio_compra</td><td></td><td>234000</td></tr><tr><td>precio_alquiler</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr><tr><td>map_latitude</td><td></td><td></td></tr><tr><td>map_longitude</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-01 22:11:53', NULL),
(76, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/1', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>descripcion</td><td><p>fsdfsdf</p></td><td><p><b>fsdfsdf</b></p></td></tr><tr><td>precio_alquiler</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr><tr><td>map_latitude</td><td></td><td></td></tr><tr><td>map_longitude</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-01 22:15:37', NULL),
(77, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/delete-image', 'Eliminar la imagen de  en propiedad', '', 1, '2018-10-01 22:34:08', NULL),
(78, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/1', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>titulo</td><td>sdfsd</td><td>Belgrano 3 Ambientes con depcia al frente con balcón</td></tr><tr><td>descripcion</td><td><p><b>fsdfsdf</b></p></td><td>3 ambientes con dependencia, al frente con balcón y patio. Entrada principal y de servicio, muy luminoso, Muy buena distribución, Baño completo con ventana, Dependencia con baño, Patio con lavadero, Estado regular Muy buena ubicación, a 1 Cuadra de Av. Crámer, 4 cuadras Est. Belgrano R de ferrocarril Mitre, 6 cuadras de Est. Juramento del Subte D.<span style=\"white-space:pre\">	</span></td></tr><tr><td>imagen</td><td></td><td>uploads/1/2018-10/b433349c_f7e7_42da_aacf_4c90196f0be8_medium.jpg</td></tr><tr><td>tipopropiedad_id</td><td>7</td><td>1</td></tr><tr><td>precio_compra</td><td>234000</td><td>250000</td></tr><tr><td>precio_alquiler</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr><tr><td>map_latitude</td><td></td><td></td></tr><tr><td>map_longitude</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-01 22:36:59', NULL),
(79, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/menu_management/add-save', 'Añadir nueva información Detalles Propiedad en Menu Management', '', 1, '2018-10-01 22:37:59', NULL),
(80, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/1', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>precio_alquiler</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr><tr><td>map_latitude</td><td></td><td></td></tr><tr><td>map_longitude</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-01 23:14:21', NULL),
(81, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/1', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>publicado</td><td>0</td><td>1</td></tr><tr><td>precio_alquiler</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr><tr><td>map_latitude</td><td></td><td></td></tr><tr><td>map_longitude</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-01 23:14:30', NULL),
(82, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/1', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>precio_alquiler</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr><tr><td>map_latitude</td><td></td><td></td></tr><tr><td>map_longitude</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-02 00:05:56', NULL),
(83, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/1', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>publicado</td><td>0</td><td>1</td></tr><tr><td>precio_alquiler</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr><tr><td>map_latitude</td><td></td><td></td></tr><tr><td>map_longitude</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-02 00:08:51', NULL),
(84, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/1', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>precio_alquiler</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr><tr><td>map_latitude</td><td></td><td></td></tr><tr><td>map_longitude</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-02 00:16:33', NULL),
(85, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP ::1', '', 1, '2018-10-02 21:48:14', NULL),
(86, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/menu_management/add-save', 'Añadir nueva información Vista Previa en Menu Management', '', 1, '2018-10-02 21:55:21', NULL),
(87, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/menu_management/edit-save/10', 'Actualizar información Vista Previa en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>propiedad</td><td>../</td></tr><tr><td>icon</td><td>fa fa-eye</td><td>fa fa-photo</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-02 21:57:21', NULL),
(88, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/menu_management/edit-save/10', 'Actualizar información Vista Previa en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-photo</td><td>fa fa-eye</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-02 21:57:47', NULL),
(89, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/menu_management/edit-save/10', 'Actualizar información Vista Previa en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>../</td><td>/</td></tr><tr><td>icon</td><td>fa fa-eye</td><td>fa fa-home</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-02 21:59:18', NULL),
(90, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/menu_management/edit-save/10', 'Actualizar información Vista Previa en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Route</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-02 22:09:17', NULL),
(91, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/menu_management/edit-save/10', 'Actualizar información Vista Previa en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>/</td><td>propiedades</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-02 22:09:40', NULL),
(92, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/menu_management/edit-save/10', 'Actualizar información Vista Previa en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Controller & Method</td></tr><tr><td>path</td><td>propiedades</td><td>FrontendController</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-02 22:10:35', NULL),
(93, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/menu_management/edit-save/10', 'Actualizar información Vista Previa en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>FrontendController</td><td>FrontendController&url</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-02 22:11:46', NULL),
(94, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/menu_management/edit-save/10', 'Actualizar información Vista Previa en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Controller & Method</td><td>Statistic</td></tr><tr><td>path</td><td>FrontendController&url</td><td>statistic_builder/show/dashboard</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-02 22:12:03', NULL),
(95, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/menu_management/edit-save/10', 'Actualizar información Vista Previa en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-02 22:14:45', NULL),
(96, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/menu_management/edit-save/10', 'Actualizar información dashboard en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Vista Previa</td><td>dashboard</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-02 22:15:45', NULL),
(97, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/menu_management/add-save', 'Añadir nueva información Vista Previa en Menu Management', '', 1, '2018-10-02 23:10:04', NULL),
(98, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/menu_management/edit-save/8', 'Actualizar información Propiedad en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>propiedad</td><td>Propiedad</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-10-02 23:10:48', NULL),
(99, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/users/edit-save/1', 'Actualizar información Super Admin en Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2018-10/logo_dot.png</td></tr><tr><td>password</td><td>$2y$10$rFlRVUVH3noz89nMvcuiDezEhWJmS5g7O5QajtDQ0pWtvCvSck5jC</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2018-10-02 23:15:24', NULL),
(100, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2018-10-02 23:15:36', NULL),
(101, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP ::1', '', 1, '2018-10-02 23:15:38', NULL),
(102, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/menu_management/edit-save/11', 'Actualizar información Vista Previa en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-10-02 23:16:31', NULL),
(103, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/menu_management/edit-save/11', 'Actualizar información Vista Previa en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-10-02 23:16:42', NULL),
(104, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/1', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>publicado</td><td>0</td><td>1</td></tr><tr><td>precio_alquiler</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr><tr><td>map_latitude</td><td></td><td></td></tr><tr><td>map_longitude</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-02 23:26:17', NULL),
(105, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/1', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>precio_alquiler</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr><tr><td>map_latitude</td><td></td><td></td></tr><tr><td>map_longitude</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-02 23:26:25', NULL),
(106, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/menu_management/edit-save/11', 'Actualizar información Vista Previa en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>http://localhost/inmobiliaria/public</td><td>{{ url(\'/home\') }}</td></tr><tr><td>icon</td><td>fa fa-eye</td><td>fa fa-photo</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-10-02 23:31:24', NULL),
(107, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/menu_management/edit-save/11', 'Actualizar información Vista Previa en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>{{ url(\'/home\') }}</td><td>/</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-10-02 23:33:21', NULL),
(108, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/menu_management/edit-save/11', 'Actualizar información Vista Previa en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>/</td><td>/inmobiliaria/public/</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-10-02 23:33:54', NULL),
(109, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/add-save', 'Añadir nueva información  en propiedad', '', 1, '2018-10-02 23:43:31', NULL),
(110, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/1', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>publicado</td><td>0</td><td>1</td></tr><tr><td>precio_alquiler</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr><tr><td>map_latitude</td><td></td><td></td></tr><tr><td>map_longitude</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-02 23:43:59', NULL),
(111, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/2', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>precio_compra</td><td></td><td></td></tr><tr><td>precio_alquiler</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr><tr><td>map_latitude</td><td></td><td></td></tr><tr><td>map_longitude</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-02 23:44:07', NULL),
(112, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/2', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>precio_compra</td><td></td><td>23456</td></tr><tr><td>precio_alquiler</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr><tr><td>map_latitude</td><td></td><td></td></tr><tr><td>map_longitude</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-02 23:45:41', NULL),
(113, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP ::1', '', 1, '2018-10-11 02:19:13', NULL),
(114, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/moneda/add-save', 'Añadir nueva información 1 en Moneda', '', 1, '2018-10-11 02:42:35', NULL),
(115, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/moneda/add-save', 'Añadir nueva información 2 en Moneda', '', 1, '2018-10-11 02:42:56', NULL),
(116, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP ::1', '', 1, '2018-10-11 21:42:36', NULL),
(117, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/2', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>imagen</td><td>uploads/1/2018-10/local.png</td><td></td></tr></tbody></table>', 1, '2018-10-12 01:49:45', NULL),
(118, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/1', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>imagen</td><td>uploads/1/2018-10/b433349c_f7e7_42da_aacf_4c90196f0be8_medium.jpg</td><td></td></tr><tr><td>moneda_id</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2018-10-12 01:49:57', NULL),
(119, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/moneda/edit-save/2', 'Actualizar información  en Moneda', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>moneda</td><td>Peso</td><td>Pesos</td></tr></tbody></table>', 1, '2018-10-12 02:38:27', NULL),
(120, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/moneda/edit-save/1', 'Actualizar información  en Moneda', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>moneda</td><td>Dolar</td><td>Dolares</td></tr></tbody></table>', 1, '2018-10-12 02:38:34', NULL),
(121, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP ::1', '', 1, '2018-10-12 17:59:25', NULL),
(122, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP ::1', '', 1, '2018-10-12 20:33:46', NULL),
(123, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/2', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>imagen</td><td></td><td>uploads/1/2018-10/025_lithuania.png</td></tr><tr><td>precio_alquiler</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr><tr><td>map_latitude</td><td></td><td></td></tr><tr><td>map_longitude</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-12 20:40:38', NULL),
(124, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/2', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>publicado</td><td>0</td><td>1</td></tr><tr><td>precio_alquiler</td><td></td><td></td></tr><tr><td>maps</td><td></td><td></td></tr><tr><td>map_latitude</td><td></td><td></td></tr><tr><td>map_longitude</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-12 20:40:51', NULL),
(125, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://localhost/inmobiliaria/public/admin/propiedad/edit-save/2', 'Actualizar información  en propiedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>precio_compra</td><td>23456</td><td>0</td></tr><tr><td>precio_alquiler</td><td></td><td>5000</td></tr><tr><td>maps</td><td></td><td></td></tr><tr><td>map_latitude</td><td></td><td></td></tr><tr><td>map_longitude</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-12 20:42:20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Gallery', 'Route', 'AdminGalleryControllerGetIndex', NULL, 'fa fa-photo', 0, 0, 0, 1, 2, '2018-01-09 02:53:20', NULL),
(2, 'Contact Us', 'Route', 'AdminContactUsControllerGetIndex', NULL, 'fa fa-envelope-o', 0, 0, 0, 1, 1, '2018-01-09 16:06:02', NULL),
(3, 'TipoPropiedad', 'Route', 'AdminTipopropiedadControllerGetIndex', NULL, 'fa fa-glass', 9, 1, 0, 1, 5, '2018-09-30 21:58:13', NULL),
(4, 'barrio', 'Route', 'AdminBarrioPropiedadControllerGetIndex', NULL, 'fa fa-glass', 9, 1, 0, 1, 1, '2018-10-01 00:33:40', NULL),
(5, 'localidad', 'Route', 'AdminLocalidadPropiedadControllerGetIndex', NULL, 'fa fa-glass', 9, 1, 0, 1, 2, '2018-10-01 00:35:56', NULL),
(6, 'provincia', 'Route', 'AdminProvinciaPropiedadControllerGetIndex', NULL, 'fa fa-glass', 9, 1, 0, 1, 3, '2018-10-01 00:36:26', NULL),
(7, 'tipooperacion', 'Route', 'AdminTipooperacionControllerGetIndex', NULL, 'fa fa-glass', 9, 1, 0, 1, 4, '2018-10-01 00:37:05', NULL),
(8, 'Propiedad', 'Route', 'AdminPropiedadControllerGetIndex', 'normal', 'fa fa-home', 0, 1, 0, 1, 3, '2018-10-01 01:26:39', '2018-10-02 23:10:48'),
(9, 'Detalles Propiedad', 'Module', 'propiedad', 'normal', 'fa fa-plus', 0, 1, 0, 1, 4, '2018-10-01 22:37:59', NULL),
(10, 'dashboard', 'Statistic', 'statistic_builder/show/dashboard', 'normal', 'fa fa-home', 0, 1, 1, 1, 1, '2018-10-02 21:55:21', '2018-10-02 22:15:45'),
(11, 'Vista Previa', 'URL', '/inmobiliaria/public/', 'normal', 'fa fa-photo', 0, 1, 0, 1, 2, '2018-10-02 23:10:04', '2018-10-02 23:33:54'),
(12, 'Moneda', 'Route', 'AdminMonedaControllerGetIndex', NULL, 'fa fa-money', 0, 1, 0, 1, 5, '2018-10-11 02:39:02', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 1, 1),
(5, 2, 1),
(6, 3, 1),
(7, 4, 1),
(8, 5, 1),
(9, 6, 1),
(10, 7, 1),
(12, 9, 1),
(13, 10, 1),
(15, 8, 1),
(16, 11, 1),
(17, 12, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2017-11-07 02:05:00', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2017-11-07 02:05:00', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2017-11-07 02:05:00', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2017-11-07 02:05:00', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2017-11-07 02:05:00', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2017-11-07 02:05:00', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2017-11-07 02:05:00', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2017-11-07 02:05:00', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2017-11-07 02:05:00', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2017-11-07 02:05:00', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2017-11-07 02:05:00', NULL, NULL),
(12, 'Request Lagu', 'fa fa-music', 'request_lagu', 'request_lagu', 'AdminRequestLaguController', 0, 0, '2017-11-07 02:27:59', NULL, '2018-01-09 01:32:30'),
(13, 'Cari Lagu', 'fa fa-search', 'cari_lagu', 'cari_lagu', 'AdminCariLaguController', 0, 0, '2017-11-07 02:42:23', NULL, '2018-01-09 01:32:17'),
(14, 'Gallery', 'fa fa-photo', 'gallery', 'gallery', 'AdminGalleryController', 0, 0, '2018-01-09 02:53:20', NULL, NULL),
(15, 'Contact Us', 'fa fa-envelope-o', 'contact_us', 'contact_us', 'AdminContactUsController', 0, 0, '2018-01-09 16:06:01', NULL, NULL),
(16, 'TipoPropiedad', 'fa fa-glass', 'tipopropiedad', 'tipopropiedad', 'AdminTipopropiedadController', 0, 0, '2018-09-30 21:58:13', NULL, NULL),
(17, 'barrio', 'fa fa-glass', 'barrio_propiedad', 'barrio_propiedad', 'AdminBarrioPropiedadController', 0, 0, '2018-10-01 00:33:40', NULL, NULL),
(18, 'localidad', 'fa fa-glass', 'localidad_propiedad', 'localidad_propiedad', 'AdminLocalidadPropiedadController', 0, 0, '2018-10-01 00:35:56', NULL, NULL),
(19, 'provincia', 'fa fa-glass', 'provincia_propiedad', 'provincia_propiedad', 'AdminProvinciaPropiedadController', 0, 0, '2018-10-01 00:36:26', NULL, NULL),
(20, 'tipooperacion', 'fa fa-glass', 'tipooperacion', 'tipooperacion', 'AdminTipooperacionController', 0, 0, '2018-10-01 00:37:05', NULL, NULL),
(21, 'propiedad', 'fa fa-home', 'propiedad', 'propiedad', 'AdminPropiedadController', 0, 0, '2018-10-01 01:26:39', NULL, NULL),
(22, 'Moneda', 'fa fa-money', 'moneda', 'moneda', 'AdminMonedaController', 0, 0, '2018-10-11 02:39:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-black', '2017-11-07 02:05:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2017-11-07 02:05:00', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2017-11-07 02:05:00', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2017-11-07 02:05:00', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2017-11-07 02:05:00', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2017-11-07 02:05:00', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2017-11-07 02:05:00', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2017-11-07 02:05:00', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2017-11-07 02:05:00', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2017-11-07 02:05:00', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2017-11-07 02:05:00', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2017-11-07 02:05:00', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2017-11-07 02:05:01', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2017-11-07 02:05:01', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2017-11/8e89e6c68583b36a07f5707e87190774.jpg', 'upload_image', NULL, NULL, '2017-11-07 02:05:01', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2017-11-07 02:05:01', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2017-11-07 02:05:01', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2017-11-07 02:05:01', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2017-11-07 02:05:01', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2017-11-07 02:05:01', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2017-11-07 02:05:01', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'INMOBILIARIA', 'text', NULL, NULL, '2017-11-07 02:05:01', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2017-11-07 02:05:01', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2018-10/1b9913b35fd45490611ccd1896ac486d.png', 'upload_image', NULL, NULL, '2017-11-07 02:05:01', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2017-11-07 02:05:01', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2017-11-07 02:05:01', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2017-11-07 02:05:01', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2017-11-07 02:05:01', NULL, 'Application Setting', 'Google FCM Key'),
(17, 'about_us', 'uploads/2018-10/4f03c7b663913b521b67342f8416f46b.png', 'upload_image', NULL, NULL, '2018-01-09 03:07:35', '2018-01-09 03:08:48', 'About Us', 'Photo'),
(18, 'description', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.\r\n\r\nThe Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.', 'textarea', NULL, NULL, '2018-01-09 03:08:18', NULL, 'About Us', 'Description');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'dashboard', '2017-11-07 07:11:27', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, '22e57372f661359bc4741758ec977733', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Request Lagu\",\"icon\":\"ion-ios-musical-notes\",\"color\":\"bg-red\",\"link\":\"http:\\/\\/crocodic.net\\/karaoke_dangdut\\/public\\/admin\\/request_lagu\",\"sql\":\"select count(id) from `request_lagu`\"}', '2017-11-07 07:11:36', NULL),
(2, 1, 'f7979899979fc8722008d8896b58bf27', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Master Cari Lagu\",\"icon\":\"ion-ios-musical-note\",\"color\":\"bg-red\",\"link\":\"http:\\/\\/crocodic.net\\/karaoke_dangdut\\/public\\/admin\\/cari_lagu\",\"sql\":\"select count(id) from `cari_lagu`\"}', '2017-11-07 07:13:34', NULL),
(3, 1, 'c49a757a2f4274b6ad357eaaf9d68925', 'chartarea', 'area3', 0, NULL, '{\"name\":\"Propiedades\",\"sql\":\"SELECT * FROM `propiedad`\",\"area_name\":\"1; 10; 50 ; 100\",\"goals\":null}', '2018-10-02 23:37:58', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', 'uploads/1/2018-10/logo_dot.png', 'admin@crudbooster.com', '$2y$10$rFlRVUVH3noz89nMvcuiDezEhWJmS5g7O5QajtDQ0pWtvCvSck5jC', 1, '2017-11-07 02:05:00', '2018-10-02 23:15:24', 'Active');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contact_us`
--

INSERT INTO `contact_us` (`id`, `full_name`, `email`, `message`, `created_at`) VALUES
(1, 'Adam Projo', 'adamprojo@gmail.com', 'test hay did this is work ?', '2018-01-09 23:22:43'),
(2, 'clemente peñoñori', 'clemenclay@gmail.com', 'jgkkgkgk', '2018-10-02 20:34:31'),
(3, 'clemente peñoñori', 'clemenclay@gmail.com', 'ukgkkjh', '2018-10-02 20:37:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `gallery`
--

INSERT INTO `gallery` (`id`, `image`, `description`, `created_at`) VALUES
(1, 'uploads/1/2018-01/2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, eos?', '2018-01-09 02:56:33'),
(2, 'uploads/1/2018-01/img_2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, eos?', '2018-01-09 02:56:33'),
(3, 'uploads/1/2018-01/img_1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, eos?', '2018-01-09 02:56:33'),
(4, 'uploads/1/2018-01/3.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, eos?', '2018-01-09 02:56:33'),
(5, 'uploads/1/2018-01/6.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, eos?', '2018-01-09 02:56:33'),
(6, 'uploads/1/2018-01/5.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, eos?', '2018-01-09 16:42:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad_propiedad`
--

CREATE TABLE `localidad_propiedad` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `localidad_propiedad`
--

INSERT INTO `localidad_propiedad` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2018-10-01 01:20:47', NULL, 'Ciudad Autónoma de Buenos Aires'),
(2, '2018-10-01 01:22:44', NULL, 'Azul'),
(3, '2018-10-01 01:22:49', NULL, 'Balcarce'),
(4, '2018-10-01 01:22:53', NULL, 'Baradero'),
(5, '2018-10-01 01:22:59', NULL, 'Carapachay'),
(6, '2018-10-01 01:23:03', NULL, 'Castelli'),
(7, '2018-10-01 01:23:08', NULL, 'Chacabuco'),
(8, '2018-10-01 01:23:13', NULL, 'Chascomús'),
(9, '2018-10-01 01:23:17', NULL, 'Dolores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_01_15_053227_create_cms_apicustom_table', 1),
(2, '2018_01_15_053227_create_cms_apikey_table', 1),
(3, '2018_01_15_053227_create_cms_dashboard_table', 1),
(4, '2018_01_15_053227_create_cms_email_queues_table', 1),
(5, '2018_01_15_053227_create_cms_email_templates_table', 1),
(6, '2018_01_15_053227_create_cms_logs_table', 1),
(7, '2018_01_15_053227_create_cms_menus_privileges_table', 1),
(8, '2018_01_15_053227_create_cms_menus_table', 1),
(9, '2018_01_15_053227_create_cms_moduls_table', 1),
(10, '2018_01_15_053227_create_cms_notifications_table', 1),
(11, '2018_01_15_053227_create_cms_privileges_roles_table', 1),
(12, '2018_01_15_053227_create_cms_privileges_table', 1),
(13, '2018_01_15_053227_create_cms_settings_table', 1),
(14, '2018_01_15_053227_create_cms_statistic_components_table', 1),
(15, '2018_01_15_053227_create_cms_statistics_table', 1),
(16, '2018_01_15_053227_create_cms_users_table', 1),
(17, '2018_01_15_053227_create_contact_us_table', 1),
(18, '2018_01_15_053227_create_gallery_table', 1),
(19, '2018_09_30_185316_create_tipo_propiedad', 2),
(22, '2018_09_30_190654_create_propiedad', 3),
(23, '2018_09_30_190816_create_tipo_operacion', 3),
(24, '2018_09_30_203101_create_barrio_propiedad', 3),
(25, '2018_09_30_203406_create_localidad_propiedad', 3),
(26, '2018_09_30_203913_create_provincia_propiedad', 3),
(29, '2018_10_10_232713_add_column_moneda_propiedad', 4),
(30, '2018_10_10_233051_create_moneda', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moneda`
--

CREATE TABLE `moneda` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `moneda` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `simbolo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valor` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `moneda`
--

INSERT INTO `moneda` (`id`, `created_at`, `updated_at`, `moneda`, `simbolo`, `icono`, `valor`) VALUES
(1, '2018-10-11 02:42:35', '2018-10-12 02:38:34', 'Dolares', 'USD', 'uploads/1/2018-10/usa.png', 38),
(2, '2018-10-11 02:42:56', '2018-10-12 02:38:27', 'Pesos', 'ARS', 'uploads/1/2018-10/064_argentina.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedad`
--

CREATE TABLE `propiedad` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `publicado` tinyint(1) NOT NULL DEFAULT '1',
  `titulo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(3000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipooperacion_id` int(11) DEFAULT NULL,
  `tipopropiedad_id` int(11) DEFAULT NULL,
  `precio_compra` double DEFAULT NULL,
  `precio_alquiler` double DEFAULT NULL,
  `calle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `altura` int(11) NOT NULL,
  `piso` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maps` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barrio_propiedad_id` int(11) DEFAULT NULL,
  `localidad_propiedad_id` int(11) DEFAULT NULL,
  `provincia_propiedad_id` int(11) DEFAULT NULL,
  `moneda_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `propiedad`
--

INSERT INTO `propiedad` (`id`, `created_at`, `updated_at`, `publicado`, `titulo`, `descripcion`, `imagen`, `tipooperacion_id`, `tipopropiedad_id`, `precio_compra`, `precio_alquiler`, `calle`, `altura`, `piso`, `maps`, `map_latitude`, `map_longitude`, `barrio_propiedad_id`, `localidad_propiedad_id`, `provincia_propiedad_id`, `moneda_id`) VALUES
(1, '2018-10-01 21:56:58', '2018-10-12 01:49:57', 1, 'Belgrano 3 Ambientes con depcia al frente con balcón', '3 ambientes con dependencia, al frente con balcón y patio. Entrada principal y de servicio, muy luminoso, Muy buena distribución, Baño completo con ventana, Dependencia con baño, Patio con lavadero, Estado regular Muy buena ubicación, a 1 Cuadra de Av. Crámer, 4 cuadras Est. Belgrano R de ferrocarril Mitre, 6 cuadras de Est. Juramento del Subte D.<span style=\"white-space:pre\">	</span>', NULL, 1, 1, 250000, NULL, 'Rocamora', 234, '12', NULL, NULL, NULL, 1, 5, 3, 1),
(2, '2018-10-02 23:43:31', '2018-10-12 20:42:20', 1, 'dsfsdf', '<p>sdfsdf</p>', 'uploads/1/2018-10/025_lithuania.png', 3, 1, 0, 5000, 'Rocamora', 123, '13', NULL, NULL, NULL, 2, 2, 5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia_propiedad`
--

CREATE TABLE `provincia_propiedad` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `provincia_propiedad`
--

INSERT INTO `provincia_propiedad` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2018-10-01 01:14:45', NULL, 'Buenos Aires'),
(2, '2018-10-01 01:15:07', NULL, 'Buenos Aires-GBA'),
(3, '2018-10-01 01:15:14', NULL, 'Capital Federal'),
(4, '2018-10-01 01:15:20', NULL, 'Catamarca'),
(5, '2018-10-01 01:15:26', NULL, 'Chaco'),
(6, '2018-10-01 01:15:33', NULL, 'Chubut'),
(7, '2018-10-01 01:15:38', NULL, 'Córdoba'),
(8, '2018-10-01 01:15:43', NULL, 'Corrientes'),
(9, '2018-10-01 01:15:49', NULL, 'Entre Ríos'),
(10, '2018-10-01 01:15:53', NULL, 'Formosa'),
(11, '2018-10-01 01:15:58', NULL, 'Jujuy'),
(12, '2018-10-01 01:16:03', NULL, 'La Pampa'),
(13, '2018-10-01 01:16:09', NULL, 'La Rioja'),
(14, '2018-10-01 01:16:14', NULL, 'Mendoza'),
(15, '2018-10-01 01:16:19', NULL, 'Misiones'),
(16, '2018-10-01 01:16:24', NULL, 'Neuquén'),
(17, '2018-10-01 01:16:29', NULL, 'Río Negro'),
(18, '2018-10-01 01:16:34', NULL, 'Salta'),
(19, '2018-10-01 01:16:40', NULL, 'San Juan'),
(20, '2018-10-01 01:16:45', NULL, 'San Luis'),
(21, '2018-10-01 01:16:51', NULL, 'Santa Cruz'),
(22, '2018-10-01 01:16:57', NULL, 'Santa Fe'),
(23, '2018-10-01 01:17:03', NULL, 'Santiago del Estero'),
(24, '2018-10-01 01:17:10', NULL, 'Tierra del Fuego'),
(25, '2018-10-01 01:17:14', NULL, 'Tucumán');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipooperacion`
--

CREATE TABLE `tipooperacion` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipooperacion`
--

INSERT INTO `tipooperacion` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2018-10-01 00:40:28', NULL, 'Venta'),
(2, '2018-10-01 00:40:36', NULL, 'Alquiler'),
(3, '2018-10-01 00:40:46', NULL, 'Alquiler Temporario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopropiedad`
--

CREATE TABLE `tipopropiedad` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipopropiedad`
--

INSERT INTO `tipopropiedad` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2018-09-30 22:00:24', '2018-09-30 22:05:15', 'Departamento'),
(2, '2018-09-30 22:00:28', '2018-09-30 22:05:08', 'Casa'),
(3, '2018-09-30 22:03:01', '2018-09-30 22:04:52', 'Terreno'),
(4, '2018-09-30 22:03:21', '2018-09-30 22:04:40', 'Oficina'),
(5, '2018-09-30 22:03:30', '2018-09-30 22:04:32', 'Local'),
(6, '2018-09-30 22:03:46', NULL, 'Edificio comercial'),
(7, '2018-09-30 22:03:53', NULL, 'Cochera'),
(8, '2018-09-30 22:04:06', NULL, 'Deposito'),
(9, '2018-09-30 22:04:19', NULL, 'P.H.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `barrio_propiedad`
--
ALTER TABLE `barrio_propiedad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `localidad_propiedad`
--
ALTER TABLE `localidad_propiedad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `moneda`
--
ALTER TABLE `moneda`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `propiedad`
--
ALTER TABLE `propiedad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `provincia_propiedad`
--
ALTER TABLE `provincia_propiedad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipooperacion`
--
ALTER TABLE `tipooperacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipopropiedad`
--
ALTER TABLE `tipopropiedad`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `barrio_propiedad`
--
ALTER TABLE `barrio_propiedad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `localidad_propiedad`
--
ALTER TABLE `localidad_propiedad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `moneda`
--
ALTER TABLE `moneda`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `propiedad`
--
ALTER TABLE `propiedad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `provincia_propiedad`
--
ALTER TABLE `provincia_propiedad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `tipooperacion`
--
ALTER TABLE `tipooperacion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipopropiedad`
--
ALTER TABLE `tipopropiedad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
