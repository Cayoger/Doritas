-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2016 a las 17:41:40
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `doritas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo`
--

CREATE TABLE `catalogo` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL COMMENT 'Nombre del paquete'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Paquetes de servicios';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo_detalle`
--

CREATE TABLE `catalogo_detalle` (
  `id` int(11) NOT NULL,
  `id_cat` int(11) DEFAULT NULL COMMENT 'Id de tabla catalogo',
  `id_ser` int(11) DEFAULT NULL COMMENT 'Id tabla servicio'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Relaciona un paquete de catalogo con los servicios empaquetados';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id` int(11) NOT NULL,
  `id_dept` int(11) DEFAULT NULL COMMENT 'Id del departamento',
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de ciudades';

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id`, `id_dept`, `nombre`) VALUES
(1, 5, 'MEDELLIN\r'),
(2, 5, 'ABEJORRAL\r'),
(3, 5, 'ABRIAQUI\r'),
(4, 5, 'ALEJANDRIA\r'),
(5, 5, 'AMAGA\r'),
(6, 5, 'AMALFI\r'),
(7, 5, 'ANDES\r'),
(8, 5, 'ANGELOPOLIS\r'),
(9, 5, 'ANGOSTURA\r'),
(10, 5, 'ANORI\r'),
(11, 5, 'SANTAFE DE ANTIOQUIA\r'),
(12, 5, 'ANZA\r'),
(13, 5, 'APARTADO\r'),
(14, 5, 'ARBOLETES\r'),
(15, 5, 'ARGELIA\r'),
(16, 5, 'ARMENIA\r'),
(17, 5, 'BARBOSA\r'),
(18, 5, 'BELMIRA\r'),
(19, 5, 'BELLO\r'),
(20, 5, 'BETANIA\r'),
(21, 5, 'BETULIA\r'),
(22, 5, 'CIUDAD BOLIVAR\r'),
(23, 5, 'BRICEÑO\r'),
(24, 5, 'BURITICA\r'),
(25, 5, 'CACERES\r'),
(26, 5, 'CAICEDO\r'),
(27, 5, 'CALDAS\r'),
(28, 5, 'CAMPAMENTO\r'),
(29, 5, 'CAÑASGORDAS\r'),
(30, 5, 'CARACOLI\r'),
(31, 5, 'CARAMANTA\r'),
(32, 5, 'CAREPA\r'),
(33, 5, 'EL CARMEN DE VIBORAL\r'),
(34, 5, 'CAROLINA\r'),
(35, 5, 'CAUCASIA\r'),
(36, 5, 'CHIGORODO\r'),
(37, 5, 'CISNEROS\r'),
(38, 5, 'COCORNA\r'),
(39, 5, 'CONCEPCION\r'),
(40, 5, 'CONCORDIA\r'),
(41, 5, 'COPACABANA\r'),
(42, 5, 'DABEIBA\r'),
(43, 5, 'DON MATIAS\r'),
(44, 5, 'EBEJICO\r'),
(45, 5, 'EL BAGRE\r'),
(46, 5, 'ENTRERRIOS\r'),
(47, 5, 'ENVIGADO\r'),
(48, 5, 'FREDONIA\r'),
(49, 5, 'FRONTINO\r'),
(50, 5, 'GIRALDO\r'),
(51, 5, 'GIRARDOTA\r'),
(52, 5, 'GOMEZ PLATA\r'),
(53, 5, 'GRANADA\r'),
(54, 5, 'GUADALUPE\r'),
(55, 5, 'GUARNE\r'),
(56, 5, 'GUATAPE\r'),
(57, 5, 'HELICONIA\r'),
(58, 5, 'HISPANIA\r'),
(59, 5, 'ITAGUI\r'),
(60, 5, 'ITUANGO\r'),
(61, 5, 'JARDIN\r'),
(62, 5, 'JERICO\r'),
(63, 5, 'LA CEJA\r'),
(64, 5, 'LA ESTRELLA\r'),
(65, 5, 'LA PINTADA\r'),
(66, 5, 'LA UNION\r'),
(67, 5, 'LIBORINA\r'),
(68, 5, 'MACEO\r'),
(69, 5, 'MARINILLA\r'),
(70, 5, 'MONTEBELLO\r'),
(71, 5, 'MURINDO\r'),
(72, 5, 'MUTATA\r'),
(73, 5, 'NARIÑO\r'),
(74, 5, 'NECOCLI\r'),
(75, 5, 'NECHI\r'),
(76, 5, 'OLAYA\r'),
(77, 5, 'PEÐOL\r'),
(78, 5, 'PEQUE\r'),
(79, 5, 'PUEBLORRICO\r'),
(80, 5, 'PUERTO BERRIO\r'),
(81, 5, 'PUERTO NARE\r'),
(82, 5, 'PUERTO TRIUNFO\r'),
(83, 5, 'REMEDIOS\r'),
(84, 5, 'RETIRO\r'),
(85, 5, 'RIONEGRO\r'),
(86, 5, 'SABANALARGA\r'),
(87, 5, 'SABANETA\r'),
(88, 5, 'SALGAR\r'),
(89, 5, 'SAN ANDRES DE CUERQUIA\r'),
(90, 5, 'SAN CARLOS\r'),
(91, 5, 'SAN FRANCISCO\r'),
(92, 5, 'SAN JERONIMO\r'),
(93, 5, 'SAN JOSE DE LA MONTAÑA\r'),
(94, 5, 'SAN JUAN DE URABA\r'),
(95, 5, 'SAN LUIS\r'),
(96, 5, 'SAN PEDRO\r'),
(97, 5, 'SAN PEDRO DE URABA\r'),
(98, 5, 'SAN RAFAEL\r'),
(99, 5, 'SAN ROQUE\r'),
(100, 5, 'SAN VICENTE\r'),
(101, 5, 'SANTA BARBARA\r'),
(102, 5, 'SANTA ROSA DE OSOS\r'),
(103, 5, 'SANTO DOMINGO\r'),
(104, 5, 'EL SANTUARIO\r'),
(105, 5, 'SEGOVIA\r'),
(106, 5, 'SONSON\r'),
(107, 5, 'SOPETRAN\r'),
(108, 5, 'TAMESIS\r'),
(109, 5, 'TARAZA\r'),
(110, 5, 'TARSO\r'),
(111, 5, 'TITIRIBI\r'),
(112, 5, 'TOLEDO\r'),
(113, 5, 'TURBO\r'),
(114, 5, 'URAMITA\r'),
(115, 5, 'URRAO\r'),
(116, 5, 'VALDIVIA\r'),
(117, 5, 'VALPARAISO\r'),
(118, 5, 'VEGACHI\r'),
(119, 5, 'VENECIA\r'),
(120, 5, 'VIGIA DEL FUERTE\r'),
(121, 5, 'YALI\r'),
(122, 5, 'YARUMAL\r'),
(123, 5, 'YOLOMBO\r'),
(124, 5, 'YONDO\r'),
(125, 5, 'ZARAGOZA\r'),
(126, 8, 'BARRANQUILLA\r'),
(127, 8, 'BARANOA\r'),
(128, 8, 'CAMPO DE LA CRUZ\r'),
(129, 8, 'CANDELARIA\r'),
(130, 8, 'GALAPA\r'),
(131, 8, 'JUAN DE ACOSTA\r'),
(132, 8, 'LURUACO\r'),
(133, 8, 'MALAMBO\r'),
(134, 8, 'MANATI\r'),
(135, 8, 'PALMAR DE VARELA\r'),
(136, 8, 'PIOJO\r'),
(137, 8, 'POLONUEVO\r'),
(138, 8, 'PONEDERA\r'),
(139, 8, 'PUERTO COLOMBIA\r'),
(140, 8, 'REPELON\r'),
(141, 8, 'SABANAGRANDE\r'),
(142, 8, 'SABANALARGA\r'),
(143, 8, 'SANTA LUCIA\r'),
(144, 8, 'SANTO TOMAS\r'),
(145, 8, 'SOLEDAD\r'),
(146, 8, 'SUAN\r'),
(147, 8, 'TUBARA\r'),
(148, 8, 'USIACURI\r'),
(149, 11, 'BOGOTA, D.C.\r'),
(150, 13, 'CARTAGENA\r'),
(151, 13, 'ACHI\r'),
(152, 13, 'ALTOS DEL ROSARIO\r'),
(153, 13, 'ARENAL\r'),
(154, 13, 'ARJONA\r'),
(155, 13, 'ARROYOHONDO\r'),
(156, 13, 'BARRANCO DE LOBA\r'),
(157, 13, 'CALAMAR\r'),
(158, 13, 'CANTAGALLO\r'),
(159, 13, 'CICUCO\r'),
(160, 13, 'CORDOBA\r'),
(161, 13, 'CLEMENCIA\r'),
(162, 13, 'EL CARMEN DE BOLIVAR\r'),
(163, 13, 'EL GUAMO\r'),
(164, 13, 'EL PEÑON\r'),
(165, 13, 'HATILLO DE LOBA\r'),
(166, 13, 'MAGANGUE\r'),
(167, 13, 'MAHATES\r'),
(168, 13, 'MARGARITA\r'),
(169, 13, 'MARIA LA BAJA\r'),
(170, 13, 'MONTECRISTO\r'),
(171, 13, 'MOMPOS\r'),
(172, 13, 'NOROSI\r'),
(173, 13, 'MORALES\r'),
(174, 13, 'PINILLOS\r'),
(175, 13, 'REGIDOR\r'),
(176, 13, 'RIO VIEJO\r'),
(177, 13, 'SAN CRISTOBAL\r'),
(178, 13, 'SAN ESTANISLAO\r'),
(179, 13, 'SAN FERNANDO\r'),
(180, 13, 'SAN JACINTO\r'),
(181, 13, 'SAN JACINTO DEL CAUCA\r'),
(182, 13, 'SAN JUAN NEPOMUCENO\r'),
(183, 13, 'SAN MARTIN DE LOBA\r'),
(184, 13, 'SAN PABLO\r'),
(185, 13, 'SANTA CATALINA\r'),
(186, 13, 'SANTA ROSA\r'),
(187, 13, 'SANTA ROSA DEL SUR\r'),
(188, 13, 'SIMITI\r'),
(189, 13, 'SOPLAVIENTO\r'),
(190, 13, 'TALAIGUA NUEVO\r'),
(191, 13, 'TIQUISIO\r'),
(192, 13, 'TURBACO\r'),
(193, 13, 'TURBANA\r'),
(194, 13, 'VILLANUEVA\r'),
(195, 13, 'ZAMBRANO\r'),
(196, 15, 'TUNJA\r'),
(197, 15, 'ALMEIDA\r'),
(198, 15, 'AQUITANIA\r'),
(199, 15, 'ARCABUCO\r'),
(200, 15, 'BELEN\r'),
(201, 15, 'BERBEO\r'),
(202, 15, 'BETEITIVA\r'),
(203, 15, 'BOAVITA\r'),
(204, 15, 'BOYACA\r'),
(205, 15, 'BRICEÑO\r'),
(206, 15, 'BUENAVISTA\r'),
(207, 15, 'BUSBANZA\r'),
(208, 15, 'CALDAS\r'),
(209, 15, 'CAMPOHERMOSO\r'),
(210, 15, 'CERINZA\r'),
(211, 15, 'CHINAVITA\r'),
(212, 15, 'CHIQUINQUIRA\r'),
(213, 15, 'CHISCAS\r'),
(214, 15, 'CHITA\r'),
(215, 15, 'CHITARAQUE\r'),
(216, 15, 'CHIVATA\r'),
(217, 15, 'CIENEGA\r'),
(218, 15, 'COMBITA\r'),
(219, 15, 'COPER\r'),
(220, 15, 'CORRALES\r'),
(221, 15, 'COVARACHIA\r'),
(222, 15, 'CUBARA\r'),
(223, 15, 'CUCAITA\r'),
(224, 15, 'CUITIVA\r'),
(225, 15, 'CHIQUIZA\r'),
(226, 15, 'CHIVOR\r'),
(227, 15, 'DUITAMA\r'),
(228, 15, 'EL COCUY\r'),
(229, 15, 'EL ESPINO\r'),
(230, 15, 'FIRAVITOBA\r'),
(231, 15, 'FLORESTA\r'),
(232, 15, 'GACHANTIVA\r'),
(233, 15, 'GAMEZA\r'),
(234, 15, 'GARAGOA\r'),
(235, 15, 'GUACAMAYAS\r'),
(236, 15, 'GUATEQUE\r'),
(237, 15, 'GUAYATA\r'),
(238, 15, 'GsICAN\r'),
(239, 15, 'IZA\r'),
(240, 15, 'JENESANO\r'),
(241, 15, 'JERICO\r'),
(242, 15, 'LABRANZAGRANDE\r'),
(243, 15, 'LA CAPILLA\r'),
(244, 15, 'LA VICTORIA\r'),
(245, 15, 'LA UVITA\r'),
(246, 15, 'VILLA DE LEYVA\r'),
(247, 15, 'MACANAL\r'),
(248, 15, 'MARIPI\r'),
(249, 15, 'MIRAFLORES\r'),
(250, 15, 'MONGUA\r'),
(251, 15, 'MONGUI\r'),
(252, 15, 'MONIQUIRA\r'),
(253, 15, 'MOTAVITA\r'),
(254, 15, 'MUZO\r'),
(255, 15, 'NOBSA\r'),
(256, 15, 'NUEVO COLON\r'),
(257, 15, 'OICATA\r'),
(258, 15, 'OTANCHE\r'),
(259, 15, 'PACHAVITA\r'),
(260, 15, 'PAEZ\r'),
(261, 15, 'PAIPA\r'),
(262, 15, 'PAJARITO\r'),
(263, 15, 'PANQUEBA\r'),
(264, 15, 'PAUNA\r'),
(265, 15, 'PAYA\r'),
(266, 15, 'PAZ DE RIO\r'),
(267, 15, 'PESCA\r'),
(268, 15, 'PISBA\r'),
(269, 15, 'PUERTO BOYACA\r'),
(270, 15, 'QUIPAMA\r'),
(271, 15, 'RAMIRIQUI\r'),
(272, 15, 'RAQUIRA\r'),
(273, 15, 'RONDON\r'),
(274, 15, 'SABOYA\r'),
(275, 15, 'SACHICA\r'),
(276, 15, 'SAMACA\r'),
(277, 15, 'SAN EDUARDO\r'),
(278, 15, 'SAN JOSE DE PARE\r'),
(279, 15, 'SAN LUIS DE GACENO\r'),
(280, 15, 'SAN MATEO\r'),
(281, 15, 'SAN MIGUEL DE SEMA\r'),
(282, 15, 'SAN PABLO DE BORBUR\r'),
(283, 15, 'SANTANA\r'),
(284, 15, 'SANTA MARIA\r'),
(285, 15, 'SANTA ROSA DE VITERBO\r'),
(286, 15, 'SANTA SOFIA\r'),
(287, 15, 'SATIVANORTE\r'),
(288, 15, 'SATIVASUR\r'),
(289, 15, 'SIACHOQUE\r'),
(290, 15, 'SOATA\r'),
(291, 15, 'SOCOTA\r'),
(292, 15, 'SOCHA\r'),
(293, 15, 'SOGAMOSO\r'),
(294, 15, 'SOMONDOCO\r'),
(295, 15, 'SORA\r'),
(296, 15, 'SOTAQUIRA\r'),
(297, 15, 'SORACA\r'),
(298, 15, 'SUSACON\r'),
(299, 15, 'SUTAMARCHAN\r'),
(300, 15, 'SUTATENZA\r'),
(301, 15, 'TASCO\r'),
(302, 15, 'TENZA\r'),
(303, 15, 'TIBANA\r'),
(304, 15, 'TIBASOSA\r'),
(305, 15, 'TINJACA\r'),
(306, 15, 'TIPACOQUE\r'),
(307, 15, 'TOCA\r'),
(308, 15, 'TOGsI\r'),
(309, 15, 'TOPAGA\r'),
(310, 15, 'TOTA\r'),
(311, 15, 'TUNUNGUA\r'),
(312, 15, 'TURMEQUE\r'),
(313, 15, 'TUTA\r'),
(314, 15, 'TUTAZA\r'),
(315, 15, 'UMBITA\r'),
(316, 15, 'VENTAQUEMADA\r'),
(317, 15, 'VIRACACHA\r'),
(318, 15, 'ZETAQUIRA\r'),
(319, 17, 'MANIZALES\r'),
(320, 17, 'AGUADAS\r'),
(321, 17, 'ANSERMA\r'),
(322, 17, 'ARANZAZU\r'),
(323, 17, 'BELALCAZAR\r'),
(324, 17, 'CHINCHINA\r'),
(325, 17, 'FILADELFIA\r'),
(326, 17, 'LA DORADA\r'),
(327, 17, 'LA MERCED\r'),
(328, 17, 'MANZANARES\r'),
(329, 17, 'MARMATO\r'),
(330, 17, 'MARQUETALIA\r'),
(331, 17, 'MARULANDA\r'),
(332, 17, 'NEIRA\r'),
(333, 17, 'NORCASIA\r'),
(334, 17, 'PACORA\r'),
(335, 17, 'PALESTINA\r'),
(336, 17, 'PENSILVANIA\r'),
(337, 17, 'RIOSUCIO\r'),
(338, 17, 'RISARALDA\r'),
(339, 17, 'SALAMINA\r'),
(340, 17, 'SAMANA\r'),
(341, 17, 'SAN JOSE\r'),
(342, 17, 'SUPIA\r'),
(343, 17, 'VICTORIA\r'),
(344, 17, 'VILLAMARIA\r'),
(345, 17, 'VITERBO\r'),
(346, 18, 'FLORENCIA\r'),
(347, 18, 'ALBANIA\r'),
(348, 18, 'BELEN DE LOS ANDAQUIES\r'),
(349, 18, 'CARTAGENA DEL CHAIRA\r'),
(350, 18, 'CURILLO\r'),
(351, 18, 'EL DONCELLO\r'),
(352, 18, 'EL PAUJIL\r'),
(353, 18, 'LA MONTAÑITA\r'),
(354, 18, 'MILAN\r'),
(355, 18, 'MORELIA\r'),
(356, 18, 'PUERTO RICO\r'),
(357, 18, 'SAN JOSE DEL FRAGUA\r'),
(358, 18, 'SAN VICENTE DEL CAGUAN\r'),
(359, 18, 'SOLANO\r'),
(360, 18, 'SOLITA\r'),
(361, 18, 'VALPARAISO\r'),
(362, 19, 'POPAYAN\r'),
(363, 19, 'ALMAGUER\r'),
(364, 19, 'ARGELIA\r'),
(365, 19, 'BALBOA\r'),
(366, 19, 'BOLIVAR\r'),
(367, 19, 'BUENOS AIRES\r'),
(368, 19, 'CAJIBIO\r'),
(369, 19, 'CALDONO\r'),
(370, 19, 'CALOTO\r'),
(371, 19, 'CORINTO\r'),
(372, 19, 'EL TAMBO\r'),
(373, 19, 'FLORENCIA\r'),
(374, 19, 'GUACHENE\r'),
(375, 19, 'GUAPI\r'),
(376, 19, 'INZA\r'),
(377, 19, 'JAMBALO\r'),
(378, 19, 'LA SIERRA\r'),
(379, 19, 'LA VEGA\r'),
(380, 19, 'LOPEZ\r'),
(381, 19, 'MERCADERES\r'),
(382, 19, 'MIRANDA\r'),
(383, 19, 'MORALES\r'),
(384, 19, 'PADILLA\r'),
(385, 19, 'PAEZ\r'),
(386, 19, 'PATIA\r'),
(387, 19, 'PIAMONTE\r'),
(388, 19, 'PIENDAMO\r'),
(389, 19, 'PUERTO TEJADA\r'),
(390, 19, 'PURACE\r'),
(391, 19, 'ROSAS\r'),
(392, 19, 'SAN SEBASTIAN\r'),
(393, 19, 'SANTANDER DE QUILICHAO\r'),
(394, 19, 'SANTA ROSA\r'),
(395, 19, 'SILVIA\r'),
(396, 19, 'SOTARA\r'),
(397, 19, 'SUAREZ\r'),
(398, 19, 'SUCRE\r'),
(399, 19, 'TIMBIO\r'),
(400, 19, 'TIMBIQUI\r'),
(401, 19, 'TORIBIO\r'),
(402, 19, 'TOTORO\r'),
(403, 19, 'VILLA RICA\r'),
(404, 20, 'VALLEDUPAR\r'),
(405, 20, 'AGUACHICA\r'),
(406, 20, 'AGUSTIN CODAZZI\r'),
(407, 20, 'ASTREA\r'),
(408, 20, 'BECERRIL\r'),
(409, 20, 'BOSCONIA\r'),
(410, 20, 'CHIMICHAGUA\r'),
(411, 20, 'CHIRIGUANA\r'),
(412, 20, 'CURUMANI\r'),
(413, 20, 'EL COPEY\r'),
(414, 20, 'EL PASO\r'),
(415, 20, 'GAMARRA\r'),
(416, 20, 'GONZALEZ\r'),
(417, 20, 'LA GLORIA\r'),
(418, 20, 'LA JAGUA DE IBIRICO\r'),
(419, 20, 'MANAURE\r'),
(420, 20, 'PAILITAS\r'),
(421, 20, 'PELAYA\r'),
(422, 20, 'PUEBLO BELLO\r'),
(423, 20, 'RIO DE ORO\r'),
(424, 20, 'LA PAZ\r'),
(425, 20, 'SAN ALBERTO\r'),
(426, 20, 'SAN DIEGO\r'),
(427, 20, 'SAN MARTIN\r'),
(428, 20, 'TAMALAMEQUE\r'),
(429, 23, 'MONTERIA\r'),
(430, 23, 'AYAPEL\r'),
(431, 23, 'BUENAVISTA\r'),
(432, 23, 'CANALETE\r'),
(433, 23, 'CERETE\r'),
(434, 23, 'CHIMA\r'),
(435, 23, 'CHINU\r'),
(436, 23, 'CIENAGA DE ORO\r'),
(437, 23, 'COTORRA\r'),
(438, 23, 'LA APARTADA\r'),
(439, 23, 'LORICA\r'),
(440, 23, 'LOS CORDOBAS\r'),
(441, 23, 'MOMIL\r'),
(442, 23, 'MONTELIBANO\r'),
(443, 23, 'MOÑITOS\r'),
(444, 23, 'PLANETA RICA\r'),
(445, 23, 'PUEBLO NUEVO\r'),
(446, 23, 'PUERTO ESCONDIDO\r'),
(447, 23, 'PUERTO LIBERTADOR\r'),
(448, 23, 'PURISIMA\r'),
(449, 23, 'SAHAGUN\r'),
(450, 23, 'SAN ANDRES SOTAVENTO\r'),
(451, 23, 'SAN ANTERO\r'),
(452, 23, 'SAN BERNARDO DEL VIENTO\r'),
(453, 23, 'SAN CARLOS\r'),
(454, 23, 'SAN PELAYO\r'),
(455, 23, 'TIERRALTA\r'),
(456, 23, 'VALENCIA\r'),
(457, 25, 'AGUA DE DIOS\r'),
(458, 25, 'ALBAN\r'),
(459, 25, 'ANAPOIMA\r'),
(460, 25, 'ANOLAIMA\r'),
(461, 25, 'ARBELAEZ\r'),
(462, 25, 'BELTRAN\r'),
(463, 25, 'BITUIMA\r'),
(464, 25, 'BOJACA\r'),
(465, 25, 'CABRERA\r'),
(466, 25, 'CACHIPAY\r'),
(467, 25, 'CAJICA\r'),
(468, 25, 'CAPARRAPI\r'),
(469, 25, 'CAQUEZA\r'),
(470, 25, 'CARMEN DE CARUPA\r'),
(471, 25, 'CHAGUANI\r'),
(472, 25, 'CHIA\r'),
(473, 25, 'CHIPAQUE\r'),
(474, 25, 'CHOACHI\r'),
(475, 25, 'CHOCONTA\r'),
(476, 25, 'COGUA\r'),
(477, 25, 'COTA\r'),
(478, 25, 'CUCUNUBA\r'),
(479, 25, 'EL COLEGIO\r'),
(480, 25, 'EL PEÑON\r'),
(481, 25, 'EL ROSAL\r'),
(482, 25, 'FACATATIVA\r'),
(483, 25, 'FOMEQUE\r'),
(484, 25, 'FOSCA\r'),
(485, 25, 'FUNZA\r'),
(486, 25, 'FUQUENE\r'),
(487, 25, 'FUSAGASUGA\r'),
(488, 25, 'GACHALA\r'),
(489, 25, 'GACHANCIPA\r'),
(490, 25, 'GACHETA\r'),
(491, 25, 'GAMA\r'),
(492, 25, 'GIRARDOT\r'),
(493, 25, 'GRANADA\r'),
(494, 25, 'GUACHETA\r'),
(495, 25, 'GUADUAS\r'),
(496, 25, 'GUASCA\r'),
(497, 25, 'GUATAQUI\r'),
(498, 25, 'GUATAVITA\r'),
(499, 25, 'GUAYABAL DE SIQUIMA\r'),
(500, 25, 'GUAYABETAL\r'),
(501, 25, 'GUTIERREZ\r'),
(502, 25, 'JERUSALEN\r'),
(503, 25, 'JUNIN\r'),
(504, 25, 'LA CALERA\r'),
(505, 25, 'LA MESA\r'),
(506, 25, 'LA PALMA\r'),
(507, 25, 'LA PEÑA\r'),
(508, 25, 'LA VEGA\r'),
(509, 25, 'LENGUAZAQUE\r'),
(510, 25, 'MACHETA\r'),
(511, 25, 'MADRID\r'),
(512, 25, 'MANTA\r'),
(513, 25, 'MEDINA\r'),
(514, 25, 'MOSQUERA\r'),
(515, 25, 'NARIÑO\r'),
(516, 25, 'NEMOCON\r'),
(517, 25, 'NILO\r'),
(518, 25, 'NIMAIMA\r'),
(519, 25, 'NOCAIMA\r'),
(520, 25, 'VENECIA\r'),
(521, 25, 'PACHO\r'),
(522, 25, 'PAIME\r'),
(523, 25, 'PANDI\r'),
(524, 25, 'PARATEBUENO\r'),
(525, 25, 'PASCA\r'),
(526, 25, 'PUERTO SALGAR\r'),
(527, 25, 'PULI\r'),
(528, 25, 'QUEBRADANEGRA\r'),
(529, 25, 'QUETAME\r'),
(530, 25, 'QUIPILE\r'),
(531, 25, 'APULO\r'),
(532, 25, 'RICAURTE\r'),
(533, 25, 'SAN ANTONIO DEL TEQUENDAMA\r'),
(534, 25, 'SAN BERNARDO\r'),
(535, 25, 'SAN CAYETANO\r'),
(536, 25, 'SAN FRANCISCO\r'),
(537, 25, 'SAN JUAN DE RIO SECO\r'),
(538, 25, 'SASAIMA\r'),
(539, 25, 'SESQUILE\r'),
(540, 25, 'SIBATE\r'),
(541, 25, 'SILVANIA\r'),
(542, 25, 'SIMIJACA\r'),
(543, 25, 'SOACHA\r'),
(544, 25, 'SOPO\r'),
(545, 25, 'SUBACHOQUE\r'),
(546, 25, 'SUESCA\r'),
(547, 25, 'SUPATA\r'),
(548, 25, 'SUSA\r'),
(549, 25, 'SUTATAUSA\r'),
(550, 25, 'TABIO\r'),
(551, 25, 'TAUSA\r'),
(552, 25, 'TENA\r'),
(553, 25, 'TENJO\r'),
(554, 25, 'TIBACUY\r'),
(555, 25, 'TIBIRITA\r'),
(556, 25, 'TOCAIMA\r'),
(557, 25, 'TOCANCIPA\r'),
(558, 25, 'TOPAIPI\r'),
(559, 25, 'UBALA\r'),
(560, 25, 'UBAQUE\r'),
(561, 25, 'VILLA DE SAN DIEGO DE UBATE\r'),
(562, 25, 'UNE\r'),
(563, 25, 'UTICA\r'),
(564, 25, 'VERGARA\r'),
(565, 25, 'VIANI\r'),
(566, 25, 'VILLAGOMEZ\r'),
(567, 25, 'VILLAPINZON\r'),
(568, 25, 'VILLETA\r'),
(569, 25, 'VIOTA\r'),
(570, 25, 'YACOPI\r'),
(571, 25, 'ZIPACON\r'),
(572, 25, 'ZIPAQUIRA\r'),
(573, 27, 'QUIBDO\r'),
(574, 27, 'ACANDI\r'),
(575, 27, 'ALTO BAUDO\r'),
(576, 27, 'ATRATO\r'),
(577, 27, 'BAGADO\r'),
(578, 27, 'BAHIA SOLANO\r'),
(579, 27, 'BAJO BAUDO\r'),
(580, 27, 'BOJAYA\r'),
(581, 27, 'EL CANTON DEL SAN PABLO\r'),
(582, 27, 'CARMEN DEL DARIEN\r'),
(583, 27, 'CERTEGUI\r'),
(584, 27, 'CONDOTO\r'),
(585, 27, 'EL CARMEN DE ATRATO\r'),
(586, 27, 'EL LITORAL DEL SAN JUAN\r'),
(587, 27, 'ISTMINA\r'),
(588, 27, 'JURADO\r'),
(589, 27, 'LLORO\r'),
(590, 27, 'MEDIO ATRATO\r'),
(591, 27, 'MEDIO BAUDO\r'),
(592, 27, 'MEDIO SAN JUAN\r'),
(593, 27, 'NOVITA\r'),
(594, 27, 'NUQUI\r'),
(595, 27, 'RIO IRO\r'),
(596, 27, 'RIO QUITO\r'),
(597, 27, 'RIOSUCIO\r'),
(598, 27, 'SAN JOSE DEL PALMAR\r'),
(599, 27, 'SIPI\r'),
(600, 27, 'TADO\r'),
(601, 27, 'UNGUIA\r'),
(602, 27, 'UNION PANAMERICANA\r'),
(603, 41, 'NEIVA\r'),
(604, 41, 'ACEVEDO\r'),
(605, 41, 'AGRADO\r'),
(606, 41, 'AIPE\r'),
(607, 41, 'ALGECIRAS\r'),
(608, 41, 'ALTAMIRA\r'),
(609, 41, 'BARAYA\r'),
(610, 41, 'CAMPOALEGRE\r'),
(611, 41, 'COLOMBIA\r'),
(612, 41, 'ELIAS\r'),
(613, 41, 'GARZON\r'),
(614, 41, 'GIGANTE\r'),
(615, 41, 'GUADALUPE\r'),
(616, 41, 'HOBO\r'),
(617, 41, 'IQUIRA\r'),
(618, 41, 'ISNOS\r'),
(619, 41, 'LA ARGENTINA\r'),
(620, 41, 'LA PLATA\r'),
(621, 41, 'NATAGA\r'),
(622, 41, 'OPORAPA\r'),
(623, 41, 'PAICOL\r'),
(624, 41, 'PALERMO\r'),
(625, 41, 'PALESTINA\r'),
(626, 41, 'PITAL\r'),
(627, 41, 'PITALITO\r'),
(628, 41, 'RIVERA\r'),
(629, 41, 'SALADOBLANCO\r'),
(630, 41, 'SAN AGUSTIN\r'),
(631, 41, 'SANTA MARIA\r'),
(632, 41, 'SUAZA\r'),
(633, 41, 'TARQUI\r'),
(634, 41, 'TESALIA\r'),
(635, 41, 'TELLO\r'),
(636, 41, 'TERUEL\r'),
(637, 41, 'TIMANA\r'),
(638, 41, 'VILLAVIEJA\r'),
(639, 41, 'YAGUARA\r'),
(640, 44, 'RIOHACHA\r'),
(641, 44, 'ALBANIA\r'),
(642, 44, 'BARRANCAS\r'),
(643, 44, 'DIBULLA\r'),
(644, 44, 'DISTRACCION\r'),
(645, 44, 'EL MOLINO\r'),
(646, 44, 'FONSECA\r'),
(647, 44, 'HATONUEVO\r'),
(648, 44, 'LA JAGUA DEL PILAR\r'),
(649, 44, 'MAICAO\r'),
(650, 44, 'MANAURE\r'),
(651, 44, 'SAN JUAN DEL CESAR\r'),
(652, 44, 'URIBIA\r'),
(653, 44, 'URUMITA\r'),
(654, 44, 'VILLANUEVA\r'),
(655, 47, 'SANTA MARTA\r'),
(656, 47, 'ALGARROBO\r'),
(657, 47, 'ARACATACA\r'),
(658, 47, 'ARIGUANI\r'),
(659, 47, 'CERRO SAN ANTONIO\r'),
(660, 47, 'CHIBOLO\r'),
(661, 47, 'CIENAGA\r'),
(662, 47, 'CONCORDIA\r'),
(663, 47, 'EL BANCO\r'),
(664, 47, 'EL PIÑON\r'),
(665, 47, 'EL RETEN\r'),
(666, 47, 'FUNDACION\r'),
(667, 47, 'GUAMAL\r'),
(668, 47, 'NUEVA GRANADA\r'),
(669, 47, 'PEDRAZA\r'),
(670, 47, 'PIJIÑO DEL CARMEN\r'),
(671, 47, 'PIVIJAY\r'),
(672, 47, 'PLATO\r'),
(673, 47, 'PUEBLOVIEJO\r'),
(674, 47, 'REMOLINO\r'),
(675, 47, 'SABANAS DE SAN ANGEL\r'),
(676, 47, 'SALAMINA\r'),
(677, 47, 'SAN SEBASTIAN DE BUENAVISTA\r'),
(678, 47, 'SAN ZENON\r'),
(679, 47, 'SANTA ANA\r'),
(680, 47, 'SANTA BARBARA DE PINTO\r'),
(681, 47, 'SITIONUEVO\r'),
(682, 47, 'TENERIFE\r'),
(683, 47, 'ZAPAYAN\r'),
(684, 47, 'ZONA BANANERA\r'),
(685, 50, 'VILLAVICENCIO\r'),
(686, 50, 'ACACIAS\r'),
(687, 50, 'BARRANCA DE UPIA\r'),
(688, 50, 'CABUYARO\r'),
(689, 50, 'CASTILLA LA NUEVA\r'),
(690, 50, 'CUBARRAL\r'),
(691, 50, 'CUMARAL\r'),
(692, 50, 'EL CALVARIO\r'),
(693, 50, 'EL CASTILLO\r'),
(694, 50, 'EL DORADO\r'),
(695, 50, 'FUENTE DE ORO\r'),
(696, 50, 'GRANADA\r'),
(697, 50, 'GUAMAL\r'),
(698, 50, 'MAPIRIPAN\r'),
(699, 50, 'MESETAS\r'),
(700, 50, 'LA MACARENA\r'),
(701, 50, 'URIBE\r'),
(702, 50, 'LEJANIAS\r'),
(703, 50, 'PUERTO CONCORDIA\r'),
(704, 50, 'PUERTO GAITAN\r'),
(705, 50, 'PUERTO LOPEZ\r'),
(706, 50, 'PUERTO LLERAS\r'),
(707, 50, 'PUERTO RICO\r'),
(708, 50, 'RESTREPO\r'),
(709, 50, 'SAN CARLOS DE GUAROA\r'),
(710, 50, 'SAN JUAN DE ARAMA\r'),
(711, 50, 'SAN JUANITO\r'),
(712, 50, 'SAN MARTIN\r'),
(713, 50, 'VISTAHERMOSA\r'),
(714, 52, 'PASTO\r'),
(715, 52, 'ALBAN\r'),
(716, 52, 'ALDANA\r'),
(717, 52, 'ANCUYA\r'),
(718, 52, 'ARBOLEDA\r'),
(719, 52, 'BARBACOAS\r'),
(720, 52, 'BELEN\r'),
(721, 52, 'BUESACO\r'),
(722, 52, 'COLON\r'),
(723, 52, 'CONSACA\r'),
(724, 52, 'CONTADERO\r'),
(725, 52, 'CORDOBA\r'),
(726, 52, 'CUASPUD\r'),
(727, 52, 'CUMBAL\r'),
(728, 52, 'CUMBITARA\r'),
(729, 52, 'CHACHAGsI\r'),
(730, 52, 'EL CHARCO\r'),
(731, 52, 'EL PEÑOL\r'),
(732, 52, 'EL ROSARIO\r'),
(733, 52, 'EL TABLON DE GOMEZ\r'),
(734, 52, 'EL TAMBO\r'),
(735, 52, 'FUNES\r'),
(736, 52, 'GUACHUCAL\r'),
(737, 52, 'GUAITARILLA\r'),
(738, 52, 'GUALMATAN\r'),
(739, 52, 'ILES\r'),
(740, 52, 'IMUES\r'),
(741, 52, 'IPIALES\r'),
(742, 52, 'LA CRUZ\r'),
(743, 52, 'LA FLORIDA\r'),
(744, 52, 'LA LLANADA\r'),
(745, 52, 'LA TOLA\r'),
(746, 52, 'LA UNION\r'),
(747, 52, 'LEIVA\r'),
(748, 52, 'LINARES\r'),
(749, 52, 'LOS ANDES\r'),
(750, 52, 'MAGsI\r'),
(751, 52, 'MALLAMA\r'),
(752, 52, 'MOSQUERA\r'),
(753, 52, 'NARIÑO\r'),
(754, 52, 'OLAYA HERRERA\r'),
(755, 52, 'OSPINA\r'),
(756, 52, 'FRANCISCO PIZARRO\r'),
(757, 52, 'POLICARPA\r'),
(758, 52, 'POTOSI\r'),
(759, 52, 'PROVIDENCIA\r'),
(760, 52, 'PUERRES\r'),
(761, 52, 'PUPIALES\r'),
(762, 52, 'RICAURTE\r'),
(763, 52, 'ROBERTO PAYAN\r'),
(764, 52, 'SAMANIEGO\r'),
(765, 52, 'SANDONA\r'),
(766, 52, 'SAN BERNARDO\r'),
(767, 52, 'SAN LORENZO\r'),
(768, 52, 'SAN PABLO\r'),
(769, 52, 'SAN PEDRO DE CARTAGO\r'),
(770, 52, 'SANTA BARBARA\r'),
(771, 52, 'SANTACRUZ\r'),
(772, 52, 'SAPUYES\r'),
(773, 52, 'TAMINANGO\r'),
(774, 52, 'TANGUA\r'),
(775, 52, 'SAN ANDRES DE TUMACO\r'),
(776, 52, 'TUQUERRES\r'),
(777, 52, 'YACUANQUER\r'),
(778, 54, 'CUCUTA\r'),
(779, 54, 'ABREGO\r'),
(780, 54, 'ARBOLEDAS\r'),
(781, 54, 'BOCHALEMA\r'),
(782, 54, 'BUCARASICA\r'),
(783, 54, 'CACOTA\r'),
(784, 54, 'CACHIRA\r'),
(785, 54, 'CHINACOTA\r'),
(786, 54, 'CHITAGA\r'),
(787, 54, 'CONVENCION\r'),
(788, 54, 'CUCUTILLA\r'),
(789, 54, 'DURANIA\r'),
(790, 54, 'EL CARMEN\r'),
(791, 54, 'EL TARRA\r'),
(792, 54, 'EL ZULIA\r'),
(793, 54, 'GRAMALOTE\r'),
(794, 54, 'HACARI\r'),
(795, 54, 'HERRAN\r'),
(796, 54, 'LABATECA\r'),
(797, 54, 'LA ESPERANZA\r'),
(798, 54, 'LA PLAYA\r'),
(799, 54, 'LOS PATIOS\r'),
(800, 54, 'LOURDES\r'),
(801, 54, 'MUTISCUA\r'),
(802, 54, 'OCAÑA\r'),
(803, 54, 'PAMPLONA\r'),
(804, 54, 'PAMPLONITA\r'),
(805, 54, 'PUERTO SANTANDER\r'),
(806, 54, 'RAGONVALIA\r'),
(807, 54, 'SALAZAR\r'),
(808, 54, 'SAN CALIXTO\r'),
(809, 54, 'SAN CAYETANO\r'),
(810, 54, 'SANTIAGO\r'),
(811, 54, 'SARDINATA\r'),
(812, 54, 'SILOS\r'),
(813, 54, 'TEORAMA\r'),
(814, 54, 'TIBU\r'),
(815, 54, 'TOLEDO\r'),
(816, 54, 'VILLA CARO\r'),
(817, 54, 'VILLA DEL ROSARIO\r'),
(818, 63, 'ARMENIA\r'),
(819, 63, 'BUENAVISTA\r'),
(820, 63, 'CALARCA\r'),
(821, 63, 'CIRCASIA\r'),
(822, 63, 'CORDOBA\r'),
(823, 63, 'FILANDIA\r'),
(824, 63, 'GENOVA\r'),
(825, 63, 'LA TEBAIDA\r'),
(826, 63, 'MONTENEGRO\r'),
(827, 63, 'PIJAO\r'),
(828, 63, 'QUIMBAYA\r'),
(829, 63, 'SALENTO\r'),
(830, 66, 'PEREIRA\r'),
(831, 66, 'APIA\r'),
(832, 66, 'BALBOA\r'),
(833, 66, 'BELEN DE UMBRIA\r'),
(834, 66, 'DOSQUEBRADAS\r'),
(835, 66, 'GUATICA\r'),
(836, 66, 'LA CELIA\r'),
(837, 66, 'LA VIRGINIA\r'),
(838, 66, 'MARSELLA\r'),
(839, 66, 'MISTRATO\r'),
(840, 66, 'PUEBLO RICO\r'),
(841, 66, 'QUINCHIA\r'),
(842, 66, 'SANTA ROSA DE CABAL\r'),
(843, 66, 'SANTUARIO\r'),
(844, 68, 'BUCARAMANGA\r'),
(845, 68, 'AGUADA\r'),
(846, 68, 'ALBANIA\r'),
(847, 68, 'ARATOCA\r'),
(848, 68, 'BARBOSA\r'),
(849, 68, 'BARICHARA\r'),
(850, 68, 'BARRANCABERMEJA\r'),
(851, 68, 'BETULIA\r'),
(852, 68, 'BOLIVAR\r'),
(853, 68, 'CABRERA\r'),
(854, 68, 'CALIFORNIA\r'),
(855, 68, 'CAPITANEJO\r'),
(856, 68, 'CARCASI\r'),
(857, 68, 'CEPITA\r'),
(858, 68, 'CERRITO\r'),
(859, 68, 'CHARALA\r'),
(860, 68, 'CHARTA\r'),
(861, 68, 'CHIMA\r'),
(862, 68, 'CHIPATA\r'),
(863, 68, 'CIMITARRA\r'),
(864, 68, 'CONCEPCION\r'),
(865, 68, 'CONFINES\r'),
(866, 68, 'CONTRATACION\r'),
(867, 68, 'COROMORO\r'),
(868, 68, 'CURITI\r'),
(869, 68, 'EL CARMEN DE CHUCURI\r'),
(870, 68, 'EL GUACAMAYO\r'),
(871, 68, 'EL PEÑON\r'),
(872, 68, 'EL PLAYON\r'),
(873, 68, 'ENCINO\r'),
(874, 68, 'ENCISO\r'),
(875, 68, 'FLORIAN\r'),
(876, 68, 'FLORIDABLANCA\r'),
(877, 68, 'GALAN\r'),
(878, 68, 'GAMBITA\r'),
(879, 68, 'GIRON\r'),
(880, 68, 'GUACA\r'),
(881, 68, 'GUADALUPE\r'),
(882, 68, 'GUAPOTA\r'),
(883, 68, 'GUAVATA\r'),
(884, 68, 'GsEPSA\r'),
(885, 68, 'HATO\r'),
(886, 68, 'JESUS MARIA\r'),
(887, 68, 'JORDAN\r'),
(888, 68, 'LA BELLEZA\r'),
(889, 68, 'LANDAZURI\r'),
(890, 68, 'LA PAZ\r'),
(891, 68, 'LEBRIJA\r'),
(892, 68, 'LOS SANTOS\r'),
(893, 68, 'MACARAVITA\r'),
(894, 68, 'MALAGA\r'),
(895, 68, 'MATANZA\r'),
(896, 68, 'MOGOTES\r'),
(897, 68, 'MOLAGAVITA\r'),
(898, 68, 'OCAMONTE\r'),
(899, 68, 'OIBA\r'),
(900, 68, 'ONZAGA\r'),
(901, 68, 'PALMAR\r'),
(902, 68, 'PALMAS DEL SOCORRO\r'),
(903, 68, 'PARAMO\r'),
(904, 68, 'PIEDECUESTA\r'),
(905, 68, 'PINCHOTE\r'),
(906, 68, 'PUENTE NACIONAL\r'),
(907, 68, 'PUERTO PARRA\r'),
(908, 68, 'PUERTO WILCHES\r'),
(909, 68, 'RIONEGRO\r'),
(910, 68, 'SABANA DE TORRES\r'),
(911, 68, 'SAN ANDRES\r'),
(912, 68, 'SAN BENITO\r'),
(913, 68, 'SAN GIL\r'),
(914, 68, 'SAN JOAQUIN\r'),
(915, 68, 'SAN JOSE DE MIRANDA\r'),
(916, 68, 'SAN MIGUEL\r'),
(917, 68, 'SAN VICENTE DE CHUCURI\r'),
(918, 68, 'SANTA BARBARA\r'),
(919, 68, 'SANTA HELENA DEL OPON\r'),
(920, 68, 'SIMACOTA\r'),
(921, 68, 'SOCORRO\r'),
(922, 68, 'SUAITA\r'),
(923, 68, 'SUCRE\r'),
(924, 68, 'SURATA\r'),
(925, 68, 'TONA\r'),
(926, 68, 'VALLE DE SAN JOSE\r'),
(927, 68, 'VELEZ\r'),
(928, 68, 'VETAS\r'),
(929, 68, 'VILLANUEVA\r'),
(930, 68, 'ZAPATOCA\r'),
(931, 70, 'SINCELEJO\r'),
(932, 70, 'BUENAVISTA\r'),
(933, 70, 'CAIMITO\r'),
(934, 70, 'COLOSO\r'),
(935, 70, 'COROZAL\r'),
(936, 70, 'COVEÑAS\r'),
(937, 70, 'CHALAN\r'),
(938, 70, 'EL ROBLE\r'),
(939, 70, 'GALERAS\r'),
(940, 70, 'GUARANDA\r'),
(941, 70, 'LA UNION\r'),
(942, 70, 'LOS PALMITOS\r'),
(943, 70, 'MAJAGUAL\r'),
(944, 70, 'MORROA\r'),
(945, 70, 'OVEJAS\r'),
(946, 70, 'PALMITO\r'),
(947, 70, 'SAMPUES\r'),
(948, 70, 'SAN BENITO ABAD\r'),
(949, 70, 'SAN JUAN DE BETULIA\r'),
(950, 70, 'SAN MARCOS\r'),
(951, 70, 'SAN ONOFRE\r'),
(952, 70, 'SAN PEDRO\r'),
(953, 70, 'SAN LUIS DE SINCE\r'),
(954, 70, 'SUCRE\r'),
(955, 70, 'SANTIAGO DE TOLU\r'),
(956, 70, 'TOLU VIEJO\r'),
(957, 73, 'IBAGUE\r'),
(958, 73, 'ALPUJARRA\r'),
(959, 73, 'ALVARADO\r'),
(960, 73, 'AMBALEMA\r'),
(961, 73, 'ANZOATEGUI\r'),
(962, 73, 'ARMERO\r'),
(963, 73, 'ATACO\r'),
(964, 73, 'CAJAMARCA\r'),
(965, 73, 'CARMEN DE APICALA\r'),
(966, 73, 'CASABIANCA\r'),
(967, 73, 'CHAPARRAL\r'),
(968, 73, 'COELLO\r'),
(969, 73, 'COYAIMA\r'),
(970, 73, 'CUNDAY\r'),
(971, 73, 'DOLORES\r'),
(972, 73, 'ESPINAL\r'),
(973, 73, 'FALAN\r'),
(974, 73, 'FLANDES\r'),
(975, 73, 'FRESNO\r'),
(976, 73, 'GUAMO\r'),
(977, 73, 'HERVEO\r'),
(978, 73, 'HONDA\r'),
(979, 73, 'ICONONZO\r'),
(980, 73, 'LERIDA\r'),
(981, 73, 'LIBANO\r'),
(982, 73, 'MARIQUITA\r'),
(983, 73, 'MELGAR\r'),
(984, 73, 'MURILLO\r'),
(985, 73, 'NATAGAIMA\r'),
(986, 73, 'ORTEGA\r'),
(987, 73, 'PALOCABILDO\r'),
(988, 73, 'PIEDRAS\r'),
(989, 73, 'PLANADAS\r'),
(990, 73, 'PRADO\r'),
(991, 73, 'PURIFICACION\r'),
(992, 73, 'RIOBLANCO\r'),
(993, 73, 'RONCESVALLES\r'),
(994, 73, 'ROVIRA\r'),
(995, 73, 'SALDAÑA\r'),
(996, 73, 'SAN ANTONIO\r'),
(997, 73, 'SAN LUIS\r'),
(998, 73, 'SANTA ISABEL\r'),
(999, 73, 'SUAREZ\r'),
(1000, 73, 'VALLE DE SAN JUAN\r'),
(1001, 73, 'VENADILLO\r'),
(1002, 73, 'VILLAHERMOSA\r'),
(1003, 73, 'VILLARRICA\r'),
(1004, 76, 'CALI\r'),
(1005, 76, 'ALCALA\r'),
(1006, 76, 'ANDALUCIA\r'),
(1007, 76, 'ANSERMANUEVO\r'),
(1008, 76, 'ARGELIA\r'),
(1009, 76, 'BOLIVAR\r'),
(1010, 76, 'BUENAVENTURA\r'),
(1011, 76, 'GUADALAJARA DE BUGA\r'),
(1012, 76, 'BUGALAGRANDE\r'),
(1013, 76, 'CAICEDONIA\r'),
(1014, 76, 'CALIMA\r'),
(1015, 76, 'CANDELARIA\r'),
(1016, 76, 'CARTAGO\r'),
(1017, 76, 'DAGUA\r'),
(1018, 76, 'EL AGUILA\r'),
(1019, 76, 'EL CAIRO\r'),
(1020, 76, 'EL CERRITO\r'),
(1021, 76, 'EL DOVIO\r'),
(1022, 76, 'FLORIDA\r'),
(1023, 76, 'GINEBRA\r'),
(1024, 76, 'GUACARI\r'),
(1025, 76, 'JAMUNDI\r'),
(1026, 76, 'LA CUMBRE\r'),
(1027, 76, 'LA UNION\r'),
(1028, 76, 'LA VICTORIA\r'),
(1029, 76, 'OBANDO\r'),
(1030, 76, 'PALMIRA\r'),
(1031, 76, 'PRADERA\r'),
(1032, 76, 'RESTREPO\r'),
(1033, 76, 'RIOFRIO\r'),
(1034, 76, 'ROLDANILLO\r'),
(1035, 76, 'SAN PEDRO\r'),
(1036, 76, 'SEVILLA\r'),
(1037, 76, 'TORO\r'),
(1038, 76, 'TRUJILLO\r'),
(1039, 76, 'TULUA\r'),
(1040, 76, 'ULLOA\r'),
(1041, 76, 'VERSALLES\r'),
(1042, 76, 'VIJES\r'),
(1043, 76, 'YOTOCO\r'),
(1044, 76, 'YUMBO\r'),
(1045, 76, 'ZARZAL\r'),
(1046, 81, 'ARAUCA\r'),
(1047, 81, 'ARAUQUITA\r'),
(1048, 81, 'CRAVO NORTE\r'),
(1049, 81, 'FORTUL\r'),
(1050, 81, 'PUERTO RONDON\r'),
(1051, 81, 'SARAVENA\r'),
(1052, 81, 'TAME\r'),
(1053, 85, 'YOPAL\r'),
(1054, 85, 'AGUAZUL\r'),
(1055, 85, 'CHAMEZA\r'),
(1056, 85, 'HATO COROZAL\r'),
(1057, 85, 'LA SALINA\r'),
(1058, 85, 'MANI\r'),
(1059, 85, 'MONTERREY\r'),
(1060, 85, 'NUNCHIA\r'),
(1061, 85, 'OROCUE\r'),
(1062, 85, 'PAZ DE ARIPORO\r'),
(1063, 85, 'PORE\r'),
(1064, 85, 'RECETOR\r'),
(1065, 85, 'SABANALARGA\r'),
(1066, 85, 'SACAMA\r'),
(1067, 85, 'SAN LUIS DE PALENQUE\r'),
(1068, 85, 'TAMARA\r'),
(1069, 85, 'TAURAMENA\r'),
(1070, 85, 'TRINIDAD\r'),
(1071, 85, 'VILLANUEVA\r'),
(1072, 86, 'MOCOA\r'),
(1073, 86, 'COLON\r'),
(1074, 86, 'ORITO\r'),
(1075, 86, 'PUERTO ASIS\r'),
(1076, 86, 'PUERTO CAICEDO\r'),
(1077, 86, 'PUERTO GUZMAN\r'),
(1078, 86, 'LEGUIZAMO\r'),
(1079, 86, 'SIBUNDOY\r'),
(1080, 86, 'SAN FRANCISCO\r'),
(1081, 86, 'SAN MIGUEL\r'),
(1082, 86, 'SANTIAGO\r'),
(1083, 86, 'VALLE DEL GUAMUEZ\r'),
(1084, 86, 'VILLAGARZON\r'),
(1085, 88, 'SAN ANDRES\r'),
(1086, 88, 'PROVIDENCIA\r'),
(1087, 91, 'LETICIA\r'),
(1088, 91, 'EL ENCANTO\r'),
(1089, 91, 'LA CHORRERA\r'),
(1090, 91, 'LA PEDRERA\r'),
(1091, 91, 'LA VICTORIA\r'),
(1092, 91, 'MIRITI - PARANA\r'),
(1093, 91, 'PUERTO ALEGRIA\r'),
(1094, 91, 'PUERTO ARICA\r'),
(1095, 91, 'PUERTO NARIÑO\r'),
(1096, 91, 'PUERTO SANTANDER\r'),
(1097, 91, 'TARAPACA\r'),
(1098, 94, 'INIRIDA\r'),
(1099, 94, 'BARRANCO MINAS\r'),
(1100, 94, 'MAPIRIPANA\r'),
(1101, 94, 'SAN FELIPE\r'),
(1102, 94, 'PUERTO COLOMBIA\r'),
(1103, 94, 'LA GUADALUPE\r'),
(1104, 94, 'CACAHUAL\r'),
(1105, 94, 'PANA PANA\r'),
(1106, 94, 'MORICHAL\r'),
(1107, 95, 'SAN JOSE DEL GUAVIARE\r'),
(1108, 95, 'CALAMAR\r'),
(1109, 95, 'EL RETORNO\r'),
(1110, 95, 'MIRAFLORES\r'),
(1111, 97, 'MITU\r'),
(1112, 97, 'CARURU\r'),
(1113, 97, 'PACOA\r'),
(1114, 97, 'TARAIRA\r'),
(1115, 97, 'PAPUNAUA\r'),
(1116, 97, 'YAVARATE\r'),
(1117, 99, 'PUERTO CARREÑO\r'),
(1118, 99, 'LA PRIMAVERA\r'),
(1119, 99, 'SANTA ROSALIA\r'),
(1120, 99, 'CUMARIBO\r');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `id_pais` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `nombre`, `id_pais`) VALUES
(5, 'ANTIOQUIA\r', NULL),
(8, 'ATLANTICO\r', NULL),
(11, 'BOGOTA\r', NULL),
(13, 'BOLIVAR\r', NULL),
(15, 'BOYACA\r', NULL),
(17, 'CALDAS\r', NULL),
(18, 'CAQUETA\r', NULL),
(19, 'CAUCA\r', NULL),
(20, 'CESAR\r', NULL),
(23, 'CORDOBA\r', NULL),
(25, 'CUNDINAMARCA\r', NULL),
(27, 'CHOCO\r', NULL),
(41, 'HUILA\r', NULL),
(44, 'LA GUAJIRA\r', NULL),
(47, 'MAGDALENA\r', NULL),
(50, 'META\r', NULL),
(52, 'NARIÑO\r', NULL),
(54, 'N. DE SANTANDER\r', NULL),
(63, 'QUINDIO\r', NULL),
(66, 'RISARALDA\r', NULL),
(68, 'SANTANDER\r', NULL),
(70, 'SUCRE\r', NULL),
(73, 'TOLIMA\r', NULL),
(76, 'VALLE DEL CAUCA\r', NULL),
(81, 'ARAUCA\r', NULL),
(85, 'CASANARE\r', NULL),
(86, 'PUTUMAYO\r', NULL),
(88, 'SAN ANDRES\r', NULL),
(91, 'AMAZONAS\r', NULL),
(94, 'GUAINIA\r', NULL),
(95, 'GUAVIARE\r', NULL),
(97, 'VAUPES\r', NULL),
(99, 'VICHADA\r', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_ord`
--

CREATE TABLE `estados_ord` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL COMMENT 'Descripcion del estado.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Estados de una orden';

--
-- Volcado de datos para la tabla `estados_ord`
--

INSERT INTO `estados_ord` (`id`, `descripcion`) VALUES
(0, 'Cancelado'),
(1, 'Registrado'),
(2, 'Asignado'),
(3, 'Validado'),
(4, 'Completado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_usr`
--

CREATE TABLE `estados_usr` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Estado de un usuario';

--
-- Volcado de datos para la tabla `estados_usr`
--

INSERT INTO `estados_usr` (`id`, `descripcion`) VALUES
(0, 'Pendiente'),
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id` int(11) NOT NULL,
  `fec_fact` datetime DEFAULT NULL COMMENT 'Fecha registro factura',
  `id_orden` int(11) DEFAULT NULL COMMENT 'Id de la orden facturada',
  `usr_gen` int(11) DEFAULT NULL COMMENT 'Usuario que genera la factura',
  `consecutivo` varchar(17) NOT NULL DEFAULT 'A0001'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Facturas generadas por servicio prestado y cobrado';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_trabajo`
--

CREATE TABLE `orden_trabajo` (
  `id` int(11) NOT NULL,
  `id_cli` int(11) DEFAULT NULL COMMENT 'Id de usuario cliente',
  `id_res` int(11) DEFAULT NULL COMMENT 'Id usuario responsable',
  `usr_ver` int(11) DEFAULT NULL COMMENT 'Usuario que verifica la orden.',
  `id_est` int(11) DEFAULT NULL COMMENT 'Id estado de orden',
  `id_cat` int(11) DEFAULT NULL COMMENT 'Id catalogo',
  `dir_ser` varchar(60) DEFAULT NULL COMMENT 'Direccion del sevicio',
  `fec_reg` datetime DEFAULT NULL COMMENT 'Fecha registro orden',
  `fec_ser` datetime DEFAULT NULL COMMENT 'Fecha hora de servicio',
  `fec_ver` datetime DEFAULT NULL COMMENT 'Fecha hora de verificada.',
  `ciudad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Ordenes de trabajo ';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de paises';

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `nombre`) VALUES
(1, 'Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL COMMENT 'Descripcion del perfil'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Perfiles de seguridad';

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id`, `descripcion`) VALUES
(0, 'Clientes'),
(1, 'Asociado'),
(2, 'Auditor'),
(3, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `id` int(11) NOT NULL,
  `id_per` int(11) DEFAULT NULL COMMENT 'Id de perfil',
  `tabla` varchar(45) DEFAULT NULL COMMENT 'Nombre de tabla',
  `tipo_per` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de permisos';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL COMMENT 'Descripcion de servicio es empaquetado.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Servicios empaquetados en catalogo';

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id`, `descripcion`) VALUES
(0, '4 Horas'),
(1, '5 Horas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_permiso`
--

CREATE TABLE `tipo_permiso` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de tipos de permiso';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `id_per` int(11) DEFAULT '0' COMMENT 'Id de perfil que tiene usuario',
  `tip_doc` int(11) DEFAULT NULL COMMENT 'Tipo documento',
  `num_doc` varchar(20) DEFAULT NULL COMMENT 'Numero documento',
  `nom_usr` varchar(60) DEFAULT NULL COMMENT 'Nombre de usuario',
  `ape_usr` varchar(60) DEFAULT NULL COMMENT 'Aprllido de usuario',
  `tel_usr` varchar(12) DEFAULT NULL COMMENT 'Telefono de usuario',
  `cel_usr` varchar(12) DEFAULT NULL COMMENT 'Celular de usuario',
  `pais` int(11) DEFAULT '1',
  `depto` int(11) DEFAULT '76',
  `ciu_usr` int(11) DEFAULT '1004',
  `dir_usr` varchar(45) DEFAULT NULL COMMENT 'Direccion de usuario',
  `id_est` int(11) DEFAULT '0' COMMENT 'Estado de usuario',
  `email` varchar(45) DEFAULT NULL,
  `passw` varchar(45) DEFAULT NULL,
  `keyreg` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Usuarios del sistema';

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `id_per`, `tip_doc`, `num_doc`, `nom_usr`, `ape_usr`, `tel_usr`, `cel_usr`, `pais`, `depto`, `ciu_usr`, `dir_usr`, `id_est`, `email`, `passw`, `keyreg`) VALUES
(0, 3, 0, '1143845021', 'Jhonathan Steven', 'Calderon Sanchez', '0', '3022095243', 1, 76, 1004, 'Calle 37 # 11 c 05', 1, 'jscalderon120@misena.edu.co', 'c0784027b45aa11e848a38e890f8416c', '0'),
(1, 0, NULL, NULL, 'Diego', 'Suarez', NULL, NULL, 1, 76, 1004, NULL, 1, 'jhonatan19921209@gmail.com', 'c0784027b45aa11e848a38e890f8416c', '0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `catalogo_detalle`
--
ALTER TABLE `catalogo_detalle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicio_idx` (`id_ser`),
  ADD KEY `fk_catalogo_idx` (`id_cat`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_departamento_idx` (`id_dept`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pais_idx` (`id_pais`);

--
-- Indices de la tabla `estados_ord`
--
ALTER TABLE `estados_ord`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estados_usr`
--
ALTER TABLE `estados_usr`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_orden_UNIQUE` (`id_orden`),
  ADD KEY `fk_usr_genera_idx` (`usr_gen`);

--
-- Indices de la tabla `orden_trabajo`
--
ALTER TABLE `orden_trabajo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cliente_idx` (`id_cli`),
  ADD KEY `fk_responsable_idx` (`id_res`),
  ADD KEY `fk_estado_orden_idx` (`id_est`),
  ADD KEY `fk_paquete_catlogo_idx` (`id_cat`),
  ADD KEY `fk_auditor_idx` (`usr_ver`) USING BTREE,
  ADD KEY `fk_ciudad_servicio_idx` (`ciudad`) USING BTREE;

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_permiso_perfil_idx` (`id_per`),
  ADD KEY `fk_tipo_permiso_idx` (`tipo_per`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_permiso`
--
ALTER TABLE `tipo_permiso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_perfil_usuario_idx` (`id_per`),
  ADD KEY `fk_estado_usuario_idx` (`id_est`),
  ADD KEY `fk_ciudad_usr_idx` (`ciu_usr`),
  ADD KEY `fk_pais_usr_idx` (`pais`),
  ADD KEY `fk_depto_usr_idx` (`depto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `orden_trabajo`
--
ALTER TABLE `orden_trabajo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `catalogo_detalle`
--
ALTER TABLE `catalogo_detalle`
  ADD CONSTRAINT `fk_catalogo` FOREIGN KEY (`id_cat`) REFERENCES `catalogo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_servicio` FOREIGN KEY (`id_ser`) REFERENCES `servicio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `fk_departamento` FOREIGN KEY (`id_dept`) REFERENCES `departamento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `fk_pais` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `fk_orden_factura` FOREIGN KEY (`id_orden`) REFERENCES `orden_trabajo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usr_genera` FOREIGN KEY (`usr_gen`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `orden_trabajo`
--
ALTER TABLE `orden_trabajo`
  ADD CONSTRAINT `fk_auditor` FOREIGN KEY (`usr_ver`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ciudad_servicio` FOREIGN KEY (`ciudad`) REFERENCES `ciudad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cliente` FOREIGN KEY (`id_cli`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_estado_orden` FOREIGN KEY (`id_est`) REFERENCES `estados_ord` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_paquete_catlogo` FOREIGN KEY (`id_cat`) REFERENCES `catalogo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_responsable` FOREIGN KEY (`id_res`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD CONSTRAINT `fk_permiso_perfil` FOREIGN KEY (`id_per`) REFERENCES `perfil` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tipo_permiso` FOREIGN KEY (`tipo_per`) REFERENCES `tipo_permiso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_ciudad_usr` FOREIGN KEY (`ciu_usr`) REFERENCES `ciudad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_depto_usr` FOREIGN KEY (`depto`) REFERENCES `departamento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_estado_usuario` FOREIGN KEY (`id_est`) REFERENCES `estados_usr` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pais_usr` FOREIGN KEY (`pais`) REFERENCES `pais` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perfil_usuario` FOREIGN KEY (`id_per`) REFERENCES `perfil` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
