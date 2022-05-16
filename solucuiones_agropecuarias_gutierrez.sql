-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 15-05-2022 a las 21:19:02
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `solucuiones_agropecuarias_gutierrez`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `detalle` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `detalle`, `img_id`) VALUES
(1, 'Línea convencional', 'La línea de cosechadoras convencionales “Vassalli” y “Don Roque” cuenta actualmente con 4 modelos: V1550 EHD, RV 150 Electro, RV 125 y RV 125 Electrotrac Rice.\r\n\r\nEficiencia y simplicidad para trabajar siempre con la misma pasión.\r\n\r\nCon motores de bajo consumo para maximizar la eficiencia de su cosecha, trabajan con plataformas de 23, 28, 30 y 35 pies, en versión Flexifull o Flexidrap.\r\n\r\nLas cuatro máquinas funcionan con sistema de trilla convencional y se diferencian entre sí fundamentalmente por su capacidad de trabajo, velocidad de cosecha y por la potencia de sus motores .', 'u98yvx4yuars362xvpg9'),
(2, 'El Tropical tolerante a virus de más sabor', 'Como resultado de años de trabajo en el mejoramiento de maices tropicales en Syngenta Brasil, lanzamos al mercado este híbrido que, a la alta productividad, le sumamos mejores características organolépticas. El maíz dulce se origina a partir de mutaciones que bloquean la síntesis del almidón y conducen a la acumulación de azúcares, principalmente sacarosa, logrando así un sabor más natural como preere el consumidor.', 'skezrlnvfqocsxb7qc4v'),
(3, 'Flexifull', 'Presentamos las plataformas flexibles sinfín de Vassalli, Flexifull, que brindan la mayor adaptación a los distintos tipos de terreno. Accedé a la mayor resistencia, practicidad y capacidad de trabajo que ofrecen nuestras plataformas Flexifull.', 'lfjca8fbcubsydnejgnb'),
(4, 'Rendimiento', 'GSS2577 es una semilla diseñada para una producción estable, segura y conveniente. La tolerancia al complejo llamado  \"Achaparramiento del Maíz\" transmitido por la Chicharrita del Maíz (Dalbulus Maidis) y otros vectores como pulgones o ácaros brindan la mejor seguridad del mercado para su inversión. Alto potencial productivo Alta tolerancia al achaparramiento del maíz Espiga más grande, de excelente calidad para el mercado fresco y con mejor desempeño Destacado tamaño de mazorca, color y sabor de sus granos  Para siembras en primavera/verano (NOA y NEA) donde la presión de virosis es un problema Densidad de seimbra: de 50 a 60.000 semillas/ha Otras Resistencias:   IR: Et / Ps', 'ilfiykbuynlxyng7f6ty'),
(5, 'Flexidrap', 'Las plataformas Flexidrap de Vassalli están fabricadas íntegramente en aluminio, lo que las convierte en las más livianas y eficientes del mercado. La más alta tecnología, hecha en Argentina.', 'qspelakjzkrhpiwj5pwu');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Gustavo', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'flavia', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
