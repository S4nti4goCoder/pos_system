-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2025 a las 03:19:07
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
(1, 'superadmin@pos.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'superadmin', '{\"todo\":\"on\"}', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3Mzk1ODE3MTQsImV4cCI6MTczOTY2ODExNCwiZGF0YSI6eyJpZCI6MSwiZW1haWwiOiJzdXBlcmFkbWluQHBvcy5jb20ifX0.UTPZwiosQqW7Nza39GWtVe3-FCu0h5X-_Rr4QDBT_5k', '1739668114', 1, 'POSify', '<i class=\"bi bi-cart-check-fill\"></i>', '<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n<link href=\"https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap\" rel=\"stylesheet\">', '#00a6fb', 'http://cms.pos.com/views/assets/files/67aeeca5d9fed33.jpg', NULL, NULL, '2025-02-14', '2025-02-15 01:08:34');

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
(23, 6, 'id_office_client', 'Sucursal', 'relations', 'offices', 1, '2025-02-15', '2025-02-15 01:53:02');

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
(1, 1, 'blake-wisz-tE6th1h6Bfk-unsplash', 'jpg', 'image/jpeg', 12157837, 'http://cms.pos.com/views/assets/files/67aeeca5d9fed33.jpg', NULL, NULL, '2025-02-14', '2025-02-14 07:11:33');

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
(1, 'Server', '200000000000', 12157837, '500000000', 'http://cms.pos.com', NULL, '2025-02-14', '2025-02-14 07:11:34');

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
(6, 5, 'tables', 'clients', 'client', '', 100, 1, '2025-02-15', '2025-02-15 01:51:48');

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
(5, 'Clientes', 'clientes', 'bi bi-people', 'modules', 1000, '2025-02-15', '2025-02-15 01:46:20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`);

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `columns`
--
ALTER TABLE `columns`
  MODIFY `id_column` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `folders`
--
ALTER TABLE `folders`
  MODIFY `id_folder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `modules`
--
ALTER TABLE `modules`
  MODIFY `id_module` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `offices`
--
ALTER TABLE `offices`
  MODIFY `id_office` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
