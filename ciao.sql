-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.27-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para Oryzon-Snaily
CREATE DATABASE IF NOT EXISTS `Oryzon-Snaily` /*!40100 DEFAULT CHARACTER SET armscii8 COLLATE armscii8_bin */;
USE `Oryzon-Snaily`;

-- Volcando estructura para tabla Oryzon-Snaily.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `owner` varchar(50) DEFAULT NULL,
  `pin` int(4) DEFAULT NULL,
  `credit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla Oryzon-Snaily.accounts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.announces
CREATE TABLE IF NOT EXISTS `announces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job` varchar(1000) NOT NULL,
  `pic` varchar(5000) NOT NULL,
  `picBack` varchar(5000) NOT NULL,
  `color` varchar(1000) NOT NULL DEFAULT '0',
  `name` varchar(1000) NOT NULL DEFAULT '0',
  `titlecolor` varchar(50) DEFAULT NULL,
  `colorbar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.announces: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.delitos
CREATE TABLE IF NOT EXISTS `delitos` (
  `id` int(11) NOT NULL,
  `sender` varchar(55) NOT NULL DEFAULT '',
  `sender_name` varchar(255) NOT NULL DEFAULT '',
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `penaltie` longtext NOT NULL,
  `sent_date` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.delitos: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.drugs_orders
CREATE TABLE IF NOT EXISTS `drugs_orders` (
  `gang` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  KEY `type` (`type`) USING BTREE,
  KEY `gang` (`gang`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.drugs_orders: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.gangs
CREATE TABLE IF NOT EXISTS `gangs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '',
  `label` longtext DEFAULT '[]',
  `points` longtext DEFAULT '[]',
  `blip` longtext DEFAULT '[]',
  `ranks` longtext DEFAULT '[]',
  `wardrobe` longtext DEFAULT '[]',
  `level` int(10) unsigned DEFAULT 1,
  `vehicles` longtext DEFAULT '[]',
  `money` int(50) DEFAULT 0,
  `blackmoney` int(50) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.gangs: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.global_blips
CREATE TABLE IF NOT EXISTS `global_blips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT 'blip',
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `streetName` varchar(50) NOT NULL DEFAULT '0',
  `sprite` smallint(6) NOT NULL DEFAULT 0,
  `scale` float NOT NULL DEFAULT 0,
  `alpha` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `color` smallint(6) NOT NULL DEFAULT 0,
  `ticked` bit(1) NOT NULL DEFAULT b'0',
  `outline` bit(1) NOT NULL DEFAULT b'0',
  `display` tinyint(3) NOT NULL DEFAULT 0,
  `identifier` varchar(80) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `height` float NOT NULL DEFAULT 50,
  `width` float NOT NULL DEFAULT 50,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.global_blips: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.guille_jobcreator
CREATE TABLE IF NOT EXISTS `guille_jobcreator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `label` varchar(50) DEFAULT NULL,
  `points` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `ranks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `blips` longtext DEFAULT NULL,
  `publicvehicles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `privatevehicles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `wardrobe` longtext DEFAULT NULL,
  `shop` longtext DEFAULT NULL,
  `money` int(11) DEFAULT 0,
  `blackmoney` int(11) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.guille_jobcreator: ~4 rows (aproximadamente)
INSERT INTO `guille_jobcreator` (`id`, `name`, `label`, `points`, `data`, `ranks`, `blips`, `publicvehicles`, `privatevehicles`, `wardrobe`, `shop`, `money`, `blackmoney`) VALUES
	(279, 'unemployed', 'Desempleado', '[]', '{"handcuff":false,"vehinfo":false,"search":false,"objects":false,"billing":false}', '[{"label":"En paro","name":"unemployed","isBoss":"false","salary":50}]', '[{"z":"","text":"","color":"","sprite":"","y":"","x":""}]', '[]', '[]', '[]', '[]', 0, 0),
	(286, 'police', 'police', '[{"z":"30.68976402282715","y":"-995.8367919921875","x":"482.6599426269531","Job":"police","selected":"armory"},{"z":"28.47282600402832","y":"-1024.2232666015625","x":"454.96173095703125","Job":"police","selected":"getvehs"},{"z":"28.69712257385254","y":"-1020.463623046875","x":"438.85626220703125","Job":"police","selected":"savevehs"},{"z":"30.68956565856933","y":"-999.2537231445312","x":"462.2872314453125","Job":"police","selected":"wardrobe"},{"z":"30.68956565856933","y":"-996.24658203125","x":"462.18963623046875","Job":"police","selected":"clothing"},{"z":"30.72808074951172","y":"-985.2318725585938","x":"463.2099609375","Job":"police","selected":"boss"},{"z":"43.69134521484375","y":"-981.2667846679688","x":"448.75152587890625","Job":"police","selected":"getheli"},{"z":"30.68976593017578","y":"-997.01953125","x":"486.5318908691406","Job":"police","selected":"shop"},{"z":"30.6895694732666","y":"-981.9277954101562","x":"443.4960021972656","Job":"police","selected":"duty"}]', '{"vehinfo":false,"objects":false,"billing":false,"search":false,"handcuff":false}', '[{"name":"police","label":"Recluta","isBoss":"false","salary":100},{"name":"police2","label":"Oficial","isBoss":"true","salary":112}]', '[]', '["valor18charg"]', '[]', '[]', '[["water","100"]]', 0, 0),
	(287, 'mechanic', 'Mecanico', '[{"z":"30.691987991333","selected":"armory","y":"-994.3665161132812","x":"446.6481018066406"}]', '{"vehinfo":false, "handcuff":false,"billing":false,"objects":false, "search": false}', '[{"label":"Cadete","name":"mechanic","isBoss":"true","salary":1}]', '[]', '[]', '[]', '[]', '[]', 0, 0),
	(288, 'sandycar', 'sandycar', '[[]]', '{"vehinfo":false, "handcuff":false,"billing":false,"objects":false, "search": false}', '[[],{"label":"sandycar","name":"sandycar","isBoss":"true","salary":1}]', '[]', '[]', '[]', '[]', '[]', 0, 0);

-- Volcando estructura para tabla Oryzon-Snaily.housing
CREATE TABLE IF NOT EXISTS `housing` (
  `id` int(11) DEFAULT NULL,
  `owners` longtext NOT NULL DEFAULT '0',
  `locations` longtext DEFAULT NULL,
  `furniture` longtext DEFAULT NULL,
  `info` longtext DEFAULT NULL,
  `blackmoney` int(11) DEFAULT 0,
  `paints` longtext DEFAULT '[]',
  `gang` varchar(50) DEFAULT '',
  `key_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.housing: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.items
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `limit` int(11) DEFAULT 0,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.items: ~345 rows (aproximadamente)
INSERT INTO `items` (`id`, `name`, `label`, `weight`, `limit`, `type`) VALUES
	(1, 'bread', 'Pan', 0.1, 0, 'food'),
	(2, 'membership', 'MembresÃ­a', 0.1, 0, 'item'),
	(3, 'powerade', 'Powerade', 0.1, 0, 'food'),
	(4, 'WEAPON_PISTOL', 'Pistola', 1, 0, 'weapon'),
	(5, 'creditcard', 'Tarjeta de credito', 0.1, 0, 'item'),
	(6, 'pistol_clip', 'Cargador de Pistola', 0.2, 0, 'weapon'),
	(8, 'pistol_rounds', 'Balas de Pistola', 0, 750, 'weapon'),
	(9, 'subfusil_rounds', 'Balas de Subfusil', 0, 750, 'weapon'),
	(10, 'fusil_rounds', 'Balas de Fusil', 0, 750, 'weapon'),
	(11, 'shotgun_rounds', 'Cartuchos Escopeta', 0, 750, 'weapon'),
	(12, 'sniper_rounds', 'Balas de Sniper', 0, 750, 'weapon'),
	(13, 'subfusil_clip', 'Cargador de Subfusil', 0.1, 0, 'weapon'),
	(14, 'fusil_clip', 'Cargador de Fusil', 0.1, 0, 'weapon'),
	(15, 'shotgun_clip', 'Cargador de Escopeta', 0.1, 0, 'weapon'),
	(16, 'sniper_clip', 'Cargador de Sniper', 0.1, 0, 'weapon'),
	(18, 'WEAPON_KNIFE', 'Cuchillo', 1, 0, 'weapon'),
	(24, 'WEAPON_DAGGER', 'Daga de CaballerÃ­a', 1, 0, 'weapon'),
	(25, 'WEAPON_BAT', 'Bate', 1, 0, 'weapon'),
	(26, 'WEAPON_BOTTLE', 'Botella rota', 1, 0, 'weapon'),
	(27, 'WEAPON_CROWBAR', 'Palanca', 1, 0, 'weapon'),
	(28, 'WEAPON_FLASHLIGHT', 'Linterna', 1, 0, 'weapon'),
	(29, 'WEAPON_GOLFCLUB', 'Palo de Golf', 1, 0, 'weapon'),
	(30, 'WEAPON_HAMMER', 'Martillo', 1, 0, 'weapon'),
	(31, 'WEAPON_HATCHET', 'Hacha', 1, 0, 'weapon'),
	(32, 'WEAPON_KNUCKLE', 'PuÃ±o americano', 1, 0, 'weapon'),
	(33, 'WEAPON_MACHETE', 'Machete', 1, 0, 'weapon'),
	(34, 'WEAPON_SWITCHBLADE', 'Navaja mariposa', 1, 0, 'weapon'),
	(35, 'WEAPON_NIGHTSTICK', 'Porra', 1, 0, 'weapon'),
	(36, 'WEAPON_WRENCH', 'Llave inglesa', 1, 0, 'weapon'),
	(37, 'WEAPON_BATTLEAXE', 'Hacha de combate', 1, 0, 'weapon'),
	(38, 'WEAPON_POOLCUE', 'Palo de billar', 1, 0, 'weapon'),
	(39, 'WEAPON_STONE_HATCHET', 'Hacha de piedra', 1, 0, 'weapon'),
	(40, 'WEAPON_PISTOL_MK2', 'Pistola MK2', 1, 0, 'weapon'),
	(41, 'WEAPON_COMBATPISTOL', 'Pistola Glock', 1, 0, 'weapon'),
	(42, 'WEAPON_APPISTOL', 'Pistola AP', 1, 0, 'weapon'),
	(43, 'WEAPON_STUNGUN', 'Taser', 1, 0, 'weapon'),
	(44, 'WEAPON_PISTOL50', 'Pistola .50', 1, 0, 'weapon'),
	(45, 'WEAPON_SNSPISTOL', 'Pistola SNS', 1, 0, 'weapon'),
	(46, 'WEAPON_SNSPISTOL_MK2', 'Pistola SNS MK2', 1, 0, 'weapon'),
	(47, 'WEAPON_HEAVYPISTOL', 'Pistola pesada', 1, 0, 'weapon'),
	(48, 'WEAPON_VINTAGEPISTOL', 'Pistola vintage', 1, 0, 'weapon'),
	(49, 'WEAPON_FLAREGUN', 'Pistola de bengalas', 1, 0, 'weapon'),
	(50, 'WEAPON_MARKSMANPISTOL', 'Pistola Marksman', 1, 0, 'weapon'),
	(51, 'WEAPON_REVOLVER', 'RevÃ³lver', 1, 0, 'weapon'),
	(52, 'WEAPON_REVOLVER_MK2', 'RevÃ³lver', 1, 0, 'weapon'),
	(53, 'WEAPON_DOUBLEACTION', 'RevÃ³lver Double', 1, 0, 'weapon'),
	(54, 'WEAPON_CERAMICPISTOL', 'Pistola CerÃ¡mica', 1, 0, 'weapon'),
	(55, 'WEAPON_MICROSMG', 'Micro SMG', 1, 0, 'weapon'),
	(56, 'WEAPON_SMG', 'SMG', 1, 0, 'weapon'),
	(57, 'WEAPON_SMG_MK2', 'SMG MK2', 1, 0, 'weapon'),
	(58, 'WEAPON_ASSAULTSMG', 'SMG de Asalto', 1, 0, 'weapon'),
	(59, 'WEAPON_COMBATPDW', 'Combat PDW', 1, 0, 'weapon'),
	(60, 'WEAPON_MACHINEPISTOL', 'TEC-9', 1, 0, 'weapon'),
	(61, 'WEAPON_MINISMG', 'Mini SMG', 1, 0, 'weapon'),
	(62, 'WEAPON_PUMPSHOTGUN', 'Escopeta', 1, 0, 'weapon'),
	(63, 'WEAPON_PUMPSHOTGUN_MK2', 'Escopeta MK2', 1, 0, 'weapon'),
	(64, 'WEAPON_SAWNOFFSHOTGUN', 'Escopeta recortada', 1, 0, 'weapon'),
	(65, 'WEAPON_ASSAULTRIFLE', 'Rifle de asalto', 1, 0, 'weapon'),
	(66, 'WEAPON_ASSAULTRIFLE_MK2', 'Rifle de asalto MK2', 1, 0, 'weapon'),
	(67, 'WEAPON_CARBINERIFLE', 'Carabina', 1, 0, 'weapon'),
	(68, 'WEAPON_CARBINERIFLE_MK2', 'Carabina MK2', 1, 0, 'weapon'),
	(69, 'WEAPON_ADVANCEDRIFLE', 'Rifle avanzado', 1, 0, 'weapon'),
	(70, 'WEAPON_SPECIALCARBINE', 'Carabina especial', 1, 0, 'weapon'),
	(71, 'WEAPON_SPECIALCARBINE_MK2', 'Carabina esp. MK2', 1, 0, 'weapon'),
	(72, 'WEAPON_BULLPUPRIFLE', 'Rifle bullpup', 1, 0, 'weapon'),
	(73, 'WEAPON_COMPACTRIFLE', 'Rifle compacto', 1, 0, 'weapon'),
	(74, 'WEAPON_SNIPERRIFLE', 'Rifle Sniper', 1, 0, 'weapon'),
	(75, 'WEAPON_HEAVYSNIPER', 'Heavy Sniper', 1, 0, 'weapon'),
	(76, 'WEAPON_HEAVYSNIPER_MK2', 'Heavy Sniper MK2', 1, 0, 'weapon'),
	(77, 'WEAPON_BZGAS', 'Gas BZ', 1, 0, 'weapon'),
	(78, 'WEAPON_MOLOTOV', 'Molotov', 1, 0, 'weapon'),
	(79, 'WEAPON_STICKYBOMB', 'C4', 1, 0, 'weapon'),
	(80, 'WEAPON_SNOWBALL', 'Bola de nieve', 1, 0, 'weapon'),
	(81, 'WEAPON_BALL', 'Pelota', 1, 0, 'weapon'),
	(82, 'WEAPON_FLARE', 'Bengala', 1, 0, 'weapon'),
	(83, 'WEAPON_PETROLCAN', 'Bidon de gasolina', 1, 0, 'weapon'),
	(84, 'GADGET_PARACHUTE', 'ParacaÃ­das', 1, 0, 'weapon'),
	(85, 'WEAPON_FIREEXTINGUISHER', 'Extintor', 1, 0, 'weapon'),
	(86, 'remote', 'Mando TV', 0.2, 0, 'item'),
	(87, 'carkey', 'Llaves', 0.2, 0, 'item'),
	(88, 'cheque', 'Cheque Policial', 0.1, 0, 'item'),
	(89, 'radio', 'Walkie Talkie', 0.5, 0, 'item'),
	(91, 'estanciapack', 'Estancia', 0.1, 0, 'item'),
	(92, 'cola', 'Cola', 0.2, 0, 'food'),
	(93, 'sprunk', 'Sprunk', 0.2, 0, 'food'),
	(94, 'piswasser', 'Piswasser', 0.2, 0, 'food'),
	(95, 'mount_whisky', 'Mount Whisky', 0.2, 0, 'food'),
	(96, 'tequila', 'Tequila', 0.2, 0, 'food'),
	(97, 'nogo_vodka', 'Vodka', 0.2, 0, 'food'),
	(98, 'raine', 'Raine', 0.2, 0, 'food'),
	(100, 'costa_del_perro', 'Vino Costa del Perro', 0.2, 0, 'food'),
	(101, 'rockford_hill', 'Vino Rockford Hill', 0.2, 0, 'food'),
	(102, 'vinewood_red', 'Vino Blanco', 0.2, 0, 'food'),
	(103, 'vinewood_blanc', 'Vino Rojo', 0.2, 0, 'food'),
	(104, 'hifi', 'Altavoz', 0.5, 0, 'item'),
	(105, 'pill', 'Pastilla', 0, 5000, 'drug'),
	(106, 'pill2', 'Pastillas para el estrÃ©s', 0, 5000, 'drug'),
	(107, 'anxiolytic', 'AnsiolÃ­tico', 0, 5000, 'drug'),
	(108, 'motelkey', 'Llaves de motel', 0, 2, 'item'),
	(109, 'emptyclip', 'Cargador vacÃ­o', 0, 5000, 'weapon'),
	(111, 'sns_clip', 'Cargador de SNS', 0.1, 0, 'weapon'),
	(112, 'vintage_clip', 'Cargador de Vintage', 0.1, 0, 'weapon'),
	(113, 'heavypistol_clip', 'Cargador de H.Pistol', 0.1, 0, 'weapon'),
	(114, 'uzi_clip', 'Cargador de Uzi', 0.1, 0, 'weapon'),
	(115, 'skorpion_clip', 'Cargador de Skorpion', 0.1, 0, 'weapon'),
	(117, 'arm_pistol', 'ArmazÃ³n de Pistola', 0.1, 0, 'weapon'),
	(118, 'dock_pistol', 'Muelle Recuperador', 0.1, 0, 'weapon'),
	(119, 'canon_pistol', 'CaÃ±Ã³n de Pistola', 0.1, 0, 'weapon'),
	(120, 'arm_subfusil', 'ArmazÃ³n de Subfusil', 0.1, 0, 'weapon'),
	(121, 'canon_subfusil', 'CaÃ±Ã³n de Subfusil', 0.1, 0, 'weapon'),
	(122, 'alza_subfusil', 'Alza Subfusil', 0.1, 0, 'weapon'),
	(123, 'culata_subfusil', 'Culata Subfusil', 0.1, 0, 'weapon'),
	(124, 'arm_escopeta', 'ArmazÃ³n de Escopeta', 0.1, 0, 'weapon'),
	(125, 'canon_escopeta', 'CaÃ±Ã³n de Escopeta', 0.1, 0, 'weapon'),
	(126, 'disip_escopeta', 'Disipador', 0.1, 0, 'weapon'),
	(127, 'corre_escopeta', 'Corredera', 0.1, 0, 'weapon'),
	(128, 'arm_fusil', 'ArmazÃ³n de Fusil', 0.1, 0, 'weapon'),
	(129, 'supre_fusil', 'Supresor de Fusil', 0.1, 0, 'weapon'),
	(130, 'canon_fusil', 'CaÃ±Ã³n de Fusil', 0.1, 0, 'weapon'),
	(131, 'emp_fusil', 'EmpuÃ±adura de Fusil', 0.1, 0, 'weapon'),
	(132, 'culata_fusil', 'Culata retrÃ¡ctil Fusil', 0.1, 0, 'weapon'),
	(133, 'mortero', 'Mortero', 0.1, 0, 'drug'),
	(134, 'bolsa_hermetica', 'Bolsa hermÃ©tica', 0, 5000, 'drug'),
	(135, 'balanza', 'Balanza', 0.1, 0, 'drug'),
	(136, 'hoja_cocalero', 'Hojas de Cocalero', 0, 5000, 'drug'),
	(137, 'cocalero_troceado', 'Cocalero Troceado', 0, 5000, 'drug'),
	(138, 'soda_caustica', 'Soda CÃ¡ustica', 0, 5000, 'drug'),
	(139, 'amoniaco', 'AmonÃ­aco', 0.1, 5000, 'drug'),
	(140, 'acetona', 'Acetona', 0.1, 5000, 'drug'),
	(141, 'pasta_coca', 'Pasta de Coca', 0, 5000, 'drug'),
	(142, 'clorhidrato_coca', 'Clorhidrato de Coca', 0, 5000, 'drug'),
	(143, 'chivato_coca', 'Chivato de Coca', 0, 5000, 'drug'),
	(144, 'bolsa_hachis', 'Bolsas de HachÃ­s', 0, 5000, 'drug'),
	(145, 'hachis', 'HachÃ­s', 0, 5000, 'drug'),
	(146, 'bloque_hachis', 'Bloque de HachÃ­s', 0, 5000, 'drug'),
	(147, 'resina_kief', 'Resina de Kief', 0, 5000, 'drug'),
	(148, 'hoja_hachis', 'Hojas de HachÃ­s', 0, 5000, 'drug'),
	(149, 'tamiz', 'Tamiz', 0.1, 0, 'drug'),
	(150, 'hoja_polvo', 'Hoja en polvo', 0, 5000, 'drug'),
	(151, 'resina_adormidera', 'Resina de Adormidera', 0, 5000, 'drug'),
	(153, 'cristal_opio', 'Cristal de Opio', 0, 5000, 'drug'),
	(154, 'opio_triturado', 'Opio Triturado', 0, 5000, 'drug'),
	(155, 'bolsa_opio', 'Bolsas de Opio', 0, 5000, 'drug'),
	(156, 'maceta', 'Macetas', 0.1, 20, 'drug'),
	(157, 'fertilizante', 'Fertilizante', 0, 5000, 'drug'),
	(158, 'agua_purificada', 'Agua Purificada', 0, 5000, 'drug'),
	(159, 'semillas', 'Semillas de Maria', 0, 5000, 'drug'),
	(160, 'ramas_marihuana', 'Ramas de Maria', 0, 5000, 'drug'),
	(161, 'cogollos_marihuana', 'Cogollos de Maria', 0, 5000, 'drug'),
	(162, 'bolsa_marihuana', 'Bolsas de Maria', 0, 5000, 'drug'),
	(164, 'codeina', 'CodeÃ­na', 0, 5000, 'drug'),
	(165, 'extasis', 'Pastilla de Ã‰xtasis', 0, 5000, 'drug'),
	(166, 'spraycan', 'Bote de spray', 0.1, 0, 'item'),
	(167, 'tabaccopack', 'Paquete de tabaco', 1, 0, 'item'),
	(168, 'cigarrete', 'Cigarro', 0.1, 0, 'item'),
	(169, 'sprayremover', 'Trapo', 0.1, 0, 'item'),
	(170, 'lighter', 'Mechero', 0.1, 0, 'item'),
	(171, 'rolex', 'Rolex', 0.1, 0, 'item'),
	(172, 'ring', 'Anillo', 0.1, 0, 'item'),
	(173, 'necklace', 'Collar', 0.1, 0, 'item'),
	(174, 'cizallas', 'Cizallas', 1, 0, 'drug'),
	(175, 'laptophack', 'PortÃ¡til de Hackeo', 0.1, 0, 'item'),
	(176, 'hackusb', 'USB de Hackeo', 0.1, 0, 'item'),
	(177, 'c4', 'C4', 0.1, 6, 'item'),
	(178, 'thermite', 'Termita', 0.1, 10, 'item'),
	(179, 'drill', 'Taladro', 0.1, 0, 'item'),
	(180, 'phone', 'MÃ³vil', 0.2, 0, 'item'),
	(181, 'house_keys', 'Llaves de casa', 0, 0, 'item'),
	(184, 'bulletproof', 'Chaleco Antibalas', 0.5, 0, 'item'),
	(185, 'gominola', 'Gominolas', 0.1, 0, 'food'),
	(186, 'chips', 'Bolsa Chips', 0.2, 0, 'food'),
	(187, 'redbull', 'Redbull', 0.1, 0, 'food'),
	(188, 'monster', 'Monster', 0.5, 0, 'food'),
	(189, 'limonada', 'Limonada', 0.3, 0, 'food'),
	(190, 'camuflaje', 'Camuflaje', 0.1, 0, 'weapon'),
	(191, 'scope', 'Mirilla', 0.1, 0, 'weapon'),
	(192, 'mediumscope', 'Mira Mediana', 0.1, 0, 'weapon'),
	(193, 'holografik_scope', 'Mira HologrÃ¡fica', 0.1, 0, 'weapon'),
	(194, 'culata', 'Culata', 0.1, 0, 'weapon'),
	(195, 'silenciador', 'Silenciador', 0.1, 0, 'weapon'),
	(196, 'linterna', 'Linterna Arma', 0.1, 0, 'weapon'),
	(197, 'largescope', 'Mira Larga', 0.1, 0, 'weapon'),
	(198, 'mounted_scope', 'Mira Montada', 0.1, 0, 'weapon'),
	(199, 'lockpick', 'Ganzua', 0.1, 0, 'item'),
	(203, 'laptop', 'PortÃ¡til', 0.1, 0, 'item'),
	(205, 'pistol_box', 'Caja balas de Pistola', 0.1, 0, 'weapon'),
	(206, 'shotgun_box', 'Caja con Cartuchos', 0.1, 0, 'weapon'),
	(207, 'subfusil_box', 'Caja balas de Subfusil', 0.1, 0, 'weapon'),
	(208, 'fusil_box', 'Caja balas de Fusil', 0.1, 0, 'weapon'),
	(209, 'lean', 'Lean', 0.3, 5000, 'drug'),
	(210, 'bote_vacio', 'Bote vacio', 0.1, 5000, 'drug'),
	(211, 'bote_extasis', 'Bote de Ã‰xtasis', 0, 5000, 'drug'),
	(212, 'saco', 'Saco', 0.4, 10, 'item'),
	(213, 'botella_buceo', 'Bombona de buceo', 1.5, 0, 'item'),
	(214, 'paintingg', 'Cuadro 1', 0.2, 0, 'item'),
	(215, 'paintingf', 'Cuadro 2', 0.2, 0, 'item'),
	(216, 'paintingh', 'Cuadro 3', 0.2, 0, 'item'),
	(217, 'paintingj', 'Cuadro 4', 0.2, 0, 'item'),
	(218, 'vanDiamond', 'Diamante', 1, 0, 'item'),
	(219, 'tv', 'Television', 1.5, 0, 'item'),
	(220, 'telescope', 'Telescopio', 1, 0, 'item'),
	(221, 'art', 'Pintura', 0.2, 0, 'item'),
	(222, 'laptop', 'Portatil', 0.1, 0, 'item'),
	(223, 'microwave', 'Microondas', 0.1, 0, 'item'),
	(224, 'coffemaker', 'Cafetera', 0.1, 0, 'item'),
	(225, 'hack_usb', 'USB Encriptado', 0, 0, 'item'),
	(226, 'sanwich_jamon', 'Sandwich de Jamon', 0.1, 0, 'food'),
	(229, 'bocata_lomo', 'Bocadillo de lomo', 0.1, 0, 'food'),
	(230, 'hotdogs', 'Perrito Caliente', 0.1, 0, 'food'),
	(231, 'donut', 'Donut', 0.1, 0, 'food'),
	(232, 'coffee', 'CafÃ©', 0.1, 0, 'food'),
	(233, 'porcion_pizza', 'PorciÃ³n de Pizza', 0.1, 0, 'food'),
	(234, 'doritos', 'Doritos', 0.1, 0, 'food'),
	(236, 'whisky_jm', 'Whisky JM', 0.5, 0, 'food'),
	(237, 'burger', 'Hamburguesa', 0.1, 0, 'food'),
	(238, 'ron', 'Ron', 0.1, 0, 'food'),
	(239, 'water', 'Agua', 0.2, 0, 'food'),
	(241, 'taco_suadero', 'Taco de Suadero', 0.1, 0, 'food'),
	(242, 'taco_campechanos', 'Tacos Campechanos', 0.1, 0, 'food'),
	(243, 'papeldeliar', 'Papel de L', 0, 0, 'drug'),
	(244, 'joint', 'Porro', 0.1, 0, 'drug'),
	(245, 'cremavegetal', 'Crema Vegetal', 0.1, 0, 'item'),
	(246, 'peluche_gato1', 'Peluche Gato Azul', 0.1, 0, 'item'),
	(247, 'peluche_gato2', 'Peluche Gato Verde', 0.1, 0, 'item'),
	(248, 'peluche_gato3', 'Peluche Gato Rosa', 0.1, 0, 'item'),
	(249, 'peluche_gato4', 'Peluche Gato MarrÃ³n', 0.1, 0, 'item'),
	(250, 'peluche_gato5', 'Peluche Gato Amarillo', 0.1, 0, 'item'),
	(251, 'peluche_gato6', 'Peluche Gato Rojo', 0.1, 0, 'item'),
	(252, 'peluche_chicarosa', 'Peluche Chica Rosa', 0.1, 0, 'item'),
	(253, 'peluche_chicaverde', 'Peluche Chica Verde', 0.1, 0, 'item'),
	(254, 'sushi', 'Sushi', 0.1, 0, 'food'),
	(255, 'galletas_sinchan', 'Galletas Shin Chan', 0.1, 0, 'food'),
	(256, 'arrozensalada', 'Arroz Ensalada', 0.1, 0, 'food'),
	(257, 'sake', 'Sake', 0.1, 0, 'food'),
	(258, 'pastelito', 'Pastelito', 0.1, 0, 'food'),
	(259, 'bubbletea', 'Bubble Tea', 0.1, 0, 'food'),
	(260, 'helado', 'Helado', 0.1, 0, 'food'),
	(261, 'dango', 'Dango', 0.1, 0, 'food'),
	(262, 'mochi', 'Mochi', 0.1, 0, 'food'),
	(263, 'poky', 'Poky', 0.1, 0, 'food'),
	(264, 'macarons', 'Macarons', 0.1, 0, 'food'),
	(265, 'cutter', 'Radial', 0.1, 0, 'item'),
	(267, 'ingots_gold', 'Lingotes de oro', 0, 1000, 'item'),
	(268, 'bandanaroja', 'Bandana Roja', 0.1, 0, 'item'),
	(269, 'bandanaazul', 'Bandana Azul', 0.1, 0, 'item'),
	(270, 'bandanaceleste', 'Bandana Celeste', 0.1, 0, 'item'),
	(277, 'clorhexidina', 'Clorhexidina', 0.1, 0, 'drug'),
	(278, 'kitauxilios', 'Kit de P.Auxilios', 0.1, 0, 'drug'),
	(279, 'apositos', 'ApÃ³sitos', 0.1, 0, 'drug'),
	(280, 'rollito_primavera', 'Rollito Primavera', 0.1, 0, 'food'),
	(282, 'arroz_tres_delicias', 'ArrÃ³z Tres Delicias', 0.1, 0, 'food'),
	(283, 'funkoavengers', 'Funko Avengers', 0.1, 0, 'item'),
	(284, 'funkogato', 'Funko Gato', 0.1, 0, 'item'),
	(285, 'funkoharry', 'Funko Harry', 0.1, 0, 'item'),
	(286, 'funkomonstruo', 'Funko Monstruo', 0.1, 0, 'item'),
	(287, 'funkomorty', 'Funko Morty', 0.1, 0, 'item'),
	(288, 'funkoprincesa', 'Funko Princesa', 0.1, 0, 'item'),
	(289, 'funkorata', 'Funko Rata', 0.1, 0, 'item'),
	(290, 'funkostitch', 'Funko Stitch', 0.1, 0, 'item'),
	(292, 'pan_chino', 'Pan Chino', 0.1, 0, 'food'),
	(294, 'tabletcarreras', 'Tablet', 0.1, 0, 'item'),
	(295, 'pan_chino', 'Pan Chino', 0.1, 0, 'food'),
	(297, 'patatas_gamba', 'Patatas de Gamba', 0.1, 0, 'food'),
	(298, 'wantun_frito', 'Wan-Tun Frito', 0.1, 0, 'food'),
	(299, 'pato_pekin', 'Pato Pekin', 0.1, 0, 'food'),
	(300, 'manzana', 'Manzana', 0.1, 0, 'food'),
	(301, 'platano', 'PlÃ¡tano', 0.1, 0, 'food'),
	(302, 'naranja', 'Naranja', 0.1, 0, 'food'),
	(303, 'piÃ±a', 'PiÃ±a', 0.1, 0, 'food'),
	(304, 'melocoton', 'MelocotÃ³n', 0.1, 0, 'food'),
	(305, 'fresas', 'Fresas', 0.1, 0, 'food'),
	(306, 'pollo_almendras', 'Pollo Con Almendras', 0.1, 0, 'food'),
	(307, 'pollo_limon', 'Pollo Al LimÃ³n', 0.1, 0, 'food'),
	(308, 'pescado_especial', 'Pescado especial', 0.1, 0, 'food'),
	(309, 'ternera', 'Ternera Con BambÃº y Setas', 0.1, 0, 'food'),
	(310, 'tallarines', 'Tallarines Cantones', 0.1, 0, 'food'),
	(311, 'flan', 'Flan Biscuit', 0.1, 0, 'food'),
	(312, 'profiteroles', 'Profiteroles', 0.1, 0, 'food'),
	(313, 'mecedonia', 'Mecedonia De Lichis', 0.1, 0, 'food'),
	(314, 'brownie_cannabis', 'Brownie Cannabis', 0.1, 0, 'food'),
	(316, 'tarjetasecret', 'Llave del taller', 0.1, 0, 'item'),
	(317, 'cereal', 'Cereales', 0.1, 0, 'food'),
	(318, 'heladof', 'Helado De Frutas', 0.1, 0, 'food'),
	(319, 'leche', 'Leche', 0.1, 0, 'food'),
	(320, 'yogurt', 'Yogurt', 0.1, 0, 'food'),
	(321, 'zumo', 'Zumo De Naranja', 0.1, 0, 'food'),
	(322, 'tunerchip', 'Chip de Tuneo', 0.1, 0, 'item'),
	(323, 'leche_vaca', 'Leche de Vaca', 0.1, 0, 'food'),
	(324, 'huevos_hervidos', 'Huevos Hervidos', 0.1, 0, 'food'),
	(325, 'oreja_cerdo', 'Oreja de Cerdo', 0.1, 0, 'food'),
	(326, 'panceta', 'Panceta', 0.1, 0, 'food'),
	(327, 'solomillo_cerdo', 'Solomillo de Cerdo', 0.1, 0, 'food'),
	(328, 'pechuga_pollo', 'Pechuga de Pollo', 0.1, 0, 'food'),
	(329, 'ternera', 'Ternera', 0.1, 0, 'food'),
	(330, 'arroz_leche', 'ArrÃ³z con Leche', 0.1, 0, 'food'),
	(331, 'chocolate_caliente', 'Chocolate Caliente', 0.1, 0, 'food'),
	(332, 'galleta_merengue', 'Galleta de Merengue', 0.1, 0, 'food'),
	(333, 'horchata', 'Horchata', 0.1, 0, 'food'),
	(334, 'pastel_queso', 'Pastel de Queso', 0.1, 5, 'food'),
	(335, 'empanada', 'Empanadas', 0.1, 0, 'food'),
	(336, 'fakeplate', 'MatrÃ­cula Falsa', 0.3, 0, 'item'),
	(338, 'vip_bahamas', 'Tarjeta VIP Bahamas', 0.1, 0, 'item'),
	(339, 'pulsera_bahamas', 'Pulsera Bahamas', 0.1, 0, 'Item'),
	(349, 'ecookie', 'Grow Cookie', 0.1, 0, 'food'),
	(350, 'kinderbueno', 'Kinder Bueno', 0.1, 2000, 'food'),
	(351, 'huesitos', 'Huesitos', 0, 0, 'food'),
	(352, 'tarjetahospital', 'Membresia Hospital', 0, 0, 'item'),
	(353, 'tarjetasandycar10', '10% Descuento SandyCar', 0, 0, 'item'),
	(354, 'taco', 'Taco', 0, 0, 'food'),
	(355, 'burrito', 'Burrito', 0, 0, 'food'),
	(356, 'quesadilla', 'Quesadillas', 0, 0, 'food'),
	(357, 'tcookie', 'Grow Cookie', 0, 0, 'food'),
	(358, 'frutsi', 'Frutsi', 0, 0, 'food'),
	(359, 'torta_asada', 'Tortas Asada', 0, 0, 'food'),
	(360, 'torta_picadillo', 'Tortas Picadillo', 0, 0, 'food'),
	(361, 'torta_buche', 'Tortas Buche', 0, 0, 'food'),
	(362, 'noodle_box', 'Fideos Chinos', 0.1, 0, 'food'),
	(363, 'plate_1', 'Guarnicion', 0.1, 0, 'food'),
	(364, 'plate_2', 'Porcion de Pizza', 0.1, 0, 'food'),
	(365, 'plate_3', 'Burrito', 0.1, 0, 'food'),
	(366, 'plate_4', 'Cuenco de Lentejas', 0.1, 0, 'food'),
	(367, 'coffee_serve', 'Copa', 0.1, 0, 'food'),
	(368, 'cola_serve', 'Refresco', 0.1, 0, 'food'),
	(369, 'sprunk_serve', 'Bebida alcoholica', 0.1, 0, 'food'),
	(370, 'ronshot', 'Ron', 0.1, 0, 'food'),
	(371, 'whiskeyshot', 'Whiskey', 0.1, 0, 'food'),
	(372, 'shot', 'Tequila', 0.1, 0, 'food'),
	(373, 'herbshot', 'Licor de hierbas', 0.1, 0, 'food'),
	(374, 'cnshot', 'chupito', 0.1, 0, 'food'),
	(375, 'boombox', 'Altavoz', 1, 0, 'item'),
	(377, 'killerwhale', 'Orca', 0.5, 0, 'item'),
	(378, 'dolphin', 'Delfin', 0.3, 0, 'item'),
	(379, 'sharkhammer', 'Tiburon martillo', 0.3, 0, 'item'),
	(380, 'sharktiger', 'Tiburon tigre', 0.3, 0, 'item'),
	(381, 'stingray', 'Manta raya', 0.3, 0, 'item'),
	(382, 'flounder', 'Lenguado', 0.3, 0, 'item'),
	(383, 'fishingboot', 'Bota', 0.1, 0, 'item'),
	(384, 'bass', 'Lubina', 0.3, 0, 'item'),
	(385, 'codfish', 'Bacalao', 0.3, 0, 'item'),
	(386, 'fishingtin', 'Lata', 0, 0, 'item'),
	(387, 'mackerel', 'Caballa', 0.2, 0, 'item'),
	(388, 'fishbait', 'Carnada de Pez', 0, 0, 'item'),
	(389, 'fishingrod', 'CaÃ±a de Pescar', 0, 0, 'item'),
	(390, 'anchor', 'Ancla', 0, 0, 'item'),
	(391, 'bolsa_meta', 'Bolsa de meta', 0.1, 0, 'drug');

-- Volcando estructura para tabla Oryzon-Snaily.notas
CREATE TABLE IF NOT EXISTS `notas` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(55) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.notas: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.notas_admin
CREATE TABLE IF NOT EXISTS `notas_admin` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(55) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla Oryzon-Snaily.notas_admin: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.okokbilling
CREATE TABLE IF NOT EXISTS `okokbilling` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `receiver_identifier` varchar(255) NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `author_identifier` varchar(255) NOT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `society` varchar(255) NOT NULL,
  `society_name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `invoice_value` int(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `notes` varchar(255) DEFAULT ' ',
  `sent_date` varchar(255) NOT NULL,
  `limit_pay_date` varchar(255) DEFAULT NULL,
  `fees_amount` int(50) DEFAULT 0,
  `paid_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.okokbilling: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.outfits
CREATE TABLE IF NOT EXISTS `outfits` (
  `identifier` varchar(50) DEFAULT NULL,
  `name` varchar(125) DEFAULT NULL,
  `skin` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.outfits: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.owned_vehicles
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `id` varchar(50) NOT NULL,
  `owner` varchar(128) DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `vehicleshop` varchar(50) DEFAULT NULL,
  `plate` varchar(8) DEFAULT 'NOPLATE',
  `stored` int(11) DEFAULT 0,
  `vehicle` mediumtext DEFAULT '{}',
  `garage` varchar(128) DEFAULT 'deposit',
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `plate` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla Oryzon-Snaily.owned_vehicles: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.phone_ads
CREATE TABLE IF NOT EXISTS `phone_ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT NULL,
  `job` varchar(50) DEFAULT 'default',
  `author` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(512) DEFAULT NULL,
  `data` varchar(256) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.phone_ads: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.phone_chats
CREATE TABLE IF NOT EXISTS `phone_chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Unknown',
  `settings` text DEFAULT NULL,
  `muted` tinyint(1) DEFAULT 0,
  `lastOpened` bigint(20) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.phone_chats: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.phone_contacts
CREATE TABLE IF NOT EXISTS `phone_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Unknown',
  `photo` varchar(512) DEFAULT '',
  `tag` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.phone_contacts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.phone_darkgroups
CREATE TABLE IF NOT EXISTS `phone_darkgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invitecode` varchar(50) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `photo` varchar(512) NOT NULL DEFAULT '',
  `maxmembers` int(11) DEFAULT 0,
  `members` mediumtext NOT NULL,
  `bannedmembers` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.phone_darkgroups: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.phone_darkmessages
CREATE TABLE IF NOT EXISTS `phone_darkmessages` (
  `from` varchar(255) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `message` varchar(512) DEFAULT NULL,
  `attachments` mediumtext NOT NULL DEFAULT '[]',
  `time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.phone_darkmessages: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.phone_groups
CREATE TABLE IF NOT EXISTS `phone_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `photo` varchar(512) NOT NULL DEFAULT '',
  `members` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.phone_groups: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.phone_invoices
CREATE TABLE IF NOT EXISTS `phone_invoices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `society` tinytext DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `sendercitizenid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`token`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.phone_invoices: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.phone_mail
CREATE TABLE IF NOT EXISTS `phone_mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(128) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `starred` tinyint(1) NOT NULL DEFAULT 0,
  `mail` longtext NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 0,
  `muted` tinyint(1) NOT NULL DEFAULT 0,
  `lastOpened` bigint(20) NOT NULL DEFAULT 0,
  `lastMail` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.phone_mail: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.phone_mailaccounts
CREATE TABLE IF NOT EXISTS `phone_mailaccounts` (
  `address` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `photo` varchar(255) DEFAULT '',
  UNIQUE KEY `address` (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.phone_mailaccounts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `message` varchar(512) DEFAULT NULL,
  `attachments` mediumtext NOT NULL DEFAULT '[]',
  `time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.phone_messages: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.phone_transactions
CREATE TABLE IF NOT EXISTS `phone_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `time` bigint(20) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.phone_transactions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.phone_tweets
CREATE TABLE IF NOT EXISTS `phone_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reply` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `authorimg` varchar(255) DEFAULT NULL,
  `authorrank` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'none',
  `views` int(11) NOT NULL DEFAULT 0,
  `likes` int(11) NOT NULL DEFAULT 0,
  `time` bigint(20) DEFAULT NULL,
  `likers` longtext NOT NULL DEFAULT '[]',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.phone_tweets: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.phone_twitteraccounts
CREATE TABLE IF NOT EXISTS `phone_twitteraccounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `blockedusers` longtext DEFAULT NULL,
  `followers` longtext DEFAULT NULL,
  `following` longtext DEFAULT NULL,
  `banneduntil` datetime DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `picture` varchar(512) DEFAULT NULL,
  `rank` varchar(50) NOT NULL DEFAULT 'default',
  `joinedat` bigint(20) NOT NULL DEFAULT 0,
  `banner` varchar(512) NOT NULL DEFAULT '#000',
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.phone_twitteraccounts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.plants
CREATE TABLE IF NOT EXISTS `plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coords` longtext DEFAULT NULL,
  `plantgender` int(11) DEFAULT NULL,
  `water` int(11) DEFAULT NULL,
  `fertilizer` int(11) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2655 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- Volcando datos para la tabla Oryzon-Snaily.plants: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.players
CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `inventory` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
  `coords` longtext DEFAULT NULL,
  `skills` longtext DEFAULT NULL,
  `money` longtext DEFAULT NULL,
  `identity` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `gallery` longtext DEFAULT '[]',
  `skin` longtext DEFAULT '[]',
  `fade` longtext DEFAULT '[]',
  `phone` varchar(50) DEFAULT NULL,
  `contacts` longtext DEFAULT '[]',
  `ped` varchar(50) DEFAULT NULL,
  `vip` varchar(50) DEFAULT NULL,
  `job` longtext DEFAULT '[]',
  `gang` longtext DEFAULT '[]',
  `bills` longtext DEFAULT NULL,
  `dimension` int(11) DEFAULT NULL,
  `dead` int(11) DEFAULT NULL,
  `jail` int(11) DEFAULT NULL,
  `twitteraccount` varchar(50) DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `calls` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `photos` longtext DEFAULT NULL,
  `darkchatuser` mediumtext DEFAULT NULL,
  `have_house` int(11) DEFAULT 0,
  `have_cohouse` int(11) DEFAULT 0,
  `tattoos` longtext DEFAULT '[]',
  `iban` varchar(50) DEFAULT NULL,
  `maildata` mediumtext DEFAULT NULL,
  `mailaccount` varchar(50) DEFAULT NULL,
  `hours` int(11) DEFAULT 0,
  `metadata` longtext DEFAULT NULL,
  `twitterban` datetime DEFAULT NULL,
  `reminders` longtext DEFAULT NULL,
  `playlists` longtext DEFAULT NULL,
  `secure` int(1) DEFAULT NULL,
  `searched` int(11) DEFAULT NULL,
  `picture` mediumtext DEFAULT 'https://media.istockphoto.com/vectors/default-avatar-profile-icon-grey-photo-placeholder-vector-id846183008?k=20&m=846183008&s=170667a&w=0&h=WIxZSP7aJ9jSvW3xqzDsWSI5g666kVBBgCNkABzYs68=',
  `type` varchar(50) DEFAULT 'user',
  `notas` longtext DEFAULT '[]',
  `danger` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `id` (`id`),
  KEY `name` (`name`),
  KEY `discord` (`discord`),
  KEY `inventory` (`inventory`(1024)),
  KEY `group` (`group`),
  KEY `coords` (`coords`(1024)),
  KEY `skills` (`skills`(1024)),
  KEY `money` (`money`(1024)),
  KEY `identity` (`identity`(1024)),
  KEY `status` (`status`(1024)),
  KEY `gallery` (`gallery`(1024)),
  KEY `skin` (`skin`(1024)),
  KEY `fade` (`fade`(1024)),
  KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.players: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.radiocar
CREATE TABLE IF NOT EXISTS `radiocar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(64) NOT NULL,
  `url` varchar(256) NOT NULL,
  `spz` varchar(32) NOT NULL,
  `index_music` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.radiocar: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.radiocar_owned
CREATE TABLE IF NOT EXISTS `radiocar_owned` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spz` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.radiocar_owned: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.ra_music_history
CREATE TABLE IF NOT EXISTS `ra_music_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_identifier` varchar(60) DEFAULT NULL,
  `youtube_title` varchar(100) DEFAULT NULL,
  `youtube_url` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `FK_ra_music_history` (`player_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.ra_music_history: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.ra_permanent_entities
CREATE TABLE IF NOT EXISTS `ra_permanent_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) NOT NULL DEFAULT '',
  `model` varchar(60) NOT NULL DEFAULT '0.0',
  `x` decimal(7,2) NOT NULL DEFAULT 0.00,
  `y` decimal(7,2) NOT NULL DEFAULT 0.00,
  `z` decimal(7,2) NOT NULL DEFAULT 0.00,
  `heading` decimal(7,2) NOT NULL DEFAULT 0.00,
  `player_identifier` varchar(60) NOT NULL DEFAULT '',
  `public` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.ra_permanent_entities: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.ra_racing_events
CREATE TABLE IF NOT EXISTS `ra_racing_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_identifier` varchar(60) NOT NULL,
  `text` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.ra_racing_events: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.ra_racing_races
CREATE TABLE IF NOT EXISTS `ra_racing_races` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `track_id` int(11) NOT NULL,
  `started_by_identifier` varchar(60) NOT NULL,
  `participant_amount` int(11) DEFAULT NULL,
  `is_competition` tinyint(2) NOT NULL,
  `prize_money` int(11) DEFAULT 0,
  `start_time` datetime DEFAULT NULL,
  `vehicle_class` varchar(4) DEFAULT NULL,
  `lap_amount` tinyint(4) DEFAULT NULL,
  `finished_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.ra_racing_races: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.ra_racing_results
CREATE TABLE IF NOT EXISTS `ra_racing_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `race_id` int(11) NOT NULL,
  `track_id` int(11) NOT NULL,
  `player_identifier` varchar(60) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT NULL,
  `prize_money` int(11) DEFAULT 0,
  `rating_gain` int(3) DEFAULT 0,
  `vehicle_model` varchar(100) DEFAULT NULL,
  `vehicle_model_name` varchar(100) DEFAULT NULL,
  `vehicle_class` varchar(100) DEFAULT NULL,
  `best_time` int(11) DEFAULT NULL,
  `best_time_string` varchar(40) NOT NULL,
  `total_time` int(11) DEFAULT NULL,
  `total_time_string` varchar(40) NOT NULL,
  `finished_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `FK_ra_racing_results_ra_racing_races` (`race_id`),
  KEY `FK_ra_racing_results_ra_racing_tracks` (`track_id`),
  CONSTRAINT `FK_ra_racing_results_ra_racing_races` FOREIGN KEY (`race_id`) REFERENCES `ra_racing_races` (`id`),
  CONSTRAINT `FK_ra_racing_results_ra_racing_tracks` FOREIGN KEY (`track_id`) REFERENCES `ra_racing_tracks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.ra_racing_results: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.ra_racing_tracks
CREATE TABLE IF NOT EXISTS `ra_racing_tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator_identifier` varchar(60) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `type` enum('SPRINT','CIRCUIT') NOT NULL,
  `checkpoints` longtext NOT NULL,
  `objects` longtext NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.ra_racing_tracks: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.ra_racing_user_settings
CREATE TABLE IF NOT EXISTS `ra_racing_user_settings` (
  `player_identifier` varchar(60) NOT NULL,
  `alias` varchar(40) DEFAULT 'Unnamed',
  `profile_picture` varchar(100) NOT NULL DEFAULT 'https://i.imgur.com/Lu9dGJH.png',
  `rating` smallint(6) DEFAULT 1400,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`player_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.ra_racing_user_settings: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.rde
CREATE TABLE IF NOT EXISTS `rde` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator` varchar(255) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.rde: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.sprays
CREATE TABLE IF NOT EXISTS `sprays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) DEFAULT NULL,
  `x` float(8,4) NOT NULL,
  `y` float(8,4) NOT NULL,
  `z` float(8,4) NOT NULL,
  `rx` float(8,4) NOT NULL,
  `ry` float(8,4) NOT NULL,
  `rz` float(8,4) NOT NULL,
  `scale` float(8,4) NOT NULL,
  `text` varchar(32) NOT NULL,
  `font` varchar(32) NOT NULL,
  `color` int(3) NOT NULL,
  `interior` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.sprays: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.storage
CREATE TABLE IF NOT EXISTS `storage` (
  `name` varchar(255) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `maxWeight` int(11) DEFAULT NULL,
  `blackmoney` int(11) DEFAULT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla Oryzon-Snaily.storage: ~6 rows (aproximadamente)
INSERT INTO `storage` (`name`, `data`, `weight`, `maxWeight`, `blackmoney`) VALUES
	('unemployed', '[]', 0, 10000000, 0),
	('police', '[]', 0, 10000000, 0),
	('ambulance', '[]', 0, 10000000, 0),
	('police-boss-storage', '[]', 0, 35, 0),
	('mechanic', '[]', 0, 10000000, 0),
	('sandycar', '[]', 0, 10000000, 0);

-- Volcando estructura para tabla Oryzon-Snaily.toregister
CREATE TABLE IF NOT EXISTS `toregister` (
  `name` varchar(50) DEFAULT NULL,
  `thirst` int(11) DEFAULT NULL,
  `hunger` int(11) DEFAULT NULL,
  `stress` int(11) DEFAULT NULL,
  `drunk` int(11) DEFAULT NULL,
  `selthirst` varchar(50) DEFAULT NULL,
  `selhunger` varchar(50) DEFAULT NULL,
  `selstress` varchar(50) DEFAULT NULL,
  `seldrunk` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT 'food',
  `prop` varchar(50) DEFAULT NULL,
  `mL` int(11) DEFAULT 100,
  `g` int(11) DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.toregister: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.truckerroutes
CREATE TABLE IF NOT EXISTS `truckerroutes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=683 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.truckerroutes: ~0 rows (aproximadamente)

-- Volcando estructura para tabla Oryzon-Snaily.truckroutes
CREATE TABLE IF NOT EXISTS `truckroutes` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `site` varchar(50) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `money` int(50) DEFAULT NULL,
  `titulo` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `trailer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site` (`site`)
) ENGINE=InnoDB AUTO_INCREMENT=833 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla Oryzon-Snaily.truckroutes: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
