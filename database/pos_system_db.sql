-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-02-2025 a las 01:34:10
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos_system_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id_admin` int(11) NOT NULL,
  `email_admin` text DEFAULT NULL,
  `password_admin` text DEFAULT NULL,
  `rol_admin` text DEFAULT NULL,
  `permissions_admin` text DEFAULT NULL,
  `token_admin` text DEFAULT NULL,
  `token_exp_admin` text DEFAULT NULL,
  `status_admin` int(11) DEFAULT 1,
  `title_admin` text DEFAULT NULL,
  `symbol_admin` text DEFAULT NULL,
  `font_admin` text DEFAULT NULL,
  `color_admin` text DEFAULT NULL,
  `back_admin` text DEFAULT NULL,
  `scode_admin` text DEFAULT NULL,
  `chatgpt_admin` text DEFAULT NULL,
  `date_created_admin` date DEFAULT NULL,
  `date_updated_admin` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id_admin`, `email_admin`, `password_admin`, `rol_admin`, `permissions_admin`, `token_admin`, `token_exp_admin`, `status_admin`, `title_admin`, `symbol_admin`, `font_admin`, `color_admin`, `back_admin`, `scode_admin`, `chatgpt_admin`, `date_created_admin`, `date_updated_admin`) VALUES
(1, 'superadmin@pos.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'superadmin', '{\"todo\":\"on\"}', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3Mzk5MTc4MzIsImV4cCI6MTc0MDAwNDIzMiwiZGF0YSI6eyJpZCI6MSwiZW1haWwiOiJzdXBlcmFkbWluQHBvcy5jb20ifX0.MKfiu9N-jz47EvzdKGrRXKmThfGWVxMnIAO4JxLSmTM', '1740004232', 1, 'POSify', '<i class=\"bi bi-cart-check-fill\"></i>', '<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n<link href=\"https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap\" rel=\"stylesheet\">', '#00a6fb', 'http://cms.pos.com/views/assets/files/67aeeca5d9fed33.jpg', NULL, NULL, '2025-02-14', '2025-02-18 22:30:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `title_category` text DEFAULT NULL,
  `img_category` text DEFAULT NULL,
  `order_category` int(11) DEFAULT 0,
  `status_category` int(11) DEFAULT 1,
  `date_created_category` date DEFAULT NULL,
  `date_updated_category` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id_category`, `title_category`, `img_category`, `order_category`, `status_category`, `date_created_category`, `date_updated_category`) VALUES
(1, 'Aud%C3%ADfonos', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b15a5f8315915.png', 0, 1, '2025-02-16', '2025-02-16 03:24:51'),
(2, 'Zapatos', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b15ae56d5ae29.png', 0, 1, '2025-02-16', '2025-02-16 03:26:43'),
(3, 'Tel%C3%A9fonos+m%C3%B3viles', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b15b38d40f452.png', 0, 1, '2025-02-16', '2025-02-16 03:27:56'),
(4, 'Relojes', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b15b6d3f7d145.png', 0, 1, '2025-02-16', '2025-02-16 03:28:50'),
(5, 'Port%C3%A1tiles', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b15b96583c926.png', 0, 1, '2025-02-16', '2025-02-16 03:29:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id_client` int(11) NOT NULL,
  `cc_client` text DEFAULT NULL,
  `name_client` text DEFAULT NULL,
  `surname_client` text DEFAULT NULL,
  `email_client` text DEFAULT NULL,
  `address_client` text DEFAULT NULL,
  `phone_client` text DEFAULT NULL,
  `id_office_client` int(11) DEFAULT 0,
  `date_created_client` date DEFAULT NULL,
  `date_updated_client` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id_client`, `cc_client`, `name_client`, `surname_client`, `email_client`, `address_client`, `phone_client`, `id_office_client`, `date_created_client`, `date_updated_client`) VALUES
(1, '6329136943', 'Julian', 'Alvarez', 'julian@correo.com', 'Calle+34+%23+45+64', '6014567898', 1, '2025-02-15', '2025-02-15 01:53:36'),
(2, '8934659823', 'Lina', 'Gomez', 'lina@correo.com', 'Calle+14+%23+64+45', '3240937990', 1, '2025-02-15', '2025-02-15 01:54:39'),
(3, '4703247093', 'Luis', 'Perez', 'luiz@correo.com', 'Calle+24+%23+64+45', '374093270', 1, '2025-02-15', '2025-02-15 01:55:21'),
(4, '0938740980', 'Maria', 'Zuleta', 'maria@correo.com', 'Calle+44+%23+64+45', '0984309328', 2, '2025-02-15', '2025-02-15 02:08:49'),
(5, '6329846790', 'Clara', 'Gutierrez', 'clara@correo.com', 'Calle+2+%23+64+45', '473907400', 2, '2025-02-15', '2025-02-15 02:09:30'),
(6, '27409327409', 'Jose', 'Martinez', 'jose@correo.com', 'Calle+8+%23+64+45', '3029470932', 2, '2025-02-15', '2025-02-15 02:10:04'),
(7, '39748093748', 'Miguel', 'Montes', 'miguel@correo.com', 'Calle+1+%23+64+45', '470932780', 3, '2025-02-15', '2025-02-15 02:10:53'),
(8, '39748093748', 'Julio', 'Sanchez', 'julio@correo.com', 'Calle+10+%23+64+45', '384793827', 3, '2025-02-15', '2025-02-15 02:11:21'),
(9, '37408327408', 'Karla', 'Tellez', 'karla@correo.com', 'Calle+15+%23+64+45', '3790478320', 3, '2025-02-15', '2025-02-15 02:12:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `columns`
--

CREATE TABLE `columns` (
  `id_column` int(11) NOT NULL,
  `id_module_column` int(11) DEFAULT 0,
  `title_column` text DEFAULT NULL,
  `alias_column` text DEFAULT NULL,
  `type_column` text DEFAULT NULL,
  `matrix_column` text DEFAULT NULL,
  `visible_column` int(11) DEFAULT 1,
  `date_created_column` date DEFAULT NULL,
  `date_updated_column` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `columns`
--

INSERT INTO `columns` (`id_column`, `id_module_column`, `title_column`, `alias_column`, `type_column`, `matrix_column`, `visible_column`, `date_created_column`, `date_updated_column`) VALUES
(1, 2, 'rol_admin', 'rol', 'select', 'superadmin,admin,editor', 1, '2025-02-14', '2025-02-14 07:06:16'),
(2, 2, 'permissions_admin', 'permisos', 'object', '', 1, '2025-02-14', '2025-02-14 07:06:16'),
(3, 2, 'email_admin', 'email', 'email', '', 1, '2025-02-14', '2025-02-14 07:06:16'),
(4, 2, 'password_admin', 'pass', 'password', '', 0, '2025-02-14', '2025-02-14 07:06:16'),
(5, 2, 'token_admin', 'token', 'text', '', 0, '2025-02-14', '2025-02-14 07:06:16'),
(6, 2, 'token_exp_admin', 'expiración', 'text', '', 0, '2025-02-14', '2025-02-14 07:06:16'),
(7, 2, 'status_admin', 'estado', 'boolean', '', 1, '2025-02-14', '2025-02-14 07:06:16'),
(8, 2, 'title_admin', 'título', 'text', '', 0, '2025-02-14', '2025-02-14 07:06:16'),
(9, 2, 'symbol_admin', 'simbolo', 'text', '', 0, '2025-02-14', '2025-02-14 07:06:17'),
(10, 2, 'font_admin', 'tipografía', 'text', '', 0, '2025-02-14', '2025-02-14 07:06:17'),
(11, 2, 'color_admin', 'color', 'text', '', 0, '2025-02-14', '2025-02-14 07:06:17'),
(12, 2, 'back_admin', 'fondo', 'text', '', 0, '2025-02-14', '2025-02-14 07:06:17'),
(13, 2, 'scode_admin', 'seguridad', 'text', '', 0, '2025-02-14', '2025-02-14 07:06:17'),
(14, 4, 'title_office', 'Sucursales', 'text', NULL, 1, '2025-02-15', '2025-02-15 01:05:35'),
(15, 4, 'address_office', 'Dirección ', 'text', NULL, 1, '2025-02-15', '2025-02-15 01:05:35'),
(16, 4, 'phone_office', 'Teléfono', 'text', NULL, 1, '2025-02-15', '2025-02-15 01:05:35'),
(17, 6, 'cc_client', 'Documento', 'text', NULL, 1, '2025-02-15', '2025-02-15 01:51:48'),
(18, 6, 'name_client', 'Nombre', 'text', NULL, 1, '2025-02-15', '2025-02-15 01:51:48'),
(19, 6, 'surname_client', 'Apellido', 'text', NULL, 1, '2025-02-15', '2025-02-15 01:51:48'),
(20, 6, 'email_client', 'Email', 'email', NULL, 1, '2025-02-15', '2025-02-15 01:51:48'),
(21, 6, 'address_client', 'Dirección ', 'text', NULL, 1, '2025-02-15', '2025-02-15 01:51:48'),
(22, 6, 'phone_client', 'Teléfono ', 'text', NULL, 1, '2025-02-15', '2025-02-15 01:51:48'),
(23, 6, 'id_office_client', 'Sucursal', 'relations', 'offices', 1, '2025-02-15', '2025-02-15 01:53:02'),
(24, 8, 'title_category', 'Categoría ', 'text', NULL, 1, '2025-02-16', '2025-02-16 03:20:10'),
(25, 8, 'img_category', 'Imagen', 'image', NULL, 1, '2025-02-16', '2025-02-16 03:20:10'),
(26, 8, 'order_category', 'Orden', 'order', NULL, 1, '2025-02-16', '2025-02-16 03:20:10'),
(27, 8, 'status_category', 'Estado', 'boolean', NULL, 1, '2025-02-16', '2025-02-16 03:20:10'),
(28, 10, 'title_product', 'Producto', 'text', NULL, 1, '2025-02-18', '2025-02-18 22:46:26'),
(29, 10, 'img_product', 'Imagen', 'image', NULL, 1, '2025-02-18', '2025-02-18 22:46:26'),
(30, 10, 'id_category_product', 'Categoría ', 'relations', 'categories', 1, '2025-02-18', '2025-02-18 22:49:11'),
(31, 10, 'sku_product', 'SKU', 'text', NULL, 1, '2025-02-18', '2025-02-18 22:46:27'),
(32, 10, 'unit_product', 'Medida', 'select', 'unidad,centímetros cúbicos,decibel,pie cúbico,libra,tonelada', 1, '2025-02-18', '2025-02-18 23:23:00'),
(33, 10, 'tax_product', 'Impuesto', 'select', 'IVA_19,INC_4', 1, '2025-02-18', '2025-02-18 22:53:36'),
(34, 10, 'rte_product', 'Retención ', 'select', 'NULL,RETF_11', 1, '2025-02-18', '2025-02-18 22:55:46'),
(35, 10, 'stock_product', 'Stock', 'int', NULL, 1, '2025-02-18', '2025-02-18 22:46:27'),
(36, 10, 'discount_product', 'Descuento', 'double', NULL, 1, '2025-02-18', '2025-02-18 22:46:27'),
(37, 10, 'status_product', 'Estado', 'boolean', NULL, 1, '2025-02-18', '2025-02-18 22:46:27'),
(38, 10, 'id_office_product', 'Sucursal', 'relations', 'offices', 1, '2025-02-18', '2025-02-18 22:56:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id_file` int(11) NOT NULL,
  `id_folder_file` int(11) DEFAULT 0,
  `name_file` text DEFAULT NULL,
  `extension_file` text DEFAULT NULL,
  `type_file` text DEFAULT NULL,
  `size_file` double DEFAULT 0,
  `link_file` text DEFAULT NULL,
  `thumbnail_vimeo_file` text DEFAULT NULL,
  `id_mailchimp_file` text DEFAULT NULL,
  `date_created_file` date DEFAULT NULL,
  `date_updated_file` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id_file`, `id_folder_file`, `name_file`, `extension_file`, `type_file`, `size_file`, `link_file`, `thumbnail_vimeo_file`, `id_mailchimp_file`, `date_created_file`, `date_updated_file`) VALUES
(1, 1, 'blake-wisz-tE6th1h6Bfk-unsplash', 'jpg', 'image/jpeg', 12157837, 'http://cms.pos.com/views/assets/files/67aeeca5d9fed33.jpg', NULL, NULL, '2025-02-14', '2025-02-14 07:11:33'),
(2, 1, '67632dad8945845', 'png', 'image/png', 2945, 'http://cms.pos.com/views/assets/files/67b15a5f8315915.png', NULL, NULL, '2025-02-16', '2025-02-16 03:24:15'),
(3, 1, '67632df45101e56', 'png', 'image/png', 3709, 'http://cms.pos.com/views/assets/files/67b15ae56d5ae29.png', NULL, NULL, '2025-02-16', '2025-02-16 03:26:29'),
(4, 1, '67632e0cbf0a320', 'png', 'image/png', 4095, 'http://cms.pos.com/views/assets/files/67b15b38d40f452.png', NULL, NULL, '2025-02-16', '2025-02-16 03:27:52'),
(5, 1, '67632e2558a3145', 'png', 'image/png', 2209, 'http://cms.pos.com/views/assets/files/67b15b6d3f7d145.png', NULL, NULL, '2025-02-16', '2025-02-16 03:28:45'),
(6, 1, '67632e3962b825', 'png', 'image/png', 4586, 'http://cms.pos.com/views/assets/files/67b15b96583c926.png', NULL, NULL, '2025-02-16', '2025-02-16 03:29:26'),
(7, 1, '676333a5a17a913', 'png', 'image/png', 6759, 'http://cms.pos.com/views/assets/files/67b50e59d065857.png', NULL, NULL, '2025-02-18', '2025-02-18 22:48:57'),
(8, 1, '6763359f5e7e639', 'png', 'image/png', 8880, 'http://cms.pos.com/views/assets/files/67b511f3b9d8b19.png', NULL, NULL, '2025-02-19', '2025-02-18 23:04:19'),
(9, 1, '676335bf88cd611', 'png', 'image/png', 12674, 'http://cms.pos.com/views/assets/files/67b51236c169e26.png', NULL, NULL, '2025-02-19', '2025-02-18 23:05:26'),
(10, 1, '676335e7b765751', 'png', 'image/png', 10279, 'http://cms.pos.com/views/assets/files/67b5126993af317.png', NULL, NULL, '2025-02-19', '2025-02-18 23:06:17'),
(11, 1, '676336050329e21', 'png', 'image/png', 8830, 'http://cms.pos.com/views/assets/files/67b51293ea9fc59.png', NULL, NULL, '2025-02-19', '2025-02-18 23:07:00'),
(12, 1, '6763362601cc654', 'png', 'image/png', 8335, 'http://cms.pos.com/views/assets/files/67b512bd6039241.png', NULL, NULL, '2025-02-19', '2025-02-18 23:07:41'),
(13, 1, '6763364983cdc29', 'png', 'image/png', 10435, 'http://cms.pos.com/views/assets/files/67b512e57b1b121.png', NULL, NULL, '2025-02-19', '2025-02-18 23:08:21'),
(14, 1, '6763368780d2c31', 'png', 'image/png', 7847, 'http://cms.pos.com/views/assets/files/67b5130b951be59.png', NULL, NULL, '2025-02-19', '2025-02-18 23:08:59'),
(15, 1, '676336be037ba26', 'png', 'image/png', 11802, 'http://cms.pos.com/views/assets/files/67b513356d92341.png', NULL, NULL, '2025-02-19', '2025-02-18 23:09:41'),
(16, 1, '676336d8ae17952', 'png', 'image/png', 14185, 'http://cms.pos.com/views/assets/files/67b51365706b829.png', NULL, NULL, '2025-02-19', '2025-02-18 23:10:29'),
(17, 1, '676336fb70b6d27', 'png', 'image/png', 11585, 'http://cms.pos.com/views/assets/files/67b513a1cf59e29.png', NULL, NULL, '2025-02-19', '2025-02-18 23:11:29'),
(18, 1, '6763372162e555', 'png', 'image/png', 10007, 'http://cms.pos.com/views/assets/files/67b513cf3ede415.png', NULL, NULL, '2025-02-19', '2025-02-18 23:12:15'),
(19, 1, '6763375d7ae0e5', 'png', 'image/png', 10979, 'http://cms.pos.com/views/assets/files/67b513f87186b56.png', NULL, NULL, '2025-02-19', '2025-02-18 23:12:56'),
(20, 1, '676337786b5b132', 'png', 'image/png', 10505, 'http://cms.pos.com/views/assets/files/67b51425c18eb41.png', NULL, NULL, '2025-02-19', '2025-02-18 23:13:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folders`
--

CREATE TABLE `folders` (
  `id_folder` int(11) NOT NULL,
  `name_folder` text DEFAULT NULL,
  `size_folder` text DEFAULT NULL,
  `total_folder` double DEFAULT 0,
  `max_upload_folder` text DEFAULT NULL,
  `url_folder` text DEFAULT NULL,
  `keys_folder` text DEFAULT NULL,
  `date_created_folder` date DEFAULT NULL,
  `date_updated_folder` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `folders`
--

INSERT INTO `folders` (`id_folder`, `name_folder`, `size_folder`, `total_folder`, `max_upload_folder`, `url_folder`, `keys_folder`, `date_created_folder`, `date_updated_folder`) VALUES
(1, 'Server', '200000000000', 12318483, '500000000', 'http://cms.pos.com', NULL, '2025-02-14', '2025-02-18 23:13:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modules`
--

CREATE TABLE `modules` (
  `id_module` int(11) NOT NULL,
  `id_page_module` int(11) DEFAULT 0,
  `type_module` text DEFAULT NULL,
  `title_module` text DEFAULT NULL,
  `suffix_module` text DEFAULT NULL,
  `content_module` text DEFAULT NULL,
  `width_module` int(11) DEFAULT 100,
  `editable_module` int(11) DEFAULT 1,
  `date_created_module` date DEFAULT NULL,
  `date_updated_module` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `modules`
--

INSERT INTO `modules` (`id_module`, `id_page_module`, `type_module`, `title_module`, `suffix_module`, `content_module`, `width_module`, `editable_module`, `date_created_module`, `date_updated_module`) VALUES
(1, 2, 'breadcrumbs', 'Administradores', NULL, NULL, 100, 1, '2025-02-14', '2025-02-14 07:06:16'),
(2, 2, 'tables', 'admins', 'admin', NULL, 100, 0, '2025-02-14', '2025-02-14 07:06:16'),
(3, 4, 'breadcrumbs', 'sucursales', '', '', 100, 1, '2025-02-15', '2025-02-15 00:59:02'),
(4, 4, 'tables', 'offices', 'office', '', 100, 1, '2025-02-15', '2025-02-15 01:05:35'),
(5, 5, 'breadcrumbs', 'clientes', '', '', 100, 1, '2025-02-15', '2025-02-15 01:46:45'),
(6, 5, 'tables', 'clients', 'client', '', 100, 1, '2025-02-15', '2025-02-15 01:51:48'),
(7, 6, 'breadcrumbs', 'categorías', '', '', 100, 1, '2025-02-16', '2025-02-16 03:14:49'),
(8, 6, 'tables', 'categories', 'category', '', 100, 1, '2025-02-16', '2025-02-16 03:20:10'),
(9, 7, 'breadcrumbs', 'productos', '', '', 100, 1, '2025-02-18', '2025-02-18 22:35:55'),
(10, 7, 'tables', 'products', 'product', '', 100, 1, '2025-02-18', '2025-02-18 22:46:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offices`
--

CREATE TABLE `offices` (
  `id_office` int(11) NOT NULL,
  `title_office` text DEFAULT NULL,
  `address_office` text DEFAULT NULL,
  `phone_office` text DEFAULT NULL,
  `date_created_office` date DEFAULT NULL,
  `date_updated_office` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `offices`
--

INSERT INTO `offices` (`id_office`, `title_office`, `address_office`, `phone_office`, `date_created_office`, `date_updated_office`) VALUES
(1, 'Sucursal+Pueblo+Lindo', 'Calle+24+%23+23+45', '6043214576', '2025-02-15', '2025-02-15 01:10:27'),
(2, 'Sucursal+Colinas+del+Monte', 'Calle+67+%23+45+67', '6043218798', '2025-02-15', '2025-02-15 01:12:16'),
(3, 'Sucursal+Valles', 'Calle+30+%23+98+56', '6043211234', '2025-02-15', '2025-02-15 01:12:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id_page` int(11) NOT NULL,
  `title_page` text DEFAULT NULL,
  `url_page` text DEFAULT NULL,
  `icon_page` text DEFAULT NULL,
  `type_page` text DEFAULT NULL,
  `order_page` int(11) DEFAULT 1,
  `date_created_page` date DEFAULT NULL,
  `date_updated_page` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id_page`, `title_page`, `url_page`, `icon_page`, `type_page`, `order_page`, `date_created_page`, `date_updated_page`) VALUES
(1, 'POSify', 'posify', 'bi bi-house-door-fill', 'modules', 1, '2025-02-14', '2025-02-14 07:06:16'),
(2, 'Admins', 'admins', 'bi bi-person-fill-gear', 'modules', 2, '2025-02-14', '2025-02-14 07:06:16'),
(3, 'Archivos', 'archivos', 'bi bi-file-earmark-image', 'custom', 4, '2025-02-14', '2025-02-15 00:58:28'),
(4, 'Sucursales', 'sucursales', 'bi bi-shop', 'modules', 3, '2025-02-15', '2025-02-15 00:58:28'),
(5, 'Clientes', 'clientes', 'bi bi-people', 'modules', 1000, '2025-02-15', '2025-02-15 01:46:20'),
(6, 'Categorías', 'categorias', 'bi bi-card-list', 'modules', 1000, '2025-02-16', '2025-02-16 03:14:14'),
(7, 'Productos', 'productos', 'bi bi-box', 'modules', 1000, '2025-02-18', '2025-02-18 22:35:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `title_product` text DEFAULT NULL,
  `img_product` text DEFAULT NULL,
  `id_category_product` int(11) DEFAULT 0,
  `sku_product` text DEFAULT NULL,
  `unit_product` text DEFAULT NULL,
  `tax_product` text DEFAULT NULL,
  `rte_product` text DEFAULT NULL,
  `stock_product` int(11) DEFAULT 0,
  `discount_product` double DEFAULT 0,
  `status_product` int(11) DEFAULT 1,
  `id_office_product` int(11) DEFAULT 0,
  `date_created_product` date DEFAULT NULL,
  `date_updated_product` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_product`, `title_product`, `img_product`, `id_category_product`, `sku_product`, `unit_product`, `tax_product`, `rte_product`, `stock_product`, `discount_product`, `status_product`, `id_office_product`, `date_created_product`, `date_updated_product`) VALUES
(1, 'Airpod+2', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b50e59d065857.png', 1, 'PT001', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 1, '2025-02-19', '2025-02-18 23:40:00'),
(2, 'Swagme', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b511f3b9d8b19.png', 1, 'PT002', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 1, '2025-02-19', '2025-02-18 23:41:11'),
(3, 'Red Nike Angelo', 'http://cms.pos.com/views/assets/files/67b51236c169e26.png', 2, 'PT003', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 1, '2025-02-19', '2025-02-18 23:42:39'),
(4, 'Blue+White+OGR', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b5126993af317.png', 2, 'PT004', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 1, '2025-02-19', '2025-02-18 23:42:24'),
(5, 'Green+Nike+Fe', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b51293ea9fc59.png', 2, 'PT005', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 1, '2025-02-19', '2025-02-18 23:50:35'),
(6, 'Iphone+11', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b512bd6039241.png', 3, 'PT006', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 1, '2025-02-19', '2025-02-19 00:17:27'),
(7, 'Iphone+14+64GB', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b512e57b1b121.png', 3, 'PT007', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 1, '2025-02-19', '2025-02-19 00:18:04'),
(8, 'Rolex+Tribute+V3', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b5130b951be59.png', 4, 'PT008', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 1, '2025-02-19', '2025-02-19 00:19:09'),
(9, 'Timex+Black+Silver', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b513356d92341.png', 4, 'PT009', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 1, '2025-02-19', '2025-02-19 00:19:41'),
(10, 'Fossil+Pair+Of+3+in+1', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b51365706b829.png', 4, 'PT0010', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 1, '2025-02-19', '2025-02-19 00:20:16'),
(11, 'MacBook+Pro', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b513a1cf59e29.png', 5, 'PT0011', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 1, '2025-02-19', '2025-02-19 00:20:53'),
(12, 'IdeaPad+Slim+5+Gen+7', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b513cf3ede415.png', 5, 'PT0012', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 1, '2025-02-19', '2025-02-19 00:21:28'),
(13, 'Tablet+1.02+inch', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b513f87186b56.png', 5, 'PT0013', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 1, '2025-02-19', '2025-02-19 00:22:00'),
(14, 'Yoga+Book+9i', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b51425c18eb41.png', 5, 'PT0014', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 1, '2025-02-19', '2025-02-19 00:22:28'),
(15, 'Airpod+2', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b50e59d065857.png', 1, 'PT001', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 2, '2025-02-19', '2025-02-19 00:23:15'),
(16, 'Swagme', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b511f3b9d8b19.png', 1, 'PT002', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 2, '2025-02-19', '2025-02-19 00:23:22'),
(17, 'Red+Nike+Angelo', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b51236c169e26.png', 2, 'PT003', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 2, '2025-02-19', '2025-02-19 00:23:28'),
(18, 'Blue+White+OGR', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b5126993af317.png', 2, 'PT004', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 2, '2025-02-19', '2025-02-19 00:23:34'),
(19, 'Green+Nike+Fe', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b51293ea9fc59.png', 2, 'PT005', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 2, '2025-02-19', '2025-02-19 00:23:40'),
(20, 'Iphone+11', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b512bd6039241.png', 3, 'PT006', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 2, '2025-02-19', '2025-02-19 00:23:46'),
(21, 'Iphone+14+64GB', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b512e57b1b121.png', 3, 'PT007', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 2, '2025-02-19', '2025-02-19 00:23:52'),
(22, 'Rolex+Tribute+V3', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b5130b951be59.png', 4, 'PT008', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 2, '2025-02-19', '2025-02-19 00:24:00'),
(23, 'Timex+Black+Silver', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b513356d92341.png', 4, 'PT009', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 2, '2025-02-19', '2025-02-19 00:24:05'),
(24, 'Fossil+Pair+Of+3+in+1', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b51365706b829.png', 4, 'PT0010', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 2, '2025-02-19', '2025-02-19 00:24:12'),
(25, 'MacBook+Pro', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b513a1cf59e29.png', 5, 'PT0011', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 2, '2025-02-19', '2025-02-19 00:24:18'),
(26, 'IdeaPad+Slim+5+Gen+7', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b513cf3ede415.png', 5, 'PT0012', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 2, '2025-02-19', '2025-02-19 00:24:24'),
(27, 'Tablet+1.02+inch', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b513f87186b56.png', 5, 'PT0013', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 2, '2025-02-19', '2025-02-19 00:24:30'),
(28, 'Yoga+Book+9i', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b51425c18eb41.png', 5, 'PT0014', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 2, '2025-02-19', '2025-02-19 00:24:36'),
(29, 'Airpod+2', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b50e59d065857.png', 1, 'PT001', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 3, '2025-02-19', '2025-02-19 00:25:53'),
(30, 'Swagme', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b511f3b9d8b19.png', 1, 'PT002', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 3, '2025-02-19', '2025-02-19 00:25:59'),
(31, 'Red+Nike+Angelo', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b51236c169e26.png', 2, 'PT003', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 3, '2025-02-19', '2025-02-19 00:26:05'),
(32, 'Blue+White+OGR', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b5126993af317.png', 2, 'PT004', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 3, '2025-02-19', '2025-02-19 00:26:12'),
(33, 'Green+Nike+Fe', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b51293ea9fc59.png', 2, 'PT005', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 3, '2025-02-19', '2025-02-19 00:26:18'),
(34, 'Iphone+11', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b512bd6039241.png', 3, 'PT006', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 3, '2025-02-19', '2025-02-19 00:26:24'),
(35, 'Iphone+14+64GB', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b512e57b1b121.png', 3, 'PT007', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 3, '2025-02-19', '2025-02-19 00:26:30'),
(36, 'Rolex+Tribute+V3', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b5130b951be59.png', 4, 'PT008', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 3, '2025-02-19', '2025-02-19 00:26:37'),
(37, 'Timex+Black+Silver', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b513356d92341.png', 4, 'PT009', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 3, '2025-02-19', '2025-02-19 00:26:43'),
(38, 'Fossil+Pair+Of+3+in+1', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b51365706b829.png', 4, 'PT0010', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 3, '2025-02-19', '2025-02-19 00:26:49'),
(39, 'MacBook+Pro', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b513a1cf59e29.png', 5, 'PT0011', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 3, '2025-02-19', '2025-02-19 00:26:55'),
(40, 'IdeaPad+Slim+5+Gen+7', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b513cf3ede415.png', 5, 'PT0012', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 3, '2025-02-19', '2025-02-19 00:27:03'),
(41, 'Tablet+1.02+inch', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b513f87186b56.png', 5, 'PT0013', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 3, '2025-02-19', '2025-02-19 00:27:09'),
(42, 'Yoga+Book+9i', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b51425c18eb41.png', 5, 'PT0014', 'unidad', 'IVA_19', 'NULL', 0, 0, 1, 3, '2025-02-19', '2025-02-19 00:27:15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`);

--
-- Indices de la tabla `columns`
--
ALTER TABLE `columns`
  ADD PRIMARY KEY (`id_column`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id_file`);

--
-- Indices de la tabla `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id_folder`);

--
-- Indices de la tabla `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id_module`);

--
-- Indices de la tabla `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id_office`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id_page`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `columns`
--
ALTER TABLE `columns`
  MODIFY `id_column` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `folders`
--
ALTER TABLE `folders`
  MODIFY `id_folder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `modules`
--
ALTER TABLE `modules`
  MODIFY `id_module` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `offices`
--
ALTER TABLE `offices`
  MODIFY `id_office` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
