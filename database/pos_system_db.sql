-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2025 a las 00:29:36
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
  `permissions_admin` text DEFAULT '{}',
  `token_admin` text DEFAULT NULL,
  `token_exp_admin` text DEFAULT NULL,
  `status_admin` int(11) DEFAULT 1,
  `title_admin` text DEFAULT NULL,
  `symbol_admin` text DEFAULT NULL,
  `font_admin` text DEFAULT NULL,
  `color_admin` text DEFAULT NULL,
  `back_admin` text DEFAULT NULL,
  `scode_admin` text DEFAULT NULL,
  `name_admin` text DEFAULT NULL,
  `id_office_admin` int(11) DEFAULT 0,
  `chatgpt_admin` text DEFAULT NULL,
  `date_created_admin` date DEFAULT NULL,
  `date_updated_admin` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id_admin`, `email_admin`, `password_admin`, `rol_admin`, `permissions_admin`, `token_admin`, `token_exp_admin`, `status_admin`, `title_admin`, `symbol_admin`, `font_admin`, `color_admin`, `back_admin`, `scode_admin`, `name_admin`, `id_office_admin`, `chatgpt_admin`, `date_created_admin`, `date_updated_admin`) VALUES
(1, 'superadmin@pos.com', '', 'superadmin', '{\"todo\":\"on\"}', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NDM3MTAyMTksImV4cCI6MTc0Mzc5NjYxOSwiZGF0YSI6eyJpZCI6MSwiZW1haWwiOiJzdXBlcmFkbWluQHBvcy5jb20ifX0.ocd05sgQ9XrMtpCgBslDYqPaONtJRRBVUVXW66a-zTI', '1743796619', 1, 'POSify', '<i class=\"bi bi-cart-check-fill\"></i>', '<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\"><link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin><link href=\"https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap\" rel=\"stylesheet\">', '#00a6fb', 'http://cms.pos.com/views/assets/files/67aeeca5d9fed33.jpg', '', 'El Programador', 0, NULL, '2025-02-14', '2025-04-03 19:56:59'),
(2, 'admin@pos.com', '', 'admin', '{\"todo\":\"on\"}', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NDMxNDA0MDcsImV4cCI6MTc0MzIyNjgwNywiZGF0YSI6eyJpZCI6MiwiZW1haWwiOiJhZG1pbkBwb3MuY29tIn19.h-kOkv9mNhUhup37tQpJSTovwT-tUcCStC_SAcbut_U', '1743226807', 1, '', '', '', '', '', '', 'Sara Perez', 0, NULL, '2025-03-27', '2025-03-28 05:47:01'),
(3, 'supervisor@pos.com', '', 'editor', '{\"posify\":\"on\",\"clientes\":\"on\",\"productos\":\"on\",\"compras\":\"on\"}', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NDMxNDA2NjMsImV4cCI6MTc0MzIyNzA2MywiZGF0YSI6eyJpZCI6MywiZW1haWwiOiJzdXBlcnZpc29yQHBvcy5jb20ifX0.heafrQdOV-CWa0OgEUpfavjKREHmWZ67CP9b_gjFEus', '1743227063', 1, '', '', '', '', '', '', 'Jorge Riquelme', 0, NULL, '2025-03-28', '2025-03-28 05:46:43'),
(4, 'admin@pueblolindo.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'admin', '%7B%22todo%22%3A%22on%22%7D', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NDMxOTY2MTgsImV4cCI6MTc0MzI4MzAxOCwiZGF0YSI6eyJpZCI6NCwiZW1haWwiOiJhZG1pbkBwdWVibG9saW5kby5jb20ifX0.32Tm3M7j5xxqzC64MYpZCGBjbZJg-OOxAE66-gjDXik', '1743283018', 1, '', '', '', '', '', '', 'Jaime+Suarez', 1, NULL, '2025-03-28', '2025-03-28 21:16:58'),
(5, 'admin@colinas.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'admin', '%7B%22todo%22%3A%22on%22%7D', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NDMyMDE2NjAsImV4cCI6MTc0MzI4ODA2MCwiZGF0YSI6eyJpZCI6NSwiZW1haWwiOiJhZG1pbkBjb2xpbmFzLmNvbSJ9fQ.fCx4jNzavfJlcOzONBdK7oVB2ZFjlFHHETR3Lb2y2Xs', '1743288060', 1, '', '', '', '', '', '', 'Marta+Galindo', 2, NULL, '2025-03-28', '2025-03-28 22:41:00'),
(6, 'admin@valles.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'admin', '%7B%22todo%22%3A%22on%22%7D', '', '', 1, '', '', '', '', '', '', 'Mary+Mendez', 3, NULL, '2025-03-28', '2025-03-28 21:06:45'),
(7, 'supervisor@pueblolindo.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'editor', '%7B%22posify%22%3A%22on%22%2C%22clientes%22%3A%22on%22%2C%22productos%22%3A%22on%22%2C%22compras%22%3A%22on%22%2C%22caja%22%3A%22on%22%2C%22gastos%22%3A%22on%22%7D', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NDMxOTY2MTgsImV4cCI6MTc0MzI4MzAxOCwiZGF0YSI6eyJpZCI6NCwiZW1haWwiOiJhZG1pbkBwdWVibG9saW5kby5jb20ifX0.32Tm3M7j5xxqzC64MYpZCGBjbZJg-OOxAE66-gjDXik', '1743283018', 1, '', '', '', '', '', '', 'Pepe+Lucio', 1, NULL, '2025-03-28', '2025-03-28 21:24:36'),
(8, 'supervisor@colinas.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'editor', '%7B%22posify%22%3A%22on%22%2C%22clientes%22%3A%22on%22%2C%22productos%22%3A%22on%22%2C%22compras%22%3A%22on%22%2C%22caja%22%3A%22on%22%2C%22gastos%22%3A%22on%22%7D', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NDMyMDE2MjIsImV4cCI6MTc0MzI4ODAyMiwiZGF0YSI6eyJpZCI6OCwiZW1haWwiOiJzdXBlcnZpc29yQGNvbGluYXMuY29tIn19.nYydOmq2VpIeBXdC1ZrLP4uVDAQ7PkISIeCehuPAinI', '1743288022', 1, '', '', '', '', '', '', 'Mario+Lopez', 2, NULL, '2025-03-28', '2025-03-28 22:40:22'),
(9, 'supervisor@valles.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'editor', '%7B%22posify%22%3A%22on%22%2C%22clientes%22%3A%22on%22%2C%22productos%22%3A%22on%22%2C%22compras%22%3A%22on%22%2C%22caja%22%3A%22on%22%2C%22gastos%22%3A%22on%22%7D', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NDMxOTY2MTgsImV4cCI6MTc0MzI4MzAxOCwiZGF0YSI6eyJpZCI6NCwiZW1haWwiOiJhZG1pbkBwdWVibG9saW5kby5jb20ifX0.32Tm3M7j5xxqzC64MYpZCGBjbZJg-OOxAE66-gjDXik', '1743283018', 1, '', '', '', '', '', '', 'Julia+Martinez', 3, NULL, '2025-03-28', '2025-03-28 21:25:50'),
(10, 'seller@pueblolindo.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'editor', '%7B%22posify%22%3A%22on%22%2C%22clientes%22%3A%22on%22%7D', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NDMxOTY2MTgsImV4cCI6MTc0MzI4MzAxOCwiZGF0YSI6eyJpZCI6NCwiZW1haWwiOiJhZG1pbkBwdWVibG9saW5kby5jb20ifX0.32Tm3M7j5xxqzC64MYpZCGBjbZJg-OOxAE66-gjDXik', '1743283018', 1, '', '', '', '', '', '', 'Marcos+Londo%C3%B1o', 1, NULL, '2025-03-28', '2025-03-28 21:26:43'),
(11, 'seller@colinas.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'editor', '%7B%22posify%22%3A%22on%22%2C%22clientes%22%3A%22on%22%7D', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NDMyMDE1ODYsImV4cCI6MTc0MzI4Nzk4NiwiZGF0YSI6eyJpZCI6MTEsImVtYWlsIjoic2VsbGVyQGNvbGluYXMuY29tIn19.rWvZ8kpXM4jT1o2nTv_tnNHg5g1_TbS7-JSLioH8g6k', '1743287986', 1, '', '', '', '', '', '', 'Jaco+Cifuentes', 2, NULL, '2025-03-28', '2025-03-28 22:39:46'),
(12, 'seller@valles.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'editor', '%7B%22posify%22%3A%22on%22%2C%22clientes%22%3A%22on%22%7D', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NDMxOTczMDksImV4cCI6MTc0MzI4MzcwOSwiZGF0YSI6eyJpZCI6MTIsImVtYWlsIjoic2VsbGVyQHZhbGxlcy5jb20ifX0.tt_dqDotjaYeCECiqB1KCn_fAGn0a2Gr2_xFyQIeCzI', '1743283709', 1, '', '', '', '', '', '', 'Mona+Lisa', 3, NULL, '2025-03-28', '2025-03-28 21:28:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bills`
--

CREATE TABLE `bills` (
  `id_bill` int(11) NOT NULL,
  `concept_bill` text DEFAULT NULL,
  `cost_bill` double DEFAULT 0,
  `date_bill` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_admin_bill` int(11) DEFAULT 0,
  `id_office_bill` int(11) DEFAULT 0,
  `date_created_bill` date DEFAULT NULL,
  `date_updated_bill` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `bills`
--

INSERT INTO `bills` (`id_bill`, `concept_bill`, `cost_bill`, `date_bill`, `id_admin_bill`, `id_office_bill`, `date_created_bill`, `date_updated_bill`) VALUES
(1, 'Almuerzo', 50, '2025-04-03 05:03:00', 1, 1, '2025-04-03', '2025-04-03 05:22:46'),
(2, 'Fotocopias', 10, '2025-04-03 05:03:00', 1, 1, '2025-04-03', '2025-04-03 05:23:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cashs`
--

CREATE TABLE `cashs` (
  `id_cash` int(11) NOT NULL,
  `start_cash` double DEFAULT 0,
  `bills_cash` double DEFAULT 0,
  `money_cash` double DEFAULT 0,
  `diff_cash` double DEFAULT 0,
  `end_cash` double DEFAULT 0,
  `gap_cash` double DEFAULT 0,
  `status_cash` int(11) DEFAULT 1,
  `date_start_cash` datetime DEFAULT NULL,
  `date_end_cash` datetime DEFAULT NULL,
  `id_admin_cash` int(11) DEFAULT 0,
  `id_office_cash` int(11) DEFAULT 0,
  `date_created_cash` date DEFAULT NULL,
  `date_updated_cash` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `cashs`
--

INSERT INTO `cashs` (`id_cash`, `start_cash`, `bills_cash`, `money_cash`, `diff_cash`, `end_cash`, `gap_cash`, `status_cash`, `date_start_cash`, `date_end_cash`, `id_admin_cash`, `id_office_cash`, `date_created_cash`, `date_updated_cash`) VALUES
(1, 1000, 0, 0, 0, 0, 0, 0, '2025-04-02 18:03:00', '0000-00-00 00:00:00', 1, 1, '2025-04-03', '2025-04-03 03:53:24'),
(2, 1000, 0, 0, 0, 0, 0, 0, '2025-04-02 22:03:00', '0000-00-00 00:00:00', 1, 1, '2025-04-02', '2025-04-03 05:23:23'),
(3, 1000, -60, 5118.33, 6058.33, 6000, -58.33, 0, '2025-04-03 00:03:00', '2025-04-03 00:42:00', 1, 1, '2025-04-03', '2025-04-03 05:42:51'),
(4, 10000, -60, 8411.8, 18351.8, 18351.8, 0, 0, '2025-04-03 01:03:00', '2025-04-03 14:16:00', 1, 1, '2025-04-03', '2025-04-03 19:16:13'),
(5, 1000, -60, 8840.2, 9780.2, 9780.2, 0, 0, '2025-04-03 14:03:00', '2025-04-03 14:21:00', 1, 1, '2025-04-03', '2025-04-03 19:21:09');

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
(3, 'Teléfonos', 'http://cms.pos.com/views/assets/files/67b15b38d40f452.png', 0, 1, '2025-02-16', '2025-03-29 00:42:24'),
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
(9, '37408327408', 'Karla', 'Tellez', 'karla@correo.com', 'Calle+15+%23+64+45', '3790478320', 3, '2025-02-15', '2025-02-15 02:12:02'),
(10, '98765123', 'Marcos', 'Jimenez', 'marcos@correo.com', 'calle 34 ', '6012345678', 1, '2025-03-31', '2025-03-31 04:42:21');

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
(35, 10, 'stock_product', 'Stock', 'stock', NULL, 1, '2025-02-18', '2025-04-03 05:47:39'),
(36, 10, 'discount_product', 'Descuento', 'double', NULL, 1, '2025-02-18', '2025-02-18 22:46:27'),
(37, 10, 'status_product', 'Estado', 'boolean', NULL, 1, '2025-02-18', '2025-02-18 22:46:27'),
(38, 10, 'id_office_product', 'Sucursal', 'relations', 'offices', 1, '2025-02-18', '2025-02-18 22:56:51'),
(39, 12, 'supplier_purchase', 'Proveedor', 'text', NULL, 1, '2025-02-20', '2025-02-20 22:36:21'),
(40, 12, 'id_product_purchase', 'Producto', 'relations', 'products', 1, '2025-02-20', '2025-02-20 22:40:00'),
(41, 12, 'cost_purchase', 'Costo', 'money', NULL, 1, '2025-02-20', '2025-02-20 22:36:21'),
(42, 12, 'utility_purchase', 'Utilidad', 'select', '10%,20%,30%,40%,50%', 1, '2025-02-20', '2025-02-20 23:52:05'),
(43, 12, 'price_purchase', 'Precio', 'money', NULL, 1, '2025-02-20', '2025-02-20 22:36:22'),
(44, 12, 'qty_purchase', 'Cantidad', 'int', NULL, 1, '2025-02-20', '2025-02-20 22:36:22'),
(45, 12, 'invest_purchase', 'Inversión ', 'money', NULL, 1, '2025-02-20', '2025-02-20 22:36:22'),
(46, 12, 'contact_purchase', 'Teléfono ', 'text', NULL, 1, '2025-02-20', '2025-02-20 22:36:22'),
(47, 12, 'id_office_purchase', 'Sucursal', 'relations', 'offices', 1, '2025-02-20', '2025-02-20 22:40:50'),
(48, 14, 'transaction_order', 'Transacción ', 'posify', NULL, 1, '2025-02-21', '2025-04-03 04:43:52'),
(49, 14, 'id_admin_order', 'Vendedor', 'relations', 'admins', 1, '2025-02-21', '2025-02-21 00:51:33'),
(50, 14, 'id_client_order', 'Cliente', 'relations', 'clients', 1, '2025-02-21', '2025-02-21 00:51:39'),
(51, 14, 'subtotal_order', 'Subtotal', 'money', NULL, 1, '2025-02-21', '2025-02-21 00:50:48'),
(52, 14, 'discount_order', 'Decuento', 'money', NULL, 1, '2025-02-21', '2025-02-21 00:50:48'),
(53, 14, 'tax_order', 'Impuesto', 'money', NULL, 1, '2025-02-21', '2025-02-21 00:50:48'),
(54, 14, 'total_order', 'Total', 'money', NULL, 1, '2025-02-21', '2025-02-21 00:50:48'),
(55, 14, 'method_order', 'Método ', 'select', 'efectivo,transferencia,tarjeta', 1, '2025-02-21', '2025-02-21 00:55:57'),
(56, 14, 'transfer_order', 'Transferencia', 'text', NULL, 1, '2025-02-21', '2025-02-21 00:50:49'),
(57, 14, 'status_order', 'Estado', 'select', 'Completada,Pendiente', 1, '2025-02-21', '2025-02-21 00:56:13'),
(58, 14, 'date_order', 'Fecha', 'timestamp', NULL, 1, '2025-02-21', '2025-02-21 00:50:49'),
(59, 14, 'id_office_order', 'Sucursal', 'relations', 'offices', 1, '2025-02-21', '2025-02-21 00:51:51'),
(60, 16, 'id_order_sale', 'Orden', 'relations', 'orders', 1, '2025-02-21', '2025-02-21 03:27:55'),
(61, 16, 'id_product_sale', 'Producto', 'relations', 'products', 1, '2025-02-21', '2025-02-21 03:27:45'),
(62, 16, 'tax_type_sale', 'Tipo Impuesto', 'text', NULL, 1, '2025-02-21', '2025-02-21 03:25:49'),
(63, 16, 'tax_sale', 'Impuesto', 'money', NULL, 1, '2025-02-21', '2025-02-21 03:25:49'),
(64, 16, 'discount_sale', 'Descuento', 'money', NULL, 1, '2025-02-21', '2025-02-21 03:25:49'),
(65, 16, 'qty_sale', 'Cantidad', 'int', NULL, 1, '2025-02-21', '2025-02-21 03:25:49'),
(66, 16, 'subtotal_sale', 'Subtotal', 'money', NULL, 1, '2025-02-21', '2025-02-21 03:25:49'),
(67, 16, 'status_sale', 'Estado', 'select', 'Completada,Pendiente', 1, '2025-02-21', '2025-02-21 03:27:24'),
(68, 16, 'id_admin_sale', 'Vendedor', 'relations', 'admins', 1, '2025-02-21', '2025-02-21 03:27:05'),
(69, 16, 'id_client_sale', 'Cliente', 'relations', 'clients', 1, '2025-02-21', '2025-02-21 03:27:02'),
(70, 16, 'id_office_sale', 'Sucursal', 'relations', 'offices', 1, '2025-02-21', '2025-02-21 03:26:51'),
(71, 18, 'start_cash', 'Dinero Inicial', 'money', NULL, 1, '2025-02-22', '2025-02-22 04:59:07'),
(72, 18, 'bills_cash', 'Gastos', 'money', NULL, 1, '2025-02-22', '2025-02-22 04:59:07'),
(73, 18, 'money_cash', 'Ingresos', 'money', NULL, 1, '2025-02-22', '2025-02-22 04:59:07'),
(74, 18, 'diff_cash', 'Diferencia', 'money', NULL, 1, '2025-02-22', '2025-02-22 04:59:08'),
(75, 18, 'end_cash', 'Dinero Final', 'money', NULL, 1, '2025-02-22', '2025-02-22 04:59:08'),
(76, 18, 'gap_cash', 'Brecha', 'money', NULL, 1, '2025-02-22', '2025-02-22 04:59:08'),
(77, 18, 'status_cash', 'Estado', 'boolean', NULL, 1, '2025-02-22', '2025-02-22 04:59:08'),
(78, 18, 'date_start_cash', 'Fecha Inicial', 'datetime', NULL, 1, '2025-02-22', '2025-02-22 04:59:08'),
(79, 18, 'date_end_cash', 'Fecha Final', 'datetime', NULL, 1, '2025-02-22', '2025-02-22 04:59:08'),
(80, 18, 'id_admin_cash', 'Administrador', 'relations', 'admins', 1, '2025-02-22', '2025-02-22 04:59:48'),
(81, 18, 'id_office_cash', 'Sucursal', 'relations', 'offices', 1, '2025-02-22', '2025-02-22 04:59:40'),
(82, 20, 'concept_bill', 'Concepto', 'text', NULL, 1, '2025-02-22', '2025-02-22 05:07:19'),
(83, 20, 'cost_bill', 'Costo', 'money', NULL, 1, '2025-02-22', '2025-02-22 05:07:19'),
(84, 20, 'date_bill', 'Fecha', 'timestamp', NULL, 1, '2025-02-22', '2025-02-22 05:07:19'),
(85, 20, 'id_admin_bill', 'Administrador', 'relations', 'admins', 1, '2025-02-22', '2025-02-22 05:07:42'),
(86, 20, 'id_office_bill', 'Sucursal', 'relations', 'offices', 1, '2025-02-22', '2025-02-22 05:07:46'),
(87, 2, 'name_admin', 'Nombre', 'text', NULL, 1, '2025-03-28', '2025-03-28 05:46:21'),
(88, 2, 'id_office_admin', 'Sucursal', 'relations', 'offices', 1, '2025-03-28', '2025-03-28 21:05:38');

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
(20, 1, '676337786b5b132', 'png', 'image/png', 10505, 'http://cms.pos.com/views/assets/files/67b51425c18eb41.png', NULL, NULL, '2025-02-19', '2025-02-18 23:13:41'),
(21, 1, '67659e224786f6', 'png', 'image/png', 1072, 'http://cms.pos.com/views/assets/files/67e742629d30818.png', NULL, NULL, '2025-03-29', '2025-03-29 00:44:18');

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
(1, 'Server', '200000000000', 12319555, '500000000', 'http://cms.pos.com', NULL, '2025-02-14', '2025-03-29 00:44:18');

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
(2, 2, 'tables', 'admins', 'admin', '', 100, 0, '2025-02-14', '2025-03-28 05:46:20'),
(3, 4, 'breadcrumbs', 'sucursales', '', '', 100, 1, '2025-02-15', '2025-02-15 00:59:02'),
(4, 4, 'tables', 'offices', 'office', '', 100, 1, '2025-02-15', '2025-02-15 01:05:35'),
(5, 5, 'breadcrumbs', 'clientes', '', '', 100, 1, '2025-02-15', '2025-02-15 01:46:45'),
(6, 5, 'tables', 'clients', 'client', '', 100, 1, '2025-02-15', '2025-02-15 01:51:48'),
(7, 6, 'breadcrumbs', 'categorías', '', '', 100, 1, '2025-02-16', '2025-02-16 03:14:49'),
(8, 6, 'tables', 'categories', 'category', '', 100, 1, '2025-02-16', '2025-02-16 03:20:10'),
(9, 7, 'breadcrumbs', 'productos', '', '', 100, 1, '2025-02-18', '2025-02-18 22:35:55'),
(10, 7, 'tables', 'products', 'product', '', 100, 1, '2025-02-18', '2025-02-18 22:46:26'),
(11, 8, 'breadcrumbs', 'compras', '', '', 100, 1, '2025-02-20', '2025-02-20 22:30:54'),
(12, 8, 'tables', 'purchases', 'purchase', '', 100, 1, '2025-02-20', '2025-02-20 22:36:21'),
(13, 9, 'breadcrumbs', 'Órdenes', '', '', 100, 1, '2025-02-21', '2025-02-21 00:42:21'),
(14, 9, 'tables', 'orders', 'order', '', 100, 0, '2025-02-21', '2025-02-21 00:55:16'),
(15, 10, 'breadcrumbs', 'ventas', '', '', 100, 1, '2025-02-21', '2025-02-21 03:21:59'),
(16, 10, 'tables', 'sales', 'sale', '', 100, 0, '2025-02-21', '2025-02-21 03:25:48'),
(17, 11, 'breadcrumbs', 'caja', '', '', 100, 1, '2025-02-22', '2025-02-22 04:51:55'),
(18, 11, 'tables', 'cashs', 'cash', '', 100, 1, '2025-02-22', '2025-02-22 04:59:07'),
(19, 12, 'breadcrumbs', 'gastos', '', '', 100, 1, '2025-02-22', '2025-02-22 05:04:33'),
(20, 12, 'tables', 'bills', 'bill', '', 100, 1, '2025-02-22', '2025-02-22 05:07:19'),
(21, 1, 'custom', 'orders', '', '', 100, 1, '2025-03-29', '2025-03-28 23:45:34'),
(22, 1, 'custom', 'products', '', '', 50, 1, '2025-03-29', '2025-03-28 23:48:48'),
(23, 1, 'custom', 'panel', '', '', 50, 1, '2025-03-29', '2025-03-28 23:49:09'),
(24, 13, 'metrics', 'ventas', '', '{\"type\":\"add\",\"table\":\"orders\", \"column\":\"total_order\",\"config\":\"price\",\"icon\":\"fas fa-cart-arrow-down\",\"color\":\"28, 175, 159\"  }', 25, 1, '2025-04-03', '2025-04-03 20:02:03'),
(25, 13, 'metrics', 'compras', '', '{\"type\":\"add\",\"table\":\"purchases\", \"column\":\"invest_purchase\",\"config\":\"price\",\"icon\":\"fas fa-shopping-basket\",\"color\":\"128, 0, 0\"  }', 25, 1, '2025-04-03', '2025-04-03 20:07:04'),
(26, 13, 'metrics', 'productos', '', '{\"type\":\"add\",\"table\":\"products\", \"column\":\"stock_product\",\"config\":\"unit\",\"icon\":\"fas fa-box\",\"color\":\"77, 93, 219\"  }', 25, 1, '2025-04-03', '2025-04-03 20:08:20'),
(27, 13, 'metrics', 'clientes', '', '{\"type\":\"total\",\"table\":\"clients\", \"column\":\"id_client\",\"config\":\"unit\",\"icon\":\"fas fa-users\",\"color\":\"43, 62, 101\"  }', 25, 1, '2025-04-03', '2025-04-03 20:09:23'),
(28, 13, 'graphics', 'gráfico de ventas diarias', '', '{\"type\":\"bar\",\"table\":\"orders\",\"xAxis\":\"date_created_order\",\"yAxis\":\"total_order\",\"color\":\"134, 153, 163\"}', 100, 1, '2025-04-03', '2025-04-03 20:57:30'),
(29, 13, 'graphics', 'gráfico de ventas mensuales', '', '{\"type\":\"line\",\"table\":\"orders\",\"xAxis\":\"date_created_order\",\"yAxis\":\"total_order\",\"color\":\"252, 115, 3\"}', 100, 1, '2025-04-03', '2025-04-03 21:39:11'),
(30, 13, 'graphics', 'ventas por sucursal', '', '{\"type\":\"bar\",\"table\":\"orders\",\"xAxis\":\"id_office_order\",\"yAxis\":\"total_order\",\"color\":\"5, 195, 251\"}', 50, 1, '2025-04-03', '2025-04-03 22:16:53');

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
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `transaction_order` text DEFAULT NULL,
  `id_admin_order` int(11) DEFAULT 0,
  `id_client_order` int(11) DEFAULT 0,
  `subtotal_order` double DEFAULT 0,
  `discount_order` double DEFAULT 0,
  `tax_order` double DEFAULT 0,
  `total_order` double DEFAULT 0,
  `method_order` text DEFAULT NULL,
  `transfer_order` text DEFAULT NULL,
  `status_order` text DEFAULT NULL,
  `date_order` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_office_order` int(11) DEFAULT 0,
  `date_created_order` date DEFAULT NULL,
  `date_updated_order` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id_order`, `transaction_order`, `id_admin_order`, `id_client_order`, `subtotal_order`, `discount_order`, `tax_order`, `total_order`, `method_order`, `transfer_order`, `status_order`, `date_order`, `id_office_order`, `date_created_order`, `date_updated_order`) VALUES
(1, '943143249651', 1, 1, 1398.6, 419.58, 186.01, 1165.03, 'efectivo', '', 'Completada', '2025-04-03 22:01:58', 1, '2025-02-28', '2025-04-03 22:01:58'),
(2, '981596463137', 1, 1, 0, 0, 0, 0, 'null', NULL, 'Pendiente', '2025-04-03 21:11:24', 1, '2025-03-31', '2025-04-03 21:11:24'),
(3, '754657799523', 1, 1, 4720.7, 419.58, 817.21, 5118.33, 'efectivo', '', 'Completada', '2025-04-03 22:18:42', 1, '2025-03-31', '2025-04-03 22:18:42'),
(4, '186129524186', 1, 10, 3187.2, 419.58, 525.85, 3293.47, 'efectivo', '', 'Completada', '2025-04-03 22:18:47', 2, '2025-04-02', '2025-04-03 22:18:47'),
(5, '636374495911', 1, 4, 360, 0, 68.4, 428.4, 'efectivo', '', 'Completada', '2025-04-03 22:18:49', 3, '2025-04-03', '2025-04-03 22:18:49');

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
(5, 'Clientes', 'clientes', 'bi bi-people', 'modules', 5, '2025-02-15', '2025-04-03 01:57:14'),
(6, 'Categorías', 'categorias', 'bi bi-card-list', 'modules', 6, '2025-02-16', '2025-04-03 01:57:14'),
(7, 'Productos', 'productos', 'bi bi-box', 'modules', 7, '2025-02-18', '2025-04-03 01:57:14'),
(8, 'Compras', 'compras', 'bi bi-basket-fill', 'modules', 8, '2025-02-20', '2025-04-03 01:57:14'),
(9, 'Órdenes', 'ordenes', 'bi bi-ticket-detailed', 'modules', 9, '2025-02-21', '2025-04-03 01:57:14'),
(10, 'Ventas', 'ventas', 'bi bi-cash-coin', 'modules', 10, '2025-02-21', '2025-04-03 01:57:14'),
(11, 'Caja', 'caja', 'fas fa-cash-register', 'modules', 11, '2025-02-22', '2025-04-03 01:57:14'),
(12, 'Gastos', 'gastos', 'fas fa-money-bill-wave', 'modules', 12, '2025-02-22', '2025-04-03 01:57:14'),
(13, 'Informes', 'informes', 'bi bi-file-earmark-bar-graph-fill', 'modules', 1000, '2025-04-03', '2025-04-03 19:58:46');

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
(1, 'Airpod+2', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b50e59d065857.png', 1, 'PT001', 'unidad', 'IVA_19', 'NULL', 99, 0, 1, 1, '2025-02-19', '2025-04-03 06:03:49'),
(2, 'Swagme', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b511f3b9d8b19.png', 1, 'PT002', 'unidad', 'IVA_19', 'NULL', 99, 0, 1, 1, '2025-02-19', '2025-04-03 06:03:49'),
(3, 'Red Nike Angelo', 'http://cms.pos.com/views/assets/files/67b51236c169e26.png', 2, 'PT003', 'unidad', 'IVA_19', 'NULL', 100, 0, 1, 1, '2025-02-19', '2025-03-30 04:10:11'),
(4, 'Blue+White+OGR', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b5126993af317.png', 2, 'PT004', 'unidad', 'IVA_19', 'NULL', 100, 0, 1, 1, '2025-02-19', '2025-03-30 04:10:11'),
(5, 'Green+Nike+Fe', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b51293ea9fc59.png', 2, 'PT005', 'unidad', 'IVA_19', 'NULL', 100, 0, 1, 1, '2025-02-19', '2025-03-30 04:10:11'),
(6, 'Iphone+11', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b512bd6039241.png', 3, 'PT006', 'unidad', 'IVA_19', 'NULL', 100, 0, 1, 1, '2025-02-19', '2025-03-30 04:10:11'),
(7, 'Iphone+14+64GB', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b512e57b1b121.png', 3, 'PT007', 'unidad', 'IVA_19', 'NULL', 99, 0, 1, 1, '2025-02-19', '2025-04-03 06:03:49'),
(8, 'Rolex+Tribute+V3', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b5130b951be59.png', 4, 'PT008', 'unidad', 'IVA_19', 'NULL', 100, 0, 1, 1, '2025-02-19', '2025-03-30 04:10:11'),
(9, 'Timex+Black+Silver', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b513356d92341.png', 4, 'PT009', 'unidad', 'IVA_19', 'NULL', 97, 0, 1, 1, '2025-02-19', '2025-04-03 05:46:43'),
(10, 'Fossil+Pair+Of+3+in+1', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b51365706b829.png', 4, 'PT0010', 'unidad', 'IVA_19', 'NULL', 98, 0, 1, 1, '2025-02-19', '2025-04-03 05:46:43'),
(11, 'MacBook+Pro', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b513a1cf59e29.png', 5, 'PT0011', 'unidad', 'IVA_19', 'NULL', 100, 0, 1, 1, '2025-02-19', '2025-03-30 04:10:11'),
(12, 'IdeaPad+Slim+5+Gen+7', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b513cf3ede415.png', 5, 'PT0012', 'unidad', 'IVA_19', 'NULL', 100, 0, 1, 1, '2025-02-19', '2025-04-03 05:46:43'),
(13, 'Tablet+1.02+inch', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b513f87186b56.png', 5, 'PT0013', 'unidad', 'IVA_19', 'NULL', 99, 0, 1, 1, '2025-02-19', '2025-04-03 04:59:45'),
(14, 'Yoga+Book+9i', 'http%3A%2F%2Fcms.pos.com%2Fviews%2Fassets%2Ffiles%2F67b51425c18eb41.png', 5, 'PT0014', 'unidad', 'IVA_19', 'NULL', 97, 30, 1, 1, '2025-02-19', '2025-04-03 06:03:50'),
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchases`
--

CREATE TABLE `purchases` (
  `id_purchase` int(11) NOT NULL,
  `supplier_purchase` text DEFAULT NULL,
  `id_product_purchase` int(11) DEFAULT 0,
  `cost_purchase` double DEFAULT 0,
  `utility_purchase` text DEFAULT NULL,
  `price_purchase` double DEFAULT 0,
  `qty_purchase` int(11) DEFAULT 0,
  `invest_purchase` double DEFAULT 0,
  `contact_purchase` text DEFAULT NULL,
  `id_office_purchase` int(11) DEFAULT 0,
  `date_created_purchase` date DEFAULT NULL,
  `date_updated_purchase` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `purchases`
--

INSERT INTO `purchases` (`id_purchase`, `supplier_purchase`, `id_product_purchase`, `cost_purchase`, `utility_purchase`, `price_purchase`, `qty_purchase`, `invest_purchase`, `contact_purchase`, `id_office_purchase`, `date_created_purchase`, `date_updated_purchase`) VALUES
(1, 'Apple', 1, 300, '30%25', 390, 100, 30000, '605423256', 1, '2025-02-21', '2025-02-20 23:52:35'),
(2, 'JBL', 2, 100, '40%25', 140, 100, 10000, '605423274', 1, '2025-02-21', '2025-02-20 23:53:19'),
(3, 'Nike', 3, 80, '50%', 120, 100, 8000, '6043218787', 1, '2025-02-21', '2025-02-20 23:55:26'),
(4, 'Adidas', 4, 80, '50%25', 120, 100, 8000, '6014567865', 1, '2025-02-21', '2025-02-20 23:56:03'),
(5, 'Nike', 5, 80, '50%25', 120, 100, 8000, '6014567864', 1, '2025-02-21', '2025-02-20 23:56:38'),
(6, 'Apple', 6, 699, '40%25', 978.6, 100, 69900, '6014567852', 1, '2025-02-21', '2025-02-20 23:57:20'),
(7, 'Apple', 7, 899, '40%25', 1258.6, 100, 89900, '6014567892', 1, '2025-02-21', '2025-02-21 00:13:04'),
(8, 'Rolex', 8, 199, '30%25', 258.7, 100, 19900, '6014567802', 1, '2025-02-21', '2025-02-21 00:15:55'),
(9, 'Rolex', 9, 299, '30%25', 388.7, 100, 29900, '6014567884', 1, '2025-02-21', '2025-02-21 00:16:36'),
(10, 'Fossil', 10, 399, '30%25', 518.7, 100, 39900, '6014567865', 1, '2025-02-21', '2025-02-21 00:17:17'),
(11, 'Apple', 11, 1099, '40%25', 1538.6, 100, 109900, '6014567865', 1, '2025-02-21', '2025-02-21 00:21:27'),
(12, 'Lenovo', 12, 599, '40%25', 838.6, 100, 59900, '6014567872', 1, '2025-02-21', '2025-02-21 00:22:23'),
(13, 'Lenovo', 13, 999, '40%', 1118.6, 100, 99900, '6014567893', 1, '2025-02-21', '2025-04-02 06:39:52'),
(14, 'Apple', 15, 300, '30%25', 390, 100, 30000, '6054321234', 2, '2025-02-21', '2025-02-21 00:24:06'),
(15, 'JBL', 16, 100, '40%25', 140, 100, 10000, '605423274', 2, '2025-02-21', '2025-02-21 00:25:05'),
(16, 'Nike', 17, 80, '50%25', 120, 100, 8000, '6043218787', 2, '2025-02-21', '2025-02-21 00:25:14'),
(17, 'Adidas', 18, 80, '50%25', 120, 100, 8000, '6014567865', 2, '2025-02-21', '2025-02-21 00:25:23'),
(18, 'Nike', 19, 80, '50%25', 120, 100, 8000, '6014567864', 2, '2025-02-21', '2025-02-21 00:25:32'),
(19, 'Apple', 20, 699, '40%25', 978.6, 100, 69900, '6014567852', 2, '2025-02-21', '2025-02-21 00:25:43'),
(20, 'Apple', 21, 899, '40%25', 1258.6, 100, 89900, '6014567892', 2, '2025-02-21', '2025-02-21 00:25:51'),
(21, 'Rolex', 22, 199, '30%25', 258.7, 100, 19900, '6014567802', 2, '2025-02-21', '2025-02-21 00:25:59'),
(22, 'Rolex', 23, 299, '30%25', 388.7, 100, 29900, '6014567884', 2, '2025-02-21', '2025-02-21 00:26:06'),
(23, 'Fossil', 24, 399, '30%25', 518.7, 100, 39900, '6014567865', 2, '2025-02-21', '2025-02-21 00:26:14'),
(24, 'Apple', 25, 1099, '40%25', 1538.6, 100, 109900, '6014567865', 2, '2025-02-21', '2025-02-21 00:26:22'),
(25, 'Lenovo', 26, 599, '40%25', 838.6, 100, 59900, '6014567872', 2, '2025-02-21', '2025-02-21 00:26:31'),
(26, 'Lenovo', 27, 999, '40%25', 1398.6, 100, 99900, '6014567893', 2, '2025-02-21', '2025-02-21 00:26:42'),
(27, 'Apple', 29, 300, '30%25', 390, 100, 30000, '6054321234', 3, '2025-02-21', '2025-02-21 00:29:55'),
(28, 'JBL', 30, 100, '40%25', 140, 100, 10000, '605423274', 3, '2025-02-21', '2025-02-21 00:30:02'),
(29, 'Nike', 31, 80, '50%25', 120, 100, 8000, '6043218787', 3, '2025-02-21', '2025-02-21 00:30:11'),
(30, 'Adidas', 32, 80, '50%25', 120, 100, 8000, '6014567865', 3, '2025-02-21', '2025-02-21 00:30:17'),
(31, 'Nike', 33, 80, '50%25', 120, 100, 8000, '6014567864', 3, '2025-02-21', '2025-02-21 00:30:25'),
(32, 'Apple', 34, 699, '40%25', 978.6, 100, 69900, '6014567852', 3, '2025-02-21', '2025-02-21 00:30:32'),
(33, 'Apple', 35, 899, '40%25', 1258.6, 100, 89900, '6014567892', 3, '2025-02-21', '2025-02-21 00:30:40'),
(34, 'Rolex', 36, 199, '30%25', 258.7, 100, 19900, '6014567802', 3, '2025-02-21', '2025-02-21 00:30:50'),
(35, 'Rolex', 37, 299, '30%25', 388.7, 100, 29900, '6014567884', 3, '2025-02-21', '2025-02-21 00:30:57'),
(36, 'Fossil', 38, 399, '30%25', 518.7, 100, 39900, '6014567865', 3, '2025-02-21', '2025-02-21 00:31:05'),
(37, 'Apple', 39, 1099, '40%25', 1538.6, 100, 109900, '6014567865', 3, '2025-02-21', '2025-02-21 00:31:12'),
(38, 'Lenovo', 40, 599, '40%25', 838.6, 100, 59900, '6014567872', 3, '2025-02-21', '2025-02-21 00:31:19'),
(39, 'Lenovo', 41, 999, '40%25', 1398.6, 100, 99900, '6014567893', 3, '2025-02-21', '2025-02-21 00:31:27'),
(40, 'Lenovo', 14, 999, '40%25', 1398.6, 100, 99900, '3154488674', 1, '2025-02-21', '2025-02-21 00:32:40'),
(41, 'Lenovo', 28, 999, '40%25', 1398.6, 100, 99900, '3154488674', 2, '2025-02-21', '2025-02-21 00:32:58'),
(42, 'Lenovo', 42, 999, '40%25', 1398.6, 100, 99900, '3154488674', 3, '2025-02-21', '2025-02-21 00:33:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id_sale` int(11) NOT NULL,
  `id_order_sale` int(11) DEFAULT 0,
  `id_product_sale` int(11) DEFAULT 0,
  `tax_type_sale` text DEFAULT NULL,
  `tax_sale` double DEFAULT 0,
  `discount_sale` double DEFAULT 0,
  `qty_sale` int(11) DEFAULT 0,
  `subtotal_sale` double DEFAULT 0,
  `status_sale` text DEFAULT NULL,
  `id_admin_sale` int(11) DEFAULT 0,
  `id_client_sale` int(11) DEFAULT 0,
  `id_office_sale` int(11) DEFAULT 0,
  `date_created_sale` date DEFAULT NULL,
  `date_updated_sale` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id_sale`, `id_order_sale`, `id_product_sale`, `tax_type_sale`, `tax_sale`, `discount_sale`, `qty_sale`, `subtotal_sale`, `status_sale`, `id_admin_sale`, `id_client_sale`, `id_office_sale`, `date_created_sale`, `date_updated_sale`) VALUES
(1, 1, 14, 'IVA', 19, 30, 1, 1398.6, 'Completada', 1, 1, 1, '2025-04-02', '2025-04-03 04:42:21'),
(5, 3, 14, 'IVA', 19, 30, 1, 1398.6, 'Completada', 1, 1, 1, '2025-04-03', '2025-04-03 05:33:40'),
(6, 3, 13, 'IVA', 19, 0, 1, 1118.6, 'Completada', 1, 1, 1, '2025-04-03', '2025-04-03 05:33:40'),
(7, 3, 10, 'IVA', 19, 0, 2, 1037.4, 'Completada', 1, 1, 1, '2025-04-03', '2025-04-03 05:33:40'),
(8, 3, 9, 'IVA', 19, 0, 3, 1166.1, 'Completada', 1, 1, 1, '2025-04-03', '2025-04-03 05:33:40'),
(9, 4, 14, 'IVA', 19, 30, 1, 1398.6, 'Completada', 1, 10, 2, '2025-04-03', '2025-04-03 22:19:23'),
(10, 4, 7, 'IVA', 19, 0, 1, 1258.6, 'Completada', 1, 10, 2, '2025-04-03', '2025-04-03 22:19:28'),
(11, 4, 1, 'IVA', 19, 0, 1, 390, 'Completada', 1, 10, 2, '2025-04-03', '2025-04-03 22:19:33'),
(12, 4, 2, 'IVA', 19, 0, 1, 140, 'Completada', 1, 10, 2, '2025-04-03', '2025-04-03 22:19:35'),
(13, 5, 5, 'IVA', 19, 0, 1, 120, 'Completada', 1, 4, 3, '2025-04-03', '2025-04-03 22:19:39'),
(14, 5, 4, 'IVA', 19, 0, 1, 120, 'Completada', 1, 4, 3, '2025-04-03', '2025-04-03 22:19:43'),
(15, 5, 3, 'IVA', 19, 0, 1, 120, 'Completada', 1, 4, 3, '2025-04-03', '2025-04-03 22:19:47');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id_bill`);

--
-- Indices de la tabla `cashs`
--
ALTER TABLE `cashs`
  ADD PRIMARY KEY (`id_cash`);

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
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`);

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
-- Indices de la tabla `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id_purchase`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id_sale`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `bills`
--
ALTER TABLE `bills`
  MODIFY `id_bill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cashs`
--
ALTER TABLE `cashs`
  MODIFY `id_cash` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `columns`
--
ALTER TABLE `columns`
  MODIFY `id_column` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `folders`
--
ALTER TABLE `folders`
  MODIFY `id_folder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `modules`
--
ALTER TABLE `modules`
  MODIFY `id_module` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `offices`
--
ALTER TABLE `offices`
  MODIFY `id_office` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id_purchase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id_sale` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
