-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 13-04-2012 a las 03:09:39
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cenotes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE IF NOT EXISTS `actividades` (
  `id_actividad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_actividad` varchar(50) CHARACTER SET utf8 NOT NULL,
  `descripcion` mediumtext,
  PRIMARY KEY (`id_actividad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id_actividad`, `nombre_actividad`, `descripcion`) VALUES
(1, 'Buceo Cueva', 'Bucear dentro de una cueva'),
(2, 'Snorkelear', 'Nadar con un visor especial para observar el paisaje submarino'),
(3, 'Campismo', 'Acampar cerca del cenote'),
(4, 'Caminata', 'Caminata a los alrededores del cenote'),
(5, 'Rappel', 'En una de las paredes externas del cenote'),
(6, 'EcoArqueologia', 'Arcqueologia ecologica'),
(7, 'Cabalgata a caballo', 'Cabalgar a Caballo'),
(8, 'Aviturismo', 'Aventuras'),
(9, 'Bañarse', NULL),
(10, 'Visitar Murcielagos', NULL),
(11, 'Nadar', NULL),
(12, 'Bicitour', NULL),
(13, 'Tirolesa', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cenotes`
--

CREATE TABLE IF NOT EXISTS `cenotes` (
  `id_cenote` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cenote` varchar(100) CHARACTER SET utf8 NOT NULL,
  `localizacion_geo` mediumtext NOT NULL,
  `descripcion_lugar` mediumtext NOT NULL,
  `telefono` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `costo_entrada` decimal(19,4) NOT NULL,
  `distancia` int(11) NOT NULL,
  `id_localidad` int(11) NOT NULL,
  PRIMARY KEY (`id_cenote`),
  KEY `id_localidad` (`id_localidad`),
  KEY `LOCALIDADESCENOTES` (`id_localidad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Volcado de datos para la tabla `cenotes`
--

INSERT INTO `cenotes` (`id_cenote`, `nombre_cenote`, `localizacion_geo`, `descripcion_lugar`, `telefono`, `costo_entrada`, `distancia`, `id_localidad`) VALUES
(2, 'Chac Mool', 'Cerca del Municipio de Solidaridad', 'El cenote es muy luminoso y está dotado de espacios grandes, pocas estalactitas y muchos contraluces. Muy decorado, el Chac Mool nos permite subir, a través de un intrincado recorrido, a una cámara de aire respirable para ver las raices que caen del techo. Impresionante.', '(984) 807 75 05', '140.0000', 98, 1),
(3, 'Side Entrance', 'Cerca del Municipio de Solidaridad', 'El cenote es muy espelendoroso y grande e invita uno a reflexionar acerca de la vida', '(984) 807 75 05', '140.0000', 98, 1),
(4, 'Pakal', 'Cerca de Puerto Aventuras casi llegando al centro', 'Tiene aeras verdes un pequeño bosque cercano y pequeños riscos para tirarse clavados', '(984) 807 75 05', '180.0000', 101, 1),
(5, 'Mojarra', 'A 3 km de Puerto Morelos carretera vieja', 'Es un cenote en exploracion', '(984) 807 75 05', '160.0000', 99, 1),
(6, 'Miracle', 'Cerca de cenote Mojarra', 'Cenote parcialmente explorado que invita a la investigacion de sus hermosas cuevas', '(984) 807 75 05', '150.0000', 99, 1),
(7, 'Ponderosa', 'Ir exactamente tres kilómetros al sur de Puerto Aventuras en la carretera 307, o 13,0 kilometros al norte de la CD de Akumal entrada. Tomar camino de tierra hacia el oeste a lo largo de la colina más allá de la líneas de energía de 1 kilómetro. Entra en la puerta a través de locales de buceo / snorkel empresas. Conduzca un kilómetro al área de estacionamiento.', 'Zonas tanto de agua dulce como salada, las zonas de agua salada son ejemplos de reosion, mientras que las zonas de agua dulce muestran formaciones de carbonato de calcio', ' (984) 873-0038', '60.0000', 99, 2),
(8, 'Rapair Shop', 'Ir exactamente tres kilómetros al sur de Puerto Aventuras en la carretera 307, o 13,0 kilometros al norte de la CD de Akumal entrada. Tomar camino de tierra hacia el oeste a lo largo de la colina más allá de la líneas de energía de 1 kilómetro. Entra en la puerta a través de locales de buceo / snorkel empresas. Conduzca un kilómetro al área de estacionamiento.', 'Zonas tanto de agua dulce como salada, las zonas de agua salada son ejemplos de reosion, mientras que las zonas de agua dulce muestran formaciones de carbonato de calcio', ' (984) 873-0038', '60.0000', 99, 2),
(9, 'Rainbow', 'Ir exactamente tres kilómetros al sur de Puerto Aventuras en la carretera 307, o 13,0 kilometros al norte de la CD de Akumal entrada. Tomar camino de tierra hacia el oeste a lo largo de la colina más allá de la líneas de energía de 1 kilómetro. Entra en la puerta a través de locales de buceo / snorkel empresas. Conduzca un kilómetro al área de estacionamiento.', 'Zonas tanto de agua dulce como salada, las zonas de agua salada son ejemplos de reosion, mientras que las zonas de agua dulce muestran formaciones de carbonato de calcio', ' (984) 873-0038', '60.0000', 99, 2),
(10, 'Chickin Ha', 'Ir exactamente tres kilómetros al sur de Puerto Aventuras en la carretera 307, o 13,0 kilometros al norte de la CD de Akumal entrada. Tomar camino de tierra hacia el oeste a lo largo de la colina más allá de la líneas de energía de 1 kilómetro. Entra en la puerta a través de locales de buceo / snorkel empresas. Conduzca un kilómetro al área de estacionamiento.', 'Zonas tanto de agua dulce como salada, las zonas de agua salada son ejemplos de reosion, mientras que las zonas de agua dulce muestran formaciones de carbonato de calcio', ' (984) 873-0038', '60.0000', 99, 2),
(11, 'Sask Leem Ha', 'Ir exactamente tres kilómetros al sur de Puerto Aventuras en la carretera 307, o 13,0 kilometros al norte de la CD de Akumal entrada. Tomar camino de tierra hacia el oeste a lo largo de la colina más allá de la líneas de energía de 1 kilómetro. Entra en la puerta a través de locales de buceo / snorkel empresas. Conduzca un kilómetro al área de estacionamiento.', 'Zonas tanto de agua dulce como salada, las zonas de agua salada son ejemplos de reosion, mientras que las zonas de agua dulce muestran formaciones de carbonato de calcio', ' (984) 873-0038', '60.0000', 99, 2),
(12, 'Corral', 'Ir exactamente tres kilómetros al sur de Puerto Aventuras en la carretera 307, o 13,0 kilometros al norte de la CD de Akumal entrada. Tomar camino de tierra hacia el oeste a lo largo de la colina más allá de la líneas de energía de 1 kilómetro. Entra en la puerta a través de locales de buceo / snorkel empresas. Conduzca un kilómetro al área de estacionamiento.', 'Zonas tanto de agua dulce como salada, las zonas de agua salada son ejemplos de reosion, mientras que las zonas de agua dulce muestran formaciones de carbonato de calcio', ' (984) 873-0038', '60.0000', 99, 2),
(13, 'Azul', 'Ir exactamente tres kilómetros al sur de Puerto Aventuras en la carretera 307, o 13,0 kilometros al norte de la CD de Akumal entrada. Tomar camino de tierra hacia el oeste a lo largo de la colina más allá de la líneas de energía de 1 kilómetro. Entra en la puerta a través de locales de buceo / snorkel empresas. Conduzca un kilómetro al área de estacionamiento.', 'Zonas tanto de agua dulce como salada, las zonas de agua salada son ejemplos de reosion, mientras que las zonas de agua dulce muestran formaciones de carbonato de calcio', ' (984) 873-0038', '60.0000', 99, 2),
(14, 'Cristalino', 'Ir exactamente tres kilómetros al sur de Puerto Aventuras en la carretera 307, o 13,0 kilometros al norte de la CD de Akumal entrada. Tomar camino de tierra hacia el oeste a lo largo de la colina más allá de la líneas de energía de 1 kilómetro. Entra en la puerta a través de locales de buceo / snorkel empresas. Conduzca un kilómetro al área de estacionamiento.', 'Zonas tanto de agua dulce como salada, las zonas de agua salada son ejemplos de reosion, mientras que las zonas de agua dulce muestran formaciones de carbonato de calcio', ' (984) 873-0038', '60.0000', 99, 2),
(15, 'Boa', 'Ir exactamente tres kilómetros al sur de Puerto Aventuras en la carretera 307, o 13,0 kilometros al norte de la CD de Akumal entrada. Tomar camino de tierra hacia el oeste a lo largo de la colina más allá de la líneas de energía de 1 kilómetro. Entra en la puerta a través de locales de buceo / snorkel empresas. Conduzca un kilómetro al área de estacionamiento.', 'Zonas tanto de agua dulce como salada, las zonas de agua salada son ejemplos de reosion, mientras que las zonas de agua dulce muestran formaciones de carbonato de calcio', ' (984) 275-0638', '70.0000', 101, 2),
(16, 'Kantun Chi', 'Ir exactamente tres kilómetros al sur de Puerto Aventuras en la carretera 307, o 13,0 kilometros al norte de la CD de Akumal entrada. Tomar camino de tierra hacia el oeste a lo largo de la colina más allá de la líneas de energía de 1 kilómetro. Entra en la puerta a través de locales de buceo / snorkel empresas. Conduzca un kilómetro al área de estacionamiento.', 'Zonas tanto de agua dulce como salada, las zonas de agua salada son ejemplos de reosion, mientras que las zonas de agua dulce muestran formaciones de carbonato de calcio', ' (984) 873-0038', '60.0000', 99, 2),
(17, 'Uchil Ha', 'Ir exactamente tres kilómetros al sur de Puerto Aventuras en la carretera 307, o 13,0 kilometros al norte de la CD de Akumal entrada. Tomar camino de tierra hacia el oeste a lo largo de la colina más allá de la líneas de energía de 1 kilómetro. Entra en la puerta a través de locales de buceo / snorkel empresas. Conduzca un kilómetro al área de estacionamiento.', 'Zonas tanto de agua dulce como salada, las zonas de agua salada son ejemplos de reosion, mientras que las zonas de agua dulce muestran formaciones de carbonato de calcio', ' (984) 873-0038', '60.0000', 99, 2),
(18, 'Zacil', 'Ir exactamente tres kilómetros al sur de Puerto Aventuras en la carretera 307, o 13,0 kilometros al norte de la CD de Akumal entrada. Tomar camino de tierra hacia el oeste a lo largo de la colina más allá de la líneas de energía de 1 kilómetro. Entra en la puerta a través de locales de buceo / snorkel empresas. Conduzca un kilómetro al área de estacionamiento.', 'Zonas tanto de agua dulce como salada, las zonas de agua salada son ejemplos de reosion, mientras que las zonas de agua dulce muestran formaciones de carbonato de calcio', ' (984) 873-0038', '60.0000', 99, 2),
(19, 'Little Joe', 'Ir exactamente tres kilómetros al sur de Puerto Aventuras en la carretera 307, o 13,0 kilometros al norte de la CD de Akumal entrada. Tomar camino de tierra hacia el oeste a lo largo de la colina más allá de la líneas de energía de 1 kilómetro. Entra en la puerta a través de locales de buceo / snorkel empresas. Conduzca un kilómetro al área de estacionamiento.', 'Zonas tanto de agua dulce como salada, las zonas de agua salada son ejemplos de reosion, mientras que las zonas de agua dulce muestran formaciones de carbonato de calcio', ' (984) 873-0038', '60.0000', 99, 2),
(20, 'Derosa', 'Cerca  de Puerto Aventuras', 'Cenote altamente concervado exelente para bucear', '(984) 87 59020 ', '900.0000', 106, 1),
(21, 'Escondido', 'Directamente a través de la carretera 307 desde el Club Robinson o 10,7 kilómetros al norte de la entrada de Akumal Caribe', 'Sistema de cuevas pequeñas, cheezy Típica, piedra caliza escarpada, Apto para equipo de dos personas', '(984) 877 60 24', '50.0000', 96, 3),
(22, 'Alegre', 'Cerca de la localidad Akumal', 'Cuenta con areas verdes y zonas recreaivas al igual que un cenote luminoso', '998 8819400', '270.0000', 107, 4),
(23, 'Aktun Chen', 'Cerca el Municipio de Tulum', 'Cuenta con grandes cavernas aun sin explorar', '998 8819400', '270.0000', 107, 4),
(24, 'Nohoch Na Chich', 'La entrada principal al Sistema Nohoch Nah Chich es de 4,6 kilómetros al sur de la entrada de Dos Ojos en 307 o el 11,3 kilómetros al norte de la intersección del camino de la carretera Cobá. La única manera de llegar a Nahoch Nah Chich es a pie, que dura aproximadamente una hora o menos, es de aproximadamente 2 kilómetros al oeste en la selva', 'muy decorado, el sistema de cueva poco profunda aguas arriba de la entrada principal en comparación con el Sistema Aktun Sak en la belleza, pero a una escala mucho más grande, que está en la lista como el más largo sistema de cuevas subacuáticas del mundo', NULL, '50.0000', 68, 5),
(25, 'Yax Muul', 'La entrada principal al Sistema Nohoch Nah Chich es de 4,6 kilómetros al sur de la entrada de Dos Ojos en 307 o el 11,3 kilómetros al norte de la intersección del camino de la carretera Cobá. La única manera de llegar a Nahoch Nah Chich es a pie, que dura aproximadamente una hora o menos, es de aproximadamente 2 kilómetros al oeste en la selva', 'muy decorado, el sistema de cueva poco profunda aguas arriba de la entrada principal en comparación con el Sistema Aktun Sak en la belleza, pero a una escala mucho más grande, que está en la lista como el más largo sistema de cuevas subacuáticas del mundo', NULL, '0.0000', 68, 5),
(26, 'Blankanche', 'La entrada en la carretera Playa del Carmen - Cancun en la entrada de la selva', 'No especificado', NULL, '0.0000', 68, 5),
(27, 'Padre Kind', 'La entrada principal al Sistema Nohoch Nah Chich es de 4,6 kilómetros al sur de la entrada de Dos Ojos en 307 o el 11,3 kilómetros al norte de la intersección del camino de la carretera Cobá. La única manera de llegar a Nahoch Nah Chich es a pie, que dura aproximadamente una hora o menos, es de aproximadamente 2 kilómetros al oeste en la selva', 'No especificado', NULL, '0.0000', 131, 6),
(28, 'Tan Kah', 'Cercano a la futura Nissan tulum', 'No especificado', NULL, '0.0000', 135, 6),
(29, 'Dinner Hole', 'La entrada principal al Sistema Nohoch Nah Chich es de 4,6 kilómetros al sur de la entrada de Dos Ojos en 307 o el 11,3 kilómetros al norte de la intersección del camino de la carretera Cobá. La única manera de llegar a Nahoch Nah Chich es a pie, que dura aproximadamente una hora o menos, es de aproximadamente 2 kilómetros al oeste en la selva', 'muy decorado, el sistema de cueva poco profunda aguas arriba de la entrada principal en comparación con el Sistema Aktun Sak en la belleza, pero a una escala mucho más grande, que está en la lista como el más largo sistema de cuevas subacuáticas del mundo', NULL, '250.0000', 130, 6),
(30, 'Ferndock', 'La entrada principal al Sistema Nohoch Nah Chich es de 4,6 kilómetros al sur de la entrada de Dos Ojos en 307 o el 11,3 kilómetros al norte de la intersección del camino de la carretera Cobá. La única manera de llegar a Nahoch Nah Chich es a pie, que dura aproximadamente una hora o menos, es de aproximadamente 2 kilómetros al oeste en la selva', 'muy decorado, el sistema de cueva poco profunda aguas arriba de la entrada principal en comparación con el Sistema Aktun Sak en la belleza, pero a una escala mucho más grande, que está en la lista como el más largo sistema de cuevas subacuáticas del mundo', NULL, '250.0000', 131, 6),
(31, 'Pet Cementery', 'La entrada principal al Sistema Nohoch Nah Chich es de 4,6 kilómetros al sur de la entrada de Dos Ojos en 307 o el 11,3 kilómetros al norte de la intersección del camino de la carretera Cobá. La única manera de llegar a Nahoch Nah Chich es a pie, que dura aproximadamente una hora o menos, es de aproximadamente 2 kilómetros al oeste en la selva', 'muy decorado, el sistema de cueva poco profunda aguas arriba de la entrada principal en comparación con el Sistema Aktun Sak en la belleza, pero a una escala mucho más grande, que está en la lista como el más largo sistema de cuevas subacuáticas del mundo', NULL, '250.0000', 131, 6),
(32, 'Abejas', 'Ubicado a 2.3 kilómetros al norte de la intersección de ir a la estación de la Armada del Aire y el Hotel Acuario Tulum o entre el kilómetro 232 y 233 en el lado este de la carretera 307', 'El sistema de la cueva se conecta directamente al oeste hacia el gran Cenote Naval que forma parte de la segunda más larga del mundo sistema de cuevas bajo el agua - Sistema Sac Aktun', NULL, '0.0000', 129, 6),
(33, 'K''oxul', 'Tome la carretera Cobá este de la carretera 307 y conducir a 800 metros (kilómetros), Parque junto a la estación de bomberos', 'El paso principal está por debajo de las áreas haloclina, domo Varios', NULL, '0.0000', 131, 6),
(34, 'Del Mar', 'Tome la carretera Cobá este de la carretera 307 1km mas adelante junto a estacion policiaca', 'No especificada', NULL, '50.0000', 131, 6),
(35, 'Man Grove', 'No especificada', 'No especificado', NULL, '0.0000', 127, 6),
(36, 'Yaax Ha', 'Santo Tomás a 23 kilometros del Municipio de Tenosique.', 'Son aguas verdosas, tinen una profundidad mayor a 25m rodeados de un paisaje selvático.', NULL, '50.0000', 1058, 7),
(37, 'Aktun Ha', 'El poblado Santo Tomás se localiza a 23 km al sur de la ciudad de Tenosique de Pino Suárez.', 'Son aguas verdosas, tinen una profundidad mayor a 25m rodeados de un paisaje selvático.', NULL, '50.0000', 1053, 7),
(38, 'Cenote azul', 'la entrada del Ejido de Miguel Colorado se Encuentra Ubicado en el Km. 20 de la Carretera Champotón hacia Escárcega, cruzando el poblado de Revolución y Cantemo.', 'Está rodeado por grandes paredones de roca de 85 m de alto, cubiertos de selva y árboles que se reflejan en el agua;', NULL, '45.0000', 768, 8),
(39, 'Cenote k41', 'la entrada del Ejido de Miguel Colorado se Encuentra Ubicado en el Km. 20 de la Carretera Champotón hacia Escárcega, cruzando el poblado de Revolución y Cantemo.', 'No especificado', NULL, '70.0000', 767, 8),
(40, 'Los patos', 'la entrada del Ejido de Miguel Colorado se Encuentra Ubicado en el Km. 20 de la Carretera Champotón hacia Escárcega, cruzando el poblado de Revolución y Cantemo.', 'No especificado', NULL, '0.0000', 769, 8),
(41, 'Dzonotila', ' El Cenote Dzonot-ila está localizado a 52 km al sur de la ciudad de Mérida, en los alrededores del poblado de Abalá.', ' Esta cueva alberga uno de los más bellos cenotes conocidos en el estado de Yucatán; su singular belleza se debe a la gran concentración de formaciones estalactitas y estalagmitas que contiene. La entrada consiste en un pozo rectangular de 1.5 por 2.5 mts y una profundidad de 12 mts para llegar al espejo de agua. Este pozo sirve para proveer agua al ganado propiedad del ejidatario que trabaja el lugar. Una escalera construida de rieles de tren de vía estrecha permite acarrear al agua. En algún tiempo, se utilizaron plataformas jaladas por caballos como un importante medio de transporte en Yucatán. Este sistema es todavía utilizado en pequeños poblados en el estado.', NULL, '35.0000', 213, 9),
(42, 'Kankirixche', 'Ubicado a 49 Km.  al sur de la Ciudad de Mérida, Carr. Mérida – Uxmal, después sigues por la carretera a Muna hasta Abalá, una vez ahí encontrarás el poblado Mukuyche.', '90 metros de diámetro, descender 15 metros por una escalera metálica, profundidad de 5 hasta 50 metros, este sitio es ideal para practicar el buceo ya que sus amplias galerías subacuáticas permiten practicar esta actividad, pero también puedes nadar y snorkeliar sin ninguna dificultad.', NULL, '40.0000', 213, 10),
(43, 'Yaal Udzil', 'Se encuentra ubicada a solo 30 minutos de la ciudad de Mérida en el poblado de Mucuyché, Abalá.', ' Este bello cenote tiene como nombre Yaaludzil, el cual tiene una profundidad de 19 metros y se encuentra totalmente abierto, para poder tocar sus aguas refrescantes hay que bajar aproximadamente como 5 metros.', NULL, '40.0000', 215, 10),
(44, 'Yaax ha', 'Ubicado a sólo 1,600 metros del centro de Tixkokob', 'No especificada', NULL, '0.0000', 172, 11),
(45, 'Yoha', 'No especificada', 'No especificado', NULL, '0.0000', 172, 9),
(46, 'Sambula', 'se ubica cerca de la ciudad de Valladolid a tan solo un kilómetro de la localidad de Dzitnup.', 'cerca de la ciudad de Valladolid a un kilometro en el poblado de Dzitnup se encuentra el cenote Sambula Sus aguas cristalinas de color azul turquesa son iluminadas por un orificio en la parte superior de la caverna donde podrás admirar como de el cuelgan las raíces de un árbol que ha sido cortado en la superficie pero que aun sigue vivo gracias a que el agua lo sigue alimentando.', NULL, '50.0000', 201, 12),
(47, ' Dzitnup', ' Localizado a 7 km al suroeste de Valladolid', 'este cenote está dentro de una cámara subterránea. Puede observar formaciones de estalactitas y aguas de vivo color turquesa iluminadas por la luz natural que penetra a través de un hueco en la parte central de la bóveda.', NULL, '0.0000', 201, 12),
(48, 'Chelentun', 'está localizado aproximadamente a 3 KM de la hacienda Chunkanán y a 3 al sur de Cuzamá.', 'Caverna con acceso directo cenote cuzamaa superficie y con una profundidad máxima de 18 metros (60 pies), con temperatura de 26 grados centígrados y visibilidad de 50 metros, sin embargo cuenta con Dos Cuevas. La Primera en el costado derecho que desciende hasta una profundidad de 30 mts (100 fts).', NULL, '40.0000', 280, 13),
(49, 'Chaczinicche', 'está localizado a 10 km al sur del pueblo de Cuzamá y a 65 km al sureste de la ciudad de Mérida. Para llegar al cenote, se utilizan plataformas que, jaladas por caballos circulan sobre rieles de vía estrecha.', 'La profundidad es de 40 metros (130 fts) y dentro del Circuito sale una "T" hacia Cuevas interiores que llegan hasta una profundidad de 250 fts.', NULL, '45.0000', 283, 13),
(50, 'San Ignacio', 'A 20 minutos de Mérida en la carretera a Campeche, en el poblado de Chocholá', 'Al entrar podrás apreciar sus formaciones de estalactitas que rodean toda la bóveda, un agujero en un costado filtra la luz del sol iluminando el agua cristalina de color azul turquesa en la que habitan cientos de peces, debido a lo poco profundo es muy segura para nada', NULL, '55.0000', 339, 14),
(51, 'Dzonot Cervera', '"Se localiza en el rancho ""Dzonot"" Cervera n el km 15 de la carretera Dzilam GonzalezYalsihom\nen el Estado de Yucatán. "', '"Su forma es circular con 20 m de diámetro, sus bordes\nson de piedra en forma de acantilado. El espejo de agua se encuentra a 2 m de la superficie, la\ntransparencia de la columna de agua es total, con un tono verde-azul. Su profundidad máxima es de 6 m. En\nlos bordes crecen leguminosas, helechos y gramíneas, la vegetación acuática esta dada por algas\nfilamentosas (cloroficeas), aunque con baja cobertura. El fondo es rocoso y no se observa materia orgánica."', NULL, '0.0000', 410, 15),
(52, 'K´ankaba', 'Delimitado por la localidad de Espita', 'No espécificado', NULL, '0.0000', 412, 16),
(53, 'Chihuan', 'Se encuentra a unos 30 minutos de Mérida y a una hora de Valladolid.', 'El Cenote Chihuan tiene una profundidad máxima de 14 mts (50 fts), en la parte iluminada se pueden apreciar cerca de 40 mts o un poco menos.', NULL, '40.0000', 391, 17),
(54, ' Xla Kaj', 'Ubicado en el sitio Maya de Dzibilchaltún, al norte de Mérida', 'Después de una larga caminata recorriendo la zona arqueológica bajo el sol, sus aguas cristalinas te invitan a refrescándote, su inigualable belleza natural, los peces que viven en él y los lirios que adornan sus aguas al disfrutarlos es una de las mejor forma de terminar tu recorrido por este lugar.', NULL, '30.0000', 322, 18),
(55, 'Yokdzonot', ' se ubica  a 18 kilómetros al poniente de Pisté, a 15 kilómetros al oeste de Chichen Itzá.', 'Tiene un ancho de 40 metros y con una profundidad de 35 a 45 metros, lo anterior es un aproximado ya que varios buzos que han llegado a explorar este increíble lugar no han podido encontrar el fondo.', NULL, '45.0000', 429, 19),
(56, 'Nojoch Dzonot Kikil', 'Se encuentra a sólo seis kilómetros al norte de Tizimín', 'El  espejo de agua   se   encuentra   a   2 m de la superficie, la transparencia de la columna de agua es total, con un tono verde-azul. Su profundidad máxima es de 6 m.', NULL, '0.0000', 197, 20),
(57, 'Sagrado', 'Se localiza al norte de la pirámide de Kukulcán en la zona arqueológica de Chichen Itzá.', 'El cenote sagrado se encuentra al norte de la pirámide de Kukulcan en la zona arqueológica de Chichen Itzá, con 60 metros de diámetro se encuentra totalmente abierto Debido a su valor cultural y a su forma, este es solo un cenote que se puede admirar y disfrutar mientras realiza su recorrido por la zona arqueológica.', NULL, '60.0000', 302, 21),
(58, 'Iik´il', 'Está ubicado a tan solo 3 kilómetros de la zona arqueológica de Chichén Itza, a 35 minutos de la ciudad de Valladolid y a solo una hora y media de la ciudad de  Mérida.', 'El principal atractivo de Ik kil es el majestuoso cenote, en donde su superficie se encuentra rodeada de mucha vegetación, mientras usted  entra y va bajando por las escaleras de hechas de piedra ahí encontrara pequeños balcones en donde podrá observar lo hermoso que es  a su alrededor', NULL, '65.0000', 438, 21),
(59, 'X-KeKen', 'Se encuentra ubicada en la carretera Mérida-Valladolid a 3 kilómetros antes de llegar a Valladolid.', ' tiene 3 entradas, barandales en los bordes  también gradas hechas de piedra que se encuentran ubicadas enfrente del cenote', NULL, '50.0000', 358, 22),
(60, ' Samulá', ' a 7 KM al suroeste de Valladolid, este cenote está dentro de una cámara subterránea.', ' Puede observar formaciones de estalactitas, aguas de vivo color turquesa e iluminadas por la luz natural que penetra a través de un hueco en la parte central de la bóveda. El agua es poco profunda y es tan limpia y clara que se observan los peces.', NULL, '52.0000', 455, 22),
(61, 'Zací', 'Es representativo de la ciudad de  Valladolid y significa “Gavilán blanco”.', 'Cenote Zací es un cenote abierto de forma ovalada de aproximadamente 28 metros de diametro, cuenta con escalinatas de piedra que permiten admirar el cenote y los peces que hay en el cenote, cuenta con estacionamiento y restaurante.', NULL, '35.0000', 463, 22),
(62, 'Yokdzonot', ' se ubica  a 18 kilómetros al poniente de Pisté, a 15 kilómetros al oeste de Chichen Itzá.', 'superficie, el color del agua es verde y con una profundidad máxima de 8 m. La vegetación circundante es', NULL, '440.0000', 355, 23),
(63, 'Yaxunah', 'El cenote es el hogar de uno de los más bellos de aves tropicales, con destellos de color turquesa brillante de su cuerpo.', 'selva mediana y la vegetación acuática esta dada por Nymphaea odorata y algas filamentosas.', NULL, '0.0000', 429, 23),
(64, 'Yaxcaba', 'Hacia el sur, a 18 km de Libre Unión, se localiza la población de Yaxcabá.', ' Realza la belleza de Yaxcabá un profundo cenote -ahora bardeado para evitar lamentables accidentes- y que se ubica en el centro mismo del pueblo.', NULL, '0.0000', 404, 23),
(65, 'Suytun', 'Se encuentra ubicado en el rancho ganadero ecológico Suytun en el kilómetro 8 sobre la carretera Valladolid', 'Este bello lugar es una caverna subterránea que tiene aguas cristalinas de poca profundidad en donde podrá observar a los peces de agua dulce que viven en él, también está rodeada de formaciones de estalactitas.', NULL, '50.0000', 198, 20),
(66, 'Xcanché', 'Esta localizado a 1.5 kilómetros de la famosa zona arqueológica de Ek Balam, para llegar a él se puede hace en bicicleta de montaña o caminando.', 'Este sitio es operado por una cooperativa indigena maya y cuenta con varios servicios como caminatas ecoturisticas para admirar la naturaleza de la región, área de camping, tirolesa, rapel, baños ecológicos, un area de descanso con hamacas y un restaurante con comida regional yucateca.', NULL, '30.0000', 198, 20),
(67, 'X-Batún en San Antonio Mulix', 'Se encuentra a 49 kilómetros de la ciudad blanca de Mérida, por la carretera Muna-Uxmal, se desvía en el kilómetro 39 a mano  derecha, rumbo a la ex hacienda Cacao', 'Al llegar veras una palapa que cuenta con una mesa y sillas para que disfrutes de tus alimentos si es que has llevado, a un lado se encuentra una casita con dos cuartos para cambiarse. El cenote se localiza en una hondonada no muy profunda, está rodeada de piedras y plantas', NULL, '40.0000', 230, 24),
(68, 'Xlacah', 'se encuentra ubicado a solo 17 kilómetros al norte de Mérida', 'se encuentra en la superficie abierta completamente, mide alrededor de 100 m de largo, su profundidad en una de sus orillas es de un metro y conforme vas avanzando toma una forma inclinada y alcanza los 45 metros de donde se abre una amplia galería horizontal y oscura, cuyo extremo se desconoce.', NULL, '100.0000', 317, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cenotes_actividades`
--

CREATE TABLE IF NOT EXISTS `cenotes_actividades` (
  `id_cenote_actividad` int(11) NOT NULL AUTO_INCREMENT,
  `id_cenote` int(11) NOT NULL,
  `id_actividad` int(11) NOT NULL,
  `costo` decimal(19,4) NOT NULL,
  `horario_semanal` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `horario_fin` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id_cenote_actividad`),
  KEY `ACTIVIDADESCENOTES_ACTIVIDADES` (`id_actividad`),
  KEY `CENOTESCENOTES_ACTIVIDADES` (`id_cenote`),
  KEY `id` (`id_cenote_actividad`),
  KEY `id_actividad` (`id_actividad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=94 ;

--
-- Volcado de datos para la tabla `cenotes_actividades`
--

INSERT INTO `cenotes_actividades` (`id_cenote_actividad`, `id_cenote`, `id_actividad`, `costo`, `horario_semanal`, `horario_fin`) VALUES
(1, 2, 1, '0.0000', '10:00-17:00', '10:00-17:00'),
(2, 2, 2, '0.0000', '10:00-17:00', '10:00-17:00'),
(3, 3, 1, '150.0000', '10:00-17:00', '10:00-17:00'),
(4, 4, 1, '230.0000', '10:00-17:00', '10:00-17:00'),
(5, 5, 1, '150.0000', '10:00-19:00', '10:00-17:00'),
(6, 6, 1, '175.0000', '10:00-17:00', '10:00-17:00'),
(7, 7, 1, '180.0000', '8:00-18:00', '10:00-17:00'),
(8, 7, 2, '30.0000', '8:00-18:00', '10:00-17:00'),
(9, 8, 1, '150.0000', '8:00-18:00', '10:00-17:00'),
(10, 9, 1, '130.0000', '8:00-18:00', '10:00-17:00'),
(11, 10, 2, '30.0000', '8:00-18:00', '10:00-17:00'),
(13, 10, 1, '160.0000', '8:00-18:00', '10:00-17:00'),
(14, 11, 1, '140.0000', '8:00-18:00', '8:00-18:00'),
(15, 12, 1, '130.0000', '8:00-18:00', '8:00-18:00'),
(16, 13, 1, '0.0000', '8:00-18:00', '8:00-18:00'),
(17, 13, 2, '30.0000', '8:00-18:00', '8:00-18:00'),
(18, 14, 1, '130.0000', '8:00-18:00', '8:00-18:00'),
(19, 14, 2, '30.0000', '8:00-18:00', '8:00-18:00'),
(20, 15, 1, '100.0000', '8:00-18:00', '8:00-18:00'),
(21, 16, 2, '30.0000', '8:00-18:00', '8:00-18:00'),
(22, 16, 1, '100.0000', '8:00-18:00', '8:00-18:00'),
(23, 17, 1, '120.0000', '8:00-18:00', '8:00-18:00'),
(24, 18, 1, '150.0000', '8:00-18:00', '8:00-18:00'),
(25, 19, 1, '130.0000', '8:00-18:00', '8:00-18:00'),
(27, 20, 1, '130.0000', '9:00-17:00', '9:00-17:00'),
(28, 21, 1, '130.0000', '9:00-17:00', '9:00-17:00'),
(29, 22, 1, '150.0000', '9:00-17:00', '9:00-17:00'),
(30, 23, 1, '169.0000', '9:00-17:00', '9:00-17:00'),
(31, 24, 1, '150.0000', '9:00-17:00', '0'),
(32, 24, 2, '30.0000', '9:00-17:00', '0'),
(33, 26, 1, '100.0000', '6:00-17:00', '6:00-17:00'),
(34, 27, 1, '0.0000', '6:00-17:00', '6:00-17:00'),
(35, 28, 2, '20.0000', '6:00-17:00', '6:00-17:00'),
(36, 29, 1, '100.0000', '6:00-17:00', '6:00-17:00'),
(37, 30, 1, '100.0000', '6:00-17:00', '6:00-17:00'),
(38, 31, 1, '250.0000', '6:00-17:00', '6:00-17:00'),
(39, 32, 1, '70.0000', '6:00-17:00', '6:00-17:00'),
(40, 33, 1, '45.0000', '6:00-17:00', '6:00-17:00'),
(41, 34, 1, '50.0000', '6:00-17:00', '6:00-17:00'),
(42, 35, 1, '0.0000', NULL, NULL),
(43, 36, 3, '0.0000', '8:00-18:00', '8:00-18:00'),
(44, 36, 4, '0.0000', '8:00-18:08:00-18:000', '8:00-18:00'),
(45, 36, 5, '50.0000', '8:00-18:00', '8:00-18:00'),
(46, 36, 6, '450.0000', '8:00-18:00', '8:00-18:00'),
(48, 37, 3, '0.0000', '8:00-18:00', '8:00-18:00'),
(49, 37, 4, '0.0000', '8:00-18:00', '8:00-18:00'),
(50, 37, 5, '0.0000', '8:00-18:00', '8:00-18:00'),
(51, 37, 6, '0.0000', '8:00-18:00', '8:00-18:00'),
(52, 38, 7, '150.0000', '8:00-18:00', '8:00-18:00'),
(53, 38, 8, '0.0000', '8:00-18:00', '8:00-18:00'),
(54, 39, 9, '15.0000', '8:00-18:00', '8:00-18:00'),
(55, 39, 3, '0.0000', '8:00-18:00', '8:00-18:00'),
(56, 41, 1, '100.0000', '8:00-18:00', '8:00-18:00'),
(57, 42, 11, '0.0000', '8:00-18:00', '8:00-18:00'),
(58, 42, 2, '30.0000', '8:00-18:00', '8:00-18:00'),
(59, 43, 11, '0.0000', '8:00-18:00', '8:00-18:00'),
(60, 43, 2, '30.0000', '8:00-18:00', '8:00-18:00'),
(61, 43, 1, '150.0000', '8:00-18:00', '8:00-18:00'),
(62, 44, 1, '120.0000', '9:00-17:00', '8:00-18:00'),
(63, 46, 1, '120.0000', '8:00-18:00', '8:00-18:00'),
(64, 47, 11, '40.0000', '8:00-18:00', '8:00-18:00'),
(65, 47, 2, '65.0000', NULL, NULL),
(66, 49, 1, '160.0000', '9:00-16:00', '9:00-16:00'),
(67, 50, 11, '0.0000', '9:00-16:00', '9:00-16:00'),
(68, 50, 2, '52.0000', '9:00-16:00', '9:00-16:00'),
(69, 52, 1, '0.0000', NULL, NULL),
(70, 52, 9, '0.0000', NULL, NULL),
(71, 53, 11, '0.0000', '9:00-17:00', '9:00-17:00'),
(72, 53, 2, '50.0000', '9:00-17:00', '9:00-17:00'),
(73, 53, 1, '180.0000', '9:00-17:00', '9:00-17:00'),
(74, 54, 11, '0.0000', '9:00-17:00', '9:00-17:00'),
(76, 55, 3, '0.0000', '9:00-17:00', '9:00-17:00'),
(77, 55, 5, '50.0000', '9:00-17:00', '9:00-17:00'),
(78, 55, 2, '50.0000', '9:00-17:00', '9:00-17:00'),
(79, 57, 2, '30.0000', '8:00-17:00', '8:00-17:00'),
(80, 59, 2, '30.0000', '7:00-17:00', '7:00-17:00'),
(81, 59, 4, '0.0000', '9:00-17:00', '9:00-17:00'),
(82, 60, 12, '90.0000', '7:00-17:00', '7:00-17:00'),
(83, 62, 9, '0.0000', '9:00-17:00', '8:00-18:00'),
(84, 62, 1, '150.0000', '9:00-17:00', '8:00-18:00'),
(85, 63, 11, '30.0000', '9:00-17:00', '9:00-17:00'),
(86, 66, 3, '0.0000', '8:00-18:00', '8:00-18:00'),
(87, 66, 13, '56.0000', '8:00-18:00', '8:00-18:00'),
(88, 66, 5, '65.0000', '8:00-18:00', '8:00-18:00'),
(89, 67, 11, '0.0000', '8:00-17:00', '8:00-17:00'),
(90, 67, 2, '50.0000', '8:00-17:00', '8:00-17:00'),
(91, 67, 1, '250.0000', '8:00-14:00', '8:00-14:00'),
(92, 68, 4, '0.0000', '8:00-17:00', '8:00-17:00'),
(93, 68, 11, '30.0000', '8:00-17:00', '8:00-17:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cenotes_medio`
--

CREATE TABLE IF NOT EXISTS `cenotes_medio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cenote` int(11) NOT NULL,
  `id_medio` int(11) NOT NULL,
  `costo` decimal(19,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `CENOTESCENOTES_MEDIO` (`id_cenote`),
  KEY `id` (`id`),
  KEY `id_medio` (`id_medio`),
  KEY `MEDIOS_TRANSPORTECENOTES_MEDIO` (`id_medio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=205 ;

--
-- Volcado de datos para la tabla `cenotes_medio`
--

INSERT INTO `cenotes_medio` (`id`, `id_cenote`, `id_medio`, `costo`) VALUES
(4, 2, 1, '60.7000'),
(5, 2, 2, '98.0000'),
(6, 2, 3, '20.6600'),
(7, 3, 1, '60.7000'),
(8, 3, 2, '98.0000'),
(9, 3, 3, '20.6600'),
(10, 4, 1, '60.7000'),
(11, 4, 2, '98.0000'),
(12, 4, 3, '20.6600'),
(13, 5, 1, '60.7000'),
(14, 5, 2, '98.0000'),
(15, 5, 3, '20.6600'),
(16, 6, 1, '60.7000'),
(17, 6, 2, '98.0000'),
(18, 6, 3, '20.6600'),
(19, 7, 1, '61.3200'),
(20, 7, 2, '98.0000'),
(21, 7, 3, '20.8700'),
(22, 8, 1, '61.3200'),
(23, 8, 2, '98.0000'),
(24, 8, 3, '20.8710'),
(25, 9, 1, '61.3200'),
(26, 9, 2, '98.0000'),
(27, 9, 3, '20.8700'),
(28, 10, 1, '61.3200'),
(29, 10, 2, '98.0000'),
(30, 10, 3, '20.8700'),
(31, 11, 1, '61.3200'),
(32, 11, 2, '98.0000'),
(33, 11, 3, '20.8700'),
(34, 12, 1, '61.3200'),
(35, 12, 2, '98.0000'),
(36, 12, 3, '20.8700'),
(37, 13, 1, '61.3200'),
(38, 13, 2, '98.0000'),
(39, 13, 3, '20.8700'),
(40, 14, 1, '61.3200'),
(41, 14, 2, '98.0000'),
(42, 14, 3, '20.8700'),
(43, 15, 1, '61.3200'),
(44, 15, 2, '98.0000'),
(45, 15, 3, '20.8700'),
(46, 16, 1, '61.3200'),
(47, 16, 2, '98.0000'),
(48, 16, 3, '20.8700'),
(49, 17, 1, '61.3200'),
(50, 17, 2, '98.0000'),
(51, 17, 3, '20.8700'),
(52, 18, 1, '61.3200'),
(53, 18, 2, '98.0000'),
(54, 18, 3, '20.8700'),
(55, 19, 1, '61.3200'),
(56, 19, 2, '98.0000'),
(57, 19, 3, '20.8700'),
(58, 20, 1, '65.6500'),
(59, 20, 2, '98.0000'),
(60, 20, 3, '22.3500'),
(61, 21, 1, '59.4600'),
(62, 21, 2, '98.0000'),
(63, 21, 3, '20.2400'),
(64, 22, 1, '66.2700'),
(65, 22, 2, '98.0000'),
(66, 22, 3, '22.5600'),
(67, 23, 1, '66.2700'),
(68, 23, 2, '98.0000'),
(69, 23, 3, '22.5600'),
(70, 24, 1, '42.1200'),
(71, 24, 2, '45.0000'),
(72, 24, 3, '14.3400'),
(73, 25, 1, '42.1200'),
(74, 25, 2, '45.0000'),
(75, 25, 3, '14.3400'),
(76, 26, 1, '42.1200'),
(77, 26, 2, '45.0000'),
(78, 26, 3, '14.3400'),
(79, 27, 1, '81.1400'),
(80, 27, 2, '45.0000'),
(81, 27, 3, '27.6200'),
(82, 28, 1, '81.1400'),
(83, 28, 2, '45.0000'),
(84, 28, 3, '27.6200'),
(85, 29, 1, '81.1400'),
(86, 29, 2, '45.0000'),
(87, 29, 3, '27.6200'),
(88, 30, 1, '81.1400'),
(89, 30, 2, '45.0000'),
(90, 30, 3, '27.6200'),
(91, 31, 1, '81.1400'),
(92, 31, 2, '45.0000'),
(93, 31, 3, '27.6200'),
(94, 32, 1, '81.1400'),
(95, 32, 2, '45.0000'),
(96, 32, 3, '27.6200'),
(97, 33, 1, '81.1400'),
(98, 33, 2, '45.0000'),
(99, 33, 3, '27.6200'),
(100, 34, 1, '81.1400'),
(101, 34, 2, '45.0000'),
(102, 34, 3, '27.6200'),
(103, 35, 1, '81.1400'),
(104, 35, 2, '45.0000'),
(105, 35, 3, '27.6200'),
(106, 36, 1, '655.0000'),
(107, 36, 2, '700.0000'),
(108, 36, 3, '233.0000'),
(109, 37, 1, '652.0000'),
(110, 37, 2, '700.0000'),
(111, 37, 3, '222.0300'),
(112, 38, 1, '475.6800'),
(113, 38, 2, '500.0000'),
(114, 38, 3, '161.7000'),
(115, 39, 1, '475.0000'),
(116, 39, 2, '500.0000'),
(117, 39, 3, '161.7200'),
(118, 40, 1, '476.3000'),
(119, 40, 2, '500.0000'),
(120, 40, 3, '162.1400'),
(121, 41, 1, '131.9300'),
(122, 41, 2, '150.0000'),
(123, 41, 3, '44.9100'),
(124, 42, 1, '131.9300'),
(125, 42, 2, '150.0000'),
(126, 42, 3, '44.9100'),
(127, 43, 1, '133.1700'),
(128, 43, 2, '150.0000'),
(129, 43, 3, '45.3300'),
(130, 44, 1, '106.5300'),
(131, 44, 2, '130.0000'),
(132, 44, 3, '36.2700'),
(133, 45, 1, '106.5300'),
(134, 45, 2, '130.0000'),
(135, 45, 3, '36.2700'),
(136, 46, 1, '124.4900'),
(137, 46, 2, '130.0000'),
(138, 46, 3, '42.3800'),
(139, 47, 1, '124.4900'),
(140, 47, 2, '130.0000'),
(141, 47, 3, '42.3800'),
(142, 48, 1, '173.4300'),
(143, 48, 2, '250.0000'),
(144, 48, 3, '59.6700'),
(145, 49, 1, '175.2800'),
(146, 49, 2, '220.0000'),
(147, 49, 3, '59.6700'),
(148, 50, 1, '209.6700'),
(149, 50, 2, '230.0000'),
(150, 50, 3, '71.4800'),
(151, 51, 1, '253.9400'),
(152, 51, 2, '300.0000'),
(153, 51, 3, '86.0000'),
(154, 52, 1, '255.0000'),
(155, 52, 2, '300.0000'),
(156, 52, 3, '86.0000'),
(157, 53, 1, '242.0000'),
(158, 53, 2, '300.0000'),
(159, 53, 3, '82.4400'),
(160, 54, 1, '199.4400'),
(161, 54, 2, '200.0000'),
(162, 54, 3, '67.8900'),
(163, 55, 1, '265.0000'),
(164, 55, 2, '300.0000'),
(165, 55, 3, '90.9600'),
(166, 56, 1, '122.0000'),
(167, 56, 2, '150.0000'),
(168, 56, 3, '41.0000'),
(169, 57, 1, '187.0000'),
(170, 57, 2, '230.0000'),
(171, 57, 3, '63.0000'),
(172, 58, 1, '271.2900'),
(173, 58, 2, '300.0000'),
(174, 58, 3, '92.3500'),
(175, 59, 1, '221.7400'),
(176, 59, 2, '250.0000'),
(177, 59, 3, '75.0000'),
(178, 60, 1, '281.8200'),
(179, 60, 2, '300.0000'),
(180, 60, 3, '95.0000'),
(181, 61, 1, '286.7700'),
(182, 61, 2, '300.0000'),
(183, 61, 3, '97.6200'),
(184, 62, 1, '219.0000'),
(185, 62, 2, '250.0000'),
(186, 62, 3, '74.0000'),
(187, 63, 1, '265.0000'),
(188, 63, 2, '300.0000'),
(189, 63, 3, '90.0000'),
(190, 64, 1, '250.2300'),
(191, 64, 2, '300.0000'),
(192, 64, 3, '85.1800'),
(193, 65, 1, '122.0000'),
(194, 65, 2, '150.0000'),
(195, 65, 3, '41.7500'),
(196, 66, 1, '122.6400'),
(197, 66, 2, '150.0000'),
(198, 66, 3, '41.7500'),
(199, 67, 1, '142.4600'),
(200, 67, 2, '180.0000'),
(201, 67, 3, '48.5000'),
(202, 68, 1, '196.3400'),
(203, 68, 2, '220.0000'),
(204, 68, 3, '66.8400');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE IF NOT EXISTS `estados` (
  `Id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_estado` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`Id_estado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`Id_estado`, `nombre_estado`) VALUES
(1, 'Quintana Roo'),
(2, 'Tabasco'),
(3, 'Campeche'),
(4, 'Yucatan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guias`
--

CREATE TABLE IF NOT EXISTS `guias` (
  `id_guia` int(11) NOT NULL AUTO_INCREMENT,
  `costo_guia` decimal(19,4) NOT NULL,
  `nombre_guia` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id_guia`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `guias`
--

INSERT INTO `guias` (`id_guia`, `costo_guia`, `nombre_guia`) VALUES
(1, '50.0000', 'anonimo'),
(2, '30.0000', 'anonimo'),
(3, '100.0000', 'anonimo'),
(4, '20.0000', 'anonimo'),
(5, '150.0000', 'anonimo'),
(6, '70.0000', 'anonimo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios_cenotes`
--

CREATE TABLE IF NOT EXISTS `horarios_cenotes` (
  `id_horario` int(11) NOT NULL AUTO_INCREMENT,
  `horario_semanal` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `horario_fin` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `id_cenote` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_horario`),
  KEY `CENOTESHORARIOS_CENOTES` (`id_cenote`),
  KEY `id_cenote` (`id_cenote`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Volcado de datos para la tabla `horarios_cenotes`
--

INSERT INTO `horarios_cenotes` (`id_horario`, `horario_semanal`, `horario_fin`, `id_cenote`) VALUES
(1, 'De 10 a 17 horas', 'De 10 a 17 horas', 2),
(2, 'De 10 a 17 horas', 'De 10 a 17 horas', 3),
(3, 'De 10 a 17 horas', 'De 10 a 17 horas', 4),
(4, 'De 10 a 17 horas', 'De 10 a 17 horas', 5),
(5, 'De 10 a 17 horas', 'De 10 a 17 horas', 6),
(6, 'De 8 a 18 horas', 'De 8 a 18 horas', 7),
(7, 'De 8 a 18 horas', 'De 8 a 18 horas', 8),
(8, 'De 8 a 18 horas', 'De 8 a 18 horas', 9),
(9, 'De 8 a 18 horas', 'De 8 a 18 horas', 10),
(10, 'De 8 a 18 horas', 'De 8 a 18 horas', 11),
(11, 'De 8 a 18 horas', 'De 8 a 18 horas', 12),
(12, 'De 8 a 18 horas', 'De 8 a 18 horas', 13),
(13, 'De 8 a 18 horas', 'De 8 a 18 horas', 14),
(14, 'De 8 a 18 horas', 'De 8 a 18 horas', 15),
(15, 'De 8 a 18 horas', 'De 8 a 18 horas', 16),
(16, 'De 8 a 18 horas', 'De 8 a 18 horas', 17),
(17, 'De 8 a 18 horas', 'De 8 a 18 horas', 18),
(18, 'De 8 a 18 horas', 'De 8 a 18 horas', 19),
(19, 'De 9 a 17 horas', 'De 9 a 17 horas', 20),
(20, 'De 9 a 17 horas', 'De 9 a 17 horas', 21),
(21, 'De 9 a 17 horas', 'De 9 a 17 horas', 22),
(22, 'De 9 a 17 horas', 'De 9 a 17 horas', 23),
(23, 'De 8 a 18 horas', 'De 8 a 18 horas', 24),
(24, 'Cerrado', 'Cerrado', 25),
(25, 'De 8 a 18 horas', 'De 8 a 18 horas', 26),
(26, 'No especificado', 'No especificado', 27),
(27, 'De 9 a 17 horas', 'De 9 a 17 horas', 28),
(28, 'De 9 a 17 horas', 'De 9 a 17 horas', 29),
(29, 'De 9 a 17 horas', 'De 9 a 17 horas', 30),
(30, 'De 9 a 17 horas', 'De 9 a 17 horas', 31),
(31, 'De 9 a 17 horas', 'De 9 a 17 horas', 32),
(32, 'De 9 a 17 horas', 'De 9 a 17 horas', 33),
(33, 'De 9 a 17 horas', 'De 9 a 17 horas', 34),
(34, 'No especificado', 'No especificado', 35),
(35, 'De 8 a 18 horas', 'De 8 a 18 horas', 36),
(36, 'De 8 a 18 horas', 'De 8 a 18 horas', 37),
(37, 'De 8 a 18 horas', 'De 8 a 18 horas', 38),
(38, 'De 8 a 18 horas', 'De 8 a 18 horas', 39),
(39, 'De 8 a 18 horas', 'De 8 a 18 horas', 40),
(40, 'De 8 a 18 horas', 'De 8 a 18 horas', 41),
(41, 'De 8 a 20 horas', 'De 8 a 18 horas', 42),
(42, 'De 9 a 17 horas', 'De 9 a 17 horas', 43),
(43, 'De 8 a 18 horas', 'De 8 a 18 horas', 44),
(44, 'No especificado', 'No especificado', 45),
(45, 'De 9 a 17 horas', 'De 9 a 17 horas', 46),
(46, 'De 7 a 17:30 ó 18 h.', 'De 7 a 17:30 ó 18 h.', 47),
(47, 'De 9 a 17 horas', 'De 9 a 17 horas', 48),
(48, 'De 9 a 16 horas', 'De 9 a 16 horas', 49),
(49, 'De 9 a 16 horas', 'De 9 a 16 horas', 50),
(50, 'No especificado', 'No especificado', 51),
(51, 'No especificado', 'No especificado', 52),
(52, 'De 9 a 17 horas', 'De 9 a 17 horas', 53),
(53, 'De 9 a 17 horas', 'De 9 a 17 horas', 54),
(54, 'De 9 a 17 horas', 'De 9 a 17 horas', 55),
(55, 'De 9 a 17 horas', 'De 9 a 17 horas', 56),
(56, 'De 8 a 17 horas', 'De 8 a 17 horas', 57),
(57, 'De 8 a 17 horas', 'De 8 a 17 horas', 58),
(58, 'De 7 a 17 horas', 'De 7 a 17 horas', 59),
(59, 'De 7 a 17 horas', 'De 7 a 17 horas', 60),
(60, 'De 8 a 17 horas', 'De 8 a 17 horas', 61),
(61, 'De 8 a 18 horas', 'De 9 a 17 horas', 62),
(62, 'De 9 a 17 horas', 'De 9 a 17 horas', 63),
(63, 'De 8 a 18 horas', 'De 8 a 18 horas', 64),
(64, 'De 8 a 17 horas', 'De 8 a 17 horas', 65),
(65, 'De 8 a 18 horas', 'De 8 a 18 horas', 66),
(66, 'De 8 a 17 horas', 'De 8 a 17 horas', 67),
(67, 'De 8 a 17 horas', 'De 8 a 17 horas', 68);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE IF NOT EXISTS `localidades` (
  `id_localidad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_localidad` varchar(100) CHARACTER SET utf8 NOT NULL,
  `id_municipio` int(11) NOT NULL,
  PRIMARY KEY (`id_localidad`),
  KEY `id_municipio` (`id_municipio`),
  KEY `MUNICIPIOSLOCALIDADES` (`id_municipio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`id_localidad`, `nombre_localidad`, `id_municipio`) VALUES
(1, 'Puerto Aventuras', 1),
(2, 'Xpu Ha', 1),
(3, 'Robinson Club', 2),
(4, 'Akumal', 2),
(5, 'Playa del Carmen', 1),
(6, 'Tulum', 2),
(7, 'Santo Tomás', 3),
(8, 'Miguel Colorado', 4),
(9, 'Abala', 5),
(10, 'Mukuyche', 5),
(11, 'Tixkokob', 5),
(12, ' Dzitnup', 5),
(13, 'Cuzama', 6),
(14, 'Chochola', 7),
(15, 'dzilam de bravo', 8),
(16, 'espita', 9),
(17, 'Holca', 10),
(18, 'Merida', 11),
(19, 'sudzal', 12),
(20, 'Tzimin', 13),
(21, 'Tinum', 14),
(22, 'Valladolid', 15),
(23, 'Yaxcaba', 16),
(24, 'san antonio mulix', 17),
(25, 'Dzibilchaltun', 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medios_transporte`
--

CREATE TABLE IF NOT EXISTS `medios_transporte` (
  `id_medio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_medio` varchar(25) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_medio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `medios_transporte`
--

INSERT INTO `medios_transporte` (`id_medio`, `nombre_medio`) VALUES
(1, 'Auto Propio'),
(2, 'Autobus (ADO)'),
(3, 'Moto/Bicicleta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE IF NOT EXISTS `municipios` (
  `Id_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_municipio` varchar(100) CHARACTER SET utf8 NOT NULL,
  `id_estado` int(11) NOT NULL,
  PRIMARY KEY (`Id_municipio`),
  KEY `ESTADOSMUNICIPIOS` (`id_estado`),
  KEY `id_estado` (`id_estado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`Id_municipio`, `nombre_municipio`, `id_estado`) VALUES
(1, 'Solidaridad', 1),
(2, 'Tulum', 1),
(3, 'Tenosique', 2),
(4, 'Champotón', 3),
(5, 'Abala', 4),
(6, 'Cuzama', 4),
(7, 'Chochola', 4),
(8, 'dzilam de bravo', 4),
(9, 'espita', 4),
(10, 'kantunil', 4),
(11, 'Merida', 4),
(12, 'sudzal', 4),
(13, 'Tzimin', 4),
(14, 'Tinum', 4),
(15, 'Valladolid', 4),
(16, 'Yaxcaba', 4),
(17, 'Uman', 4),
(18, 'Dzibilchaltun', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurantes`
--

CREATE TABLE IF NOT EXISTS `restaurantes` (
  `id_restaurante` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_restaurante` varchar(50) CHARACTER SET utf8 NOT NULL,
  `costo_x_persona` decimal(19,4) NOT NULL,
  PRIMARY KEY (`id_restaurante`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `restaurantes`
--

INSERT INTO `restaurantes` (`id_restaurante`, `nombre_restaurante`, `costo_x_persona`) VALUES
(1, 'anita', '50.0000'),
(2, 'fonda', '50.0000'),
(3, 'lonchería', '30.0000'),
(4, 'palapa', '30.0000'),
(5, 'De rosa', '70.0000'),
(6, 'padre kind', '150.0000'),
(7, 'dinner hole', '80.0000'),
(8, 'man grove', '40.0000'),
(9, 'yoha', '70.0000'),
(10, 'chelentun', '80.0000'),
(11, 'abejas', '100.0000'),
(12, 'aktun ha', '200.0000'),
(13, 'yaxunah', '150.0000'),
(14, 'azul', '80.0000'),
(15, 'alegre', '50.0000'),
(16, 'escondido', '70.0000'),
(17, 'little joe', '60.0000'),
(18, 'zacil', '150.0000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE IF NOT EXISTS `servicios` (
  `Id_servicio` int(11) NOT NULL AUTO_INCREMENT,
  `id_cenote` int(11) DEFAULT NULL,
  `id_restaurante` int(11) DEFAULT NULL,
  `id_guia` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_servicio`),
  KEY `CENOTESSERVICIOS` (`id_cenote`),
  KEY `GUIASSERVICIOS` (`id_guia`),
  KEY `id_` (`id_guia`),
  KEY `id_cenote` (`id_cenote`),
  KEY `id_restaurant` (`id_restaurante`),
  KEY `RESTAURANTESSERVICIOS` (`id_restaurante`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`Id_servicio`, `id_cenote`, `id_restaurante`, `id_guia`) VALUES
(1, 2, 1, NULL),
(2, 3, 2, 1),
(3, 4, 3, NULL),
(4, 5, 3, 3),
(5, 20, 5, NULL),
(6, 27, 6, NULL),
(7, 29, 7, NULL),
(8, 35, 8, 2),
(9, 45, 9, NULL),
(10, 48, 10, NULL),
(11, 32, 11, NULL),
(12, 37, 12, 6),
(13, 63, 13, NULL),
(14, 38, 14, NULL),
(15, 22, 15, 2),
(16, 21, 16, NULL),
(17, 19, 17, NULL),
(18, 18, 18, 6),
(19, 6, 3, NULL),
(20, 7, 3, 5),
(21, 8, 3, NULL),
(22, 9, 3, NULL),
(23, 10, 4, NULL),
(24, 11, 4, NULL),
(25, 12, 4, NULL),
(26, 13, 4, 4),
(27, 15, 3, NULL),
(28, 16, 3, NULL),
(29, 17, 3, 1),
(30, 25, 3, NULL),
(31, 40, 2, NULL),
(32, 41, 2, 3),
(33, 42, 2, NULL),
(34, 51, 2, NULL),
(35, 52, 2, 5),
(36, 53, 2, NULL),
(37, 54, 2, NULL),
(38, 55, 2, NULL),
(39, 56, 2, 6),
(40, 57, 2, NULL),
(41, 60, NULL, 1),
(42, 61, NULL, 1),
(43, 62, NULL, 3),
(44, 64, NULL, 3),
(45, 65, NULL, 2),
(46, 66, NULL, 5),
(47, 67, NULL, 6);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cenotes`
--
ALTER TABLE `cenotes`
  ADD CONSTRAINT `LOCALIDADESCENOTES` FOREIGN KEY (`id_localidad`) REFERENCES `localidades` (`id_localidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cenotes_actividades`
--
ALTER TABLE `cenotes_actividades`
  ADD CONSTRAINT `CENOTESCENOTES_ACTIVIDADES` FOREIGN KEY (`id_cenote`) REFERENCES `cenotes` (`id_cenote`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ACTIVIDADESCENOTES_ACTIVIDADES` FOREIGN KEY (`id_actividad`) REFERENCES `actividades` (`id_actividad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cenotes_medio`
--
ALTER TABLE `cenotes_medio`
  ADD CONSTRAINT `MEDIOS_TRANSPORTECENOTES_MEDIO` FOREIGN KEY (`id_medio`) REFERENCES `medios_transporte` (`id_medio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `CENOTESCENOTES_MEDIO` FOREIGN KEY (`id_cenote`) REFERENCES `cenotes` (`id_cenote`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `horarios_cenotes`
--
ALTER TABLE `horarios_cenotes`
  ADD CONSTRAINT `CENOTESHORARIOS_CENOTES` FOREIGN KEY (`id_cenote`) REFERENCES `cenotes` (`id_cenote`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD CONSTRAINT `MUNICIPIOSLOCALIDADES` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`Id_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `ESTADOSMUNICIPIOS` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`Id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `RESTAURANTESSERVICIOS` FOREIGN KEY (`id_restaurante`) REFERENCES `restaurantes` (`id_restaurante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `CENOTESSERVICIOS` FOREIGN KEY (`id_cenote`) REFERENCES `cenotes` (`id_cenote`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `GUIASSERVICIOS` FOREIGN KEY (`id_guia`) REFERENCES `guias` (`id_guia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
