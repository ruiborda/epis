-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-02-2021 a las 04:49:29
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `epis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carousels`
--

CREATE TABLE `carousels` (
  `id` int(10) UNSIGNED NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carousels`
--

INSERT INTO `carousels` (`id`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '2021-02-15 22:47:00', 1, 1, '2021-02-16 03:46:40', '2021-02-16 04:35:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carousels_components`
--

CREATE TABLE `carousels_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `carousel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carousels_components`
--

INSERT INTO `carousels_components` (`id`, `field`, `order`, `component_type`, `component_id`, `carousel_id`) VALUES
(3, 'figure', 1, 'components_multimedia_figures', 3, 1),
(4, 'figure', 2, 'components_multimedia_figures', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `components_menu_desplegables`
--

CREATE TABLE `components_menu_desplegables` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `components_menu_desplegables_components`
--

CREATE TABLE `components_menu_desplegables_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_menu_desplegable_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `components_menu_enlaces`
--

CREATE TABLE `components_menu_enlaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `components_menu_enlaces`
--

INSERT INTO `components_menu_enlaces` (`id`, `descripcion`, `url`) VALUES
(1, 'Docentes', 'docentes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `components_menu_enlace_externos`
--

CREATE TABLE `components_menu_enlace_externos` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `components_menu_enlace_externos`
--

INSERT INTO `components_menu_enlace_externos` (`id`, `descripcion`, `url`) VALUES
(1, 'facebook', 'facebook '),
(2, 'biblioteca', 'biblioteca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `components_menu_paginas`
--

CREATE TABLE `components_menu_paginas` (
  `id` int(10) UNSIGNED NOT NULL,
  `pagina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `components_multimedia_figures`
--

CREATE TABLE `components_multimedia_figures` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `components_multimedia_figures`
--

INSERT INTO `components_multimedia_figures` (`id`, `titulo`, `subtitulo`) VALUES
(3, 'Pabellon EPIS', NULL),
(4, 'Laboratorio EPIS', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_store`
--

CREATE TABLE `core_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `core_store`
--

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'model_def_application::article.article', '{\"uid\":\"application::article.article\",\"collectionName\":\"articles\",\"kind\":\"collectionType\",\"info\":{\"name\":\"article\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"content\":{\"type\":\"richtext\",\"required\":true},\"image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false},\"category\":{\"model\":\"category\",\"via\":\"articles\"},\"url\":{\"type\":\"uid\",\"targetField\":\"title\"},\"admin_user\":{\"plugin\":\"admin\",\"model\":\"user\"},\"description\":{\"type\":\"string\",\"default\":\"Lo ideal es que la meta descripción contenga entre 70 y 160 caracteres incluyendo espacios\",\"maxLength\":160},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(2, 'model_def_strapi::core-store', '{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(3, 'model_def_menu.desplegable', '{\"uid\":\"menu.desplegable\",\"collectionName\":\"components_menu_desplegables\",\"info\":{\"name\":\"desplegable\",\"icon\":\"angle-down\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"descripcion\":{\"type\":\"string\"},\"url\":{\"type\":\"string\"},\"pagina\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"menu.pagina\"}}}', 'object', NULL, NULL),
(4, 'model_def_application::category.category', '{\"uid\":\"application::category.category\",\"collectionName\":\"categories\",\"kind\":\"collectionType\",\"info\":{\"name\":\"category\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"articles\":{\"via\":\"category\",\"collection\":\"article\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(5, 'model_def_menu.enlace-externo', '{\"uid\":\"menu.enlace-externo\",\"collectionName\":\"components_menu_enlace_externos\",\"info\":{\"name\":\"enlace-externo\",\"icon\":\"external-link-alt\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"descripcion\":{\"type\":\"string\"},\"url\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(6, 'model_def_menu.enlace', '{\"uid\":\"menu.enlace\",\"collectionName\":\"components_menu_enlaces\",\"info\":{\"name\":\"enlace\",\"icon\":\"link\"},\"options\":{\"timestamps\":false},\"attributes\":{\"descripcion\":{\"type\":\"string\"},\"url\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(7, 'model_def_menu.pagina', '{\"uid\":\"menu.pagina\",\"collectionName\":\"components_menu_paginas\",\"info\":{\"name\":\"pagina\",\"icon\":\"file\"},\"options\":{\"timestamps\":false},\"attributes\":{\"pagina\":{\"model\":\"pagina\"}}}', 'object', NULL, NULL),
(8, 'model_def_multimedia.figure', '{\"uid\":\"multimedia.figure\",\"collectionName\":\"components_multimedia_figures\",\"info\":{\"name\":\"figure\",\"icon\":\"image\"},\"options\":{\"timestamps\":false},\"attributes\":{\"imagen\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false},\"titulo\":{\"type\":\"string\"},\"subtitulo\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(9, 'model_def_application::carousel.carousel', '{\"uid\":\"application::carousel.carousel\",\"collectionName\":\"carousels\",\"kind\":\"singleType\",\"info\":{\"name\":\"Carousel\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"figure\":{\"type\":\"dynamiczone\",\"components\":[\"multimedia.figure\"]},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(10, 'model_def_application::docente.docente', '{\"uid\":\"application::docente.docente\",\"collectionName\":\"docente\",\"kind\":\"collectionType\",\"info\":{\"name\":\"docente\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"nombre\":{\"type\":\"string\"},\"clase\":{\"type\":\"enumeration\",\"enum\":[\"NOMBRADO\",\"CONTRATADO\"]},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(11, 'model_def_application::enlace-externo.enlace-externo', '{\"uid\":\"application::enlace-externo.enlace-externo\",\"collectionName\":\"enlace_externos\",\"kind\":\"collectionType\",\"info\":{\"name\":\"enlace-externo\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"descripcion\":{\"type\":\"string\"},\"url\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(12, 'model_def_application::footer-inicio.footer-inicio', '{\"uid\":\"application::footer-inicio.footer-inicio\",\"collectionName\":\"footer_inicios\",\"kind\":\"singleType\",\"info\":{\"name\":\"footer-inicio\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"encuentranos\":{\"type\":\"string\"},\"llamanos\":{\"type\":\"string\"},\"correo\":{\"type\":\"string\"},\"logo\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"descripcion\":{\"type\":\"text\"},\"social\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"menu.enlace-externo\"},\"enlaces_utiles\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"menu.enlace-externo\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(13, 'model_def_application::inicio.inicio', '{\"uid\":\"application::inicio.inicio\",\"collectionName\":\"inicios\",\"kind\":\"singleType\",\"info\":{\"name\":\"Inicio\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"h1\":{\"type\":\"string\",\"default\":\"título\"},\"logo\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"marca\":{\"type\":\"string\",\"default\":\"ejemplo ONU\"},\"metaDescripcion\":{\"type\":\"string\",\"default\":\"Lo ideal es que la meta descripción contenga entre 70 y 160 caracteres incluyendo espacios\",\"maxLength\":160},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(14, 'model_def_application::menu-inicio.menu-inicio', '{\"uid\":\"application::menu-inicio.menu-inicio\",\"collectionName\":\"menu_inicios\",\"kind\":\"singleType\",\"info\":{\"name\":\"menu-inicio\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"logo\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false},\"menu\":{\"type\":\"dynamiczone\",\"components\":[\"menu.desplegable\",\"menu.enlace-externo\",\"menu.enlace\"]},\"marca\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(15, 'model_def_application::pagina.pagina', '{\"uid\":\"application::pagina.pagina\",\"collectionName\":\"paginas\",\"kind\":\"collectionType\",\"info\":{\"name\":\"pagina\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"h1\":{\"type\":\"string\"},\"url\":{\"type\":\"uid\",\"targetField\":\"h1\"},\"descripcion\":{\"type\":\"string\",\"maxLength\":160,\"default\":\"160 caracteres como máximo incluyendo espacios\"},\"content\":{\"type\":\"richtext\"},\"image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(16, 'model_def_application::suscripcion.suscripcion', '{\"uid\":\"application::suscripcion.suscripcion\",\"collectionName\":\"suscripcions\",\"kind\":\"collectionType\",\"info\":{\"name\":\"suscripcion\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"correo\":{\"type\":\"email\",\"unique\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(17, 'model_def_strapi::webhooks', '{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}', 'object', NULL, NULL),
(18, 'model_def_strapi::permission', '{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"fields\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}', 'object', NULL, NULL),
(19, 'model_def_strapi::role', '{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}', 'object', NULL, NULL),
(20, 'model_def_strapi::user', '{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true}}}', 'object', NULL, NULL),
(21, 'model_def_plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(22, 'model_def_plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(23, 'model_def_plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(24, 'model_def_plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"avatar\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(25, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true}', 'object', 'development', ''),
(26, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]}}', 'object', '', ''),
(27, 'plugin_content_manager_configuration_components::menu.desplegable', '{\"uid\":\"menu.desplegable\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"descripcion\",\"defaultSortBy\":\"descripcion\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"descripcion\":{\"edit\":{\"label\":\"Descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Descripcion\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"pagina\":{\"edit\":{\"label\":\"Pagina\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Pagina\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"descripcion\",\"url\"],\"edit\":[[{\"name\":\"descripcion\",\"size\":6},{\"name\":\"url\",\"size\":6}],[{\"name\":\"pagina\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(28, 'plugin_content_manager_configuration_components::menu.enlace-externo', '{\"uid\":\"menu.enlace-externo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"descripcion\",\"defaultSortBy\":\"descripcion\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"descripcion\":{\"edit\":{\"label\":\"Descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Descripcion\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"descripcion\",\"url\"],\"edit\":[[{\"name\":\"descripcion\",\"size\":6},{\"name\":\"url\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(29, 'plugin_content_manager_configuration_components::menu.enlace', '{\"uid\":\"menu.enlace\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"descripcion\",\"defaultSortBy\":\"descripcion\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"descripcion\":{\"edit\":{\"label\":\"Descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Descripcion\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"descripcion\",\"url\"],\"edit\":[[{\"name\":\"descripcion\",\"size\":6},{\"name\":\"url\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(30, 'plugin_content_manager_configuration_components::menu.pagina', '{\"uid\":\"menu.pagina\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"pagina\":{\"edit\":{\"label\":\"Pagina\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"h1\"},\"list\":{\"label\":\"Pagina\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"pagina\"],\"edit\":[[{\"name\":\"pagina\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(31, 'plugin_content_manager_configuration_components::multimedia.figure', '{\"uid\":\"multimedia.figure\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"imagen\":{\"edit\":{\"label\":\"Imagen\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Imagen\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"Titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Titulo\",\"searchable\":true,\"sortable\":true}},\"subtitulo\":{\"edit\":{\"label\":\"Subtitulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subtitulo\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"imagen\",\"titulo\",\"subtitulo\"],\"edit\":[[{\"name\":\"imagen\",\"size\":6},{\"name\":\"titulo\",\"size\":6}],[{\"name\":\"subtitulo\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(32, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', '', ''),
(33, 'plugin_content_manager_configuration_content_types::application::article.article', '{\"uid\":\"application::article.article\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":false,\"sortable\":false}},\"image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"category\":{\"edit\":{\"label\":\"Category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Category\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"admin_user\":{\"edit\":{\"label\":\"Admin_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Admin_user\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"image\",\"category\"],\"editRelations\":[\"category\",\"admin_user\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"image\",\"size\":6},{\"name\":\"url\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}', 'object', '', ''),
(34, 'plugin_content_manager_configuration_content_types::application::carousel.carousel', '{\"uid\":\"application::carousel.carousel\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"figure\":{\"edit\":{\"label\":\"Figure\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Figure\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"published_at\",\"created_at\",\"updated_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"figure\",\"size\":12}]]}}', 'object', '', ''),
(35, 'plugin_content_manager_configuration_content_types::application::category.category', '{\"uid\":\"application::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"articles\":{\"edit\":{\"label\":\"Articles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"Articles\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"articles\",\"created_at\"],\"editRelations\":[\"articles\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]]}}', 'object', '', ''),
(36, 'plugin_content_manager_configuration_content_types::application::docente.docente', '{\"uid\":\"application::docente.docente\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"Nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nombre\",\"searchable\":true,\"sortable\":true}},\"clase\":{\"edit\":{\"label\":\"Clase\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Clase\",\"searchable\":true,\"sortable\":true}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nombre\",\"clase\",\"published_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"nombre\",\"size\":6},{\"name\":\"clase\",\"size\":6}]]}}', 'object', '', ''),
(37, 'plugin_content_manager_configuration_content_types::application::enlace-externo.enlace-externo', '{\"uid\":\"application::enlace-externo.enlace-externo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"descripcion\",\"defaultSortBy\":\"descripcion\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"descripcion\":{\"edit\":{\"label\":\"Descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Descripcion\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"descripcion\",\"url\",\"published_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"descripcion\",\"size\":6},{\"name\":\"url\",\"size\":6}]]}}', 'object', '', ''),
(38, 'plugin_content_manager_configuration_content_types::application::footer-inicio.footer-inicio', '{\"uid\":\"application::footer-inicio.footer-inicio\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"encuentranos\",\"defaultSortBy\":\"encuentranos\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"encuentranos\":{\"edit\":{\"label\":\"Encuentranos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Encuentranos\",\"searchable\":true,\"sortable\":true}},\"llamanos\":{\"edit\":{\"label\":\"Llamanos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Llamanos\",\"searchable\":true,\"sortable\":true}},\"correo\":{\"edit\":{\"label\":\"Correo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Correo\",\"searchable\":true,\"sortable\":true}},\"logo\":{\"edit\":{\"label\":\"Logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Logo\",\"searchable\":false,\"sortable\":false}},\"descripcion\":{\"edit\":{\"label\":\"Descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Descripcion\",\"searchable\":true,\"sortable\":true}},\"social\":{\"edit\":{\"label\":\"Social\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Social\",\"searchable\":false,\"sortable\":false}},\"enlaces_utiles\":{\"edit\":{\"label\":\"Enlaces_utiles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enlaces_utiles\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"encuentranos\",\"llamanos\",\"correo\"],\"editRelations\":[],\"edit\":[[{\"name\":\"encuentranos\",\"size\":6},{\"name\":\"llamanos\",\"size\":6}],[{\"name\":\"correo\",\"size\":6},{\"name\":\"logo\",\"size\":6}],[{\"name\":\"descripcion\",\"size\":6}],[{\"name\":\"social\",\"size\":12}],[{\"name\":\"enlaces_utiles\",\"size\":12}]]}}', 'object', '', ''),
(39, 'plugin_content_manager_configuration_content_types::application::inicio.inicio', '{\"uid\":\"application::inicio.inicio\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"h1\",\"defaultSortBy\":\"h1\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"h1\":{\"edit\":{\"label\":\"H1\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"H1\",\"searchable\":true,\"sortable\":true}},\"logo\":{\"edit\":{\"label\":\"Logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Logo\",\"searchable\":false,\"sortable\":false}},\"marca\":{\"edit\":{\"label\":\"Marca\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Marca\",\"searchable\":true,\"sortable\":true}},\"metaDescripcion\":{\"edit\":{\"label\":\"MetaDescripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"MetaDescripcion\",\"searchable\":true,\"sortable\":true}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"h1\",\"logo\",\"marca\"],\"editRelations\":[],\"edit\":[[{\"name\":\"h1\",\"size\":6},{\"name\":\"logo\",\"size\":6}],[{\"name\":\"marca\",\"size\":6},{\"name\":\"metaDescripcion\",\"size\":6}]]}}', 'object', '', ''),
(40, 'plugin_content_manager_configuration_content_types::strapi::role', '{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}', 'object', '', ''),
(41, 'plugin_content_manager_configuration_content_types::application::menu-inicio.menu-inicio', '{\"uid\":\"application::menu-inicio.menu-inicio\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"marca\",\"defaultSortBy\":\"marca\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"logo\":{\"edit\":{\"label\":\"Logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Logo\",\"searchable\":false,\"sortable\":false}},\"menu\":{\"edit\":{\"label\":\"Menu\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Menu\",\"searchable\":false,\"sortable\":false}},\"marca\":{\"edit\":{\"label\":\"Marca\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Marca\",\"searchable\":true,\"sortable\":true}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"logo\",\"size\":6}],[{\"name\":\"marca\",\"size\":6}],[{\"name\":\"menu\",\"size\":12}]],\"editRelations\":[],\"list\":[\"id\",\"logo\",\"marca\",\"published_at\"]}}', 'object', '', ''),
(42, 'plugin_content_manager_configuration_content_types::application::pagina.pagina', '{\"uid\":\"application::pagina.pagina\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"h1\",\"defaultSortBy\":\"h1\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"h1\":{\"edit\":{\"label\":\"H1\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"H1\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"descripcion\":{\"edit\":{\"label\":\"Descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Descripcion\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":false,\"sortable\":false}},\"image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"h1\",\"url\",\"descripcion\"],\"editRelations\":[],\"edit\":[[{\"name\":\"h1\",\"size\":6},{\"name\":\"url\",\"size\":6}],[{\"name\":\"descripcion\",\"size\":6}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"image\",\"size\":6}]]}}', 'object', '', ''),
(43, 'plugin_content_manager_configuration_content_types::application::suscripcion.suscripcion', '{\"uid\":\"application::suscripcion.suscripcion\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"correo\":{\"edit\":{\"label\":\"Correo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Correo\",\"searchable\":true,\"sortable\":true}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"correo\",\"published_at\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"correo\",\"size\":6}]]}}', 'object', '', '');
INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(44, 'plugin_content_manager_configuration_content_types::strapi::permission', '{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"fields\":{\"edit\":{\"label\":\"Fields\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fields\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"fields\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}', 'object', '', ''),
(45, 'plugin_content_manager_configuration_content_types::strapi::user', '{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', ''),
(46, 'plugin_content_manager_configuration_content_types::plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}', 'object', '', ''),
(47, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}', 'object', '', ''),
(48, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', '', ''),
(49, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"avatar\":{\"edit\":{\"label\":\"Avatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Avatar\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"avatar\",\"size\":6}]]}}', 'object', '', ''),
(50, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `clase` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enlace_externos`
--

CREATE TABLE `enlace_externos` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `footer_inicios`
--

CREATE TABLE `footer_inicios` (
  `id` int(10) UNSIGNED NOT NULL,
  `encuentranos` varchar(255) DEFAULT NULL,
  `llamanos` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `footer_inicios`
--

INSERT INTO `footer_inicios` (`id`, `encuentranos`, `llamanos`, `correo`, `descripcion`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'andahuaylas ', '99955955', '@ddddd', 'universidad...', '2021-02-15 23:22:23', 1, 1, '2021-02-16 04:21:42', '2021-02-16 04:22:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `footer_inicios_components`
--

CREATE TABLE `footer_inicios_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `footer_inicio_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `footer_inicios_components`
--

INSERT INTO `footer_inicios_components` (`id`, `field`, `order`, `component_type`, `component_id`, `footer_inicio_id`) VALUES
(1, 'social', 1, 'components_menu_enlace_externos', 1, 1),
(2, 'enlaces_utiles', 1, 'components_menu_enlace_externos', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicios`
--

CREATE TABLE `inicios` (
  `id` int(10) UNSIGNED NOT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `metaDescripcion` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_inicios`
--

CREATE TABLE `menu_inicios` (
  `id` int(10) UNSIGNED NOT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu_inicios`
--

INSERT INTO `menu_inicios` (`id`, `marca`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'EPIS', '2021-02-15 22:36:42', 1, 1, '2021-02-16 03:35:15', '2021-02-16 03:36:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_inicios_components`
--

CREATE TABLE `menu_inicios_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `menu_inicio_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu_inicios_components`
--

INSERT INTO `menu_inicios_components` (`id`, `field`, `order`, `component_type`, `component_id`, `menu_inicio_id`) VALUES
(1, 'menu', 1, 'components_menu_enlaces', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paginas`
--

CREATE TABLE `paginas` (
  `id` int(10) UNSIGNED NOT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_administrator`
--

CREATE TABLE `strapi_administrator` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `strapi_administrator`
--

INSERT INTO `strapi_administrator` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `resetPasswordToken`, `registrationToken`, `isActive`, `blocked`) VALUES
(1, 'kevin', 'marcas', NULL, 'kevinmarcas3@gmail.com', '$2a$10$IT6RGUbmVF1L/urN.lVjoO0R6AD8UUaDq7Djot6xNVLuC9xHLjcfa', NULL, NULL, 1, NULL),
(2, 'jose', 'borda', NULL, 'bordarui@gmail.com', NULL, NULL, 'c842498d4888ad60cddc969e59ab07922f38873d', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_permission`
--

CREATE TABLE `strapi_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fields` longtext DEFAULT NULL,
  `conditions` longtext DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `strapi_permission`
--

INSERT INTO `strapi_permission` (`id`, `action`, `subject`, `fields`, `conditions`, `role`, `created_at`, `updated_at`) VALUES
(1, 'plugins::content-manager.explorer.create', 'application::article.article', '[\"title\",\"content\",\"image\",\"category\",\"url\",\"admin_user\",\"description\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(2, 'plugins::content-manager.explorer.create', 'application::pagina.pagina', '[\"h1\",\"url\",\"descripcion\",\"content\",\"image\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(3, 'plugins::content-manager.explorer.create', 'application::inicio.inicio', '[\"h1\",\"logo\",\"marca\",\"metaDescripcion\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(4, 'plugins::content-manager.explorer.create', 'application::suscripcion.suscripcion', '[\"correo\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(5, 'plugins::content-manager.explorer.create', 'application::menu-inicio.menu-inicio', '[\"logo\",\"menu\",\"marca\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(6, 'plugins::content-manager.explorer.create', 'application::footer-inicio.footer-inicio', '[\"encuentranos\",\"llamanos\",\"correo\",\"logo\",\"descripcion\",\"social.descripcion\",\"social.url\",\"enlaces_utiles.descripcion\",\"enlaces_utiles.url\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(7, 'plugins::content-manager.explorer.create', 'application::carousel.carousel', '[\"figure\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(8, 'plugins::content-manager.explorer.create', 'application::category.category', '[\"name\",\"articles\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(9, 'plugins::content-manager.explorer.create', 'application::docente.docente', '[\"nombre\",\"clase\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(10, 'plugins::content-manager.explorer.create', 'application::enlace-externo.enlace-externo', '[\"descripcion\",\"url\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(11, 'plugins::content-manager.explorer.read', 'application::article.article', '[\"title\",\"content\",\"image\",\"category\",\"url\",\"admin_user\",\"description\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(12, 'plugins::content-manager.explorer.read', 'application::carousel.carousel', '[\"figure\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(13, 'plugins::content-manager.explorer.read', 'application::category.category', '[\"name\",\"articles\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(14, 'plugins::content-manager.explorer.read', 'application::docente.docente', '[\"nombre\",\"clase\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(15, 'plugins::content-manager.explorer.read', 'application::enlace-externo.enlace-externo', '[\"descripcion\",\"url\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(16, 'plugins::content-manager.explorer.read', 'application::footer-inicio.footer-inicio', '[\"encuentranos\",\"llamanos\",\"correo\",\"logo\",\"descripcion\",\"social.descripcion\",\"social.url\",\"enlaces_utiles.descripcion\",\"enlaces_utiles.url\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(17, 'plugins::content-manager.explorer.read', 'application::inicio.inicio', '[\"h1\",\"logo\",\"marca\",\"metaDescripcion\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(18, 'plugins::content-manager.explorer.read', 'application::menu-inicio.menu-inicio', '[\"logo\",\"menu\",\"marca\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(19, 'plugins::content-manager.explorer.read', 'application::pagina.pagina', '[\"h1\",\"url\",\"descripcion\",\"content\",\"image\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(20, 'plugins::content-manager.explorer.read', 'application::suscripcion.suscripcion', '[\"correo\"]', '[]', 2, '2021-02-16 03:25:22', '2021-02-16 03:25:22'),
(21, 'plugins::content-manager.explorer.update', 'application::article.article', '[\"title\",\"content\",\"image\",\"category\",\"url\",\"admin_user\",\"description\"]', '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:23'),
(22, 'plugins::content-manager.explorer.update', 'application::carousel.carousel', '[\"figure\"]', '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:23'),
(23, 'plugins::content-manager.explorer.update', 'application::category.category', '[\"name\",\"articles\"]', '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:23'),
(24, 'plugins::content-manager.explorer.update', 'application::docente.docente', '[\"nombre\",\"clase\"]', '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:23'),
(25, 'plugins::content-manager.explorer.update', 'application::enlace-externo.enlace-externo', '[\"descripcion\",\"url\"]', '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:23'),
(26, 'plugins::content-manager.explorer.update', 'application::footer-inicio.footer-inicio', '[\"encuentranos\",\"llamanos\",\"correo\",\"logo\",\"descripcion\",\"social.descripcion\",\"social.url\",\"enlaces_utiles.descripcion\",\"enlaces_utiles.url\"]', '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:23'),
(27, 'plugins::content-manager.explorer.update', 'application::inicio.inicio', '[\"h1\",\"logo\",\"marca\",\"metaDescripcion\"]', '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:23'),
(28, 'plugins::content-manager.explorer.update', 'application::menu-inicio.menu-inicio', '[\"logo\",\"menu\",\"marca\"]', '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:23'),
(29, 'plugins::content-manager.explorer.update', 'application::pagina.pagina', '[\"h1\",\"url\",\"descripcion\",\"content\",\"image\"]', '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:23'),
(30, 'plugins::content-manager.explorer.update', 'application::suscripcion.suscripcion', '[\"correo\"]', '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:23'),
(31, 'plugins::content-manager.explorer.delete', 'application::article.article', NULL, '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:24'),
(32, 'plugins::content-manager.explorer.delete', 'application::carousel.carousel', NULL, '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:24'),
(33, 'plugins::content-manager.explorer.delete', 'application::category.category', NULL, '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:24'),
(34, 'plugins::content-manager.explorer.delete', 'application::enlace-externo.enlace-externo', NULL, '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:24'),
(35, 'plugins::content-manager.explorer.delete', 'application::docente.docente', NULL, '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:24'),
(36, 'plugins::content-manager.explorer.delete', 'application::footer-inicio.footer-inicio', NULL, '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:24'),
(37, 'plugins::content-manager.explorer.delete', 'application::inicio.inicio', NULL, '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:24'),
(38, 'plugins::content-manager.explorer.delete', 'application::menu-inicio.menu-inicio', NULL, '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:24'),
(39, 'plugins::content-manager.explorer.delete', 'application::pagina.pagina', NULL, '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:24'),
(40, 'plugins::content-manager.explorer.delete', 'application::suscripcion.suscripcion', NULL, '[]', 2, '2021-02-16 03:25:23', '2021-02-16 03:25:24'),
(41, 'plugins::content-manager.explorer.publish', 'application::carousel.carousel', NULL, '[]', 2, '2021-02-16 03:25:24', '2021-02-16 03:25:24'),
(42, 'plugins::content-manager.explorer.publish', 'application::docente.docente', NULL, '[]', 2, '2021-02-16 03:25:24', '2021-02-16 03:25:24'),
(43, 'plugins::content-manager.explorer.publish', 'application::enlace-externo.enlace-externo', NULL, '[]', 2, '2021-02-16 03:25:24', '2021-02-16 03:25:24'),
(44, 'plugins::content-manager.explorer.publish', 'application::footer-inicio.footer-inicio', NULL, '[]', 2, '2021-02-16 03:25:24', '2021-02-16 03:25:24'),
(45, 'plugins::content-manager.explorer.publish', 'application::inicio.inicio', NULL, '[]', 2, '2021-02-16 03:25:24', '2021-02-16 03:25:24'),
(46, 'plugins::content-manager.explorer.publish', 'application::menu-inicio.menu-inicio', NULL, '[]', 2, '2021-02-16 03:25:24', '2021-02-16 03:25:24'),
(47, 'plugins::content-manager.explorer.publish', 'application::pagina.pagina', NULL, '[]', 2, '2021-02-16 03:25:24', '2021-02-16 03:25:24'),
(48, 'plugins::content-manager.explorer.publish', 'application::suscripcion.suscripcion', NULL, '[]', 2, '2021-02-16 03:25:24', '2021-02-16 03:25:24'),
(49, 'plugins::upload.read', NULL, NULL, '[]', 2, '2021-02-16 03:25:24', '2021-02-16 03:25:24'),
(50, 'plugins::upload.assets.create', NULL, NULL, '[]', 2, '2021-02-16 03:25:24', '2021-02-16 03:25:24'),
(51, 'plugins::upload.assets.update', NULL, NULL, '[]', 2, '2021-02-16 03:25:24', '2021-02-16 03:25:24'),
(52, 'plugins::upload.assets.download', NULL, NULL, '[]', 2, '2021-02-16 03:25:24', '2021-02-16 03:25:24'),
(53, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 2, '2021-02-16 03:25:24', '2021-02-16 03:25:24'),
(54, 'plugins::content-manager.explorer.create', 'application::article.article', '[\"title\",\"content\",\"image\",\"category\",\"url\",\"admin_user\",\"description\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(55, 'plugins::content-manager.explorer.create', 'application::enlace-externo.enlace-externo', '[\"descripcion\",\"url\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(56, 'plugins::content-manager.explorer.create', 'application::docente.docente', '[\"nombre\",\"clase\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(57, 'plugins::content-manager.explorer.create', 'application::carousel.carousel', '[\"figure\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(58, 'plugins::content-manager.explorer.create', 'application::category.category', '[\"name\",\"articles\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(59, 'plugins::content-manager.explorer.create', 'application::footer-inicio.footer-inicio', '[\"encuentranos\",\"llamanos\",\"correo\",\"logo\",\"descripcion\",\"social.descripcion\",\"social.url\",\"enlaces_utiles.descripcion\",\"enlaces_utiles.url\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(60, 'plugins::content-manager.explorer.create', 'application::inicio.inicio', '[\"h1\",\"logo\",\"marca\",\"metaDescripcion\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(61, 'plugins::content-manager.explorer.create', 'application::menu-inicio.menu-inicio', '[\"logo\",\"menu\",\"marca\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(62, 'plugins::content-manager.explorer.create', 'application::pagina.pagina', '[\"h1\",\"url\",\"descripcion\",\"content\",\"image\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(63, 'plugins::content-manager.explorer.create', 'application::suscripcion.suscripcion', '[\"correo\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(64, 'plugins::content-manager.explorer.read', 'application::article.article', '[\"title\",\"content\",\"image\",\"category\",\"url\",\"admin_user\",\"description\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(65, 'plugins::content-manager.explorer.read', 'application::carousel.carousel', '[\"figure\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(66, 'plugins::content-manager.explorer.read', 'application::category.category', '[\"name\",\"articles\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(67, 'plugins::content-manager.explorer.read', 'application::docente.docente', '[\"nombre\",\"clase\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(68, 'plugins::content-manager.explorer.read', 'application::enlace-externo.enlace-externo', '[\"descripcion\",\"url\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(69, 'plugins::content-manager.explorer.read', 'application::footer-inicio.footer-inicio', '[\"encuentranos\",\"llamanos\",\"correo\",\"logo\",\"descripcion\",\"social.descripcion\",\"social.url\",\"enlaces_utiles.descripcion\",\"enlaces_utiles.url\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(70, 'plugins::content-manager.explorer.read', 'application::inicio.inicio', '[\"h1\",\"logo\",\"marca\",\"metaDescripcion\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(71, 'plugins::content-manager.explorer.read', 'application::menu-inicio.menu-inicio', '[\"logo\",\"menu\",\"marca\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(72, 'plugins::content-manager.explorer.read', 'application::pagina.pagina', '[\"h1\",\"url\",\"descripcion\",\"content\",\"image\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(73, 'plugins::content-manager.explorer.read', 'application::suscripcion.suscripcion', '[\"correo\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:25', '2021-02-16 03:25:25'),
(74, 'plugins::content-manager.explorer.update', 'application::article.article', '[\"title\",\"content\",\"image\",\"category\",\"url\",\"admin_user\",\"description\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:26'),
(75, 'plugins::content-manager.explorer.update', 'application::carousel.carousel', '[\"figure\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:26'),
(76, 'plugins::content-manager.explorer.update', 'application::category.category', '[\"name\",\"articles\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:26'),
(77, 'plugins::content-manager.explorer.update', 'application::docente.docente', '[\"nombre\",\"clase\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:26'),
(78, 'plugins::content-manager.explorer.update', 'application::enlace-externo.enlace-externo', '[\"descripcion\",\"url\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:26'),
(79, 'plugins::content-manager.explorer.update', 'application::footer-inicio.footer-inicio', '[\"encuentranos\",\"llamanos\",\"correo\",\"logo\",\"descripcion\",\"social.descripcion\",\"social.url\",\"enlaces_utiles.descripcion\",\"enlaces_utiles.url\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:26'),
(80, 'plugins::content-manager.explorer.update', 'application::inicio.inicio', '[\"h1\",\"logo\",\"marca\",\"metaDescripcion\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:26'),
(81, 'plugins::content-manager.explorer.update', 'application::menu-inicio.menu-inicio', '[\"logo\",\"menu\",\"marca\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:26'),
(82, 'plugins::content-manager.explorer.update', 'application::pagina.pagina', '[\"h1\",\"url\",\"descripcion\",\"content\",\"image\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:26'),
(83, 'plugins::content-manager.explorer.update', 'application::suscripcion.suscripcion', '[\"correo\"]', '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:26'),
(84, 'plugins::content-manager.explorer.delete', 'application::article.article', NULL, '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:26'),
(85, 'plugins::content-manager.explorer.delete', 'application::carousel.carousel', NULL, '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:26'),
(86, 'plugins::content-manager.explorer.delete', 'application::category.category', NULL, '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:26'),
(87, 'plugins::content-manager.explorer.delete', 'application::docente.docente', NULL, '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:26'),
(88, 'plugins::content-manager.explorer.delete', 'application::enlace-externo.enlace-externo', NULL, '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:27'),
(89, 'plugins::content-manager.explorer.delete', 'application::footer-inicio.footer-inicio', NULL, '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:27'),
(90, 'plugins::content-manager.explorer.delete', 'application::inicio.inicio', NULL, '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:27'),
(91, 'plugins::content-manager.explorer.delete', 'application::menu-inicio.menu-inicio', NULL, '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:27'),
(92, 'plugins::content-manager.explorer.delete', 'application::pagina.pagina', NULL, '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:27'),
(93, 'plugins::content-manager.explorer.delete', 'application::suscripcion.suscripcion', NULL, '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:26', '2021-02-16 03:25:27'),
(94, 'plugins::upload.read', NULL, NULL, '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:27', '2021-02-16 03:25:27'),
(95, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 3, '2021-02-16 03:25:27', '2021-02-16 03:25:27'),
(96, 'plugins::upload.assets.create', NULL, NULL, '[]', 3, '2021-02-16 03:25:27', '2021-02-16 03:25:27'),
(97, 'plugins::upload.assets.update', NULL, NULL, '[\"admin::is-creator\"]', 3, '2021-02-16 03:25:27', '2021-02-16 03:25:27'),
(98, 'plugins::upload.assets.download', NULL, NULL, '[]', 3, '2021-02-16 03:25:27', '2021-02-16 03:25:27'),
(99, 'plugins::content-manager.explorer.create', 'application::article.article', '[\"title\",\"content\",\"image\",\"category\",\"url\",\"admin_user\",\"description\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(100, 'plugins::content-manager.explorer.create', 'application::carousel.carousel', '[\"figure\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(101, 'plugins::content-manager.explorer.create', 'application::category.category', '[\"name\",\"articles\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(102, 'plugins::content-manager.explorer.create', 'application::docente.docente', '[\"nombre\",\"clase\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(103, 'plugins::content-manager.explorer.create', 'application::enlace-externo.enlace-externo', '[\"descripcion\",\"url\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(104, 'plugins::content-manager.explorer.create', 'application::footer-inicio.footer-inicio', '[\"encuentranos\",\"llamanos\",\"correo\",\"logo\",\"descripcion\",\"social.descripcion\",\"social.url\",\"enlaces_utiles.descripcion\",\"enlaces_utiles.url\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(105, 'plugins::content-manager.explorer.create', 'application::inicio.inicio', '[\"h1\",\"logo\",\"marca\",\"metaDescripcion\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(106, 'plugins::content-manager.explorer.create', 'application::menu-inicio.menu-inicio', '[\"logo\",\"menu\",\"marca\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(107, 'plugins::content-manager.explorer.create', 'application::pagina.pagina', '[\"h1\",\"url\",\"descripcion\",\"content\",\"image\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(108, 'plugins::content-manager.explorer.create', 'application::suscripcion.suscripcion', '[\"correo\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(109, 'plugins::content-manager.explorer.create', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"avatar\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(110, 'plugins::content-manager.explorer.read', 'application::article.article', '[\"title\",\"content\",\"image\",\"category\",\"url\",\"admin_user\",\"description\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(111, 'plugins::content-manager.explorer.read', 'application::carousel.carousel', '[\"figure\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(112, 'plugins::content-manager.explorer.read', 'application::category.category', '[\"name\",\"articles\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(113, 'plugins::content-manager.explorer.read', 'application::docente.docente', '[\"nombre\",\"clase\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(114, 'plugins::content-manager.explorer.read', 'application::enlace-externo.enlace-externo', '[\"descripcion\",\"url\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(115, 'plugins::content-manager.explorer.read', 'application::footer-inicio.footer-inicio', '[\"encuentranos\",\"llamanos\",\"correo\",\"logo\",\"descripcion\",\"social.descripcion\",\"social.url\",\"enlaces_utiles.descripcion\",\"enlaces_utiles.url\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(116, 'plugins::content-manager.explorer.read', 'application::inicio.inicio', '[\"h1\",\"logo\",\"marca\",\"metaDescripcion\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(117, 'plugins::content-manager.explorer.read', 'application::menu-inicio.menu-inicio', '[\"logo\",\"menu\",\"marca\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(118, 'plugins::content-manager.explorer.read', 'application::pagina.pagina', '[\"h1\",\"url\",\"descripcion\",\"content\",\"image\"]', '[]', 1, '2021-02-16 03:25:28', '2021-02-16 03:25:28'),
(119, 'plugins::content-manager.explorer.read', 'application::suscripcion.suscripcion', '[\"correo\"]', '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(120, 'plugins::content-manager.explorer.read', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"avatar\"]', '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(121, 'plugins::content-manager.explorer.update', 'application::article.article', '[\"title\",\"content\",\"image\",\"category\",\"url\",\"admin_user\",\"description\"]', '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(122, 'plugins::content-manager.explorer.update', 'application::carousel.carousel', '[\"figure\"]', '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(123, 'plugins::content-manager.explorer.update', 'application::category.category', '[\"name\",\"articles\"]', '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(124, 'plugins::content-manager.explorer.update', 'application::docente.docente', '[\"nombre\",\"clase\"]', '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(125, 'plugins::content-manager.explorer.update', 'application::enlace-externo.enlace-externo', '[\"descripcion\",\"url\"]', '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(126, 'plugins::content-manager.explorer.update', 'application::footer-inicio.footer-inicio', '[\"encuentranos\",\"llamanos\",\"correo\",\"logo\",\"descripcion\",\"social.descripcion\",\"social.url\",\"enlaces_utiles.descripcion\",\"enlaces_utiles.url\"]', '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(127, 'plugins::content-manager.explorer.update', 'application::menu-inicio.menu-inicio', '[\"logo\",\"menu\",\"marca\"]', '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(128, 'plugins::content-manager.explorer.update', 'application::inicio.inicio', '[\"h1\",\"logo\",\"marca\",\"metaDescripcion\"]', '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(129, 'plugins::content-manager.explorer.update', 'application::pagina.pagina', '[\"h1\",\"url\",\"descripcion\",\"content\",\"image\"]', '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(130, 'plugins::content-manager.explorer.update', 'application::suscripcion.suscripcion', '[\"correo\"]', '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(131, 'plugins::content-manager.explorer.update', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"avatar\"]', '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(132, 'plugins::content-manager.explorer.delete', 'application::article.article', NULL, '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(133, 'plugins::content-manager.explorer.delete', 'application::carousel.carousel', NULL, '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(134, 'plugins::content-manager.explorer.delete', 'application::category.category', NULL, '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(135, 'plugins::content-manager.explorer.delete', 'application::docente.docente', NULL, '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(136, 'plugins::content-manager.explorer.delete', 'application::enlace-externo.enlace-externo', NULL, '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(137, 'plugins::content-manager.explorer.delete', 'application::footer-inicio.footer-inicio', NULL, '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(138, 'plugins::content-manager.explorer.delete', 'application::inicio.inicio', NULL, '[]', 1, '2021-02-16 03:25:29', '2021-02-16 03:25:29'),
(139, 'plugins::content-manager.explorer.delete', 'application::menu-inicio.menu-inicio', NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(140, 'plugins::content-manager.explorer.delete', 'application::pagina.pagina', NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(141, 'plugins::content-manager.explorer.delete', 'application::suscripcion.suscripcion', NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(142, 'plugins::content-manager.explorer.delete', 'plugins::users-permissions.user', NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(143, 'plugins::content-manager.explorer.publish', 'application::carousel.carousel', NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(144, 'plugins::content-manager.explorer.publish', 'application::docente.docente', NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(145, 'plugins::content-manager.explorer.publish', 'application::enlace-externo.enlace-externo', NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(146, 'plugins::content-manager.explorer.publish', 'application::footer-inicio.footer-inicio', NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(147, 'plugins::content-manager.explorer.publish', 'application::inicio.inicio', NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(148, 'plugins::content-manager.explorer.publish', 'application::menu-inicio.menu-inicio', NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(149, 'plugins::content-manager.explorer.publish', 'application::pagina.pagina', NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(150, 'plugins::content-manager.explorer.publish', 'application::suscripcion.suscripcion', NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(151, 'plugins::content-type-builder.read', NULL, NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(152, 'plugins::upload.read', NULL, NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(153, 'plugins::upload.assets.create', NULL, NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(154, 'plugins::upload.assets.update', NULL, NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(155, 'plugins::upload.assets.download', NULL, NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(156, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(157, 'plugins::upload.settings.read', NULL, NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(158, 'plugins::content-manager.single-types.configure-view', NULL, NULL, '[]', 1, '2021-02-16 03:25:30', '2021-02-16 03:25:30'),
(159, 'plugins::content-manager.collection-types.configure-view', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(160, 'plugins::content-manager.components.configure-layout', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(161, 'plugins::users-permissions.roles.create', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(162, 'plugins::users-permissions.roles.read', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(163, 'plugins::users-permissions.roles.update', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(164, 'plugins::users-permissions.roles.delete', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(165, 'plugins::users-permissions.providers.read', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(166, 'plugins::users-permissions.providers.update', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(167, 'plugins::users-permissions.email-templates.read', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(168, 'plugins::users-permissions.email-templates.update', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(169, 'plugins::users-permissions.advanced-settings.read', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(170, 'plugins::users-permissions.advanced-settings.update', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(171, 'admin::marketplace.read', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(172, 'admin::marketplace.plugins.install', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(173, 'admin::marketplace.plugins.uninstall', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(174, 'admin::webhooks.create', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(175, 'admin::webhooks.read', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(176, 'admin::webhooks.update', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(177, 'admin::webhooks.delete', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(178, 'admin::users.create', NULL, NULL, '[]', 1, '2021-02-16 03:25:31', '2021-02-16 03:25:31'),
(179, 'admin::roles.read', NULL, NULL, '[]', 1, '2021-02-16 03:25:32', '2021-02-16 03:25:32'),
(180, 'admin::users.read', NULL, NULL, '[]', 1, '2021-02-16 03:25:32', '2021-02-16 03:25:32'),
(181, 'admin::users.delete', NULL, NULL, '[]', 1, '2021-02-16 03:25:32', '2021-02-16 03:25:32'),
(182, 'admin::users.update', NULL, NULL, '[]', 1, '2021-02-16 03:25:32', '2021-02-16 03:25:32'),
(183, 'admin::roles.create', NULL, NULL, '[]', 1, '2021-02-16 03:25:32', '2021-02-16 03:25:32'),
(184, 'admin::roles.update', NULL, NULL, '[]', 1, '2021-02-16 03:25:32', '2021-02-16 03:25:32'),
(185, 'admin::roles.delete', NULL, NULL, '[]', 1, '2021-02-16 03:25:32', '2021-02-16 03:25:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_role`
--

CREATE TABLE `strapi_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `strapi_role`
--

INSERT INTO `strapi_role` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2021-02-16 03:25:21', '2021-02-16 03:25:21'),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2021-02-16 03:25:21', '2021-02-16 03:25:21'),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2021-02-16 03:25:21', '2021-02-16 03:25:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_users_roles`
--

CREATE TABLE `strapi_users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `strapi_users_roles`
--

INSERT INTO `strapi_users_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripcions`
--

CREATE TABLE `suscripcions` (
  `id` int(10) UNSIGNED NOT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `suscripcions`
--

INSERT INTO `suscripcions` (`id`, `correo`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'kevinmarcas3@gmail.com', '2021-02-15 23:25:05', NULL, NULL, '2021-02-16 04:25:05', '2021-02-16 04:25:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upload_file`
--

CREATE TABLE `upload_file` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext DEFAULT NULL,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `upload_file`
--

INSERT INTO `upload_file` (`id`, `name`, `alternativeText`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `previewUrl`, `provider`, `provider_metadata`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'small_logo_a889f8e5c1.png', '', '', 427, 500, '{\"thumbnail\":{\"name\":\"thumbnail_small_logo_a889f8e5c1.png\",\"hash\":\"thumbnail_small_logo_a889f8e5c1_3adbdd831c\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":133,\"height\":156,\"size\":55.97,\"path\":null,\"url\":\"/uploads/thumbnail_small_logo_a889f8e5c1_3adbdd831c.png\"}}', 'small_logo_a889f8e5c1_3adbdd831c', '.png', 'image/png', '476.07', '/uploads/small_logo_a889f8e5c1_3adbdd831c.png', NULL, 'local', NULL, 1, 1, '2021-02-16 03:34:02', '2021-02-16 03:34:02'),
(2, 'medium_sist_42dc775eb7.jpg', '', '', 750, 418, '{\"thumbnail\":{\"name\":\"thumbnail_medium_sist_42dc775eb7.jpg\",\"hash\":\"thumbnail_medium_sist_42dc775eb7_3393bc92b7\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":137,\"size\":9.01,\"path\":null,\"url\":\"/uploads/thumbnail_medium_sist_42dc775eb7_3393bc92b7.jpg\"},\"small\":{\"name\":\"small_medium_sist_42dc775eb7.jpg\",\"hash\":\"small_medium_sist_42dc775eb7_3393bc92b7\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":279,\"size\":31.46,\"path\":null,\"url\":\"/uploads/small_medium_sist_42dc775eb7_3393bc92b7.jpg\"}}', 'medium_sist_42dc775eb7_3393bc92b7', '.jpg', 'image/jpeg', '65.61', '/uploads/medium_sist_42dc775eb7_3393bc92b7.jpg', NULL, 'local', NULL, 1, 1, '2021-02-16 03:45:09', '2021-02-16 03:45:09'),
(3, 'medium_va2_65793a3815.jpg', '', '', 750, 563, '{\"thumbnail\":{\"name\":\"thumbnail_medium_va2_65793a3815.jpg\",\"hash\":\"thumbnail_medium_va2_65793a3815_294f2d2523\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":208,\"height\":156,\"size\":8.42,\"path\":null,\"url\":\"/uploads/thumbnail_medium_va2_65793a3815_294f2d2523.jpg\"},\"small\":{\"name\":\"small_medium_va2_65793a3815.jpg\",\"hash\":\"small_medium_va2_65793a3815_294f2d2523\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":375,\"size\":33.67,\"path\":null,\"url\":\"/uploads/small_medium_va2_65793a3815_294f2d2523.jpg\"}}', 'medium_va2_65793a3815_294f2d2523', '.jpg', 'image/jpeg', '62.39', '/uploads/medium_va2_65793a3815_294f2d2523.jpg', NULL, 'local', NULL, 1, 1, '2021-02-16 03:45:09', '2021-02-16 03:45:09'),
(6, 'estudiantes beca.png', '', '', 720, 405, '{\"thumbnail\":{\"name\":\"thumbnail_estudiantes beca.png\",\"hash\":\"thumbnail_estudiantes_beca_fcf062df05\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":138,\"size\":51.42,\"path\":null,\"url\":\"/uploads/thumbnail_estudiantes_beca_fcf062df05.png\"}}', 'estudiantes_beca_fcf062df05', '.png', 'image/png', '292.79', '/uploads/estudiantes_beca_fcf062df05.png', NULL, 'local', NULL, 1, 1, '2021-02-16 03:57:41', '2021-02-16 03:57:41'),
(7, 'small_28378126_1701128819932929_3301896420768671463_n_dd8c8b1672.jpg', '', '', 500, 249, '{\"thumbnail\":{\"name\":\"thumbnail_small_28378126_1701128819932929_3301896420768671463_n_dd8c8b1672.jpg\",\"hash\":\"thumbnail_small_28378126_1701128819932929_3301896420768671463_n_dd8c8b1672_c0be195d5d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":122,\"size\":11.71,\"path\":null,\"url\":\"/uploads/thumbnail_small_28378126_1701128819932929_3301896420768671463_n_dd8c8b1672_c0be195d5d.jpg\"}}', 'small_28378126_1701128819932929_3301896420768671463_n_dd8c8b1672_c0be195d5d', '.jpg', 'image/jpeg', '38.13', '/uploads/small_28378126_1701128819932929_3301896420768671463_n_dd8c8b1672_c0be195d5d.jpg', NULL, 'local', NULL, 1, 1, '2021-02-16 04:16:07', '2021-02-16 04:16:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upload_file_morph`
--

CREATE TABLE `upload_file_morph` (
  `id` int(10) UNSIGNED NOT NULL,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext DEFAULT NULL,
  `field` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `upload_file_morph`
--

INSERT INTO `upload_file_morph` (`id`, `upload_file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(1, 1, 1, 'menu_inicios', 'logo', 1),
(4, 1, 1, 'footer_inicios', 'logo', 1),
(9, 2, 3, 'components_multimedia_figures', 'imagen', 1),
(10, 3, 4, 'components_multimedia_figures', 'imagen', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users-permissions_permission`
--

CREATE TABLE `users-permissions_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users-permissions_permission`
--

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`, `created_by`, `updated_by`) VALUES
(1, 'application', 'article', 'count', 0, '', 1, NULL, NULL),
(2, 'application', 'article', 'count', 1, '', 2, NULL, NULL),
(3, 'application', 'article', 'create', 0, '', 1, NULL, NULL),
(4, 'application', 'article', 'create', 0, '', 2, NULL, NULL),
(5, 'application', 'article', 'delete', 0, '', 1, NULL, NULL),
(6, 'application', 'article', 'delete', 0, '', 2, NULL, NULL),
(7, 'application', 'article', 'find', 0, '', 1, NULL, NULL),
(8, 'application', 'article', 'find', 1, '', 2, NULL, NULL),
(9, 'application', 'article', 'findone', 0, '', 1, NULL, NULL),
(10, 'application', 'article', 'findone', 1, '', 2, NULL, NULL),
(11, 'application', 'article', 'update', 0, '', 1, NULL, NULL),
(12, 'application', 'article', 'update', 0, '', 2, NULL, NULL),
(13, 'application', 'carousel', 'delete', 0, '', 1, NULL, NULL),
(14, 'application', 'carousel', 'delete', 0, '', 2, NULL, NULL),
(15, 'application', 'carousel', 'find', 0, '', 1, NULL, NULL),
(16, 'application', 'carousel', 'find', 1, '', 2, NULL, NULL),
(17, 'application', 'carousel', 'update', 0, '', 1, NULL, NULL),
(18, 'application', 'carousel', 'update', 0, '', 2, NULL, NULL),
(19, 'application', 'category', 'count', 0, '', 1, NULL, NULL),
(20, 'application', 'category', 'count', 0, '', 2, NULL, NULL),
(21, 'application', 'category', 'create', 0, '', 1, NULL, NULL),
(22, 'application', 'category', 'create', 0, '', 2, NULL, NULL),
(23, 'application', 'category', 'delete', 0, '', 1, NULL, NULL),
(24, 'application', 'category', 'delete', 0, '', 2, NULL, NULL),
(25, 'application', 'category', 'find', 0, '', 1, NULL, NULL),
(26, 'application', 'category', 'find', 0, '', 2, NULL, NULL),
(27, 'application', 'category', 'findone', 0, '', 1, NULL, NULL),
(28, 'application', 'category', 'findone', 0, '', 2, NULL, NULL),
(29, 'application', 'category', 'update', 0, '', 1, NULL, NULL),
(30, 'application', 'category', 'update', 0, '', 2, NULL, NULL),
(31, 'application', 'docente', 'count', 0, '', 1, NULL, NULL),
(32, 'application', 'docente', 'count', 0, '', 2, NULL, NULL),
(33, 'application', 'docente', 'create', 0, '', 1, NULL, NULL),
(34, 'application', 'docente', 'create', 0, '', 2, NULL, NULL),
(35, 'application', 'docente', 'delete', 0, '', 1, NULL, NULL),
(36, 'application', 'docente', 'delete', 0, '', 2, NULL, NULL),
(37, 'application', 'docente', 'find', 0, '', 1, NULL, NULL),
(38, 'application', 'docente', 'find', 0, '', 2, NULL, NULL),
(39, 'application', 'docente', 'findone', 0, '', 1, NULL, NULL),
(40, 'application', 'docente', 'findone', 0, '', 2, NULL, NULL),
(41, 'application', 'docente', 'update', 0, '', 1, NULL, NULL),
(42, 'application', 'docente', 'update', 0, '', 2, NULL, NULL),
(43, 'application', 'enlace-externo', 'count', 0, '', 1, NULL, NULL),
(44, 'application', 'enlace-externo', 'count', 0, '', 2, NULL, NULL),
(45, 'application', 'enlace-externo', 'create', 0, '', 1, NULL, NULL),
(46, 'application', 'enlace-externo', 'create', 0, '', 2, NULL, NULL),
(47, 'application', 'enlace-externo', 'delete', 0, '', 1, NULL, NULL),
(48, 'application', 'enlace-externo', 'delete', 0, '', 2, NULL, NULL),
(49, 'application', 'enlace-externo', 'find', 0, '', 1, NULL, NULL),
(50, 'application', 'enlace-externo', 'find', 0, '', 2, NULL, NULL),
(51, 'application', 'enlace-externo', 'findone', 0, '', 1, NULL, NULL),
(52, 'application', 'enlace-externo', 'findone', 0, '', 2, NULL, NULL),
(53, 'application', 'enlace-externo', 'update', 0, '', 1, NULL, NULL),
(54, 'application', 'enlace-externo', 'update', 0, '', 2, NULL, NULL),
(55, 'application', 'footer-inicio', 'delete', 0, '', 1, NULL, NULL),
(56, 'application', 'footer-inicio', 'delete', 0, '', 2, NULL, NULL),
(57, 'application', 'footer-inicio', 'find', 0, '', 1, NULL, NULL),
(58, 'application', 'footer-inicio', 'find', 1, '', 2, NULL, NULL),
(59, 'application', 'footer-inicio', 'update', 0, '', 1, NULL, NULL),
(60, 'application', 'footer-inicio', 'update', 0, '', 2, NULL, NULL),
(61, 'application', 'inicio', 'delete', 0, '', 1, NULL, NULL),
(62, 'application', 'inicio', 'find', 0, '', 1, NULL, NULL),
(63, 'application', 'inicio', 'delete', 0, '', 2, NULL, NULL),
(64, 'application', 'inicio', 'find', 0, '', 2, NULL, NULL),
(65, 'application', 'inicio', 'update', 0, '', 1, NULL, NULL),
(66, 'application', 'inicio', 'update', 0, '', 2, NULL, NULL),
(67, 'application', 'menu-inicio', 'delete', 0, '', 1, NULL, NULL),
(68, 'application', 'menu-inicio', 'delete', 0, '', 2, NULL, NULL),
(69, 'application', 'menu-inicio', 'find', 0, '', 1, NULL, NULL),
(70, 'application', 'menu-inicio', 'find', 1, '', 2, NULL, NULL),
(71, 'application', 'menu-inicio', 'update', 0, '', 1, NULL, NULL),
(72, 'application', 'menu-inicio', 'update', 0, '', 2, NULL, NULL),
(73, 'application', 'pagina', 'count', 0, '', 1, NULL, NULL),
(74, 'application', 'pagina', 'count', 0, '', 2, NULL, NULL),
(75, 'application', 'pagina', 'create', 0, '', 1, NULL, NULL),
(76, 'application', 'pagina', 'create', 0, '', 2, NULL, NULL),
(77, 'application', 'pagina', 'delete', 0, '', 1, NULL, NULL),
(78, 'application', 'pagina', 'delete', 0, '', 2, NULL, NULL),
(79, 'application', 'pagina', 'find', 0, '', 1, NULL, NULL),
(80, 'application', 'pagina', 'find', 0, '', 2, NULL, NULL),
(81, 'application', 'pagina', 'findone', 0, '', 1, NULL, NULL),
(82, 'application', 'pagina', 'update', 0, '', 1, NULL, NULL),
(83, 'application', 'pagina', 'findone', 0, '', 2, NULL, NULL),
(84, 'application', 'pagina', 'update', 0, '', 2, NULL, NULL),
(85, 'application', 'suscripcion', 'count', 0, '', 1, NULL, NULL),
(86, 'application', 'suscripcion', 'count', 0, '', 2, NULL, NULL),
(87, 'application', 'suscripcion', 'create', 0, '', 1, NULL, NULL),
(88, 'application', 'suscripcion', 'create', 1, '', 2, NULL, NULL),
(89, 'application', 'suscripcion', 'delete', 0, '', 1, NULL, NULL),
(90, 'application', 'suscripcion', 'delete', 0, '', 2, NULL, NULL),
(91, 'application', 'suscripcion', 'find', 0, '', 1, NULL, NULL),
(92, 'application', 'suscripcion', 'find', 0, '', 2, NULL, NULL),
(93, 'application', 'suscripcion', 'findone', 0, '', 1, NULL, NULL),
(94, 'application', 'suscripcion', 'findone', 0, '', 2, NULL, NULL),
(95, 'application', 'suscripcion', 'update', 0, '', 1, NULL, NULL),
(96, 'application', 'suscripcion', 'update', 0, '', 2, NULL, NULL),
(97, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 1, NULL, NULL),
(98, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 2, NULL, NULL),
(99, 'content-manager', 'collection-types', 'create', 0, '', 1, NULL, NULL),
(100, 'content-manager', 'collection-types', 'create', 0, '', 2, NULL, NULL),
(101, 'content-manager', 'collection-types', 'delete', 0, '', 1, NULL, NULL),
(102, 'content-manager', 'collection-types', 'delete', 0, '', 2, NULL, NULL),
(103, 'content-manager', 'collection-types', 'find', 0, '', 1, NULL, NULL),
(104, 'content-manager', 'collection-types', 'find', 0, '', 2, NULL, NULL),
(105, 'content-manager', 'collection-types', 'findone', 0, '', 1, NULL, NULL),
(106, 'content-manager', 'collection-types', 'findone', 0, '', 2, NULL, NULL),
(107, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 1, NULL, NULL),
(108, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 2, NULL, NULL),
(109, 'content-manager', 'collection-types', 'publish', 0, '', 1, NULL, NULL),
(110, 'content-manager', 'collection-types', 'publish', 0, '', 2, NULL, NULL),
(111, 'content-manager', 'collection-types', 'unpublish', 0, '', 1, NULL, NULL),
(112, 'content-manager', 'collection-types', 'unpublish', 0, '', 2, NULL, NULL),
(113, 'content-manager', 'collection-types', 'update', 0, '', 1, NULL, NULL),
(114, 'content-manager', 'collection-types', 'update', 0, '', 2, NULL, NULL),
(115, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 1, NULL, NULL),
(116, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 2, NULL, NULL),
(117, 'content-manager', 'components', 'findcomponents', 0, '', 1, NULL, NULL),
(118, 'content-manager', 'components', 'findcomponents', 0, '', 2, NULL, NULL),
(119, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 1, NULL, NULL),
(120, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 2, NULL, NULL),
(121, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 1, NULL, NULL),
(122, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 2, NULL, NULL),
(123, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 1, NULL, NULL),
(124, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 2, NULL, NULL),
(125, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 1, NULL, NULL),
(126, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 2, NULL, NULL),
(127, 'content-manager', 'relations', 'find', 0, '', 1, NULL, NULL),
(128, 'content-manager', 'relations', 'find', 0, '', 2, NULL, NULL),
(129, 'content-manager', 'single-types', 'createorupdate', 0, '', 1, NULL, NULL),
(130, 'content-manager', 'single-types', 'createorupdate', 0, '', 2, NULL, NULL),
(131, 'content-manager', 'single-types', 'delete', 0, '', 1, NULL, NULL),
(132, 'content-manager', 'single-types', 'delete', 0, '', 2, NULL, NULL),
(133, 'content-manager', 'single-types', 'find', 0, '', 1, NULL, NULL),
(134, 'content-manager', 'single-types', 'find', 0, '', 2, NULL, NULL),
(135, 'content-manager', 'single-types', 'publish', 0, '', 1, NULL, NULL),
(136, 'content-manager', 'single-types', 'publish', 0, '', 2, NULL, NULL),
(137, 'content-manager', 'single-types', 'unpublish', 0, '', 1, NULL, NULL),
(138, 'content-manager', 'single-types', 'unpublish', 0, '', 2, NULL, NULL),
(139, 'content-manager', 'uid', 'checkuidavailability', 0, '', 1, NULL, NULL),
(140, 'content-manager', 'uid', 'checkuidavailability', 0, '', 2, NULL, NULL),
(141, 'content-manager', 'uid', 'generateuid', 0, '', 1, NULL, NULL),
(142, 'content-manager', 'uid', 'generateuid', 0, '', 2, NULL, NULL),
(143, 'content-type-builder', 'builder', 'getreservednames', 0, '', 1, NULL, NULL),
(144, 'content-type-builder', 'builder', 'getreservednames', 0, '', 2, NULL, NULL),
(145, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 1, NULL, NULL),
(146, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 2, NULL, NULL),
(147, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 1, NULL, NULL),
(148, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 2, NULL, NULL),
(149, 'content-type-builder', 'components', 'createcomponent', 0, '', 1, NULL, NULL),
(150, 'content-type-builder', 'components', 'createcomponent', 0, '', 2, NULL, NULL),
(151, 'content-type-builder', 'components', 'deletecomponent', 0, '', 1, NULL, NULL),
(152, 'content-type-builder', 'components', 'deletecomponent', 0, '', 2, NULL, NULL),
(153, 'content-type-builder', 'components', 'getcomponent', 0, '', 1, NULL, NULL),
(154, 'content-type-builder', 'components', 'getcomponent', 0, '', 2, NULL, NULL),
(155, 'content-type-builder', 'components', 'getcomponents', 0, '', 1, NULL, NULL),
(156, 'content-type-builder', 'components', 'getcomponents', 0, '', 2, NULL, NULL),
(157, 'content-type-builder', 'components', 'updatecomponent', 0, '', 1, NULL, NULL),
(158, 'content-type-builder', 'components', 'updatecomponent', 0, '', 2, NULL, NULL),
(159, 'content-type-builder', 'connections', 'getconnections', 0, '', 1, NULL, NULL),
(160, 'content-type-builder', 'connections', 'getconnections', 0, '', 2, NULL, NULL),
(161, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 1, NULL, NULL),
(162, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 2, NULL, NULL),
(163, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 1, NULL, NULL),
(164, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 2, NULL, NULL),
(165, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 1, NULL, NULL),
(166, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 2, NULL, NULL),
(167, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 1, NULL, NULL),
(168, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 2, NULL, NULL),
(169, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 1, NULL, NULL),
(170, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 2, NULL, NULL),
(171, 'email', 'email', 'send', 0, '', 1, NULL, NULL),
(172, 'email', 'email', 'send', 0, '', 2, NULL, NULL),
(173, 'upload', 'upload', 'count', 0, '', 2, NULL, NULL),
(174, 'upload', 'upload', 'count', 0, '', 1, NULL, NULL),
(175, 'upload', 'upload', 'destroy', 0, '', 1, NULL, NULL),
(176, 'upload', 'upload', 'destroy', 0, '', 2, NULL, NULL),
(177, 'upload', 'upload', 'find', 0, '', 1, NULL, NULL),
(178, 'upload', 'upload', 'find', 0, '', 2, NULL, NULL),
(179, 'upload', 'upload', 'findone', 0, '', 1, NULL, NULL),
(180, 'upload', 'upload', 'findone', 0, '', 2, NULL, NULL),
(181, 'upload', 'upload', 'getsettings', 0, '', 1, NULL, NULL),
(182, 'upload', 'upload', 'getsettings', 0, '', 2, NULL, NULL),
(183, 'upload', 'upload', 'search', 0, '', 1, NULL, NULL),
(184, 'upload', 'upload', 'search', 0, '', 2, NULL, NULL),
(185, 'upload', 'upload', 'updatesettings', 0, '', 1, NULL, NULL),
(186, 'upload', 'upload', 'updatesettings', 0, '', 2, NULL, NULL),
(187, 'upload', 'upload', 'upload', 0, '', 1, NULL, NULL),
(188, 'upload', 'upload', 'upload', 0, '', 2, NULL, NULL),
(189, 'users-permissions', 'auth', 'callback', 0, '', 1, NULL, NULL),
(190, 'users-permissions', 'auth', 'callback', 1, '', 2, NULL, NULL),
(191, 'users-permissions', 'auth', 'connect', 1, '', 1, NULL, NULL),
(192, 'users-permissions', 'auth', 'connect', 1, '', 2, NULL, NULL),
(193, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 1, NULL, NULL),
(194, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 2, NULL, NULL),
(195, 'users-permissions', 'auth', 'forgotpassword', 0, '', 1, NULL, NULL),
(196, 'users-permissions', 'auth', 'forgotpassword', 1, '', 2, NULL, NULL),
(197, 'users-permissions', 'auth', 'register', 0, '', 1, NULL, NULL),
(198, 'users-permissions', 'auth', 'register', 1, '', 2, NULL, NULL),
(199, 'users-permissions', 'auth', 'resetpassword', 0, '', 1, NULL, NULL),
(200, 'users-permissions', 'auth', 'resetpassword', 1, '', 2, NULL, NULL),
(201, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 1, NULL, NULL),
(202, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 2, NULL, NULL),
(203, 'users-permissions', 'user', 'count', 0, '', 1, NULL, NULL),
(204, 'users-permissions', 'user', 'count', 0, '', 2, NULL, NULL),
(205, 'users-permissions', 'user', 'create', 0, '', 1, NULL, NULL),
(206, 'users-permissions', 'user', 'create', 0, '', 2, NULL, NULL),
(207, 'users-permissions', 'user', 'destroy', 0, '', 1, NULL, NULL),
(208, 'users-permissions', 'user', 'destroy', 0, '', 2, NULL, NULL),
(209, 'users-permissions', 'user', 'destroyall', 0, '', 1, NULL, NULL),
(210, 'users-permissions', 'user', 'destroyall', 0, '', 2, NULL, NULL),
(211, 'users-permissions', 'user', 'find', 0, '', 1, NULL, NULL),
(212, 'users-permissions', 'user', 'find', 0, '', 2, NULL, NULL),
(213, 'users-permissions', 'user', 'findone', 0, '', 1, NULL, NULL),
(214, 'users-permissions', 'user', 'findone', 0, '', 2, NULL, NULL),
(215, 'users-permissions', 'user', 'me', 1, '', 1, NULL, NULL),
(216, 'users-permissions', 'user', 'me', 1, '', 2, NULL, NULL),
(217, 'users-permissions', 'user', 'update', 0, '', 1, NULL, NULL),
(218, 'users-permissions', 'user', 'update', 0, '', 2, NULL, NULL),
(219, 'users-permissions', 'userspermissions', 'createrole', 0, '', 1, NULL, NULL),
(220, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2, NULL, NULL),
(221, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 1, NULL, NULL),
(222, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2, NULL, NULL),
(223, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 1, NULL, NULL),
(224, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2, NULL, NULL),
(225, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 1, NULL, NULL),
(226, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2, NULL, NULL),
(227, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 1, NULL, NULL),
(228, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2, NULL, NULL),
(229, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 1, NULL, NULL),
(230, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2, NULL, NULL),
(231, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 1, NULL, NULL),
(232, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2, NULL, NULL),
(233, 'users-permissions', 'userspermissions', 'getrole', 0, '', 1, NULL, NULL),
(234, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2, NULL, NULL),
(235, 'users-permissions', 'userspermissions', 'getroles', 0, '', 1, NULL, NULL),
(236, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2, NULL, NULL),
(237, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 1, NULL, NULL),
(238, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2, NULL, NULL),
(239, 'users-permissions', 'userspermissions', 'index', 0, '', 1, NULL, NULL),
(240, 'users-permissions', 'userspermissions', 'index', 0, '', 2, NULL, NULL),
(241, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 1, NULL, NULL),
(242, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2, NULL, NULL),
(243, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 1, NULL, NULL),
(244, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2, NULL, NULL),
(245, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 1, NULL, NULL),
(246, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2, NULL, NULL),
(247, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 1, NULL, NULL),
(248, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2, NULL, NULL),
(249, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 1, NULL, NULL),
(250, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users-permissions_role`
--

CREATE TABLE `users-permissions_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users-permissions_role`
--

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`, `created_by`, `updated_by`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users-permissions_user`
--

CREATE TABLE `users-permissions_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carousels`
--
ALTER TABLE `carousels`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carousels_components`
--
ALTER TABLE `carousels_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carousel_id_fk` (`carousel_id`);

--
-- Indices de la tabla `components_menu_desplegables`
--
ALTER TABLE `components_menu_desplegables`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `components_menu_desplegables_components`
--
ALTER TABLE `components_menu_desplegables_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_menu_desplegable_id_fk` (`components_menu_desplegable_id`);

--
-- Indices de la tabla `components_menu_enlaces`
--
ALTER TABLE `components_menu_enlaces`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `components_menu_enlace_externos`
--
ALTER TABLE `components_menu_enlace_externos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `components_menu_paginas`
--
ALTER TABLE `components_menu_paginas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `components_multimedia_figures`
--
ALTER TABLE `components_multimedia_figures`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_store`
--
ALTER TABLE `core_store`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `enlace_externos`
--
ALTER TABLE `enlace_externos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `footer_inicios`
--
ALTER TABLE `footer_inicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `footer_inicios_components`
--
ALTER TABLE `footer_inicios_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `footer_inicio_id_fk` (`footer_inicio_id`);

--
-- Indices de la tabla `inicios`
--
ALTER TABLE `inicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu_inicios`
--
ALTER TABLE `menu_inicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu_inicios_components`
--
ALTER TABLE `menu_inicios_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_inicio_id_fk` (`menu_inicio_id`);

--
-- Indices de la tabla `paginas`
--
ALTER TABLE `paginas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `paginas_url_unique` (`url`);

--
-- Indices de la tabla `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_administrator_email_unique` (`email`);

--
-- Indices de la tabla `strapi_permission`
--
ALTER TABLE `strapi_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_role`
--
ALTER TABLE `strapi_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_role_name_unique` (`name`),
  ADD UNIQUE KEY `strapi_role_code_unique` (`code`);

--
-- Indices de la tabla `strapi_users_roles`
--
ALTER TABLE `strapi_users_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `suscripcions`
--
ALTER TABLE `suscripcions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suscripcions_correo_unique` (`correo`);

--
-- Indices de la tabla `upload_file`
--
ALTER TABLE `upload_file`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_role_type_unique` (`type`);

--
-- Indices de la tabla `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_user_username_unique` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carousels`
--
ALTER TABLE `carousels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `carousels_components`
--
ALTER TABLE `carousels_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `components_menu_desplegables`
--
ALTER TABLE `components_menu_desplegables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `components_menu_desplegables_components`
--
ALTER TABLE `components_menu_desplegables_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `components_menu_enlaces`
--
ALTER TABLE `components_menu_enlaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `components_menu_enlace_externos`
--
ALTER TABLE `components_menu_enlace_externos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `components_menu_paginas`
--
ALTER TABLE `components_menu_paginas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `components_multimedia_figures`
--
ALTER TABLE `components_multimedia_figures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `core_store`
--
ALTER TABLE `core_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `enlace_externos`
--
ALTER TABLE `enlace_externos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `footer_inicios`
--
ALTER TABLE `footer_inicios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `footer_inicios_components`
--
ALTER TABLE `footer_inicios_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `inicios`
--
ALTER TABLE `inicios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `menu_inicios`
--
ALTER TABLE `menu_inicios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu_inicios_components`
--
ALTER TABLE `menu_inicios_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `paginas`
--
ALTER TABLE `paginas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `strapi_permission`
--
ALTER TABLE `strapi_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT de la tabla `strapi_role`
--
ALTER TABLE `strapi_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `strapi_users_roles`
--
ALTER TABLE `strapi_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `suscripcions`
--
ALTER TABLE `suscripcions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `upload_file`
--
ALTER TABLE `upload_file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT de la tabla `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carousels_components`
--
ALTER TABLE `carousels_components`
  ADD CONSTRAINT `carousel_id_fk` FOREIGN KEY (`carousel_id`) REFERENCES `carousels` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `components_menu_desplegables_components`
--
ALTER TABLE `components_menu_desplegables_components`
  ADD CONSTRAINT `components_menu_desplegable_id_fk` FOREIGN KEY (`components_menu_desplegable_id`) REFERENCES `components_menu_desplegables` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `footer_inicios_components`
--
ALTER TABLE `footer_inicios_components`
  ADD CONSTRAINT `footer_inicio_id_fk` FOREIGN KEY (`footer_inicio_id`) REFERENCES `footer_inicios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `menu_inicios_components`
--
ALTER TABLE `menu_inicios_components`
  ADD CONSTRAINT `menu_inicio_id_fk` FOREIGN KEY (`menu_inicio_id`) REFERENCES `menu_inicios` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
