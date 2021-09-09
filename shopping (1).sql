-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 02-09-2021 a las 09:01:02
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shopping`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '0e0ce2c32f1b101a0647eb616399272e', '2017-01-24 16:21:18', '22-06-2020 10:14:35 PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Cocina', 'Indispensable para la cocina', '2021-09-01 22:45:35', NULL),
(2, 'Cuidado de la ropa', 'Para cuidar la ropa', '2021-09-01 22:46:09', NULL),
(3, 'Cuidado personal', 'Para cuidado personal', '2021-09-01 22:46:24', NULL),
(4, 'ClimatizaciÃ³n', 'Para climatizar', '2021-09-01 22:53:19', NULL),
(7, 'Limpieza', 'Para limpiar', '2021-09-01 22:55:34', '01-09-2021 05:57:00 PM'),
(8, 'RefrigeraciÃ³n', 'Para refrigerar alimentos.', '2021-09-01 22:57:29', NULL),
(9, 'Televisores', 'Para entretenimiento.', '2021-09-01 22:57:54', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '1', 1, '2021-09-02 01:42:28', 'COD', NULL),
(5, 1, '2', 5, '2021-09-02 04:21:38', 'COD', NULL),
(6, 1, '1', 1, '2021-09-02 04:30:15', 'COD', NULL),
(7, 1, '2', 5, '2021-09-02 04:30:15', 'COD', NULL),
(8, 5, '3', 3, '2021-09-02 08:29:39', 'Debit / Credit card', NULL),
(9, 5, '2', 3, '2021-09-02 08:38:56', 'COD', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordertrackhistory`
--

DROP TABLE IF EXISTS `ordertrackhistory`;
CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productreviews`
--

DROP TABLE IF EXISTS `productreviews`;
CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 1, 1, 'ELECTROLUX MICROONDAS 20LT EMDO20S2GSRUG', 'ELECTROLUX', 280, 315, '<h2 class=\"product-short-description\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; --tw-shadow: 0 0 rgba(0, 0, 0, 0); --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 rgba(0, 0, 0, 0); --tw-ring-shadow: 0 0 rgba(0, 0, 0, 0); font-size: 16px; letter-spacing: 0.25px; font-weight: 400; margin-bottom: 0px; color: rgb(102, 102, 102); font-family: Barlow, sans-serif;\">Eficiencia, practicidad y calidad en un solo producto.</h2>', 'microondas.jpg', 'microondas1.jpg', 'microondas2.jpg', 5, 'En Stock', '2021-09-01 23:36:14', NULL),
(2, 8, 11, 'REFRIGERADORA SAMSUNG SIDE BY SIDE NO FROST RS64T5B00S9/PE 638L', 'SAMSUNG', 2700, 3000, '<h2 class=\"product-short-description\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; --tw-shadow: 0 0 rgba(0, 0, 0, 0); --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 rgba(0, 0, 0, 0); --tw-ring-shadow: 0 0 rgba(0, 0, 0, 0); font-size: 16px; letter-spacing: 0.25px; font-weight: 400; margin-bottom: 0px; color: rgb(102, 102, 102); font-family: Barlow, sans-serif;\">EnfrÃ­a y congela tus alimentos o bebidas&nbsp;</h2>', 'samsung1.jpg', 'refrisamsung2.jpg', 'refrisamsung3.jpg', 5, 'En Stock', '2021-09-02 01:54:04', NULL),
(3, 7, 10, 'THOMAS ASPIRADORA AQUA+ ANTI ALLERGY 1700W - CELESTE', 'THOMAS', 1750, 1800, 'La mejor aspiradora', 'aspiradora1.jpg', 'aspiradora2.jpg', 'aspiradora3.jpg', 5, 'En Stock', '2021-09-02 01:59:51', NULL),
(4, 4, 9, 'OSTER VENTILADOR 3 EN 1 2116644 60W', 'OSTER ', 85, 170, 'Eficiencia y bajo consumo de energÃ­a.', 'ventilador1.jpg', 'ventilador2.jpg', 'ventilador3.jpg', 5, 'En Stock', '2021-09-02 03:54:17', NULL),
(5, 9, 12, 'TELEVISOR LG OLED ULTRA HD 4K 55\" SMART TV THINQ AI OLED55C1PSA (2021)', 'LG', 5000, 5500, '<h2 class=\"product-short-description\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; --tw-shadow: 0 0 rgba(0, 0, 0, 0); --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow: 0 0 rgba(0, 0, 0, 0); --tw-ring-shadow: 0 0 rgba(0, 0, 0, 0); font-size: 16px; letter-spacing: 0.25px; font-weight: 400; margin-bottom: 0px; color: rgb(102, 102, 102); font-family: Barlow, sans-serif;\">LG smart TV</h2>', 'televisor1.jpg', 'televisor2.jpg', 'televisor3.jpg', 50, 'En Stock', '2021-09-02 03:58:33', NULL),
(6, 2, 3, 'PHILIPS PLANCHA A VAPOR GC2994_20 POWERLIFE', 'PHILIPS', 290, 320, 'Plancha a vapor.', 'plancha1.jpg', 'plancha2.jpg', 'plancha3.jpg', 10, 'En Stock', '2021-09-02 04:38:47', NULL),
(7, 3, 6, 'SIEGEN SECADORA DE CABELLO SG-3012 1700W - ROJO', 'SIEGEN', 70, 90, 'Seca tu cabello velozmente.', 'secadora1.jpg', 'secadora2.jpg', 'secadora3.jpg', 10, 'En Stock', '2021-09-02 04:42:12', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Microondas', '2021-09-01 22:58:59', NULL),
(2, 1, 'Cocina elÃ©ctrica', '2021-09-01 23:00:10', NULL),
(3, 2, 'Planchas', '2021-09-01 23:00:36', NULL),
(5, 2, 'Maquinas de coser', '2021-09-01 23:01:53', NULL),
(6, 3, 'Secadores de cabello', '2021-09-01 23:06:06', NULL),
(7, 4, 'Aire acondicionado', '2021-09-01 23:06:37', NULL),
(8, 4, 'Deshumecedor', '2021-09-01 23:06:45', NULL),
(9, 4, 'Ventilador', '2021-09-01 23:07:06', NULL),
(10, 7, 'Aspiradoras', '2021-09-01 23:07:41', NULL),
(11, 8, 'Refrigeradores', '2021-09-01 23:08:09', NULL),
(12, 9, 'Televisores', '2021-09-02 03:57:32', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'usuario456@hotmail.com', 0x3a3a3100000000000000000000000000, '2021-09-02 00:15:55', NULL, 0),
(2, 'usuario456@hotmail.com', 0x3a3a3100000000000000000000000000, '2021-09-02 00:16:18', NULL, 1),
(3, 'usuario456@hotmail.com', 0x3a3a3100000000000000000000000000, '2021-09-02 02:00:38', NULL, 1),
(4, 'usuario456@hotmail.com', 0x3a3a3100000000000000000000000000, '2021-09-02 02:00:46', '01-09-2021 09:00:49 PM', 1),
(5, 'usuario456@hotmail.com', 0x3a3a3100000000000000000000000000, '2021-09-02 02:00:58', '02-09-2021 12:01:37 AM', 1),
(6, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2021-09-02 05:02:57', NULL, 0),
(7, 'usuario456@hotmail.com', 0x3a3a3100000000000000000000000000, '2021-09-02 05:03:11', '02-09-2021 12:05:36 AM', 1),
(8, 'usuario456@hotmail.com', 0x3a3a3100000000000000000000000000, '2021-09-02 05:05:45', '02-09-2021 12:06:25 AM', 1),
(9, 'usuario456@hotmail.com', 0x3a3a3100000000000000000000000000, '2021-09-02 05:06:32', '02-09-2021 12:06:50 AM', 1),
(10, 'usuario456@hotmail.com', 0x3a3a3100000000000000000000000000, '2021-09-02 05:07:33', '02-09-2021 03:10:05 AM', 1),
(11, 'usuario456@hotmail.com', 0x3a3a3100000000000000000000000000, '2021-09-02 08:10:14', '02-09-2021 03:39:54 AM', 1),
(12, 'usuario456@hotmail.com', 0x3a3a3100000000000000000000000000, '2021-09-02 08:50:32', '02-09-2021 03:51:48 AM', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(5, 'Jose Sanchez', 'usuario456@hotmail.com', 123456789, 'dfe36fae797e612eb77e447dd86dc33b', 'DirecciÃ³n de envÃ­o 1', 'Estado envÃ­o 1 ', 'Ciudad de  envÃ­o 1 ', 123, 'DirecciÃ³n de facturaciÃ³n 2', 'Estado de facturaciÃ³n 2', 'Ciudad de facturaciÃ³n 2', 456, '2021-09-02 00:16:13', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(11, 1, 0, '2021-09-02 03:10:24'),
(12, 1, 0, '2021-09-02 03:11:04'),
(17, 1, 2, '2021-09-02 04:29:58'),
(18, 1, 3, '2021-09-02 04:33:50'),
(19, 5, 3, '2021-09-02 05:07:44'),
(20, 5, 2, '2021-09-02 08:17:11'),
(21, 5, 1, '2021-09-02 08:38:24');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
