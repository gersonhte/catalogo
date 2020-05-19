-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.6.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.2.0.4947
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura para tabla libreria.autor
CREATE TABLE IF NOT EXISTS `autor` (
  `autor` varchar(6) NOT NULL DEFAULT '',
  `paterno` varchar(20) NOT NULL DEFAULT '',
  `materno` varchar(20) NOT NULL DEFAULT '',
  `nombre` varchar(20) NOT NULL DEFAULT '',
  `comentario` text NOT NULL,
  `borrado` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`autor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla libreria.autor: 29 rows
DELETE FROM `autor`;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` (`autor`, `paterno`, `materno`, `nombre`, `comentario`, `borrado`) VALUES
	('000001', 'Garcia', 'Marquez', 'Gabriel', '', ''),
	('000002', 'Trujillo', 'Bustamante', 'Juan', '', ''),
	('000003', 'Coelho', '', 'Paulo', '', ''),
	('000004', 'Aligieri', '', 'Dante', '', ''),
	('000005', 'Maquiavelo', '', 'Nicolas', '', ''),
	('000006', 'Nietzche', '', 'Federic', '', ''),
	('000007', 'Sagan', '', 'Carl', '', ''),
	('000008', 'Polo', '', 'Marco', '', ''),
	('000009', 'Shakespeare', '', 'William', '', ''),
	('000018', 'Saint-Exupéry', '', 'Antoine', '', ''),
	('000010', 'Hesse', '', 'Hernam', '', ''),
	('000011', 'Trujillo', 'Bustamante', 'Martin', '', ''),
	('000012', 'Tomas', '', 'Kuhn', '', ''),
	('000013', 'Buscaglia', '', 'Leo', 'El doctor amor', ''),
	('000014', 'Palau', '', 'Luis', 'Crisitano', ''),
	('000015', 'Chapman', '', 'Gary', '', ''),
	('000016', 'Norwood', '', 'Robin', '', ''),
	('000017', 'Mariategui', '', 'José Carlos', 'El Amauta', ''),
	('000019', 'Fischman', '', 'David', '', ''),
	('000020', 'Torres', '', 'Hector', '', ''),
	('000021', '', '', '', '', ''),
	('000022', '', '', '', '', ''),
	('000023', 'Lowney', '', 'Chris', '', ''),
	('000024', 'Covey', '', 'Steven', '', ''),
	('000025', 'Smith', '', 'Ron', '', ''),
	('000026', 'Sherrer', '', 'Quin', '', ''),
	('000027', 'Gray', '', 'John', '', ''),
	('000028', 'Lisieux', '', 'Teresa de', '', ''),
	('000029', '', '', 'Anónimo', '', '');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;


-- Volcando estructura para tabla libreria.categoria
CREATE TABLE IF NOT EXISTS `categoria` (
  `categoria` varchar(6) NOT NULL DEFAULT '',
  `nombre` varchar(20) NOT NULL DEFAULT '',
  `imagen` varchar(50) NOT NULL DEFAULT '',
  `borrado` char(1) NOT NULL DEFAULT '',
  `resumen` text NOT NULL,
  PRIMARY KEY (`categoria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla libreria.categoria: 11 rows
DELETE FROM `categoria`;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` (`categoria`, `nombre`, `imagen`, `borrado`, `resumen`) VALUES
	('000001', 'Informatica', 'images/informatica.gif', '', ''),
	('000002', 'Tecnologia', '', 'S', ''),
	('000003', 'Literatura', 'images/literatura.gif', '', ''),
	('000004', 'Liderazgo', 'images/liderazgo.gif', '', ''),
	('000005', 'Religion', '', 'S', ''),
	('000006', 'Idiomas', '', 'S', ''),
	('000007', 'martin', '', 'S', ''),
	('000008', 'martin', '', 'S', ''),
	('000009', 'Psicologia', 'images/img_psicologia.gif', '', ''),
	('000010', 'Religión', '', '', ''),
	('', 'Multimedia', 'images/', '', '');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;


-- Volcando estructura para tabla libreria.comentario
CREATE TABLE IF NOT EXISTS `comentario` (
  `tema` varchar(6) NOT NULL DEFAULT '',
  `comentario` varchar(6) NOT NULL DEFAULT '',
  `fecha` varchar(10) NOT NULL DEFAULT '',
  `valor` text NOT NULL,
  `visitante` varchar(15) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `borrado` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla libreria.comentario: 19 rows
DELETE FROM `comentario`;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` (`tema`, `comentario`, `fecha`, `valor`, `visitante`, `email`, `borrado`) VALUES
	('002', '001', '2007-12-06', 'Amigo estoy tratando de instalar el apache en el Ubuntu, como hago esto', 'Ricardo', 'ricardo_corazon@hotmail.com', ''),
	('001', '001', '2007-12-02', 'No puedes escribir mas???', 'Ruben', 'adsf', ''),
	('001', '002', '2008-02-05', 'Una consulta, como utilizo los procesos crond\r\nSaludos', 'carlos', 'carlos@gmail.com', ''),
	('004', '001', '2008-03-31', 'afds', 'f', 'asfd', ''),
	('004', '002', '2008-03-31', 'afds', 'adf', 'afd', ''),
	('004', '003', '2008-03-31', 'afds', 'adf', 'afd', ''),
	('004', '004', '2008-03-31', 'afds', 'adf', 'afd', ''),
	('004', '005', '2008-03-31', 'afds', 'adf', 'afd', ''),
	('000001', '000001', '2008-05-14', 'Bienvenidos, aqui puede colocar sus comentarios.', 'Martin Trujillo', 'martin_trujillo1105@hotmail.com', ''),
	('002', '001', '2007-12-06', 'Amigo estoy tratando de instalar el apache en el Ubuntu, como hago esto', 'Ricardo', 'ricardo_corazon@hotmail.com', ''),
	('001', '001', '2007-12-02', 'No puedes escribir mas???', 'Ruben', 'adsf', ''),
	('001', '002', '2008-02-05', 'Una consulta, como utilizo los procesos crond\r\nSaludos', 'carlos', 'carlos@gmail.com', ''),
	('004', '001', '2008-03-31', 'afds', 'f', 'asfd', ''),
	('004', '002', '2008-03-31', 'afds', 'adf', 'afd', ''),
	('004', '003', '2008-03-31', 'afds', 'adf', 'afd', ''),
	('004', '004', '2008-03-31', 'afds', 'adf', 'afd', ''),
	('004', '005', '2008-03-31', 'afds', 'adf', 'afd', ''),
	('000001', '000001', '2008-05-14', 'Bienvenidos, aqui puede colocar sus comentarios.', 'Martin Trujillo', 'martin_trujillo1105@hotmail.com', ''),
	('6', '000001', '2010-03-12', '', '', '', '');
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;


-- Volcando estructura para tabla libreria.contactos
CREATE TABLE IF NOT EXISTS `contactos` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `correo` varchar(250) NOT NULL,
  `nombres` varchar(500) NOT NULL,
  `referente` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=153 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla libreria.contactos: 152 rows
DELETE FROM `contactos`;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` (`id`, `correo`, `nombres`, `referente`) VALUES
	(1, 'angie_39@hotmail.com', '', 'LUIS SALAZAR'),
	(2, 'chino_u_stone@bateriaseria.net', '', 'LUIS SALAZAR'),
	(3, 'fiosamhan@hotmail.com', '', 'LUIS SALAZAR'),
	(4, 'amiguero_464@hotmail.com', 'juan carlos salcedo caro ', 'LUIS SALAZAR'),
	(5, 'julimarcel86@hotmail.com', 'julissa marcelo garcia ', 'LUIS SALAZAR'),
	(6, 'luis_libra_vl@hotmail.com', 'lvisito vl de la ghetto ', 'LUIS SALAZAR'),
	(7, 'manuel_n_b_c@hotmail.com', '', 'LUIS SALAZAR'),
	(8, 'mya_1588@hotmail.com', ' Marianella ', 'LUIS SALAZAR'),
	(9, 'otracosa8@hotmail.com', 'N?stor ', 'LUIS SALAZAR'),
	(10, 'niltonlc_311@hotmail.com', '', 'LUIS SALAZAR'),
	(11, 'amigo_189@hotmail.com', 'PEDRO DANIEL YNGA YZQUIERDO ', 'LUIS SALAZAR'),
	(12, 'oubillus_alvarez18@hotmail.com', 'Oscar Ubill?s Alvarez ', 'LUIS SALAZAR'),
	(13, 'pedrocardenas247@hotmail.com', '', 'LUIS SALAZAR'),
	(14, 'poderfuera_22@hotmail.com', '', 'LUIS SALAZAR'),
	(15, 'roly_blas@hotmail.com', '', 'LUIS SALAZAR'),
	(16, 'rosas_de_amor_9@hotmail.com', '', 'LUIS SALAZAR'),
	(17, 'velocidad_03@hotmail.com', '', 'LUIS SALAZAR'),
	(18, 'vivianholgado@hotmail.com', '', 'LUIS SALAZAR'),
	(19, 'alfonsoagueromoras@hotmail.com', 'ALFONSO AGUERO MORAS ', 'MARIA SAHUINCO'),
	(20, 'condorica@hotmail.com', ' candy condori ', 'MARIA SAHUINCO'),
	(21, 'paquita820@hotmail.com', ' ESMERALDA CONDORI NAVARRO ', 'MARIA SAHUINCO'),
	(22, 'blanquita1403@hotmail.com', ' Blanca Camullo ', 'MARIA SAHUINCO'),
	(23, 'auguss@hotmail.com', ' Carlos Sancarranco ', 'MARIA SAHUINCO'),
	(24, 'rozazf4@hotmail.com', ' Carmen Figueroa Zapata ', 'MARIA SAHUINCO'),
	(25, 'cesitarsolamente@hotmail.com', ' Cesar Huamanrrimache ', 'MARIA SAHUINCO'),
	(26, 'dr_rocking62@yahoo.com', ' Einstein Aguayo Chirinos ', 'MARIA SAHUINCO'),
	(27, 'eliaschian@hotmail.com', ' elias chian ', 'MARIA SAHUINCO'),
	(28, 'hermanayalavera@hotmail.com', ' HERMAN AYALA VERGARA ', 'MARIA SAHUINCO'),
	(29, ' ivonnebecerra27@hotmail.com', '', 'MARIA SAHUINCO'),
	(30, 'juanfidhel@hotmail.com', ' JUAN FIDHEL ', 'MARIA SAHUINCO'),
	(31, 'lga11_7@hotmail.com', ' Liliana Gil Ayala ', 'MARIA SAHUINCO'),
	(32, 'jzoila_jh@hotmail.com', ' Zoila Perales Aliaga ', 'MARIA SAHUINCO'),
	(33, 'lucy_cordova@hotmail.com', ' Lucy Cordova ', 'MARIA SAHUINCO'),
	(34, 'marcel_2006_gonzales@hotmail.com', ' Marcel Gonzales ', 'MARIA SAHUINCO'),
	(35, 'manaursa@hotmail.com', ' MARIA URBANO ', 'MARIA SAHUINCO'),
	(36, ' maripoma16@hotmail.com', '', 'MARIA SAHUINCO'),
	(37, 'maritza_ppc_ptepiedra@hotmail.com', ' Maritza Manrrique Del Castillo ', 'MARIA SAHUINCO'),
	(38, 'martin_trujillo1105@hotmail.com', ' martin trujillo ', 'MARIA SAHUINCO'),
	(39, 'melvalucy@yahoo.com', ' MELVA LUCY SAYURI ', 'MARIA SAHUINCO'),
	(40, ' milagrosbedoya11@hotmail.com', '', 'MARIA SAHUINCO'),
	(41, 'mcliset@hotmail.com', ' Monica Quispe ', 'MARIA SAHUINCO'),
	(42, 'nsumari@hotmail.com', ' Nancy Sumari Briones ', 'MARIA SAHUINCO'),
	(43, 'neli_vic@hotmail.com', ' NELIDA MOGOLLON ', 'MARIA SAHUINCO'),
	(44, 'pablo_cieza@hotmail.com', ' PABLO CIEZA RIVERA ', 'MARIA SAHUINCO'),
	(45, 'orgppc_smp@hotmail.com', ' Raul Palomares ', 'MARIA SAHUINCO'),
	(46, 'rictacm@hotmail.com', ' RICARDO TACUNAN MORENO ', 'MARIA SAHUINCO'),
	(47, 'salatieltb@hotmail.com', ' SALATIEL ', 'MARIA SAHUINCO'),
	(48, 'violetbaldeon28@hotmail.com', ' violeta ', 'MARIA SAHUINCO'),
	(49, 'liseth_ag7@hotmail.com', ' LISETH LOPEZ CORREA ', 'MARIA SAHUINCO'),
	(50, 'lesly1204@hotmail.com', ' Lesly Guerrero ', 'MARIA SAHUINCO'),
	(51, 'anamarygp4@hotmail.com', ' Marilu Guzman Palacios ', 'MARIA SAHUINCO'),
	(52, 'suse652@msn.com', ' Susana Segura ', 'MARIA SAHUINCO'),
	(53, 'tsahuinco@yahoo.es', ' RITA SAHUINCO ', 'MARIA SAHUINCO'),
	(54, 'powaribo13@yahoo.es', ' Rita Ponce ', 'MARIA SAHUINCO'),
	(55, 'rosemore_21@hotmail.com', ' Rosa More ', 'MARIA SAHUINCO'),
	(56, 'elicam10@hotmail.com', ' PATRICIO QUISPE ', 'MARIA SAHUINCO'),
	(57, ' patricia-30-8@hotmail.com', '', 'MARIA SAHUINCO'),
	(58, 'maxchuncho@hotmail.com', ' Maximiliano Huerta ', 'MARIA SAHUINCO'),
	(59, 'lenen25@hotmail.com', ' MARLENE NAVAS RUGEL ', 'MARIA SAHUINCO'),
	(60, 'efsegura_9@hotmail.com', ' Elizabeth Segura Sahuinco ', 'MARIA SAHUINCO'),
	(61, 'danielveraflores@hotmail.com', 'Daniel Vera', 'MARIA SAHUINCO'),
	(62, 'castrorivasmf@gmail.com', 'Mar?a Fernanda Castro Rivas ', 'PAULO FREYRE'),
	(63, 'gcavassa@rscj.org.pe', 'Graciela Cavassa ', 'PAULO FREYRE'),
	(64, 'manossolidarias@hotmail.com', 'Aldo Samuel Cavero ', 'PAULO FREYRE'),
	(65, 'cayoquintana_5@yahoo.com', 'Blanca Cayo ', 'PAULO FREYRE'),
	(66, 'fcebreros@rscj.org.pe', ' Fanny Cebreros ', 'PAULO FREYRE'),
	(67, ' cecupaz@hotmail.com', '', 'PAULO FREYRE'),
	(68, ' centrodedocumentacion@comunidadandina.org', '', 'PAULO FREYRE'),
	(69, 'ansach@gmail.com', ' Antonio S?nchez Chac?n ', 'PAULO FREYRE'),
	(70, 'ferchalc@yahoo.es', ' Fernando Rodriguez Chalco ', 'PAULO FREYRE'),
	(71, ' charitoelidk@hotmail.com', '', 'PAULO FREYRE'),
	(72, 'alidas362@hotmail.com', ' Alida Chauca ', 'PAULO FREYRE'),
	(73, 'ccoumau@cegetel.net', ' Carmen Chira ', 'PAULO FREYRE'),
	(74, 'schiroque@ipp.peru.com', ' Sigfredo Chiroque ', 'PAULO FREYRE'),
	(75, ' claudiozapata@hotmail.com', '', 'PAULO FREYRE'),
	(76, 'sefa.amell@menta.net', ' Sefa Amall i Comas ', 'PAULO FREYRE'),
	(77, 'circuloagustino@gmail.com', ' ComiteEditor ', 'PAULO FREYRE'),
	(78, 'compartido.espacio@gmail.com', ' Espacio Compartido ', 'PAULO FREYRE'),
	(79, 'e.gumucio@sscc.cl', ' Padre Esteban Comunidad sscc ', 'PAULO FREYRE'),
	(80, 'consejodepaz@fibertel.com.ar', ' Consejo de Paz Argentina ', 'PAULO FREYRE'),
	(81, 'mlcp2011@hotmail.com', ' guillermo contreras ', 'PAULO FREYRE'),
	(82, 'diamantinal@hotmail.com', ' Diamantina L?pez CoorLatinAm EdxlaPaz ', 'PAULO FREYRE'),
	(83, 'susana@educa.org.pe', ' Susana C?rdoba ', 'PAULO FREYRE'),
	(84, 'gastoncornejob@yahoo.es', ' Gast?n Cornejo ', 'PAULO FREYRE'),
	(85, 'alfonsocotera@yahoo.com', ' Alfonso Cotera ', 'PAULO FREYRE'),
	(86, 'info@fespinal.com', ' Cuadernos Cristianisme i Justicia ', 'PAULO FREYRE'),
	(87, ' cristianosporlapaz@riseup.net', '', 'PAULO FREYRE'),
	(88, 'acroce@fundses.org.ar', ' Alberto Croce ', 'PAULO FREYRE'),
	(89, 'ccrosby@travelgroup.com.pe', ' Cecilia Crosby ', 'PAULO FREYRE'),
	(90, 'crossx14@yahoo.com.ar', ' roberto cruz ', 'PAULO FREYRE'),
	(91, 'arellano@unife.edu.pe', ' Marta Arellano Cruz ', 'PAULO FREYRE'),
	(92, ' cruzadalibertariacristiana@gmail.com', '', 'PAULO FREYRE'),
	(93, 'jcuadros@cooperaccion.org.pe', ' Julia Cuadros ', 'PAULO FREYRE'),
	(94, 'rcuadros@hotmail.com', ' Rosa Cuadros Salas ', 'PAULO FREYRE'),
	(95, 'rcuadros634@hotmail.com', ' Rosa Cuadros Salas ', 'PAULO FREYRE'),
	(96, ' cubillus@worldbank.org', '', 'PAULO FREYRE'),
	(97, 'luz-estela-2@hotmail.com', ' Luz Estela Cueto ', 'PAULO FREYRE'),
	(98, 'vivicueva@yahoo.es', ' Viviana Cueva ', 'PAULO FREYRE'),
	(99, ' cursoscadenya@pastoralfamiliar.org.ar', '', 'PAULO FREYRE'),
	(100, 'ifejant2@amauta.rcp.net.pe', ' Alejandro Cussianovich ', 'PAULO FREYRE'),
	(101, 'manudam@terra.com.pe', ' Manuel Dammert ', 'PAULO FREYRE'),
	(102, 'guillermo_danino@yahoo.com', ' Guillermo Da?ino ', 'PAULO FREYRE'),
	(103, 'gladavila@yahoo.es', ' Gladys Davila ', 'PAULO FREYRE'),
	(104, 'cdawsonc@yahoo.com', ' Carmen Dawson ', 'PAULO FREYRE'),
	(105, 'guidods@skynet.be', ' Guido De Schrijver ', 'PAULO FREYRE'),
	(106, ' defrenteconbolivia@gmail.com', '', 'PAULO FREYRE'),
	(107, 'saco@infonegocio.com', ' Llum ', 'PAULO FREYRE'),
	(108, 'carmendelgadoc@yahoo.com', ' Carmen Delgado ', 'PAULO FREYRE'),
	(109, 'rederirsc@hotmail.com', ' Rebeca Delgado ', 'PAULO FREYRE'),
	(110, 'spanish@democracynow.org', ' Democracy contacto ', 'PAULO FREYRE'),
	(111, 'mail@democracynow.org', ' Democracy Now ', 'PAULO FREYRE'),
	(112, 'dhumanosp@yahoo.es', ' Coordinadora Derechos Humanos ', 'PAULO FREYRE'),
	(113, 'claude.deschamps@yahoo.fr', ' Caude Deschamps ', 'PAULO FREYRE'),
	(114, 'estherdg8@hotmail.com', ' Esther D?az ', 'PAULO FREYRE'),
	(115, 'javierdiezcanseco@gmail.com', ' Javier Diez Canseco ', 'PAULO FREYRE'),
	(116, 'marfe43210@hotmail.com', ' Mart?n Due?as ', 'PAULO FREYRE'),
	(117, 'paso@terra.com.pe', ' Juan Dumont ', 'PAULO FREYRE'),
	(118, 'ndurand@rscjinternational.org', ' Nancy Durand ', 'PAULO FREYRE'),
	(119, 'cdurand@rscj.org.pe', ' Carmen Durand ', 'PAULO FREYRE'),
	(120, ' eclesalia@eclesalia.net', '', 'PAULO FREYRE'),
	(121, 'sant_zul@hotmail.com', ' Eco-solidaria en Paraguay ', 'PAULO FREYRE'),
	(122, 'fpie@fundacionpuebloindio.org', ' Fundaci?n Pueblo Indio de Ecuador ', 'PAULO FREYRE'),
	(123, ' edicionesculturales@yahoo.com', '', 'PAULO FREYRE'),
	(124, 'foro_de_educadores_cristianos@gruposyahoo.com.ar', ' Educadores Cristianos ', 'PAULO FREYRE'),
	(125, 'contactenos@cnsp.gob.sv', ' El Salvador ', 'PAULO FREYRE'),
	(126, 'ccienfuegos@presidencia.gob.sv', ' Presidente Funes El Salvador ', 'PAULO FREYRE'),
	(127, ' Laura El?as ', ' elainefreedman@gmail.com', 'PAULO FREYRE'),
	(128, 'mitesoro118@hotmail.com', ' Elizabeth ', 'PAULO FREYRE'),
	(129, 'jenmanuel@santanatura.com.pe', ' Jeanette Emmanuel ', 'PAULO FREYRE'),
	(130, ' epjcatolica@pucp.edu.pe', '', 'PAULO FREYRE'),
	(131, 'neryluz@telefonica.net.pe', ' nery escobar ', 'PAULO FREYRE'),
	(132, 'aciwasi@yahoo.es', ' Margarita Escudero ', 'PAULO FREYRE'),
	(133, 'eevans@educa.org.pe', ' Elizabeth Evans ', 'PAULO FREYRE'),
	(134, 'comunidadesperuanasenelexterior@yahoogroups.com', ' Comunidades peruanas Extranjero ', 'PAULO FREYRE'),
	(135, 'cmargfb@rscjinternational.org', ' Carmen Margarita Fagot ', 'PAULO FREYRE'),
	(136, 'fatimor@gmail.com', ' Fatima en Timor ', 'PAULO FREYRE'),
	(137, 'pp.fherediapozo@gmail.com', ' Paloma Fern?ndez Heredia ', 'PAULO FREYRE'),
	(138, 'lastefm@hotmail.com', ' Lastenia Fern?ndez Maldonado ', 'PAULO FREYRE'),
	(139, 'claustro@efeta.org', ' Mar?a Jos? Ferrer ', 'PAULO FREYRE'),
	(140, 'carmelafigueroa@hotmail.com', ' Caemela Figueroa ', 'PAULO FREYRE'),
	(141, 'joanfloresmo@hotmail.com', ' Joan Flores ', 'PAULO FREYRE'),
	(142, 'bforcanoc@terra.es', ' Bemjam?n Forcano ', 'PAULO FREYRE'),
	(143, 'hablaeducaciondebate@hotmail.com', ' foro educativo ', 'PAULO FREYRE'),
	(144, 'secretaria@forumpaulofreire.org', ' Foro Paulo Freire ', 'PAULO FREYRE'),
	(145, 'consejo@forosocialamericas.org', ' Foro Social Am?rica ', 'PAULO FREYRE'),
	(146, 'noticias@alia.com.ar', ' FORO SOCIAL MUNDIAL ', 'PAULO FREYRE'),
	(147, 'fsmsite@forumsocialmundial.org.br', ' ForoSocialMundial ', 'PAULO FREYRE'),
	(148, 'pedrofrancke@gmail.com', ' Pedro Francke ', 'PAULO FREYRE'),
	(149, 'rfranco@macareo.pucp.edu.pe', ' R?mulo Franco ', 'PAULO FREYRE'),
	(150, 'mfranco@rscj.org.pe', ' Mar?a Luisa Franco ', 'PAULO FREYRE'),
	(151, 'peruforopaulofreire@yahoogroups.com', ' Paulo Freire ', 'PAULO FREYRE'),
	(152, 'mague@uol.com.br', '', 'PAULO FREYRE');
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;


-- Volcando estructura para tabla libreria.curso
CREATE TABLE IF NOT EXISTS `curso` (
  `curso` varchar(6) NOT NULL DEFAULT '',
  `nombre` varchar(30) NOT NULL DEFAULT '',
  `categoria` varchar(6) NOT NULL DEFAULT '',
  `flag_enlace` char(1) NOT NULL DEFAULT '0',
  `enlace` varchar(100) NOT NULL DEFAULT '',
  `borrado` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`curso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla libreria.curso: 6 rows
DELETE FROM `curso`;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` (`curso`, `nombre`, `categoria`, `flag_enlace`, `enlace`, `borrado`) VALUES
	('000001', 'TRIGONOMETRIA', '000001', '0', '', ''),
	('000002', 'GEOMETRIA', '000001', '0', '', ''),
	('000005', 'PHP', '000003', '0', '', ''),
	('000011', 'FRANCES', '000002', '1', 'frances.php', ''),
	('000010', 'INGLES', '000002', '0', '', ''),
	('000009', 'LINUX', '000003', '0', '', '');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;


-- Volcando estructura para tabla libreria.cursoarchivo
CREATE TABLE IF NOT EXISTS `cursoarchivo` (
  `cursotema` varchar(6) NOT NULL DEFAULT '',
  `cursoarchivo` varchar(6) NOT NULL DEFAULT '',
  `nombre` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`cursoarchivo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla libreria.cursoarchivo: 0 rows
DELETE FROM `cursoarchivo`;
/*!40000 ALTER TABLE `cursoarchivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursoarchivo` ENABLE KEYS */;


-- Volcando estructura para tabla libreria.cursocategoria
CREATE TABLE IF NOT EXISTS `cursocategoria` (
  `cursocategoria` varchar(6) NOT NULL DEFAULT '',
  `nombre` varchar(30) NOT NULL DEFAULT '',
  `borrado` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`cursocategoria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla libreria.cursocategoria: 3 rows
DELETE FROM `cursocategoria`;
/*!40000 ALTER TABLE `cursocategoria` DISABLE KEYS */;
INSERT INTO `cursocategoria` (`cursocategoria`, `nombre`, `borrado`) VALUES
	('000001', 'MATEMATICAS', ''),
	('000002', 'IDIOMAS', ''),
	('000003', 'COMPUTACION', '');
/*!40000 ALTER TABLE `cursocategoria` ENABLE KEYS */;


-- Volcando estructura para tabla libreria.cursotema
CREATE TABLE IF NOT EXISTS `cursotema` (
  `curso` varchar(6) NOT NULL DEFAULT '',
  `cursotema` varchar(6) NOT NULL DEFAULT '',
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `contenido` text NOT NULL,
  `semana` varchar(6) NOT NULL DEFAULT '',
  `borrado` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`curso`,`cursotema`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla libreria.cursotema: 8 rows
DELETE FROM `cursotema`;
/*!40000 ALTER TABLE `cursotema` DISABLE KEYS */;
INSERT INTO `cursotema` (`curso`, `cursotema`, `nombre`, `contenido`, `semana`, `borrado`) VALUES
	('000001', '000002', 'ANGULO TRIGONOMETRICO', '', '000001', ''),
	('000001', '000003', 'RAZONES TRIGONOMETRICAS DE ANGULOS AGUDO', '', '000001', ''),
	('000001', '000004', 'RAZONES TRIGONOMETRICAS DE ANGULOS DE CU', '', '000002', ''),
	('000001', '000005', 'IDENTIDADES TRIGONOMETRICAS', '', '000003', ''),
	('000001', '000001', 'INTRODUCCION', '<h2 align="center"><font color="#00CC33" face="Verdana, Arial, Helvetica, sans-serif">Trigonometr&iacute;a</font></h2>\r\n<p align="left">Seg&uacute;n su etimolog&iacute;a ( tri: tres, gono: &aacute;ngulo,metron: \r\n  medida), la trigonometr&iacute;a se ocupa del estudio de las medidas del tri&aacute;ngulo \r\n  es decir de las medidas indirectas de segmentos y de &aacute;ngulos. Actualmente \r\n  la trigonometr&iacute;a no puede encasillarse en una definici&oacute;n porque \r\n  &quot; interviene en toda clase de materias tales como Topograf&iacute;a, Astronom&iacute;a, \r\n  geometr&iacute;a anal&iacute;tica, C&aacute;lculo diferencial e integral, F&iacute;sica&quot; \r\n  y no hay parte de las matem&aacute;tics superiores y de las otras ciencias que \r\n  no demanden un conocimiento previo de Trigonometr&iacute;a Plana.</p>\r\n<p align="left">Se ha definido tambi&eacute;n como la ciencia de la medida indirecta. \r\n  Por medio de la Trigonometr&iacute;a puede ser calculadas distancias que no \r\n  se pueden medir directamente. Tal c&aacute;lculo se hace mediante las seis razones; \r\n  que se llaman razones trigonom&eacute;tricas. A medida que se ha ido ampliando \r\n  el campo de las matem&aacute;ticas y sus aplicaciones, las razones trigonom&eacute;tricas \r\n  han adquirido una excepcional importancia tanto te&oacute;rica como pr&aacute;ctica. \r\n</p>\r\n<p align="left">La trigonometr&iacute;a tuvo su origen como un medio de satisfacer \r\n  las necesidades de las investigaci&oacute;n astron&oacute;mica y fueron los \r\n  griegos, quienes apoy&aacute;ndose enanteriores trabajos de los babilonicos, \r\n  establecieron sus fundamentos.</p>\r\n<p align="left">Se considera que Hiparco ( II siglos antes de la era cristiana), \r\n  como el creador de la trigonometr&iacute;a; luego fueron muchos matem&aacute;ticos \r\n  que han contribuido a desarollar esta materia como: Menelaus, Ptolomeo, Viete, \r\n  Albategnio, Abu&acute;l-wafa, Moivre,Delambre, Gauss y muchos m&aacute;s. de \r\n  todos ellos el que m&aacute;s contribuy&oacute; a la Trigonometr&iacute;a anal&iacute;tica \r\n  y a la formaen que a&uacute;n se conserva es el matem&aacute;tico Leonardo Euler.</p>\r\n<p align="left">La trigonometr&iacute;a se divide en plana, esf&eacute;rica e \r\n  hiperb&oacute;lica. Aqu&iacute; solo nos dedicaremos al estudio de la trigonometr&iacute;a \r\n  plana.</p>\r\n<p align="left">&nbsp; </p>', '000001', ''),
	('000002', '000001', 'INTRODUCCION', '<h2 align="center"><font color="#00CC33" face="Verdana, Arial, Helvetica, sans-serif">Geometr&iacute;a</font></h2>\r\n<p align="left">La geometr&iacute;a naci&oacute; de la necesidad del hombre de \r\n  medir el suelo. Su origen parece estar en Egipto, donde las inundaciones peri&oacute;dicas \r\n  del Nilo destru&iacute;an los linderos de las fincas. De esta manera, aparece \r\n  el nombre Geometr&iacute;a que se le ha dado a est&aacute; ciencia: de geos \r\n  ( tierra) y metron (meidida) o bien; Meidad de la Tierra.</p>\r\n<p align="left">En los tiempos muy remotos, toda ciencia geom&eacute;trica se \r\n  reduc&iacute;a a las reglas que sirven para medir y calcular &aacute;reas y \r\n  vol&uacute;menes sencillos, como las que se ense&ntilde;an en las escuelas primarias. \r\n  Los documentos m&aacute;s antiguos provienen de Babilonia y Egipto. Los primeros \r\n  se escribieron unos 2000 antes de la era cristiana, en peque&ntilde;oas tablas \r\n  o planchas de arcillas, cocidas al Sol.</p>\r\n<p align="left">Revelan que los autores ya ten&iacute;an algunos conocimientos \r\n  de las procedimientos de medidas de tierras, y probablemente, ya hab&iacute;an \r\n  llegado hasta determinar el &aacute;rea del trapecio. </p>\r\n<p align="left">El primer documento que da una idea clara del estado de las Matem&aacute;ticas \r\n  en el antiguo Egipto, es una copia hecha en papiro por Ahm&eacute;s, sacerdote \r\n  egipcio, que probablemente floreci&oacute; unos 1700 a&ntilde;os antes de uestra \r\n  era. el original que copi&oacute;, escrito por el a&ntilde;o 2300, no se conoce; \r\n  la copia se conserva en el museo Brit&aacute;nico. Este manuscrito, que est&aacute; \r\n  casi todo consagrado a las fracciones, contiene algo relativo a la medida de \r\n  &aacute;reas. Pero mucho antes de Ahm&eacute;s es evidente que los egipcios \r\n  tenian conocimientos importantes de geometr&iacute;a pr&aacute;ctica, como lo \r\n  atestiguan las construcciones de las pir&aacute;mides y muchos templos y canales.</p>\r\n<p align="left">Los griegos cimentaron en base cient&iacute;fica la geometr&iacute;a \r\n  pr&aacute;ctica de los egipcios. Thales ( siglo VI a. C. ), que figuraba entre \r\n  los siete sabios de Grecia, fund&oacute; la c&eacute;lebre escuela j&oacute;nicade \r\n  Matem&aacute;ticas y Filosof&iacute;a, e import&oacute; de Egipto valiosos conocimientos.</p>\r\n<p align="left">El disc&iacute;pulo m&aacute;s c&eacute;lebre de Thales, as&iacute; \r\n  como uno de los hombres m&aacute;s famosos de la antiguedad fu&eacute; Pit&aacute;goras \r\n  a quien se debe el famoso teorema que lleva su nombre, que relaicona los tres \r\n  lados de un tri&aacute;ngulo rect&aacute;ngulo.</p>\r\n<p align="left">Tres siglos mas tarde Euclides, llamado el padre de la Geometr&iacute;a \r\n  form&oacute; una recopilaci&oacute;n magistral de diversas proposiciones y propiedades \r\n  geom&eacute;tricas que se hallaban dispersas entre las escuelas griegas de Thales \r\n  de Mileto y la pitag&oacute;rica y nos leg&oacute; sus famosos &quot;Elementos&quot;.</p>\r\n<p align="left">Siguen a Euclides otros genios en el campo de la Geometr&iacute;a: \r\n  Arqu&iacute;medes(siglo III a.C.), Apolonio, Her&oacute;n, Menelao( siglo Ia.C.), \r\n  Ptolomeo, Papuss,etc.</p>\r\n<p align="left">Mas tarde en el siglo XVIII de nuestra era Cavalieri, Descarte, \r\n  Fermat, Roverbal y Pascal llevaron a un alto grado de adelanto la Geometr&iacute;a \r\n  de los antiguos: se crea luego la geometr&iacute;a moderna.</p>\r\n<p align="left">&nbsp;</p>', '000001', ''),
	('000009', '000001', 'COMANDOS BASICOS', '<table width="100%" border="0">\r\n  <tr>\r\n    <th height="37" scope="col">COMANDOS DE LINUX </th>\r\n  </tr>\r\n  <tr>\r\n    <th height="35" align="left" valign="top" scope="row">I.- COMANDOS DE SISTEMA </th>\r\n  </tr>\r\n  <tr>\r\n    <th scope="row"><table width="95%" border="1" align="center" cellpadding="4" cellspacing="0" bgcolor="#FFFFFF">\r\n      <tr>\r\n        <th width="20%" bgcolor="#996600" scope="col"><span class="Estilo6">COMANDO</span></th>\r\n        <th width="60%" bgcolor="#996600" scope="col"><span class="Estilo6">DESCRIPCION</span></th>\r\n        <th width="20%" bgcolor="#996600" scope="col"><span class="Estilo6">EJEMPLOS</span></th>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">uname</th>\r\n        <td align="left" valign="top">Ve la version del kernel utilizado </td>\r\n        <td valign="top">uname -a <br />\r\n          uname -r -v </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">ls</th>\r\n        <td align="left" valign="top">Lista el contenido del directorio </td>\r\n        <td valign="top">ls -i <br />\r\n          ls -l </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">df</th>\r\n        <td align="left">Muestra el tama&ntilde;o de un directorio </td>\r\n        <td>df, df -h,df -v </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">fdisk</th>\r\n        <td align="left">Muestra todas las particiones del sistema </td>\r\n        <td>fdisk -l </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">du</th>\r\n        <td align="left" valign="top">Muestra el espacio usado por un directorio </td>\r\n        <td valign="top"><p>du /etc <br />\r\n          du -s /etc <br />\r\n          du -sh /etc </p>          </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">ps</th>\r\n        <td align="left" valign="top">Muestra informacion sobre los procesos </td>\r\n        <td valign="top">ps -aux <br />\r\n          ps xa | grep mysqld <br />\r\n          ps -axu | grep user <br />\r\n          ps -ef </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">pstree</th>\r\n        <td align="left">Muestra los procesos en forma de arbol </td>\r\n        <td>pstree -u </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">fg</th>\r\n        <td align="left">Contiuar comando detenido interactivamente. </td>\r\n        <td>&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">bg</th>\r\n        <td align="left">Continuar parametro pasado a background </td>\r\n        <td>&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">dmesg</th>\r\n        <td align="left">&nbsp;</td>\r\n        <td>dmesg | grep NTFS </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">&nbsp;</th>\r\n        <td align="left" valign="top">&nbsp;</td>\r\n        <td valign="top">&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">&nbsp;</th>\r\n        <td align="left" valign="top">&nbsp;</td>\r\n        <td valign="top">&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">head</th>\r\n        <td align="left" valign="top">Muestra las primeras lineas de un archivo </td>\r\n        <td valign="top">head /etc/passwd <br />\r\n          head -15 /etc/passwd </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">tail</th>\r\n        <td align="left">Muestra las ultimas lineas de un archivo </td>\r\n        <td>tail /etc/passwd </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">halt</th>\r\n        <td align="left">Apaga el sistema </td>\r\n        <td>&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">init 0 </th>\r\n        <td align="left">Apaga el sistema </td>\r\n        <td>&nbsp;</td>\r\n      </tr>\r\n      \r\n      <tr>\r\n        <th align="left" scope="row">shutdown</th>\r\n        <td align="left">Apaga el sistema </td>\r\n        <td>shutdown -h now </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">logout</th>\r\n        <td align="left">Termina la sesion </td>\r\n        <td>&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">halt</th>\r\n        <td align="left">Apaga el sistema </td>\r\n        <td>&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row"><p>reboot</p>          </th>\r\n        <td align="left">Reinicia el sistema </td>\r\n        <td>&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">init 3 </th>\r\n        <td align="left">Reinicia el sistema </td>\r\n        <td>&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">netstat</th>\r\n        <td align="left">Estadisticas de red </td>\r\n        <td>netstat -ln|grep mysql </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">netlogon</th>\r\n        <td align="left">Contrase&ntilde;a de red </td>\r\n        <td>&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">kill</th>\r\n        <td align="left" valign="top">Mara un proceso </td>\r\n        <td valign="top">kill &lt;PID&gt;<br />\r\n          kill -9 1234 </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">who, rwho </th>\r\n        <td align="left">Muestra informacion de los usuarios conectado al sistema </td>\r\n        <td>who</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">sort</th>\r\n        <td align="left" valign="top">Ordena el contenido de un archivo. </td>\r\n        <td valign="top">sort passwd <br />\r\n          sort -t:+5 passwd<br />\r\n          sort -nt:+2 passwd </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">grep</th>\r\n        <td align="left" valign="top">Filtra</td>\r\n        <td valign="top">grep patron archivo<br />\r\n          grep /home passwd<br />\r\n          grep /bin/bash passwd<br />\r\n          grep -n /bin/bash passwd<br />\r\n          grep ServerName /etc/httpd/conf/htpd.conf <br />\r\n          grep -v /bin/bash/passwd </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">cut</th>\r\n        <td align="left" valign="top">Corta</td>\r\n        <td valign="top">cut -c1-9 passwd<br />\r\n          cut -d:f1,3,7 passwd<br />\r\n          cut -d:-f1,3,7 passwd        </td>\r\n      </tr>\r\n    </table></th>\r\n  </tr>\r\n  <tr>\r\n    <th height="33" align="left" scope="row">II.- COMANDOS PARA EL MANEJO DE ARCHIVOS </th>\r\n  </tr>\r\n  <tr>\r\n    <th align="center" valign="top" scope="row"><table width="95%" border="1" align="center" cellpadding="4" cellspacing="0" bgcolor="#FFFFFF">\r\n      <tr>\r\n        <th width="20%" bgcolor="#996600" scope="col"><span class="Estilo6">COMANDO</span></th>\r\n        <th width="60%" bgcolor="#996600" scope="col"><span class="Estilo6">DESCRIPCION</span></th>\r\n        <th width="20%" bgcolor="#996600" scope="col"><span class="Estilo6">EJEMPLOS</span></th>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">touch</th>\r\n        <td align="left">Crea un archivo vacio </td>\r\n        <td align="left">touch prueba </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">mkdir</th>\r\n        <td align="left">Crea un directorio </td>\r\n        <td align="left">mkdir directorio </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">cp</th>\r\n        <td align="left">Copia un archivo de origen a un destino </td>\r\n        <td align="left">cp PruebaX EjemploX </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">mv</th>\r\n        <td align="left">Renombra o mueve un archivo </td>\r\n        <td align="left">mv ejemploX exampleX </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">more, less </th>\r\n        <td align="left">Visualiza un archivo </td>\r\n        <td align="left">&nbsp;</td>\r\n      </tr>\r\n      \r\n      <tr>\r\n        <th align="left" valign="top" scope="row">find</th>\r\n        <td align="left" valign="top">Encuentra un archivo o un directorio </td>\r\n        <td align="left" valign="top">find / -name &quot;1s&quot; -print<br />\r\n          find -name nombre<br />\r\n          find /usr -name mozilla<br />\r\n          find /usr -name \'*.so\' <br />\r\n          find / -name \'*gtk*\' <br />\r\n          find / -size +3000k </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">locate</th>\r\n        <td align="left" valign="top">Localiza un archivo </td>\r\n        <td align="left" valign="top">locate |s </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">which</th>\r\n        <td align="left">Ubica los ejecutables de un archivo </td>\r\n        <td align="left">which |s </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">ln</th>\r\n        <td align="left">Crea un enlace directorio a un archivo </td>\r\n        <td align="left">ln Nuevotest </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">vi, vim </th>\r\n        <td align="left">Editor de ficheros </td>\r\n        <td align="left">&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">rm</th>\r\n        <td align="left" valign="top">Borra un archivo o un directorio </td>\r\n        <td align="left" valign="top">rm foo.c <br />\r\n          rm -rf MySql5 </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">cat</th>\r\n        <td align="left" valign="top">Concatena y muestra archivos </td>\r\n        <td align="left" valign="top">cat /etc/passwd <br />\r\n          cat dict1 dict2 dict </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">mount</th>\r\n        <td align="left">Monta archivos </td>\r\n        <td align="left">mount /dev/fd0 /mnt/floppy </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">umount</th>\r\n        <td align="left">&nbsp;</td>\r\n        <td align="left">&nbsp;</td>\r\n      </tr>\r\n\r\n    </table></th>\r\n  </tr>\r\n  <tr>\r\n    <th height="42" align="left" scope="row">III.- COMANDOS PAR EL MANEJO DE USUARIOS. </th>\r\n  </tr>\r\n  <tr>\r\n    <th valign="top" scope="row"><table width="95%" border="1" align="center" cellpadding="4" cellspacing="0" bgcolor="#FFFFFF">\r\n      <tr>\r\n        <th width="20%" bgcolor="#996600" scope="col"><span class="Estilo6">COMANDO</span></th>\r\n        <th width="60%" bgcolor="#996600" scope="col"><span class="Estilo6">DESCRIPCION</span></th>\r\n        <th width="20%" bgcolor="#996600" scope="col"><span class="Estilo6">EJEMPLOS</span></th>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">useradd</th>\r\n        <td align="left">Crea un usuario </td>\r\n        <td align="left">useradd user0 </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">passwd</th>\r\n        <td align="left">Crea una contrase&ntilde;a para un usuario. </td>\r\n        <td align="left">passwd user0 </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">groupadd</th>\r\n        <td align="left">Crea un grupo de usuarios. </td>\r\n        <td align="left">groupadd usuarios </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">&nbsp;</th>\r\n        <td align="left">&nbsp;</td>\r\n        <td align="left">&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">&nbsp;</th>\r\n        <td align="left">&nbsp;</td>\r\n        <td align="left">&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">&nbsp;</th>\r\n        <td align="left">&nbsp;</td>\r\n        <td align="left">&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">&nbsp;</th>\r\n        <td align="left" valign="top">&nbsp;</td>\r\n        <td align="left" valign="top">&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">&nbsp;</th>\r\n        <td align="left" valign="top">&nbsp;</td>\r\n        <td align="left" valign="top">&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">&nbsp;</th>\r\n        <td align="left">&nbsp;</td>\r\n        <td align="left">&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">&nbsp;</th>\r\n        <td align="left">&nbsp;</td>\r\n        <td align="left">&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">&nbsp;</th>\r\n        <td align="left">&nbsp;</td>\r\n        <td align="left">&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">&nbsp;</th>\r\n        <td align="left" valign="top">&nbsp;</td>\r\n        <td align="left" valign="top">&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">&nbsp;</th>\r\n        <td align="left" valign="top">&nbsp;</td>\r\n        <td align="left" valign="top">&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">&nbsp;</th>\r\n        <td align="left">&nbsp;</td>\r\n        <td align="left">&nbsp;</td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">&nbsp;</th>\r\n        <td align="left">&nbsp;</td>\r\n        <td align="left">&nbsp;</td>\r\n      </tr>\r\n    </table></th>\r\n  </tr>\r\n  <tr>\r\n    <th scope="row">&nbsp;</th>\r\n  </tr>\r\n</table>', '000001', ''),
	('000009', '000002', 'MANEJADORES DE PAQUETES', '<table width="100%" border="0">\r\n  <tr>\r\n    <th height="37" scope="col">MANEJADORES DE PAQUETES  </th>\r\n  </tr>\r\n  <tr>\r\n    <th height="35" align="left" valign="top" scope="row"><p>I.- EN REDHAT. (rpm) <br />\r\n    </p>\r\n    </th>\r\n  </tr>\r\n  <tr>\r\n    <th scope="row"><table width="95%" border="1" align="center" cellpadding="4" cellspacing="0" bgcolor="#FFFFFF">\r\n      <tr>\r\n        <th width="20%" bgcolor="#996600" scope="col"><span class="Estilo6">COMANDO</span></th>\r\n        <th width="60%" bgcolor="#996600" scope="col"><span class="Estilo6">DESCRIPCION</span></th>\r\n        </tr>\r\n      \r\n      <tr>\r\n        <th align="left" scope="row">rpm -i paquete </th>\r\n        <td align="left">Instala un paquete. </td>\r\n        </tr>\r\n      <tr>\r\n        <th align="left" scope="row">rpm -e paquete </th>\r\n        <td align="left">Desintala un paquete </td>\r\n        </tr>\r\n      <tr>\r\n        <th align="left" scope="row">rpm -u paquete </th>\r\n        <td align="left">Actualiza un paquete </td>\r\n        </tr>\r\n      <tr>\r\n        <th align="left" scope="row">rpm -qi paquete </th>\r\n        <td align="left">Solicita informacion de un paquete </td>\r\n        </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">rpm -ql programa </th>\r\n        <td align="left" valign="top">Visualiza los ficheros instalados para un paquete. </td>\r\n        </tr>\r\n      <tr>\r\n        <th align="left" scope="row">rpm -q| programa | grep bin </th>\r\n        <td align="left">Visualiza los ficheros ejecutables de un paquete. </td>\r\n        </tr>\r\n      <tr>\r\n        <th align="left" valign="top" scope="row">rpm -qa | less </th>\r\n        <td align="left" valign="top">Visualiza los programas instalados con rpm. </td>\r\n        </tr>\r\n      <tr>\r\n        <th align="left" scope="row">rpm -q httpd </th>\r\n        <td align="left">Ejemplo</td>\r\n        </tr>\r\n      \r\n    </table></th>\r\n  </tr>\r\n  <tr>\r\n    <th height="33" align="left" scope="row">II.- EN UBUNTU (apt-get) </th>\r\n  </tr>\r\n  <tr>\r\n    <th align="center" valign="top" scope="row"><table width="95%" border="1" align="center" cellpadding="4" cellspacing="0" bgcolor="#FFFFFF">\r\n      <tr>\r\n        <th width="20%" bgcolor="#996600" scope="col"><span class="Estilo6">COMANDO</span></th>\r\n        <th width="60%" bgcolor="#996600" scope="col"><span class="Estilo6">DESCRIPCION</span></th>\r\n        </tr>\r\n      <tr>\r\n        <th align="left" scope="row">apt-get install nombre-paquete </th>\r\n        <td align="left">Instala un paquete. </td>\r\n      </tr>\r\n      <tr>\r\n        <th align="left" scope="row">apt-get remove nombre-paquete </th>\r\n        <td align="left">Desinstala el paquete y sus dependencias. </td>\r\n        </tr>\r\n      <tr>\r\n        <th align="left" scope="row">apt-get update </th>\r\n        <td align="left">Actualiza el sistema. </td>\r\n        </tr>\r\n      <tr>\r\n        <th align="left" scope="row">apt-get -f install </th>\r\n        <td align="left">Repara dependencias. </td>\r\n        </tr>\r\n      <tr>\r\n        <th align="left" scope="row">apt-get remove _auto-remove package-name </th>\r\n        <td align="left" valign="top">Desinstala paquete y todas sus dependencias. </td>\r\n        </tr>\r\n      <tr>\r\n        <th align="left" scope="row">apt-cache search aplicacion </th>\r\n        <td align="left">Busca aplicacion. </td>\r\n        </tr>\r\n      <tr>\r\n        <th align="left" scope="row">aptitude search mysql </th>\r\n        <td align="left">Visualiza aplicaciones instaladas. </td>\r\n        </tr>\r\n\r\n    </table></th>\r\n  </tr>\r\n  <tr>\r\n    <th scope="row">&nbsp;</th>\r\n  </tr>\r\n</table>', '000001', '');
/*!40000 ALTER TABLE `cursotema` ENABLE KEYS */;


-- Volcando estructura para tabla libreria.editorial
CREATE TABLE IF NOT EXISTS `editorial` (
  `editorial` char(2) NOT NULL DEFAULT '',
  `nombre` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`editorial`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla libreria.editorial: 2 rows
DELETE FROM `editorial`;
/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT INTO `editorial` (`editorial`, `nombre`) VALUES
	('01', 'Macro'),
	('02', 'Megabyte');
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;


-- Volcando estructura para tabla libreria.evento
CREATE TABLE IF NOT EXISTS `evento` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `contenido` text,
  `ruta_imagen` varchar(300) NOT NULL,
  `estado` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla libreria.evento: 6 rows
DELETE FROM `evento`;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` (`id`, `fecha`, `titulo`, `contenido`, `ruta_imagen`, `estado`) VALUES
	(1, '2010-04-02 04:52:32', 'Veinte proposiciones para reformar el capitalismo', '<span style="font-weight: bold;">Martes 15 de Setiembre 6:30 p.m</span>. <br />\r\n                <span class="font1">La Universidad Jesuita Antonio Ruiz \r\nde Montoya, recibir&aacute; el pr&oacute;ximo martes 15 de setiembre al Dr. Ga&euml;l \r\nGiraud investigador del Centro Nacional de la Investigaci&oacute;n Cient&iacute;fica \r\nde Francia y a la Dra. C&eacute;cile Renouard del Centre S&egrave;vres de Par&iacute;s \r\nquienes ofrecer&aacute;n la conferencia magistral &ldquo;Veinte proposiciones para \r\nreformar el capitalismo&rdquo;.</span> <style type="text/css">body {  	  }  </style>\r\n    <style type="text/css">  body {  	  }  </style>\r\n  <style type="text/css">  body {  	  }  </style>\r\n<style type="text/css">\r\nbody {\r\n	\r\n}\r\n</style>', 'images/capitalismo.jpg', 0),
	(2, '2010-04-02 05:03:40', '(IR) RACIONALIDADES', '<span style="font-weight: bold;">20-23 Octubre 2009 </span><br />\r\n                <span class="font1">V Simposio de Estudiantes de \r\nFilosof&iacute;a de la Pontificia Universidad Cat&oacute;lica de Per&uacute; y de la \r\nUniversidad Antonio Ruiz de Montoya (Jesuitas)</span>\r\n\r\n<style type="text/css">\r\nbody {\r\n	\r\n}\r\n</style>', 'images/irracionalidades_grande.jpg', 0),
	(3, '2010-04-02 05:05:16', 'Retornando a las fuentes de la fenomenologÃ­a.', '<span class="Estilo4"><span style="font-weight: bold;">V Jornadas Peruanas de Fenomenolog&iacute;a y \r\nHermene&uacute;tica. </span><br />\r\n                  Jueves 1 - S&aacute;bado 3 Octubre 2009 </span><br />\r\n                  <span class="font1">En conmemoraci&oacute;n de los 150 a&ntilde;os \r\ndel   nacimiento de Edmund Husserl   (1859- 2009)<a href="http://www.pucp.edu.pe/cef/retornando_a_las_fuentes.htm" target="_blank"></a></span> \r\n\r\n<style type="text/css">\r\nbody {\r\n	\r\n}\r\n</style>', 'images/afiche_Vcipher.jpg', 0),
	(4, '2010-04-02 05:12:39', 'Brechas de GÃ©nero: Insumo para la adopciÃ³n de medidas afavor de la igualdad de las mujeres.', '<span style="font-weight: bold;">Manuela Ramos.</span><br />\r\n                Viernes 19 Marzo 2010. 16:00 horas.\r\n\r\n<style type="text/css">\r\nbody {\r\n	\r\n}\r\n</style>', 'images/manuela1.jpg', 0),
	(5, '2010-04-02 05:39:16', 'Recital de PoesÃ­a â€œSonriente', '<span style="font-weight: bold;">Martes 13 de abril a las 7 p.m. </span><br />Lugar : Instituto Cultural Peruano Norteamericano de Miraflores (ICPNA)<br />Av. Angamos Oeste 120. <br />El ingreso es libre.<style type="text/css">body {  	  }  </style>\r\n  <style type="text/css">  body {  	  }  </style>\r\n<style type="text/css">\r\nbody {\r\n	\r\n}\r\n</style>', 'images/sonriente.jpg', 0),
	(6, '2010-04-02 05:44:41', 'CURSOS :SNIP, COACHING Y EXPORTACIONES', '<span style="font-weight: bold;">Lugar: Colegio de Ingenieros de Lima</span><br /><span style="text-decoration: underline;">PROYECTOS DE INVERSI&oacute;N P&uacute;BLICA (SNIP) Y PRIVADA</span><br />D&iacute;as: &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 29, 31 marzo; 5, 7, 9, 12, 14, 16 abril <br />Hora: &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 6:30 p.m. a 9:30 p.m;&nbsp; Duraci&oacute;n: 24 horas.<br />Lugar: &nbsp;&nbsp;&nbsp; Calle Guillermo Marconi 210 - San Isidro CD Lima-CIP<br /><br /><span style="text-decoration: underline;">COACHING EN INTELIGENCIA EMOCIONAL</span><br />D&iacute;as: &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 6, 8 y 13 de Abril 2010; Duraci&oacute;n: 9 horas<br />Hora: &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Martes y jueves, 6:30 p.m. a&nbsp; 9:30 p.m.<br />Lugar: &nbsp;&nbsp;&nbsp; Sede CD Lima &ndash; CIP, Calle Marconi 210 san Isidro<br /><br /><span style="text-decoration: underline;">GESTION DE NEGOCIOS PARA LA EXPORTACION DE PRODUCTOS</span><br />D&iacute;as: &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 27 /03,&nbsp; 3, 10, 17, 24 de Abril de 2010<br />Hora: &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; S&aacute;bados: 9 a 1 pm.&nbsp;&nbsp; Duraci&oacute;n : 20 horas.<br />Lugar: &nbsp;&nbsp;&nbsp; Calle Guillermo Marconi 210 - San Isidro CDLima-CIP<br /><br />Informes e Inscripciones: Tel&eacute;fonos: 202 - 5055; 471 -7060; 99664 - 6009<br />Email: ingeconomica@ciplima.org.pe; data@lcaconsultores.com.pe<style type="text/css">body {\r\n	\r\n}\r\n</style>', '', 0);
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;


-- Volcando estructura para tabla libreria.evento_comentario
CREATE TABLE IF NOT EXISTS `evento_comentario` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_evento` int(10) unsigned DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `comentario` text,
  `fecha` datetime DEFAULT NULL,
  `estado` int(10) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `evento_comentario_FKIndex1` (`id_evento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla libreria.evento_comentario: 0 rows
DELETE FROM `evento_comentario`;
/*!40000 ALTER TABLE `evento_comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `evento_comentario` ENABLE KEYS */;


-- Volcando estructura para tabla libreria.libro
CREATE TABLE IF NOT EXISTS `libro` (
  `libro` varchar(6) NOT NULL DEFAULT '',
  `titulo` text NOT NULL,
  `autor` varchar(6) NOT NULL DEFAULT '',
  `editorial` char(2) NOT NULL DEFAULT '',
  `resumen` text NOT NULL,
  `archivo` text NOT NULL,
  `imagen` varchar(50) NOT NULL DEFAULT '',
  `borrado` char(1) NOT NULL DEFAULT '',
  `categoria` varchar(6) NOT NULL DEFAULT '',
  `estado` char(1) NOT NULL DEFAULT '1',
  `precio` decimal(4,2) NOT NULL DEFAULT '0.00',
  `download` varchar(100) NOT NULL DEFAULT '',
  `tag_download` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`libro`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla libreria.libro: 82 rows
DELETE FROM `libro`;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` (`libro`, `titulo`, `autor`, `editorial`, `resumen`, `archivo`, `imagen`, `borrado`, `categoria`, `estado`, `precio`, `download`, `tag_download`) VALUES
	('000001', 'Cronica de un muerte anunciada', '000001', '', '', '', '', 'S', '000003', '0', 0.00, '', ''),
	('000002', 'Hamlet', '000009', '', '', '', '', 'S', '000003', '0', 0.00, '', ''),
	('000003', 'El alquimista', '000003', '', '																																																						', '', 'images/libros/el_alquimista.jpg', '', '000003', '1', 15.00, 'download/el_alquimista.pdf', '1'),
	('000004', 'La divina comedia', '000004', '', '', '', '../images/libros/prointesol.png', 'S', '000003', '0', 15.00, '', ''),
	('000005', 'Cosas de un Examen', '000002', '', '												', '', '', '', '000003', '1', 8.00, 'download/cosas_de_un_examen.pdf', '1'),
	('000006', 'Mis Memorias de ugartino I', '000002', '', '						', '', '', '', '000003', '1', 10.00, 'download/mis_memorias_de_ugartino_1.pdf', '1'),
	('000007', 'Mis memorias1 de ugartino 2', '000002', '', '												', '', '', '', '000003', '1', 10.00, 'download/mis_memorias_de_ugartino_2.pdf', '1'),
	('000008', 'Cosas de un examen', '000002', '', '', '', '', 'S', '000003', '0', 15.00, '', ''),
	('000009', 'Sidarta2', '000010', '', '', '', 'images/libros/7habitos.gif', '', '000003', '0', 40.00, '', ''),
	('000010', 'El Principe', '000005', '', '', '', 'images/libros/el_alquimista.jpg', '', '000003', '0', 0.00, '', ''),
	('000013', 'Aforismos', '000006', '', '', '', '', '', '000003', '0', 0.00, '', ''),
	('000014', 'Cronica de una muerte anunciada', '000001', '', '', '', '', 'S', '000003', '0', 0.00, '', ''),
	('000015', 'Contacto', '000007', '', '', '', '', '', '000003', '0', 0.00, '', ''),
	('000016', 'El libro de marco Polo', '000008', '', '', '', '', '', '000003', '0', 0.00, '', ''),
	('000017', 'el noveno mandamiento', '000004', '', '', '', '', 'S', '000003', '0', 0.00, '', ''),
	('000018', 'Vivir, amar y aprender', '000013', '', 'Impresionado por el suicidio de una joven alumna, el doctor Leo Buscaglia creó una cátedra universitaria realmente única: un curso sobre el amor. Al principio fue tomado en broma, pero el éxito fue enorme. Se convirtió en un orador aclamado por multitudes y en un verdadero fenómeno editorial. "El doctor Amor", como se lo ha llamado, ha recorrido el mundo difundiendo su mensaje positivo, alentando a la gente a creer en sí misma y a aceptar el desafío de la vida.\r\n\r\n"Nada de lo que digo es original", afirma Buscaglia, "seguramente se ha dicho antes y mejor. Pero creo que debe ser repetido una y otra vez... . Sé que hay odio, fealdad y desesperanza en el mundo. Pero pienso que acentuando la alegría uno puede mejorarlo". 			', '', 'images/libros/buscaglia.jpg', '', '000009', '1', 15.00, '', ''),
	('000019', '', '', '', '', '', '', 'S', '', '', 0.00, '', ''),
	('000020', 'Viviar, amar y aprender1', '000007', '', '', '', '', 'S', '000004', '1', 0.00, '', ''),
	('000021', 'Viviar, amar y aprender1', '000005', '', '', '', '', 'S', '000005', '1', 0.00, '', ''),
	('000022', 'Los 7 habitos de la gente altamente efectivas', '000024', '', 'No importa a cuántas personas usted supervise, hay una sola persona a la cual puede cambiar: a usted mismo. La mejor inversión que puede hacer, entonces, es en mejorarse a sí mismo desarrollando los hábitos que le harán mejor persona y mejor gerente. \r\n\r\nSi usted quiere cambiar cualquier situación, tiene que comportarse en forma distinta. Pero para cambiar su comportamiento, debe antes modificar sus paradigmas – su forma de interpretar el mundo. \r\n\r\n“Los 7 hábitos” presentan una nueva forma para cambiar estos paradigmas, al instaurar nuevos hábitos que le permitirán escapar de la inercia y encaminarse hacia sus objetivos. \r\n\r\nLos tres primeros hábitos tratan del auto-dominio. Es decir, están orientados a lograr el crecimiento de la personalidad para obtener la independencia. \r\n\r\nLos siguientes tres hábitos tratan de las relaciones con los demás – trabajo en equipo, cooperación y comunicaciones; están orientados a lograr la interdependencia. \r\n\r\nFinalmente, el hábito siete, se refiere a la renovación continua que le llevará a entender mejor los hábitos restantes. \r\n				', '', 'images/libros/7habitos.gif', '', '000004', '1', 20.00, '', ''),
	('000023', 'El Principito', '000018', '', '												', '', 'images/libros/elprincipito.jpg', '', '000003', '1', 5.00, '', ''),
	('000024', 'Mas alla del bien y el mal', '000006', '', '', '', 'images/libros/BASN.gif', 'S', '000003', '1', 0.00, '', ''),
	('000025', 'La historia de las revoluions cientificas', '000012', '', '', '', '', 'S', '', '0', 0.00, '', ''),
	('000026', 'D.O.S.', '000003', '', '', '', '', 'S', '', '0', 0.00, '', ''),
	('000027', 'El conocimiento', '000009', '', '', '', '', 'S', '', '0', 99.99, '', ''),
	('000028', 'ASP.NET', '', '', '', '', 'images/libros/BASN.gif', '', '000001', '0', 18.00, '', ''),
	('000029', 'Crystal Reports 10', '', '', '', '', 'images/libros/BCR1.gif', '', '000001', '0', 25.00, '', ''),
	('000030', 'SQL Server 2005', '', '', '', '', 'images/libros/BSQ5.gif', 'S', '000001', '1', 25.00, '', ''),
	('000031', 'ASP', '', '01', '												', '', 'images/libros/LDASPCR.gif', '', '000001', '1', 45.00, '', ''),
	('000032', 'Dreamweaver 8', '', '', '', '', 'images/libros/LDDRW.gif', 'S', '000001', '1', 22.00, '', ''),
	('000033', 'Flash 8', '', '', '', '', 'images/libros/LDFLASH.gif', 'S', '000001', '1', 32.00, '', ''),
	('000034', 'Fireworks MX', '', '', '', '', 'images/libros/LDFRW.gif', '', '000001', '1', 28.00, '', ''),
	('000035', 'Power Builder', '', '', '', '', 'images/libros/LDPB.gif', '', '000001', '0', 31.00, '', ''),
	('000036', 'Php-Mysql', '', '', '', '', 'images/libros/LDPHPMY.gif', '', '000001', '1', 24.00, '', ''),
	('000037', 'PostgreSQL APACHE', '', '', '', '', 'images/libros/LDPHPPG.gif', '', '000001', '0', 38.00, '', ''),
	('000038', 'SQL Server 2000', '', '', '', '', 'images/libros/LDSQL2.gif', 'S', '000001', '1', 27.00, '', ''),
	('000039', 'UML', '', '', '', '', 'images/libros/LDUML.gif', '', '000001', '1', 15.00, '', ''),
	('000040', 'Visual Basic 6.0', '', '', '', '', 'images/libros/LDVB.gif', '', '000001', '0', 0.00, '', ''),
	('000041', 'Visual BAsic POO', '', '', '', '', 'images/libros/LDVBPOO.gif', '', '000001', '0', 30.00, '', ''),
	('000042', 'Visual Basic SQL', '', '', '', '', 'images/libros/LDVBSQL.gif', '', '000001', '0', 32.00, '', ''),
	('000043', 'Visual Fox Pro', '', '', '', '', 'images/libros/LDVF.gif', '', '000001', '0', 28.00, '', ''),
	('000044', 'C++.Net', '', '', '						', '', 'images/libros/MCNT.gif', '', '000001', '1', 30.00, '', ''),
	('000045', 'Delphi 8', '', '', '', '', 'images/libros/MDPH.gif', '', '000001', '0', 31.00, '', ''),
	('000046', 'Dream Weaver Studio 8', '', '', '', '', 'images/libros/MDR8.gif', '', '000001', '1', 34.00, '', ''),
	('000047', 'Flash 8', '', '', '', '', 'images/libros/MFL8.gif', '', '000001', '1', 34.00, '', ''),
	('000048', 'Indesign CS2', '', '', '						', '', 'images/libros/MID2.gif', '', '000001', '1', 34.00, '', ''),
	('000049', 'Java 2', '', '01', '						', '', 'images/libros/MJV2.gif', '', '000001', '1', 42.00, '', ''),
	('000050', 'Red Hat 8', '', '', '', '', 'images/libros/MLRH.gif', '', '000001', '0', 45.00, '', ''),
	('000051', 'Oracle 2006', '', '', '', '', 'images/libros/MOR6.gif', '', '000001', '0', 38.00, '', ''),
	('000052', 'PHP y Mysql Server', '', '', '', '', 'images/libros/MPHP.gif', '', '000001', '1', 28.00, '', ''),
	('000053', 'SQL Server 2000', '', '', '', '', 'images/libros/MSQ0.gif', '', '000001', '1', 15.00, '', ''),
	('000054', 'SQL Server 2005', '', '', '', '', 'images/libros/MSQL.gif', '', '000001', '1', 29.00, '', ''),
	('000055', 'UML y Rational Rose', '', '', '						', '', 'images/libros/MUML.gif', '', '000001', '1', 57.00, '', ''),
	('000056', 'Visual Basic.net 2005', '', '', '', '', 'images/libros/MVBS.gif', '', '000001', '1', 30.00, '', ''),
	('000057', 'Visual C++ 6.0', '', '', '', '', 'images/libros/MVC6.gif', '', '000001', '0', 29.00, '', ''),
	('000058', 'Windows 2000 Server', '', '', '', '', 'images/libros/MWS0.gif', '', '000001', '0', 52.00, '', ''),
	('000059', 'Windows Server 2003', '', '', '', '', 'images/libros/MWS3.gif', '', '000001', '1', 61.00, '', ''),
	('000060', 'Ado.Net', '', '', '						', '', 'images/libros/RADO.gif', '', '000001', '1', 31.00, '', ''),
	('000061', 'Dreamweaver 8', '', '', '', '', 'images/libros/RDR8.gif', 'S', '000001', '1', 26.00, '', ''),
	('000062', 'Flash 8', '', '', '', '', 'images/libros/RFL8.gif', 'S', '000001', '1', 31.00, '', ''),
	('000063', 'Photoshop CS2', '', '', '', '', 'images/libros/RPCS.gif', '', '000001', '0', 32.00, '', ''),
	('000064', 'Edipo Rey', '', '', '', '', 'images/libros/ediporey.jpg', '', '000003', '1', 2.00, '', ''),
	('000065', 'Dialogos de Platon', '', '', '', '', 'images/libros/dialogosdeplaton.jpg', '', '000003', '1', 2.00, '', ''),
	('000066', 'Compendio de Filosofia', '', '', '', '', 'images/libros/compendiodefilosofia.jpg', '', '000003', '1', 2.00, '', ''),
	('000067', 'El Banquete', '', '', '', '', 'images/libros/elbanquete.jpg', '', '000003', '1', 2.00, '', ''),
	('000068', '7 Ensayos de la Realidad Peruana', '000017', '', '												', '', 'images/libros/7ensayos.jpg', '', '000003', '1', 2.00, '', ''),
	('000069', 'La Divina Comedia', '000004', '', '												', '', 'images/libros/ladivinacomedia.jpg', '', '000003', '1', 5.00, 'download/la_divina_comedia.pdf', '1'),
	('000070', 'La Odisea', '', '', '', '', 'images/libros/laodisea.jpg', '', '000003', '1', 2.00, '', ''),
	('000071', 'Mio Cid', '', '', '', '', 'images/libros/miocid.jpg', '', '000003', '1', 2.00, '', ''),
	('000072', 'Quo Vadis', '', '', '', '', 'images/libros/quovadis.jpg', '', '000003', '1', 2.00, '', ''),
	('000073', 'Romeo y Julieta', '', '', '', '', 'images/libros/romeoyjulieta.jpg', '', '000003', '1', 2.00, '', ''),
	('000074', 'Liderazgo Ministerio y Batalla', '000020', '', 'Todo cristiano tiene un rol de liderazgo en las cosas de Dios. No importa cual sea su posición en la iglesia, desde el pastor hasta el mas simple obrero usted tiene la responsabilidad de modelar a Cristo en su vida. Y una de las características más apasionantes de Cristo fue su liderazgo. Este libro esta escrito con el propósito de ayudarle a lidiar con las responsabilidades del liderazgo, los requisitos del ministerio y las batallas contra las fuerzas del enemigo.\r\n\r\nUna mina de oro para pastores de cualquier denominación... Contiene mejor orientación sobre liderazgo pastotal que la mayoría de estudiantes de seminario reciben en sus cuatro años de estudios. Además Liderazgo Ministerio y Batalla, vendrá a llenar un vacío en animo y pautas para el liderazgo cristiano de este tiempo.\r\n\r\nSerá un recurso extraordinario para el fogoso liderazgo juvenil de América Latina.\r\nEste libro toca los puntos principales que los pastores de esta era de avivamiento necesitan para poder estar a la vanguardia de la ola de crecimiento que se experimenta en sus iglesias.\r\nAmérica Latina necesita hombres que hayan recibido el encargo de parte de Dios de orientar y capacitar al nuevo liderazgo.		', '', 'images/libros/liderazgo.jpg', '', '000004', '1', 20.00, '', ''),
	('000075', 'Los 5 lenguajes del amor', '000015', '', 'En lo profundo de la existencia humana está el deseo de tener intimidad y ser amado por otro. El matrimonio fue instituido para suplir la necesidad de intimidad y amor. Pero expresar este amor es muy distinto que simplemente tener la expriencia de estar enamorado. Es de naturaleza intencional. Es algo que elegimos hacer.\r\nEs algo que podemos aprender a hacer. Eso es una buena noticia para la pareja casada que ha perdido el sentimiento de estar enamorados.\r\nEn este libro Gary Chapman arroja luz sobre la experiencia de estar enamorado y habla la necesidad emocional de amor en la pareja matrimonial. Cuando cada uno habla el lenguaje de amor que es significativo para el otro, hay armonía en el matrimonio; pero ocurren complicaciones cuando lo que uno ve como acto de amor es algo totalmente insignificante para el conyuge, que en efecto puede estar esperando algo completamente distinto como señal de amor y devoción.\r\nCualquier sea la calidad de su matrimonio ¡puede mejorar!, y este libro puede contribuir a ello.															', '', 'images/libros/loscincolenguajesdelamor.jpg', '', '000009', '1', 20.00, '', ''),
	('000077', 'Liderazgo al estilo de los Jesuitas', '000023', '', 'Los Líderes hacen grandes compañías pero poco entendemos de verdad cómo volvernos y hacer que otros se vuelvan grandes líderes. En el proceso, los jesuitas construyeron una de las compañías más exitosas del mundo.\r\n\r\nFundada en 1540 por diez hombres sin capital y sin ningún plan de negocio, los jesuitas han sido una fuente de innovación y descubrimiento desde entonces. \r\n\r\nEn este libro Lowney, ex jesuita y ejecutivo de J. P. Morgan, revela los principios del liderazgo que han guiado a los líderes jesuitas en sus diversas actividades durante más de 450 años.\r\n											', '', 'images/libros/lider_jesuita.jpg', '', '000004', '1', 35.00, '', ''),
	('000076', 'El espejo del lider', '000019', '', 'Profundizando los conceptos de liderazgo personal e interpersonal expuestos en “El camino del líder”, su exitoso primer libro, David Fischman aborda temas tan significativos como el equilibrio, el control del ego, el desapego, la responsabilidad, el trabajo en equipo y las destrezas gerenciales, y expone las principales habilidades para manejarse en el mundo de las organizaciones.\r\nA través de fábulas, leyendas, historias ancestrales y ejercicios prácticos, iremos tomando conciencia de cómo somos, cómo actuamos y nos movemos. Aprenderemos a soltar emociones negativas, a valorarnos y a valorar a quienes nos rodean, a dirigir a otros y a entregarles poder, a trabajar en equipo y servir a nuestros seguidores.\r\nÉste es un instrumento para que las personas vean su realidad sin distorsiones y puedan así llegar a ser más íntegros, verdaderos líderes y no seguidores, enfocados hacia una vida más plena y espiritual.\r\n									', '', 'images/libros/el_camino_del_lider.gif', '', '000004', '1', 15.00, '', ''),
	('000078', 'Sexo y Juventud', '000014', '', '<p>Luis Palau perdi&oacute; a su padre cuando era muy ni&ntilde;o, y en su adolescencia no tuvo   consejero que le hablara franca y honestamente sobre sexo y juventud. Esa es una   de las razones por las que enfatiza tanto la importancia de tratar el tema de   manera abierta.<br /> \r\n&iquest;Qu&eacute; dice Dios sobre el sexo? . &iquest;Qu&eacute; dice la gente? &iquest;Para qu&eacute;   cre&oacute; Dios el sexo? &iquest;Cu&aacute;les son los prop&oacute;sitos y peligros? &iquest;Qu&eacute; de las normas   para su uso adecuado? &iquest;Cu&aacute;les son las consecuencias f&iacute;sicas, ps&iacute;quicas   yespirituales de la inmoralidad? &iquest;Podemos afirmar que existe tal cosa como la   inmoralidad sexual? &iquest;Cu&aacute;l es la actitud de la sociedad actual y cu&aacute;l debe ser,   seg&uacute;n la Palabra de Dios, la actitud de todo joven y toda se&ntilde;orita? \r\n</p>', '', 'images/libros/sexoyjuventud.jpg', '', '000010', '1', 20.00, '', ''),
	('000079', 'Las Mujeres que aman demasiado', '000016', '', '						', '', 'images/libros/las_mujeres_que_aman_demasi.jpg', '', '000009', '1', 17.00, '', ''),
	('000080', 'Los hombres son de marte, las mujeres son de Venus', '000027', '', 'Todas las relaciones en un momento determinado necesitan una puesta a punto. La convivencia, los problemas , el trabajo... son circunstancias externas a la pareja que afectan aunque no queramos. La diferencia existe en que los hombres y las mujeres reaccionamos de manera diferentes antes las distintas situaciones que nos surgen en la vida, y normalmente unos no entendemos a los otros y esa es la historia de nuestra vida. \r\n\r\nLos hombres dicen: "Son tan complicadas que no se entienden ni ellas!!" y nosotras decimos " Los hombres son las simples como el mecanismo de una peonza". Pero ni nosotras somos tan complicadas de entender ni ellos son tan simples. Eso es lo que viene a explicarnos en este libro, que es fruto de un estudio realizado por un psicologo americano reconocido en el campo de terapia de pareja. Miles de parejas acreditan los beneficios que les ha aportado este libro, ya no solo a saber porque los hombres y mujeres actuamos de determinada manera sino que tenemos que hacer la otra parte de la pareja para no crear conflicto. \r\nLas mujeres nos sorprendemos de porque los hombres no actuan como nosotras queremos, pero al mismo tiempo no lo decimos sino que esperamos que ellos por ciencia infusa sepan lo que tienen que hacer. Y ellos los pobres que no se enteran de nada de lo que pasa por nuestra cabecita pues normalmente tienden a cagarla sin saberlo. Pues esto y mas, los lo explica paso a paso, como hacer saber nuestras necesidades a nuestra pareja sin parecer que nos estamos quejando o que le estamos recriminando. Tanto desde el punto de vista de los hombres como de las mujeres. Es increible lo que puede cambiar el punto de vista.\r\n\r\nNo hace falta estar al borde de la ruptura para leer este libro. Siempre podemos mejorar nuestra relacion de una manera sana. Aunque este libro esta mas bien orientado a matrimonios, puede aplicarse igualmente a parejas que no esten casadas, ya que hay situaciones que pasan aunque no se conviva bajo el mismo techo. 		', '', 'images/libros/las_mujeres_son_de_marte.jpg', '', '000009', '1', 22.00, '', ''),
	('000081', 'Oraciones que las mujeres oran', '000026', '', '						', '', 'images/libros/oraciones_que_oran_las_muje.jpg', '', '000010', '1', 20.00, '', ''),
	('000082', 'HIstoria de un alma', '000028', '', 'Doctora de la iglesia católica, consejera del Papa y de muchos santos. Toda la sensibilidad de una mujer llamada a servir al Señor desde muy niña.					', '', 'images/libros/historia_de_un_alma.jpg', '', '000010', '1', 10.00, '', ''),
	('000083', 'El Peregrino Ruso', '000029', '', '						', '', 'images/libros/el_peregrino_ruso.gif', 'S', '000010', '1', 5.00, '', ''),
	('000084', 'El caballero de la armadura oxidada.', '000026', '01', '						', '', 'images/libros/Fisher, Robert - El caballero de la ', '', '000004', '1', 0.00, '', '');
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;


-- Volcando estructura para tabla libreria.tema
CREATE TABLE IF NOT EXISTS `tema` (
  `tema` int(6) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `resumen` text NOT NULL,
  `nombre` text NOT NULL,
  `visitas` int(4) NOT NULL DEFAULT '0',
  `tipo` char(1) NOT NULL DEFAULT '',
  `fecha` datetime NOT NULL,
  `estado` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tema`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla libreria.tema: 16 rows
DELETE FROM `tema`;
/*!40000 ALTER TABLE `tema` DISABLE KEYS */;
INSERT INTO `tema` (`tema`, `titulo`, `resumen`, `nombre`, `visitas`, `tipo`, `fecha`, `estado`) VALUES
	(2, '<strong>ESPECIALISTA EN PLANIFICACIÓN Y GESTIÓN DE PROYECTOS</strong>', '', '<table width="100%" border="0" cellspacing="2">\r\n  <tr>\r\n    <td align="left" valign="top">\r\n          <strong>Requisitos:</strong><br />\r\n      - Profesional en Economía o Administración. De preferencia con Especialización en Gestión de Proyectos y conocimiento de políticas publicas.<br />\r\n      - Acreditar experiencia mínima de tres años en la planificación y gestión de proyectos en el sector público o privado.<br />\r\n      <strong>Funciones:</strong><br />\r\n      - Facilitar, fortalecer la planificación en la oficina de la Sub Región Parinacochas, asistiendo a los principales sectores estatales de acuerdo a las metas establecidas, presupuestos y estrategias.<br />\r\n        - Apoyar en el desempeño de los Directores de los principales sectores (salud, educación, agricultura, gobierno local).<br />\r\n        - Brindar asistencia técnica especializada en acciones de planificación, elaboración de matrices y elaboración de planes operativos<br />\r\n        <strong>Conocimientos</strong><br />\r\n        - Formulación de Planes Estratégicos y operativos.<br />\r\n        - Planificación y Gestión Institucional.<br />\r\n        - Uso y manejo de paquetes Informáticos (Word, power point y Excel)</p>\r\n      <p>Los (as) interesados enviar C.V. no documentado a la siguiente dirección electrónica: cia.universalsac@hotmail.com</p>\r\n      <p>Localidad: Coracora (Parinacohas)<br />\r\n        Salario: A tratar<br />\r\n        Comienzo: marzo<br />\r\n        Duración: 02 meses</p>\r\n      <p>Tipo de trabajo: Tiempo completo</p>      <h3>&nbsp;</h3>\r\n    </td>\r\n  </tr>\r\n</table>', 7, '2', '2008-05-12 00:00:00', 0),
	(5, '<strong>CHOFER PARA SERVICIO PRIVADO </strong>', '', '<table width="100%" border="0" cellspacing="2">\r\n  <tr>\r\n    <td height="316" align="left" valign="top">\r\n      <strong>      REQUISITOS</strong><br />\r\n      - Brevete vigente<br />\r\n      - Buenos antecedentes<br />\r\n      - Responsable<br />\r\n      - Experiencia<br />\r\n      - Buena presencia<br />\r\n      - Documentos al dia<br />\r\n      <strong>SE OFRECE</strong><br />\r\n      - Pago superior al SMV<br />\r\n      - Alimentaciòn<br />\r\n      - Buen trato<br />\r\n      <strong>FORMA DE CONTACTO</strong><br />\r\n      Comunicarse al 945926070<br />\r\n    - Srta.Zoila Lamas</td>\r\n  </tr>\r\n</table>', 8, '2', '2010-03-12 01:02:42', 0),
	(6, '<strong>INGENIERO CIVIL HIDRÁULICO</strong>', '', '<table width="100%" border="0" cellspacing="2">\r\n  <tr>\r\n    <td height="198" align="left" valign="top">\r\n      <p>Entidad Binacional requiere contratar, los servicios profesionales de un Consultor:<br />\r\n        - Con especialidad demostrada en Hidráulica, debidamente habilitado en el Colegio respectivo;<br />\r\n        - Se valorarán maestrías y/o posgrados y/o cursos de capacitación (no excluyente);<br />\r\n        - Experiencia en diseño y/o construcción de obras hidráulicas: presas, bocatomas, con barrajes móviles y fijos, canales diques contra inundaciones y drenes en general;<br />\r\n      - Experiencia acreditada de 10 años.<br />\r\n      <br />\r\n        <strong>FORMA DE CONTACTO</strong><br />\r\n    Los interesados deberán remitir su Currículo Vitae documentado (verificable) a la Casilla Postal 12957 de la ciudad de La Paz (Bolivia) o al correo electrónico: contacto@alt-perubolivia.org hasta el día lunes 15 de marzo del año en curso, los TDR’s pueden ser solicitados a la misma dirección electrónica.</p>\r\n    </td>\r\n  </tr>\r\n</table>', 5, '2', '2010-03-12 01:05:34', 0),
	(3, '<strong>CONTADOR</strong>', '', '<table width="100%" border="0" cellspacing="2">\r\n  <tr>\r\n    <td height="376" align="left" valign="top">\r\n        <strong>PERFIL</strong><br />\r\n        - Contador Público Colegiado<br />\r\n        - Experiencia comprobada no menor a 5 años como CONTADOR.<br />\r\n        - Experiencia en regularización de contabilidades atrasadas.<br />\r\n        - Disponibilidad para trabajar bajo presión y a dedicación exclusiva.<br />\r\n        - Amplia capacidad y buen criterio de análisis de cuentas contables.<br />\r\n        - Dominio del Plan de Cuentas y de las Normas Internacionales de Contabilidad (NIC’s) y de las Normas de Información Financieras (NIIF’s).<br />\r\n        - Capacidad de liderar trabajo en equipo por objetivos y metas medibles.<br />\r\n        - Amplio conocimiento de Legislación Tributaria, Laboral y Contable.<br />\r\n        - Disponibilidad para trabajar a presión y a dedicación exclusiva.<br />\r\n        - Amplio dominio de sistemas computarizados contables<br />\r\n        - Amplio dominio y experiencia en digitalización de registros contables<br />\r\n        - Solvencia moral, responsabilidad y puntualidad</p>\r\n    <p><strong>CONTACTO</strong><br />\r\n    Presentar Currículo Vitae no mayor a 3 páginas, indicando referencias laborarles de sus últimos trabajos. Así mismo deberá presentar un historial remunerativo de los últimos 3 años.</td>\r\n  </tr>\r\n</table>', 3, '2', '2008-07-12 00:00:00', 0),
	(4, '<strong>CONTADOR ASISTENTE</strong>', '', '<table width="100%" border="0" cellspacing="2">\r\n  <tr>\r\n    <td height="376" align="left" valign="top">\r\n      <strong>PERFIL</strong><br />\r\n        - Contador Público Colegiado<br />\r\n        - Experiencia comprobada no menor a 3 años como CONTADOR.<br />\r\n        - Experiencia en regularización de contabilidades atrasadas.<br />\r\n        - Disponibilidad para trabajar bajo presión y a dedicación exclusiva.<br />\r\n        - Amplia capacidad y buen criterio de análisis de cuentas contables.<br />\r\n        - Dominio del Plan de Cuentas y de las Normas Internacionales de Contabilidad (NIC’s) y de las Normas de Información Financieras (NIIF’s).<br />\r\n        - Capacidad de trabajo en equipo.<br />\r\n        - Amplio conocimiento de Legislación Tributaria, Laboral y Contable.<br />\r\n        - Disponibilidad para trabajar a presión y a dedicación exclusiva.<br />\r\n        - Amplio dominio de sistemas computarizados contables<br />\r\n        - Amplio dominio y experiencia en digitalización de registros contables<br />\r\n        - Solvencia moral, cumplimiento de metas, responsabilidad y puntualidad<br />\r\n        <br />\r\n        <strong>FORMA DE CONTACTO</strong><br />\r\n        Presentar Currículo Vitae no mayor a 3 páginas, indicando referencias laborarles de sus últimos trabajos. Así mismo deberá presentar un historial remunerativo de los últimos 3 años, enviar CV al correo rrhhcolaborador@gmail.com , hasta el miércoles 17 de marzo de 2010.\r\n    </td>\r\n  </tr>\r\n</table>', 1, '2', '2010-03-12 00:56:27', 0),
	(7, '<strong>ASISTENTE DE INFORMACION </strong>', '', '<table style="text-align: left; width: 100%; height: 1399px;"\r\n border="0" cellpadding="0" cellspacing="0">\r\n  <tbody>\r\n    <tr>\r\n      <td><span style="font-weight: bold;">PERFIL\r\nREQUERIDO REQUERIDO:</span><br>\r\n- Bachiller universitario en Ciencias de la Comunicaci&oacute;n o\r\nPeriodismo.<br>\r\n- Capacitaci&oacute;n acreditada en cursos de redacci&oacute;n,\r\nortograf&iacute;a, sem&aacute;ntica o similar.<br>\r\n- Experiencia de dos (02) a&ntilde;os en las actividades a\r\ndesarrollar.<br>\r\n- Especializaciones o Diplomados relacionados a\r\ncomunicaci&oacute;n, periodismo y afines.<br>\r\n- Capacitaci&oacute;n acreditada en talleres, seminarios o foros\r\nrelacionados a las Comunicaciones.<br>\r\n- Experiencia en difusi&oacute;n period&iacute;stica con medios\r\nde comunicaci&oacute;n o haber laborado en un medio de\r\ncomunicaci&oacute;n.<br>\r\n- Experiencia en redacci&oacute;n de material informativo,\r\nart&iacute;culos&nbsp; y notas de prensa.<br>\r\n      <br>\r\n      <span style="font-weight: bold;">MODALIDAD DE\r\nCONTRATACI&Oacute;N:</span><br>\r\nCONTRATACI&Oacute;N ADMINISTRATIVA DE SERVICIOS<br>\r\n      <br>\r\n      <span style="font-weight: bold;">MONTO DE LA\r\nCONTRAPRESTACI&Oacute;N MENSUAL:</span><br>\r\nS/. 3,000.00 (Tres mil y 00/100 nuevos soles). No sujeta a\r\nnegociaci&oacute;n.<br>\r\n      <br>\r\n      <span style="font-weight: bold;">PLAZO DE DURACION\r\nDEL CONTRATO:</span><br>\r\n- 03 MESES <br>\r\n      <br>\r\n      <span style="font-weight: bold;">CONDICIONES PARA EL\r\nSERVICIO:</span><br>\r\n- No tener impedimento para contratar con el Estado.<br>\r\n- No estar incurso en el t&eacute;rmino e impedimento para\r\nreingresar a cualquier organismo del Estado, por haber sido destituido\r\n(cinco a&ntilde;os) o haber cesado con incentivos en programas de\r\nRenuncias Voluntarias (cinco a&ntilde;os).<br>\r\n- No ser miembro en actividad de las Fuerzas Armadas o\r\nPolic&iacute;a Nacional del Per&uacute;<br>\r\n- No ser candidato a cargos de elecci&oacute;n popular.<br>\r\n- No pertenecer o haber pertenecido en los &uacute;ltimos cuatro\r\n(4) a&ntilde;os, a una organizaci&oacute;n pol&iacute;tica;\r\nno desempe&ntilde;ar cargos directivos, con car&aacute;cter\r\nnacional, en las organizaciones pol&iacute;ticas, ni haberlos\r\ndesempe&ntilde;ado en los &uacute;ltimos cuatro (4)\r\na&ntilde;os anteriores a la postulaci&oacute;n; no haber sido\r\ncandidato a cargos de elecci&oacute;n popular, en los\r\n&uacute;ltimos cuatro (4) a&ntilde;os.<br>\r\n- No poseer antecedentes penales ni judiciales.<br>\r\n- No tener parentesco hasta el cuarto grado de consanguinidad, segundo\r\nde afinidad, y por raz&oacute;n de matrimonio, con el personal de\r\ndirecci&oacute;n y/o confianza, o con el personal que tenga\r\ninjerencia directa o indirecta en el proceso de selecci&oacute;n de\r\npersonal, o con personal que bajo cualquier modalidad se encuentra\r\nprestando servicios en la misma sede u oficina descentralizada donde\r\npostula, sujet&aacute;ndose a las disposiciones de la Ley\r\nN&ordm; 26771 y su Reglamento aprobado por Decreto Supremo\r\nN&ordm; 021-2000-PCM, modificado por Decreto Supremo N&ordm;\r\n017-2002-PCM y de los cuales tengo pleno conocimiento.<br>\r\n- Conocer las prohibiciones e incompatibilidades dispuestas en el\r\nDecreto Supremo N&ordm; 019-02-PCM y no encontrarme incurso en los\r\nimpedimentos que esta disposici&oacute;n se&ntilde;ala.<br>\r\n- No estar inhabilitado administrativamente ni judicialmente para\r\nejercer funci&oacute;n p&uacute;blica.<br>\r\n- No estar impedido de ser postor o contratista, expresamente previsto\r\npor las disposiciones legales y reglamentarias sobre la materia.<br>\r\n- No percibir ingreso alguno del Estado salvo que, en este caso, dejen\r\nde percibir esos ingresos durante el periodo de contrataci&oacute;n\r\nadministrativa de servicios. Est&aacute;n exceptuados de esta\r\nprohibici&oacute;n cuando la contraprestaci&oacute;n que se\r\nperciba provenga de actividad docente o por ser miembro\r\n&uacute;nicamente de un &oacute;rgano colegiado.<br>\r\n- No sufrir de enfermedad o incapacidad f&iacute;sica o mental no\r\nsusceptible de rehabilitaci&oacute;n que impida el\r\ndesempe&ntilde;o en el cargo al momento de la\r\ncontrataci&oacute;n.<br>\r\n- Disponibilidad inmediata.<br>\r\n- Dedicaci&oacute;n exclusiva.<br>\r\n      <br>\r\nLos (as) interesados(as) para ser admitidos como postulantes,\r\ndeber&aacute;n presentar la siguiente documentaci&oacute;n,\r\n&uacute;nicamente en Jr. Washington 1894 Cercado de Lima, los\r\nd&iacute;as 18, 19, 22, 23 y 24 de marzo de 2010, de 08.30 a.m. a\r\n4.00 p.m.:<br>\r\n- Fotocopia simple del Documento Nacional de Identidad vigente.<br>\r\n- Curr&iacute;culum Vitae con fotograf&iacute;a reciente,\r\nadjuntando y detallando la siguiente informaci&oacute;n:<br>\r\n- C&oacute;digo y nombre del servicio a la cual postula. JAIC-OGC-AI<br>\r\n- Datos personales, se&ntilde;alando domicilio actual,\r\nn&uacute;meros telef&oacute;nicos y correo\r\nelectr&oacute;nico.<br>\r\n- Copia de grados acad&eacute;micos y/o t&iacute;tulos\r\nprofesionales.<br>\r\n- Copia de certificados de estudios, o constancia de egresado, o grado\r\nde maestr&iacute;a o doctorado, afines al servicio.<br>\r\n- Copia de constancias de trabajo y/o experiencia laboral.<br>\r\n- Experiencia laboral; indicando nombre del empleador y del jefe de\r\npersonal actual o del jefe del &aacute;rea de log&iacute;stica,\r\ndependiendo del tipo de contrato: laboral o de servicios no personales,\r\nse&ntilde;alar &aacute;rea en que trabaj&oacute; o trabaja,\r\ncargos y detalle de las funciones desempe&ntilde;adas, fecha de\r\ninicio, fecha de t&eacute;rmino y motivo de cese. Asimismo, la\r\ndirecci&oacute;n y tel&eacute;fonos actuales de los centros\r\nlaborales anteriores consignados en el Curr&iacute;culum Vitae.<br>\r\n- Copia de constancias de capacitaci&oacute;n,\r\nparticipaci&oacute;n en seminarios, cursos y/o congresos\r\nrelacionados al servicio.<br>\r\n- Copia de constancias de estudios de programas\r\ninform&aacute;ticos, y detalle de esos conocimientos, en su\r\nCurr&iacute;culum Vitae.<br>\r\n      <br>\r\nFicha de Inscripci&oacute;n y Declaraci&oacute;n Jurada del\r\nPostulante (Descargar, llenar, imprimir, y remitir la ficha) llenada y\r\ndebidamente firmada.<br>\r\nLa documentaci&oacute;n remitida no ser&aacute; devuelta a los\r\npostulantes. <br>\r\nSe agradecer&aacute; no anillar la documentaci&oacute;n\r\nremitida.<br>\r\n      <br>\r\n      <span style="font-weight: bold;">ETAPAS QUE\r\nCONTEMPLA EL PROCESO:</span><br>\r\n- Evaluaci&oacute;n Curricular<br>\r\n- Prueba escrita<br>\r\n      <br>\r\nLas fechas para cada una de las citadas etapas ser&aacute;n\r\ndeterminadas en su oportunidad.<br>\r\nEl permanente seguimiento de las etapas del presente proceso es de\r\nentera responsabilidad de los postulantes, a trav&eacute;s de la\r\np&aacute;gina web.</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n\r\n', 0, '2', '2010-03-21 07:40:26', 0),
	(8, '<strong>CONVOCATORIA DE PERSONAL PARA PERÚ</strong>', '', '<table style="text-align: left; width: 100%;" border="0"\r\n cellpadding="0" cellspacing="0">\r\n  <tbody>\r\n    <tr>\r\n      <td>a) 01 responsable para el trabajo en la\r\nRegi&oacute;n Ayacucho: Provincia de Huamanga, Cercado y Distrito\r\nLos Morochucos de la Provincia de Cangallo.<br>\r\nb) 01 responsable para el trabajo en la Regi&oacute;n\r\nApur&iacute;mac: Provincia de Cotabambas, distritos de Haquira,\r\nChallhuahuacho y Tambobamba.<br>\r\n      <br>\r\n      <span style="font-weight: bold;">REQUISITOS:</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n      <br>\r\n      <br>\r\n1. Quechua como lengua\r\nmaterna&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n      <br>\r\n2. Residir en la zona de intervenci&oacute;n para la que se\r\npostule.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n      <br>\r\n3. Profesional (derecho, ciencias sociales, educaci&oacute;n,\r\notros) con&nbsp; al menos tres&nbsp; (03) a&ntilde;os de\r\nexperiencia <br>\r\n4. Dominio de herramientas inform&aacute;ticas: word, excel, power\r\npoint.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n      <br>\r\n5. Experiencia en el manejo de metodolog&iacute;as participativas\r\ncon mujeres<br>\r\n6. Manejo del enfoque de g&eacute;nero e\r\ninterculturalidad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n      <br>\r\n7. Experiencia en el desarrollo de cursos, talleres o seminarios, en\r\ntemas de g&eacute;nero y pol&iacute;tica, con mujeres.<br>\r\n8. Experiencia de trabajo en\r\nequipo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n      <br>\r\n9. Dedicaci&oacute;n a Tiempo\r\nCompleto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n      <br>\r\n10.Disponibilidad para realizar viajes a Lima en ocasiones regulares y\r\nde\r\nemergencia.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n      <br>\r\n11.Disponibilidad\r\ninmediata.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n      <br>\r\n      <span style="font-weight: bold;">DESCRIPCI&Oacute;N\r\nDEL PUESTO:&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n      <br>\r\n      <span style="text-decoration: underline;">Responsabilidad\r\nGeneral&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n      <br>\r\nLa persona contratada tendr&aacute; como funci&oacute;n general\r\ny principal dirigir, ejecutar y supervisar el cumplimiento del Plan\r\nAnual de Trabajo, teniendo en cuenta las herramientas de seguimiento,\r\nmonitoreo y evaluaci&oacute;n del Proyecto. Sus tareas\r\nespec&iacute;ficas ser&aacute;n las\r\nsiguientes:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n      <br>\r\n      <br>\r\n      <span style="text-decoration: underline;">Desarrollo\r\ndel proyecto&nbsp; </span><br>\r\n1. Identificar mujeres y grupos de mujeres organizadas de acuerdo al\r\nperfil del\r\nproyecto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>\r\n2. Identificar varones y grupos de varones organizados de acuerdo al\r\nperfil del\r\nproyecto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n      <br>\r\n3. Organizar los eventos y actividades previstas en los planes de\r\ntrabajo&nbsp;&nbsp;&nbsp; <br>\r\n4. Coordinar con las autoridades de la localidad<br>\r\n5. Coordinar con los y las l&iacute;deres de las comunidades\r\ncampesinas de la localidad<br>\r\n6. Promover el conocimiento p&uacute;blico de las actividades del\r\nproyecto.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n      <br>\r\n7. Otras pertinentes de acuerdo a las necesidades del\r\nproyecto.&nbsp;&nbsp; <br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n      <br>\r\n      <span style="text-decoration: underline;">Log&iacute;stica,\r\nAdministraci&oacute;n, Seguimiento, Monitoreo y\r\nEvaluaci&oacute;n&nbsp;&nbsp;&nbsp;&nbsp; </span><br>\r\n1. Organizar la log&iacute;stica de los eventos propios del\r\nproyecto.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n      <br>\r\n2. Llevar registros (de acuerdo a los formatos del proyecto) de las\r\nactividades que se realicen.<br>\r\n3. Realizar reportes mensuales de las actividades realizadas y de los\r\nrecursos recibidos.&nbsp;&nbsp;&nbsp; <br>\r\n4. Coordinar y supervisar el trabajo del personal a su cargo y\r\ncumplimiento de sus obligaciones.<br>\r\n      <br>\r\nLas personas interesadas deben remitir su CV, indicando la zona a la\r\nque postulan y sus pretensiones salariales, al correo:\r\npostmast@manuela. org.pe hasta el lunes 22 de marzo de 2010.&nbsp; </td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n', 2, '2', '2010-03-21 07:49:27', 0),
	(9, '<strong>CONVOCATORIA PARA ESPECIALISTA ACADEMICO - PRONAFCAP</strong>', '', '<table style="text-align: left; width: 100%;" border="0"\r\n cellpadding="0" cellspacing="0">\r\n  <tbody>\r\n    <tr>\r\n      <td><span style="font-weight: bold;"></span>La\r\nUniversidad Nacional &ldquo;Pedro Ruiz Gallo&rdquo; de la\r\nregi&oacute;n&nbsp; Lambayeque, convoca a profesionales que\r\ndeseen desempe&ntilde;arse como especialista acad&eacute;mico\r\npara los M&oacute;dulos de Comunicaci&oacute;n,\r\nMatem&aacute;tica e Investigaci&oacute;n; en los niveles\r\ninicial y primaria; para lo cual es necesario poseer los siguientes<br>\r\n      <span style="font-weight: bold;">REQUISITOS:</span><br>\r\n      <br>\r\n      <span style="font-weight: bold;">A.Para los\r\nm&oacute;dulos Comunicaci&oacute;n y Matem&aacute;tica</span><br>\r\n      <dl>\r\n        <dd>- DNI vigente</dd>\r\n        <dd style="text-decoration: underline;">Formaci&oacute;n\r\nacad&eacute;mica</dd>\r\n        <dd>- Profesional en educaci&oacute;n con\r\nt&iacute;tulo/licenciatura en la especialidad\r\nComunicaci&oacute;n /Matem&aacute;tica y/o en la especialidad\r\nInicial /Primaria</dd>\r\n        <dd>- Estudios posteriores al t&iacute;tulo y al\r\na&ntilde;o 2000 en Comunicaci&oacute;n/Matem&aacute;tica,\r\nseg&uacute;n corresponda (diplomado, segunda especialidad, post\r\ngrado, maestr&iacute;a). M&iacute;nimo dos estudios.</dd>\r\n        <dd style="text-decoration: underline;">Experiencia\r\nlaboral</dd>\r\n        <dd>- Experiencia en docencia\r\nsuperior&nbsp;&nbsp; (universidad o ISP) en el dictado de\r\ndid&aacute;ctica de la\r\nComunicaci&oacute;n/Matem&aacute;tica en formaci&oacute;n\r\nprofesional docente en las especialidades inicial / primaria,\r\ny/o&nbsp; </dd>\r\n        <dd>- Experiencia en&nbsp; formaci&oacute;n en\r\nservicio de profesores como&nbsp; capacitador\r\n(formador/especialista) a cargo del dictado de Comunicaci&oacute;n/\r\nMatem&aacute;tica. Totaliza como m&iacute;nimo 05\r\na&ntilde;os. </dd>\r\n        <dd>- Experiencia de docencia en aula en los niveles\r\nInicial/Primaria. M&iacute;nimo 5 a&ntilde;os. Este requisito\r\nes para el dictado de los cursos relacionados con el DCN.</dd>\r\n      </dl>\r\n      <span style="font-weight: bold;">B.Para el\r\nm&oacute;dulo Investigaci&oacute;n</span><br>\r\n      <dl>\r\n        <dd style="text-decoration: underline;">Para\r\npostulantes titulados en educaci&oacute;n:</dd>\r\n        <dd>- Profesional con t&iacute;tulo en\r\neducaci&oacute;n</dd>\r\n        <dd>- Estudios en Investigaci&oacute;n Educativa,\r\nposteriores al t&iacute;tulo y al a&ntilde;o 2000&nbsp;\r\n(diplomado, 2da especialidad, post grado, especializaci&oacute;n,\r\nsimilares). M&iacute;nimo dos estudios. </dd>\r\n        <dd>- Experiencia en docencia\r\nsuperior&nbsp;&nbsp; (universidades/ ISP) en el dictado del\r\ncurso /m&oacute;dulo de Investigaci&oacute;n en\r\nformaci&oacute;n profesional docente en las especialidades inicial/\r\nprimaria. M&iacute;nimo 2 a&ntilde;os. y/o&nbsp; </dd>\r\n        <dd>- Experiencia en&nbsp; la ejecuci&oacute;n de\r\ninvestigaciones en el campo educativo. M&iacute;nimo 02 proyectos o\r\nsimilar. </dd>\r\n      </dl>\r\n      <dl>\r\n        <dd style="text-decoration: underline;">Para\r\npostulantes no titulados en educaci&oacute;n:</dd>\r\n        <dd>- T&iacute;tulo profesional</dd>\r\n        <dd>- Estudios en Investigaci&oacute;n Educativa,\r\nposteriores al t&iacute;tulo y al a&ntilde;o 2000&nbsp;\r\n(diplomado, post grado, especializaci&oacute;n). M&iacute;nimo\r\ndos estudios. </dd>\r\n        <dd>- Experiencia en el dictado de cursos de\r\nInvestigaci&oacute;n Educativa. M&iacute;nimo 03\r\na&ntilde;os.</dd>\r\n        <dd>- Experiencia en la ejecuci&oacute;n de\r\ninvestigaciones en el campo educativo. M&iacute;nimo 03 proyectos o\r\nsimilar.</dd>\r\n      </dl>\r\n      <span style="font-weight: bold;">DECLARACI&Oacute;N\r\nJURADA:</span><br>\r\n- Dispone de tiempo para el cumplimiento de sus funciones y\r\nresponsabilidades.<br>\r\n- No pertenecer a ning&uacute;n otro equipo&nbsp; de PRONAFCAP<br>\r\n- No formar parte del personal de la sede central del MED ni de las\r\ninstancias de gesti&oacute;n educativa descentralizadas<br>\r\n- No tener antecedentes administrativos, penales ni judiciales<br>\r\n      <br>\r\n      <span style="font-weight: bold;">ADEMAS:</span><br>\r\nPara docentes que se desempe&ntilde;an como profesores de\r\nEducaci&oacute;n B&aacute;sica Regular en el sector\r\np&uacute;blico (Inicial o Primaria)<br>\r\n- Haber participado en la evaluaci&oacute;n censal, y alcanzado el\r\nnivel 2 o 3 en la evaluaci&oacute;n de los componentes\r\nComunicaci&oacute;n y Matem&aacute;tica y nivel 1 en\r\nCurr&iacute;culo Escolar. <br>\r\n- Y/o haber&nbsp; concluido el PRONAFCAP 2007, 2008 o 2009 con\r\nlogro Suficiente (14,15,16) o Destacado (17,18,19,20).<br>\r\n- Y/o haber aprobado&nbsp; la Evaluaci&oacute;n Nacional\r\nClasificatoria del Programa de Incorporaci&oacute;n a la Carrera\r\nP&uacute;blica Magisterial (R.M. 079-ED-2009).<br>\r\n      <br>\r\n      <span style="font-weight: bold;">CRONOGRAMA:</span><br>\r\n1.PRESENTACI&Oacute;N DE CURR&Iacute;CULO VITAE\r\nDOCUMENTADO&nbsp;&nbsp;&nbsp; : 18, 19 Y 20 DE MARZO<br>\r\n2.PUBLICACI&Oacute;N DE APTOS PARA\r\nENTREVISTA&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n&nbsp; &nbsp;&nbsp; : 24 DE MARZO<br>\r\n3.ENTREVISTA&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n&nbsp;&nbsp; &nbsp;: 25 Y 26 DE MARZO<br>\r\n4.PUBLICACI&Oacute;N DE RESULTADOS&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;: 27 DE\r\nMARZO.<br>\r\n      <br>\r\n      <span style="font-weight: bold;">PRESENTACI&Oacute;N\r\nDE EXPEDIENTES:</span><br>\r\nLocal de la UNPRG&nbsp; Bolognesi 701 (puerta de Balta) &ndash;\r\nTercer piso (Oficina PRONAFCAP) <br>\r\n      <br>\r\n      <span style="font-weight: bold;">INFORMES:</span><br>\r\nLocal de la UNPRG&nbsp; Bolognesi 701 (puerta de Balta) &ndash;\r\nTercer piso (Oficina PRONAFCAP) <br>\r\nCEL. 979618054&nbsp; -&nbsp; 979407700<br>\r\nhmedinacampos@hotmail.com</td>\r\n    </tr>\r\n    <tr>\r\n      <td></td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n', 2, '2', '2010-03-21 07:58:35', 0),
	(10, '<strong>CONVOCATORIA FACILITADOR(A) SOCIAL</strong>', '', '<table style="text-align: left; width: 100%;" border="0"\r\n cellpadding="0" cellspacing="0">\r\n  <tbody>\r\n    <tr>\r\n      <td>- 01 Facilitador(a) Social, para trabajar en\r\ncomunidades rurales del Distrito de Antauta &ndash; Provincia\r\nMelgar.<br>\r\n      <br>\r\n      <span style="font-weight: bold;">PERFIL:</span><br>\r\n- Mujer o Var&oacute;n, T&eacute;cnico o Profesional en\r\nCiencias de la Salud o Ciencias Sociales.<br>\r\n- Experiencia de trabajo en comunidades rurales (convivencia en la\r\ncomunidad) m&iacute;nimo 2 a&ntilde;os.<br>\r\n- Disponibilidad para convivir en las comunidades rurales del altiplano.<br>\r\n- Experiencia de trabajo en proyectos de agua y saneamiento rural.<br>\r\n- Conocimiento de temas de educaci&oacute;n sanitaria y ambiental.<br>\r\n- Experiencia de trabajo incorporando la metodolog&iacute;a\r\naprender - haciendo.<br>\r\n- Manejo de metodolog&iacute;a educativa para adultos.<br>\r\n- Actitud proactiva, compromiso con la Instituci&oacute;n y la\r\nComunidad.<br>\r\n- Con vocaci&oacute;n de servicio, motivador(a),\r\ndin&aacute;mico(a), creativo(a), innovador(a), perseverante y\r\nresponsable.<br>\r\n- Con conocimientos de manejo de conflictos, toma de decisiones,\r\ncapacidad para trabajar en equipo y mantener buenas relaciones\r\ninterpersonales.<br>\r\n- Con conocimientos y manejo de Office Windows (usuario).<br>\r\n- Dominio de Quechua indispensable.<br>\r\n- Indispensable vivir en la Regi&oacute;n.<br>\r\n- Indispensable licencia de conducir A-I<br>\r\n      <br>\r\n      <span style="font-weight: bold;">MODALIDAD DE\r\nCONTRATO:</span><br>\r\n&uuml;&nbsp; 3 meses (servicios no personales).<br>\r\n      <br>\r\nEnviar curr&iacute;culum vitae a la siguiente direcci&oacute;n:<br>\r\nf.minsur_saneam-edu@prelaturaayaviri.org hasta el d&iacute;a 26\r\nmarzo del presente a&ntilde;o.</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n', 0, '2', '2010-03-21 08:03:49', 0),
	(11, '<strong>RESPONSABLE DE BASE DE DATOS.</strong>', '', '<table style="text-align: left; width: 100%;" border="0"\r\n cellpadding="0" cellspacing="0">\r\n  <tbody>\r\n    <tr>\r\n      <td><span style="font-weight: bold;"></span>Empresa\r\nse encuentra en la b&uacute;squeda de un profesional,\r\nbachiller o egresado de ingenier&iacute;a y/o\r\ninform&aacute;tica a tiempo completo. Residir en la ciudad de\r\nHuar&aacute;z.<br>\r\nEsta persona se dedicar&aacute; al proceso de\r\ninformaci&oacute;n de comunidades:<br>\r\n- Dise&ntilde;o de matriz para cruce de variables (base de datos).<br>\r\n- Vaciado de datos. <br>\r\n- Elaboraci&oacute;n de informes&nbsp; y reportes&nbsp; de\r\ndatos en gr&aacute;ficos (barras) para estad&iacute;sticas.<br>\r\n- Evaluar bases de datos e interpretar resultados para una adecuada\r\ntoma de decisiones y contribuir a lograr los objetivos de la\r\ninstituci&oacute;n.<br>\r\n      <br>\r\n      <span style="font-weight: bold;">REQUISITOS:</span><br>\r\n- Conocimientos de Excel y Access&nbsp; (nivel avanzado).&nbsp;\r\n      <br>\r\n- Aptitud para trabajar en equipo, vocaci&oacute;n de servicio,\r\ncreatividad.<br>\r\n      <br>\r\n      <span style="font-weight: bold;">BENEFICIOS:</span><br>\r\n-Sueldo acorde al mercado. -Horarios flexibles. -Grato ambiente de\r\ntrabajo.<br>\r\n      <br>\r\nLos interesados sirvanse enviar su CV con asunto: "Profesional Base de\r\nDatos"&nbsp; a la direcci&oacute;n electr&oacute;nica\r\nchristianat04@gmail.com , glelsy_3@hotmail.com </td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n', 3, '2', '2010-03-24 07:08:34', 0),
	(12, '<strong>ESPECIALISTA DE PROYECTOS</strong>', '', '<table style="text-align: left; width: 100%;" border="0"\r\n cellpadding="0" cellspacing="0">\r\n  <tbody>\r\n    <tr>\r\n      <td><span style="font-weight: bold;"></span><span\r\n style="font-weight: bold;">OBJETIVO DEL PUESTO</span><br>\r\nDesarrollar en el marco del proyecto de seguridad alimentaria, acciones\r\nde asistencia t&eacute;cnica dirigidas al fortalecimiento de\r\ncapacidades de los agentes comunitarios de salud, l&iacute;deres\r\ncomunales y poblaci&oacute;n en general para implementar acciones\r\norientadas a mejorar las pr&aacute;cticas de\r\nalimentaci&oacute;n y nutrici&oacute;n materna e infantil, en\r\ncomunidades del &aacute;mbito de trabajo.<br>\r\n      <br>\r\n      <span style="font-weight: bold;">RESPONSABILIDADES</span><br>\r\nLas principales son:<br>\r\n- Identificaci&oacute;n, formulaci&oacute;n, seguimiento y\r\nevaluaci&oacute;n local de proyectos sociales<br>\r\n- Articula la participaci&oacute;n de las instituciones\r\ninvolucradas en los proyectos gestiona la vinculaci&oacute;n de\r\notras instituciones y organismos que persigan objetivos similares o\r\ncomplementarios a los planteados en el proyecto<br>\r\n- Asistir t&eacute;cnicamente en la ejecuci&oacute;n de las\r\nactividades del proyecto de acuerdo a su formaci&oacute;n\r\nacad&eacute;mica y experiencia laboral<br>\r\n- Identifica y gestiona, en coordinaci&oacute;n&nbsp; con\r\nlos/las Coordinadores/as de sede y la direcci&oacute;n de\r\n&aacute;rea, nuevas zonas y &aacute;mbitos de\r\nactuaci&oacute;n dentro de la regi&oacute;n, y nuevos proyectos\r\n/ programas a nivel provincial y/o regional.<br>\r\n- Gestiona el co-financiamiento de actividades y acciones en el marco\r\ndel a trav&eacute;s de diferentes fuentes de financiamiento\r\np&uacute;blicas y privadas, nacionales y/o internacionales.<br>\r\n- Participa activamente en la planificaci&oacute;n institucional y\r\nen la elaboraci&oacute;n de los Planes Operativos Anuales (POA) de\r\nla sede.<br>\r\n      <br>\r\n      <span style="font-weight: bold;">PERFIL REQUERIDO Y\r\nCARACTER&Iacute;STICAS DEL PUESTO</span><br>\r\nRequisitos indispensables:<br>\r\n- Titulaci&oacute;n universitaria en ciencias sociales y/o\r\necon&oacute;micas, ingenier&iacute;a con\r\nespecializaci&oacute;n en proyectos de desarrollo social<br>\r\n- Especializaci&oacute;n en la formulaci&oacute;n de proyectos\r\nen los siguientes rubros prioritarios: educaci&oacute;n y salud\r\npreventiva, y/o productivos, tur&iacute;sticos, medio ambientales,\r\nmicroempresariales en &aacute;mbitos rurales<br>\r\n- Experiencia m&iacute;nima de tres (3) a&ntilde;os de trabajo\r\nen comunidades rurales andinas en proyectos o programas sociales<br>\r\n- Trabajo de campo y aplicaci&oacute;n de metodolog&iacute;a\r\nparticipativa en los procesos de identificaci&oacute;n de proyectos<br>\r\n- Experiencia aplicativa del enfoque de g&eacute;nero y medio\r\nambiente en el marco del desarrollo sostenible<br>\r\n- Experiencia en el uso de herramientas de planificaci&oacute;n y\r\npresupuestaci&oacute;n de proyectos<br>\r\n- Capacidad de an&aacute;lisis de comunicaci&oacute;n con\r\npoblaci&oacute;n rural<br>\r\n&nbsp;<br>\r\n      <span style="font-weight: bold;">HABILIDADES\r\nREQUERIDAS</span><br>\r\n- El cargo requiere una persona proactiva, propositiva y resolutiva con\r\nbuen maneja de relaciones interpersonales, liderazgo, trabajo en\r\nequipo, capacidad de adaptaci&oacute;n a entornos cambiantes y\r\nrespuesta de trabajo bajo presi&oacute;n<br>\r\n- Disposici&oacute;n para desplazamientos entre comunidades<br>\r\n- Buena disposici&oacute;n para el trato con las personas y las\r\nrelaciones interinstitucionales.<br>\r\n- Motivaci&oacute;n por la el desarrollo y la equidad.<br>\r\n- Habilidad en la resoluci&oacute;n de conflictos y el trabajo en\r\nequipo.<br>\r\n- Habilidad para las explicaciones o exposiciones a terceros.<br>\r\n- Capacidad de an&aacute;lisis y redacci&oacute;n de textos en\r\ncastellano.<br>\r\n- Experiencia de trabajo con voluntarios y l&iacute;deres de\r\ncomunidades<br>\r\n- Manejo de metodolog&iacute;as para la capacitaci&oacute;n de\r\nadultos<br>\r\n- Manejo de quechua y/o aymara fluido<br>\r\n- Capacidad de convocatoria y de generar un ambiento motivador con la\r\npoblaci&oacute;n objetivo, que facilite la interacci&oacute;n\r\ndel grupo y genere el ambiente propicio para alcanzar las metas de\r\ncambio de comportamientos promovidos por los proyectos<br>\r\n- Buen conocimiento del entorno Windows y uso de paquetes\r\ninform&aacute;ticos, apreciado manejo de programas\r\nestad&iacute;sticos<br>\r\n- Se valorar&aacute; estudios de especializaci&oacute;n en\r\nmateria af&iacute;n a las funciones del puesto:\r\nformulaci&oacute;n, gesti&oacute;n y evaluaci&oacute;n de\r\nproyectos, cooperaci&oacute;n internacional, g&eacute;nero,\r\nmedio ambiente, interculturalidad, etc.<br>\r\n- Experiencia en puestos de coordinaci&oacute;n de proyectos y\r\ndominio de instrumentos como el enfoque del marco l&oacute;gico.<br>\r\n- Necesario con licencia de conducir vigente<br>\r\n&nbsp;<br>\r\nUbicaci&oacute;n del puesto: Provincia Puno, Regi&oacute;n\r\nPuno,Lampa <br>\r\nIncorporaci&oacute;n prevista: Inmediata<br>\r\n&nbsp;<br>\r\nPor favor abstenerse quienes no re&uacute;nan los requisitos<br>\r\nRemitir CV, indicando pretensiones salariales (indispensable) y\r\nreferencias profesionales, al siguiente correo\r\nconvocatoriasghp@gmail.com hasta el 26 de marzo de 2010, inclusive,\r\nespecificando en el asunto del correo ESPECIALISTAS DE PROYECTOS\r\nPUNO,LAMPA </td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n', 1, '2', '2010-03-24 07:09:40', 0),
	(13, 'CONVOCATORIA', 'Proyecto financiado por la CooperaciÃ³n Internacional busca actualizar su base de datos con:\r\n\r\nProfesionales con experiencia en la formulaciÃ³n de Proyectos de InversiÃ³n PÃºblica(perfiles, prefactibilidad o factibilidad) y\r\nEstudios definitivos (expedientes tÃ©cnicos)', '<table width="100%" border="0" cellpadding="0" cellspacing="0">    \r\n<tbody>\r\n<tr>      \r\n<td>\r\n<p>Proyecto financiado por la Cooperaci&oacute;n Internacional busca actualizar su base de datos con:</p>\r\n        \r\n<p>Profesionales con experiencia en la formulaci&oacute;n de Proyectos de Inversi&oacute;n P&uacute;blica(perfiles, prefactibilidad o factibilidad) y<br />          Estudios definitivos (expedientes t&eacute;cnicos)<br />          Para proyectos de infraestructura ligados al tema conectividad (caminos vecinales, puentes), educaci&oacute;n y saneamiento, para lo cual se requieren, Consultores  (Persona Natural o Jur&iacute;dica) que cumplan los siguientes requisitos:<br />          - Para los Expedientes T&eacute;cnicos: Titulo de ingeniero civil, colegiado y habilitado; con experiencia en elaboraci&oacute;n de expedientes t&eacute;cnicos, residencia y supervisi&oacute;n de obras. C&oacute;digo: ET INFRA<br />          - Para los Estudios de Preinversi&oacute;n: Economista, Ingeniero y/o carreras afines, con experiencia en formulaci&oacute;n de estudios de preinversi&oacute;n bajo los lineamientos del Sistema Nacional de Inversi&oacute;n P&uacute;blica (SNIP). C&oacute;digo: PIP INFRA<br />          - Experiencia de trabajo con Gobiernos Locales o Programas Sociales.<br />          <br />          Los trabajos se realizaran en el &aacute;mbito de la Regi&oacute;n Hu&aacute;nuco, en especial de la Provincia de Leoncio Prado y Mara&ntilde;&oacute;n (C.P. Para&iacute;so).<br />          <br />      Los interesados enviar C.V. no documentado a la  siguiente direcci&oacute;n electr&oacute;nica: convocatoriacaminosvecinales@yahoo.es, hasta el 28 de marzo del 2010, indicar en el asunto el c&oacute;digo al que postula.</p>\r\n</td>    </tr>  </tbody></table>\r\n<style type="text/css">\r\nbody {\r\n	\r\n}\r\n</style>', 1, '2', '2010-03-25 07:51:27', 0),
	(14, 'PROGRMADOR LENGUAJE  C', '- Nivel intermedio - avanzado\r\n- Para proyectos para IPhone.\r\n- Freelance', '<table style="width: 498px; height: 152px;" border="0" cellpadding="0" cellspacing="0">      \r\n<tbody>  \r\n<tr>        \r\n<td valign="top">  \r\n<p>- Nivel intermedio - avanzado <br />        - Para proyectos para IPhone. <br />        - Freelance<br />        <br />          Interesados enviar su curriculum al correo:<br />      mirellasala@mac.com</p>\r\n        </td>    </tr>  </tbody></table>  <style type="text/css">  body {  	  }  </style>\r\n<style type="text/css">\r\nbody {\r\n	\r\n}\r\n</style>', 3, '2', '2010-03-27 09:55:34', 0),
	(15, 'PROGRAMADOR PHP', '- Con experiencia 2 aÃ±os en PHP\r\n- Conocimiento de MODx, maquetado web y Mysql.\r\n- Contacto: Yuri Revilla.', '<table style="width: 498px; height: 156px;" border="0" cellpadding="0" cellspacing="0">      \r\n<tbody>  \r\n<tr>        \r\n<td valign="top">  \r\n<p>- Con experiencia 2 a&ntilde;os en PHP<br />          - Conocimiento de MODx, maquetado web y Mysql.<br />          - Contacto: Yuri Revilla.<br />          Telfs: 221-6243 / 999-572-374<br />      Contactar: &nbsp;&nbsp;yrevilla@priseimage.com</p>\r\n  </td>    </tr>  </tbody></table>  <style type="text/css">  body {  	  }  </style>\r\n<style type="text/css">\r\nbody {\r\n	\r\n}\r\n</style>', 9, '2', '2010-03-27 09:58:53', 0),
	(16, 'PATRONISTA', 'Con experiencia en tela punto y plano. Para ropas de bebes, niÃ±os y adultos. ', '<table style="width: 454px; height: 134px;" border="0" cellpadding="0" cellspacing="0">      \r\n<tbody>  \r\n<tr>        \r\n<td valign="top">Con experiencia en tela punto y plano. Para ropas de bebes, ni&ntilde;os y   adultos. Enviar CV indicando pretensiones salarioales<br />        Correo:   &nbsp;textilsan_blas@hotmail.com<br />        Contacto: Fernando Franco.<br />        Telfs: 354-1596 / 981-317-889</td>    </tr>  </tbody></table>  <style type="text/css">  body {  	  }  </style>\r\n<style type="text/css">\r\nbody {\r\n	\r\n}\r\n</style>', 5, '2', '2010-03-27 10:00:15', 0),
	(17, 'NUEVA OFERTA LIDERBOOKS', 'Personal para limpieza ambos sexos.', '<font size="2"><span style="font-family: Arial,Helvetica,sans-serif;">Personal para limpieza ambos sexos.</span><br style="font-family: Arial,Helvetica,sans-serif;" /></font>    \r\n<ul style="font-family: Arial,Helvetica,sans-serif;">    \r\n<li><font size="2">Trabajo estable</font></li>    \r\n<li><font size="2">Remuneracion acorde con el mercado</font></li>    \r\n<li><font size="2">Reconocimientos por horas extras</font></li>    \r\n<li style="text-decoration: underline;"><font size="2">En planilla</font></li></ul><style type="text/css">body {  	  }  </style>\r\n  <style type="text/css">  body {  	  }  </style>\r\n<style type="text/css">\r\nbody {\r\n	\r\n}\r\n</style>', 11, '2', '2010-04-02 03:48:30', 0);
/*!40000 ALTER TABLE `tema` ENABLE KEYS */;


-- Volcando estructura para tabla libreria.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `perfil` int(11) DEFAULT NULL,
  `estado` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla libreria.usuarios: 1 rows
DELETE FROM `usuarios`;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `login`, `password`, `nombres`, `apellidos`, `perfil`, `estado`) VALUES
	(1, 'mtrujillo', 'e10adc3949ba59abbe56e057f20f883e', 'MARTIN', 'TRUJILLO BUSTAMANTE', 1, 1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
