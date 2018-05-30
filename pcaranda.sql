/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : pcaranda

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-05-28 07:16:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for alta_temporada
-- ----------------------------
DROP TABLE IF EXISTS `alta_temporada`;
CREATE TABLE `alta_temporada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of alta_temporada
-- ----------------------------
INSERT INTO `alta_temporada` VALUES ('11', 'FÉRIAS ESCOLARES', '2018-07-09', '2018-05-29');
INSERT INTO `alta_temporada` VALUES ('12', 'INDEPENDÊNCIA DO BRASIL', '2018-09-07', '2018-09-09');
INSERT INTO `alta_temporada` VALUES ('13', 'SEMANA N SRA APARECIDA', '2018-10-11', '2018-10-14');
INSERT INTO `alta_temporada` VALUES ('14', 'PROCLAMAÇÃO REPUBLICA', '2018-11-15', '2018-11-18');
INSERT INTO `alta_temporada` VALUES ('15', 'FÉRIAS ESCOLARES', '2018-12-20', '2018-12-31');
INSERT INTO `alta_temporada` VALUES ('16', 'FÉRIAS ESCOLARES', '2019-01-01', '2019-01-28');

-- ----------------------------
-- Table structure for apartamentos_tipos
-- ----------------------------
DROP TABLE IF EXISTS `apartamentos_tipos`;
CREATE TABLE `apartamentos_tipos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of apartamentos_tipos
-- ----------------------------
INSERT INTO `apartamentos_tipos` VALUES ('9', 'Single (Standart)');
INSERT INTO `apartamentos_tipos` VALUES ('10', 'Duplo (Standart) ');
INSERT INTO `apartamentos_tipos` VALUES ('11', 'Triplo (Standart)');
INSERT INTO `apartamentos_tipos` VALUES ('12', 'Quádruplo (Standart) ');
INSERT INTO `apartamentos_tipos` VALUES ('13', 'Quíntuplo (Standart)');
INSERT INTO `apartamentos_tipos` VALUES ('14', 'Single (Premiun)');
INSERT INTO `apartamentos_tipos` VALUES ('15', 'Duplo (Premiun)');
INSERT INTO `apartamentos_tipos` VALUES ('16', 'Triplo (Premiun)');
INSERT INTO `apartamentos_tipos` VALUES ('17', 'Quádruplo (Premiun)');
INSERT INTO `apartamentos_tipos` VALUES ('18', 'Quíntuplo (Premiun)');

-- ----------------------------
-- Table structure for canais
-- ----------------------------
DROP TABLE IF EXISTS `canais`;
CREATE TABLE `canais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pai` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `texto` mediumtext,
  `dthr_criacao` datetime DEFAULT NULL,
  `dthr_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_include` int(11) DEFAULT NULL,
  `mostra_menu` enum('n','s') DEFAULT 'n',
  `ordem` int(11) DEFAULT NULL,
  `ativo` enum('s','n') DEFAULT 's',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of canais
-- ----------------------------
INSERT INTO `canais` VALUES ('14', '0', 'HOTEL CARANDÁ VILLE', '<p><strong>Voc&ecirc; e sua fam&iacute;lia Merecem Bonito</strong></p>\r\n\r\n<p>Para voc&ecirc; desfrutar das mais belas paisagens, no melhor destino ecotur&iacute;stico do Brasil, a Pousada Carand&aacute; Ville , localizada a 200m do centro da cidade, &eacute; um Complexo de Hospedagem, configurado em blocos em diferentes partes do bairro onde estamos localizados , por isso o nome Carand&aacute; Ville , possui uma excelente estrutura , ambiente familiar, &nbsp;decora&ccedil;&atilde;o regional que mistura o rustico com o moderno utilizando cores alegres e aconchegantes .</p>\r\n\r\n<p>Nosso restaurante disponibiliza de pratos tipicos da regi&atilde;o ,onde voc&ecirc; ir&aacute; se deliciar com comidas regionais, tendo a op&ccedil;&atilde;o de incluir essas refei&ccedil;&otilde;es em sua hospedagem, funcionando das 14 as 22hs. .</p>\r\n\r\n<p>Aos finais de semana e feriados m&uacute;sica ao vivo para seu happy hour , para eventos especiais temos a op&ccedil;&atilde;o de jantar tem&aacute;tico .</p>\r\n\r\n<p>Em nossa piscina, oferecemos aos finais de semana e feriados , aula de hidrogin&aacute;stica gratuita para nossos clientes.</p>\r\n\r\n<p>A Pousada Carand&aacute; Ville re&uacute;ne em um novo formato de hospedagem, uma localiza&ccedil;&atilde;o privilegiada, a combina&ccedil;&atilde;o perfeita entre apartamentos de classifica&ccedil;&atilde;o standart / turistica somada a uma &nbsp;excelente &nbsp;&aacute;rea verde onde &eacute; servido &nbsp;um excelente caf&eacute; da manh&atilde; estilo colonial.O novo formato Carand&aacute; Ville, coloca em pr&aacute;tica a expertise adquirida ao longo de sua hist&oacute;ria, com conceitos obrigat&oacute;rios que asseguram o elevado padr&atilde;o da marca.</p>\r\n\r\n<p>Recep&ccedil;&atilde;o 24hs, sendo check in por todo expediente e por quest&otilde;es operacionais do trade tur&iacute;stico check out das 07 as 22hs.</p>\r\n\r\n<p><strong>NOSSO CAF&Eacute; DA MANH&Atilde;</strong></p>\r\n\r\n<p>Para que o h&oacute;spede Carand&aacute; Ville tenha disposi&ccedil;&atilde;o e energia para realizar os passeios em Bonito-MS, servimos um delicioso caf&eacute; da manh&atilde; estilo colonial, que consiste numa vers&atilde;o avantajada do que normalmente comp&otilde;e a mesa de caf&eacute; de outros hot&eacute;is da regi&atilde;o. Composto por aproximadamente 40 itens nosso&nbsp; card&aacute;pio mistura receitas tradicionais da cultura regional como a sopa paraguaia, a chipa,o cabur&eacute;,a chipagua&ccedil;u, al&eacute;m de elementos&nbsp; ind&iacute;genas : bolo de mandioca com coco, al&eacute;m de alguns bolos e p&atilde;es funcionais para os adeptos do fitness, enriquecendo nossa culin&aacute;ria .</p>\r\n\r\n<p>Servimos tamb&eacute;m&nbsp; Granolas , cereais integrais , Iogurtes,&nbsp; gelatinas , mousses e variados sabores de sucos e ch&aacute;s naturais . A maioria dos produtos s&atilde;o artesanais.</p>\r\n\r\n<p>Durante o caf&eacute; da Manh&atilde; voc&ecirc; pode observar p&aacute;ssaros e&nbsp; animais da nossa fauna e flora ( macacos , cotias entre outros ) em uma reserva ambiental que temos bem coladinho com nossa estrutura .</p>\r\n\r\n<p><strong>Al&eacute;m de hospedagem, voc&ecirc; ir&aacute; encontrar na POUSADA CARANDA VILLE</strong></p>\r\n\r\n<p>&Oslash;&nbsp;&nbsp;Restaurante e Bar (a La carte)&nbsp;<strong>aberto para o p&uacute;blico de fora do hotel (Hor&aacute;rio de Atendimento das 14:00 &aacute; 22:00)</strong></p>\r\n\r\n<p>&Oslash;&nbsp;&nbsp;Wi Fi (somente nas &aacute;reas sociais: restaurante e recep&ccedil;&atilde;o)</p>\r\n\r\n<p>&Oslash; Recep&ccedil;&atilde;o 24 horas (Sendo efetuados check-out e agendamento de passeios entra as&nbsp; 07:00 / 22:00 )</p>\r\n\r\n<p>&Oslash;&nbsp;&nbsp;Lavanderia ( Taxa Extras &aacute; consultar )</p>\r\n\r\n<p>&Oslash;&nbsp;&nbsp;Baby Sitter ( Taxa Extras &aacute; consultar )</p>\r\n\r\n<p>&Oslash;&nbsp;&nbsp;Massagem Relaxante entre outras ( possui taxas extras )</p>\r\n\r\n<p>&Oslash;&nbsp;&nbsp;Hidrogin&aacute;stica aos finais de emana e feriados</p>\r\n\r\n<p>&Oslash;&nbsp;&nbsp;Happy Hour com deliciosas entradas de cortesia</p>\r\n\r\n<p>&Oslash;&nbsp;&nbsp;Churrasqueiras e Kit churrasco a disposi&ccedil;&atilde;o dos h&oacute;spedes ( possui taxas extras )</p>\r\n\r\n<p>&Oslash;&nbsp;&nbsp;Aceitamos animais de estima&ccedil;&atilde;o pequeno porte ( taxas extras &aacute; consultar )</p>\r\n\r\n<p>&Oslash;&nbsp;&nbsp;Decora&ccedil;&atilde;o tem&aacute;tica para momentos especiais ( possui taxas extras )</p>\r\n\r\n<p>&Oslash;&nbsp;&nbsp;Ag&ecirc;ncia receptiva com agendamento de transfer, passeios em Bonito e Pantanal.</p>\r\n\r\n<ul>\r\n	<li><strong>Al&eacute;m de hospedagem, voc&ecirc; ir&aacute; encontrar na POUSADA CARANDA VILLE</strong></li>\r\n	<br />\r\n	<li>Restaurante e Bar (a La carte) aberto para o p&uacute;blico de fora do hotel</li>\r\n	<li>Wi Fi (somente nas &aacute;reas sociais: restaurante e recep&ccedil;&atilde;o)</li>\r\n	<li>Lavanderia ( Taxa Extras &aacute; consultar )</li>\r\n	<li>Baby Sitter ( Taxa Extras &aacute; consultar )</li>\r\n	<li>Massagem Relaxante entre outras ( possui taxas extras )</li>\r\n	<li>Hidrogin&aacute;stica aos finais de emana e feriados</li>\r\n	<li>Happy Hour com deliciosas entradas</li>\r\n	<li>Churrasqueiras e Kit churrasco a disposi&ccedil;&atilde;o dos h&oacute;spedes ( possui taxas extras )</li>\r\n	<li>Aceitamos animais de estima&ccedil;&atilde;o pequeno porte ( taxas extras &aacute; consultar )</li>\r\n	<li>Decora&ccedil;&atilde;o tem&aacute;tica para momentos especiais ( possui taxas extras )</li>\r\n	<li>Ag&ecirc;ncia receptiva com agendamento de transfer, passeios em Bonito e Pantanal.</li>\r\n</ul>', null, '2018-05-14 09:56:53', null, 'n', null, 's');
INSERT INTO `canais` VALUES ('15', '0', 'TARIFÁRIOS', '<ul>\r\n	<li>As tarifas acima citadas n&atilde;o s&atilde;o validas para os per&iacute;odos de alt&iacute;ssima temporada , tais como : Festival de Inverno , F&eacute;rias Escolares, R&eacute;veillon , Carnaval e Feriados nacionais ( Pre&ccedil;os sob consulta)</li>\r\n	<li>IMPORTANTE : O uso do frigobar e do restaurante deve ser respeitado, dessa forma , N&atilde;o &eacute; permitido o consumo de bebidas e alimentos trazidos de fora do hotel; Sujeito a cobran&ccedil;a de Taxa rolha​.</li>\r\n	<li>Crian&ccedil;as de 0 a 05 anos &ndash; free quando dividirem o aptos com 02 adultos</li>\r\n	<li>Incluso na di&aacute;ria : caf&eacute; da manh&atilde;.</li>\r\n	<li>N&atilde;o cobramos taxa de servi&ccedil;o.</li>\r\n	<li>A di&aacute;ria inicia-se &agrave;s 14h e encerra-se &agrave;s 12h.</li>\r\n	<li>Caf&eacute; da manh&atilde;: 7:00h &agrave;s 9:00h</li>\r\n	<li>A reserva s&oacute; ser&aacute; efetuada ap&oacute;s o pagamento de 50% de sinal. O pagamento de sinal dever&aacute; ser feito no Banco do Brasil, solicitar os dados ao departamento de reservas. Favor remeter o comprovante de dep&oacute;sito via e-mail ou pelo telefone (67)3255-3553 / ( 67) 3255-4540</li>\r\n	<li>Tarifas v&aacute;lidas at&eacute; 30/06/2017</li>\r\n</ul>\r\n\r\n<p><strong>Pol&iacute;tica de cancelamento</strong><br />\r\nEm caso de desist&ecirc;ncia n&atilde;o ser&aacute; devolvido o dep&oacute;sito de sinal de reservas, por&eacute;m o contratante adquire cr&eacute;dito de saldo em di&aacute;rias para futuras hospedagens a ser utilizado at&eacute; um prazo m&aacute;ximo de 90 dias da data do cancelamento, podendo ser sujeito a verifica&ccedil;&atilde;o de disponibilidade no per&iacute;odo solicitado. Sendo sujeito a varia&ccedil;&atilde;o de valores para mais ou para menos.<br />\r\nAp&oacute;s a confirma&ccedil;&atilde;o da sua reserva informamos que se os h&oacute;spedes necessitarem sair antecipadamente ao per&iacute;odo que foi contratada a reserva, as mesmas di&aacute;rias n&atilde;o ser&atilde;o objeto de RESSARCIMENTO.</p>\r\n\r\n<p><strong>Recomenda&ccedil;&otilde;es Importantes</strong><br />\r\nPara seu maior conforto: protetor solar, repelente, t&ecirc;nis e sapatos, m&aacute;quina fotogr&aacute;fica.<br />\r\nCompre seus passeios antecipadamente , pois Bonito possui um limite di&aacute;rio de visita&ccedil;&atilde;o muito restrito , Consulte-nos !</p>', null, '2018-05-02 23:04:45', null, 'n', null, 's');
INSERT INTO `canais` VALUES ('16', null, 'PASSEIOS', '', null, null, null, 'n', null, 's');
INSERT INTO `canais` VALUES ('17', null, 'ROTEIRO', '<p>tetseeee</p>\r\n', null, null, null, 'n', null, 's');
INSERT INTO `canais` VALUES ('18', null, 'Araras Hotel Rural', '<p><strong>ARARAS HOTEL RURAL</strong></p>\r\n\r\n<p>O Araras Hotel Rural &eacute; a perfeita integra&ccedil;&atilde;o entre conforto e natureza, pois dispomos de confort&aacute;veis instala&ccedil;&otilde;es que garantem uma experi&ecirc;ncia inesquec&iacute;vel, j&aacute; que associamos sua estada com aconchego e lazer em amplas su&iacute;tes e apartamentos equipados com Ar Condicionado, Frigobar e TV, al&eacute;m de um exclusivo balne&aacute;rio &agrave;s margens do Rio Formoso com suas &aacute;guas transparentes que d&atilde;o origem &agrave; piscinas naturais com diversas esp&eacute;cies de peixes, decks de pedra, cercado por uma exuberante mata virgem, de fauna e flora deslumbrantes e uma atmosfera encantadora.</p>\r\n\r\n<p><strong>REFEI&Ccedil;&Otilde;ES</strong></p>\r\n\r\n<p>Aprecie deliciosas iguarias da culin&aacute;ria regional em um delicioso caf&eacute; da manh&atilde; estilo colonial j&aacute; incluso nas di&aacute;rias, servimos tamb&eacute;m almo&ccedil;o e jantar e contamos ainda com op&ccedil;&otilde;es de por&ccedil;&otilde;es, aperitivos, lanches e drinks.&nbsp;<br />\r\n<br />\r\nOferecemos card&aacute;pios diferenciados e especialmente criados para casamentos, anivers&aacute;rios, debutantes, confraterniza&ccedil;&otilde;es, corporativos, religiosos, entre outros eventos, com muito charme, sabor e sofistica&ccedil;&atilde;o.</p>\r\n\r\n<p><strong>ALTERNATIVAS DE LAZER</strong></p>\r\n\r\n<ul style=\"list-style-type:none\">\r\n	<li>03 decks para acesso e banho no Rio Formoso</li>\r\n	<li>Bar e Restaurante</li>\r\n	<li>Piscina Adulta e Infantil</li>\r\n	<li>Campo de Futebol</li>\r\n	<li>Trilhas</li>\r\n	<li>Espa&ccedil;o externo para Eventos</li>\r\n	<li>Pista de Cooper Asfaltada</li>\r\n	<li>&nbsp;</li>\r\n	<li><strong>EVENTOS &amp; GRUPOS</strong></li>\r\n</ul>\r\n\r\n<p>Tra&ccedil;ando um perfil &uacute;nico em cada evento, o Araras Hotel Rural destaca-se pela infraestrutura, localiza&ccedil;&atilde;o privilegiada em meio &agrave; natureza e comprometimento com a qualidade. Com equipe composta por profissionais gabaritados, chefes renomados e colaboradores com experi&ecirc;ncia em atendimento de alto padr&atilde;o, dispomos de uma equipe que atende &agrave;s necessidades de qualquer categoria de evento.&nbsp;<br />\r\n<br />\r\nAraras Hotel Rural, seu evento simplesmente memor&aacute;vel!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', null, null, null, 'n', null, 's');
INSERT INTO `canais` VALUES ('19', null, 'CONTATO', '', null, null, null, 'n', null, 's');
INSERT INTO `canais` VALUES ('20', null, 'NOSSO CAFÉ DA MANHÃ', '<p>&nbsp; &nbsp; &nbsp;Para que o h&oacute;spede Carand&aacute; Ville tenha disposi&ccedil;&atilde;o e energia para realizar os passeios em Bonito-MS, servimos um delicioso caf&eacute; da manh&atilde; estilo colonial, que consiste numa vers&atilde;o avantajada do que normalmente comp&otilde;e a mesa de caf&eacute; de outros hot&eacute;is da regi&atilde;o. Composto&nbsp;por&nbsp;aproximadamente 40 itens nosso&nbsp; card&aacute;pio mistura receitas tradicionais da cultura regional&nbsp;como a sopa paraguaia, a chipa,o cabur&eacute;,a chipagua&ccedil;u, al&eacute;m de elementos&nbsp; ind&iacute;genas : bolo de mandioca com coco, al&eacute;m de alguns bolos e p&atilde;es funcionais para os adeptos do fitness, enriquecendo nossa culin&aacute;ria .</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Servimos tamb&eacute;m &nbsp;Granolas , cereais integrais , Iogurtes, &nbsp;gelatinas , mousses e variados sabores de sucos e ch&aacute;s naturais . A maioria dos produtos s&atilde;o&nbsp;artesanais.</p>\r\n', null, null, null, 'n', null, 's');
INSERT INTO `canais` VALUES ('21', null, 'ÁREA DE LAZER', '<p>O lazer recebe aten&ccedil;&atilde;o especial na <strong>Pousada Carand&aacute; Ville</strong>, toda nossa estrutura voltada aos momentos de descontra&ccedil;&atilde;o &eacute; pensada para se ajustar ao clima, &agrave;s caracter&iacute;sticas da &aacute;rea e&nbsp;principalmente&nbsp;aos costumes e a cultura aqui da regi&atilde;o, onde dispomos de Piscina com Cascata, espa&ccedil;o para Churrasco, e Quiosque em meio cen&aacute;rios com a arboriza&ccedil;&atilde;o feita basicamente com esp&eacute;cies brasileiras adaptadas &agrave;s caracter&iacute;sticas f&iacute;sicas e clim&aacute;ticas da regi&atilde;o, contribuindo para um perfeito equil&iacute;brio em jardins harmonizados com bancos de madeiras e canteiros ornamentais.</p>\r\n', null, null, null, 'n', null, 's');
INSERT INTO `canais` VALUES ('22', null, 'AGÊNCIA DE TURISMO', '<p>Com intuito de facilitar ainda mais suas f&eacute;rias, a Pousada Carand&aacute; possui ag&ecirc;ncia de turismo &nbsp;exclusiva que disponibiliza de todos os passeios da regi&atilde;o , sendo importante salientar que todos os pre&ccedil;os s&atilde;o tabelados e n&atilde;o possuem diverg&ecirc;ncia de uma ag&ecirc;ncia para a outra .<br />\r\n&nbsp;<br />\r\n&nbsp;<br />\r\nRealizamos reservas de passeios, hospedagem, transporte terrestre, loca&ccedil;&atilde;o de ve&iacute;culos, passagem a&eacute;rea e possu&iacute;mos log&iacute;stica para eventos.&nbsp;</p>\r\n\r\n<p>Colocamos a disposi&ccedil;&atilde;o uma equipe de profissionais da regi&atilde;o, conhecedores dos produtos comercializados fazendo com que o atendimento seja din&acirc;mico e eficiente na venda dos nossos destinos. Inspirar, emocionar e surpreender, s&atilde;os os diferenciais da nossa empresa.<br />\r\n&nbsp;<br />\r\nOs produtos oferecidos v&atilde;o desde pacotes de lazer, eventos, encontros de neg&oacute;cios, viagens de incentivo ,Pacote especial &nbsp;Lua de mel e roteiros pr&eacute;-existentes a programas sob medida que atendem aos sonhos e perfil de cada cliente.&nbsp;</p>\r\n\r\n<p><a href=\"http://pousadacaranda.com.br/RoteirosClientes/add\">Simule aqui sua viagem</a>.</p>\r\n', null, null, null, 'n', null, 's');
INSERT INTO `canais` VALUES ('23', null, 'APARTAMENTOS', '<p><strong>Aconchego e Hospitalidade</strong></p>\r\n\r\n<p><strong>A Pousada Carand&aacute; Ville</strong> possui 02 classifica&ccedil;&otilde;es de apartamentos :</p>\r\n\r\n<p><strong>Apartamentos Premiuns</strong>&nbsp;&ndash; S&atilde;o aptos amplos e aconchegantes , alguns mais pr&oacute;ximos a piscina e outros localizados pr&oacute;ximos ao caf&eacute; da manh&atilde; . Equipados com Ar Condicionado, TV de LED e Frigobar, alguns com mezanino acomodando bem sua fam&iacute;lia e amigos ,possui tamb&eacute;m internet WIFI gr&aacute;tis e estacionamento privativo .</p>\r\n\r\n<p><strong>Apartamentos &nbsp;Standarts</strong><strong>&nbsp;</strong>&ndash; Localizados em frente a recep&ccedil;&atilde;o a 60 mts da piscina, integrados por uma faixa de pedestre, s&atilde;o um pouco menores mas muito confort&aacute;veis, &nbsp;equipados com Ar&nbsp;Condicionado e TV LED, todos possuem frigobar, internet WIFI gr&aacute;tis e estacionamento privativo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tanto os Apartamentos Premium como os Apartamentos Standarts s&atilde;o identificados por animais da regi&atilde;o, assim voc&ecirc; j&aacute; se interage e diverte com nossa fauna.</p>\r\n\r\n<p>&nbsp;</p>\r\n', null, null, null, 'n', null, 's');

-- ----------------------------
-- Table structure for contatos
-- ----------------------------
DROP TABLE IF EXISTS `contatos`;
CREATE TABLE `contatos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `mensagem` text,
  `dthr_envio` datetime DEFAULT NULL,
  `dthr_leitura` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `lida` enum('s','n') DEFAULT 'n',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contatos
-- ----------------------------
INSERT INTO `contatos` VALUES ('250', 'LEONARDO HENRIQUE DOS SANTOS', 'Piracicaba', 'leohfu@gmail.com', '19998192512', 'Boa tarde!\r\nGostaria de saber o valor da diária, no período do dia 15/09 a 22/09/2018', '2018-05-25 15:19:19', '2018-05-25 15:19:19', 'n');

-- ----------------------------
-- Table structure for depoimentos
-- ----------------------------
DROP TABLE IF EXISTS `depoimentos`;
CREATE TABLE `depoimentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `texto` text,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ativo` enum('s','n') DEFAULT 'n',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of depoimentos
-- ----------------------------
INSERT INTO `depoimentos` VALUES ('2', 'asdasdasd', 'asdasdasdasdasdas', 'asdasdsad', '2014-08-23 02:58:00', '2018-04-18 23:46:12', 'n');

-- ----------------------------
-- Table structure for destaques
-- ----------------------------
DROP TABLE IF EXISTS `destaques`;
CREATE TABLE `destaques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_canal` int(11) DEFAULT NULL,
  `titulo` text,
  `texto` text,
  `ativo` enum('s','n') DEFAULT NULL,
  `ordem` int(4) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `tipo` char(2) DEFAULT NULL,
  `imagem` text,
  `video` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idCanal` (`id_canal`),
  CONSTRAINT `idCanal` FOREIGN KEY (`id_canal`) REFERENCES `canais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of destaques
-- ----------------------------
INSERT INTO `destaques` VALUES ('2', '16', 'BALNEÁRIO ILHA BONITA', 'Um pedacinho do para&iacute;so pra voc&ecirc;', 's', '4', null, 'PF', 'imagens/destaques/imagem_6426.jpeg', null, '2018-04-17 01:34:04', '2018-05-10 10:46:57');
INSERT INTO `destaques` VALUES ('3', '16', 'QUADRICICLO TRILHA BOIADEIRA', 'Você gosta de aventura?', 's', null, null, 'PS', 'imagens/destaques/imagem_7534.jpeg', null, '2018-05-10 10:49:46', '2018-05-10 07:53:45');
INSERT INTO `destaques` VALUES ('4', '16', 'BÓIA CROSS', 'Aventura nas corredeiras do Rio Formoso', 's', null, null, 'PS', 'imagens/destaques/imagem_7074.jpeg', null, '2018-05-10 11:24:42', '2018-05-10 11:24:42');
INSERT INTO `destaques` VALUES ('5', '16', 'PARQUE DAS CACHOEIRAS', 'Trilhas e cachoeiras em águas cristalins', 's', null, null, 'PS', 'imagens/destaques/imagem_5402.jpeg', null, '2018-05-14 09:48:18', '2018-05-14 09:48:40');
INSERT INTO `destaques` VALUES ('6', '16', 'BONITO AVENTURA', 'Sinta-se um peixe nessa flutuação', 's', null, null, 'PS', 'imagens/destaques/imagem_2119.jpeg', null, '2018-05-14 09:50:35', '2018-05-14 09:50:35');
INSERT INTO `destaques` VALUES ('7', '14', 'CAFÉ DA MANHÃ', null, 's', null, null, 'S', 'imagens/destaques/imagem_2299.jpeg', null, '2018-05-14 09:54:40', '2018-05-14 09:54:40');
INSERT INTO `destaques` VALUES ('8', '14', 'ESTRUTURA DO HOTEL', null, 's', null, null, 'S', 'imagens/destaques/imagem_8194.jpeg', null, '2018-05-14 09:56:26', '2018-05-14 09:56:26');
INSERT INTO `destaques` VALUES ('9', '14', 'QUARTOS', null, 's', null, null, 'S', 'imagens/destaques/imagem_1744.jpeg', null, '2018-05-14 09:58:06', '2018-05-14 09:58:06');
INSERT INTO `destaques` VALUES ('10', '14', 'RECEPÇÃO', null, 's', null, null, 'S', 'imagens/destaques/imagem_2273.jpeg', null, '2018-05-14 09:58:26', '2018-05-14 09:58:26');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------

-- ----------------------------
-- Table structure for passeios
-- ----------------------------
DROP TABLE IF EXISTS `passeios`;
CREATE TABLE `passeios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `texto` text,
  `dthr_insercao` datetime DEFAULT NULL,
  `dthr_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `destaque` enum('s','n') DEFAULT NULL,
  `ordem` int(11) DEFAULT NULL,
  `valor_adulto_alta` double DEFAULT NULL,
  `valor_adulto_baixa` double DEFAULT NULL,
  `valor_chd_alta` double DEFAULT NULL,
  `valor_chd_baixa` double DEFAULT NULL,
  `ativo` enum('n','s') DEFAULT 's',
  `imagem` text,
  `size` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of passeios
-- ----------------------------
INSERT INTO `passeios` VALUES ('4', '2', 'BURACO DAS ARARAS', '<p>Em meio ao cerrado uma dolina (depress&atilde;o formada por desabamento), encontra-se o Buraco das Araras, uma enorme cratera totalmente em arenito com 120m de profundidade, 500m de di&acirc;metro e uma beleza exuberante. O lugar que possui fauna e flora bem particulares foi adotado como habitat natural de diversos p&aacute;ssaros, principalmente as &ldquo;Araras Vermelhas&rdquo;. No seu interior podemos avistar ainda um lago habitado por jacar&eacute;s da esp&eacute;cie papo amarelo.</p>\r\n\r\n<p>Dist&acirc;ncia do Centro: 58 km<br />\r\nDura&ccedil;&atilde;o do Passeio: 1h.</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\n&Eacute; obrigat&oacute;rio uso de t&ecirc;nis<br />\r\nUma &oacute;tima op&ccedil;&atilde;o de conciliar com o Rio da Prata, pela proximidade dos passeios</p>\r\n', null, '2018-05-16 21:55:04', null, null, '58', '58', '48', '48', 's', 'imagens/passeios/buraco.jpg', '199687', 'image/jpeg');
INSERT INTO `passeios` VALUES ('5', '2', 'GRUTA DE SÃO MIGUEL', '<p>Localizada no Parque Ecol&oacute;gico Vale Anhumas, o passeio inicia com um v&iacute;deo de apresenta&ccedil;&atilde;o das Grutas de S&atilde;o Miguel, segue com uma emocionante caminhada pela copa das &aacute;rvores do cerrado atrav&eacute;s de uma ponte p&ecirc;nsil de aproximadamente 200m e continua por mais 150m de trilha at&eacute; chegar &agrave; entrada de uma das cavidades mais antigas deste planeta. Uma gruta seca com forma&ccedil;&otilde;es geol&oacute;gicas variadas, onde a natureza intoc&aacute;vel mostra seus corais e ninhos de calc&aacute;rio.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Obs: Uso obrigat&oacute;rio de T&ecirc;nis.<br />\r\nDist&acirc;ncia do Centro: 18 km.<br />\r\nDura&ccedil;&atilde;o do Passeio: 1h30min.</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\n&Eacute; obrigat&oacute;rio uso de t&ecirc;nis<br />\r\nIdade m&iacute;nima &ndash; 05 anos<br />\r\nPode-se realizar no mesmo per&iacute;odo da Gruta do Lago Azul</p>\r\n', null, '2018-05-16 21:55:05', null, null, '50', '40', '50', '40', 's', 'imagens/passeios/gruta_sao_miguel-300x199.jpg', '32827', 'image/jpeg');
INSERT INTO `passeios` VALUES ('6', '2', 'GRUTA DO LAGO AZUL', '<p>Considerada o cart&atilde;o postal da cidade de Bonito a Gruta do Lago Azul &eacute; um passeio contemplativo e hist&oacute;rico que tem in&iacute;cio com uma caminhada de aprox. 300m at&eacute; a entrada da caverna, onde j&aacute; se pode ter uma id&eacute;ia de sua beleza. Descendo aprox. 200m por uma escadaria cavada na terra, avista-se um lago que encanta pelas &aacute;guas de tom intensamente azuladas e bel&iacute;ssimos espeleotemas de milhares de anos. O receptivo oferece bar e restaurante, sanit&aacute;rios e loja de souvenires. Os equipamentos necess&aacute;rios para a realiza&ccedil;&atilde;o do passeio est&atilde;o inclusos no valor.</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\nDist&acirc;ncia: 20 km<br />\r\nDura&ccedil;&atilde;o : meio per&iacute;odo.<br />\r\nIdade m&iacute;nima: 05 anos.<br />\r\nO que Usar: Roupa confort&aacute;vel para caminhada e uso Obrigat&oacute;rio de t&ecirc;nis ou papete.<br />\r\nO passeio pode ser interditado em caso de chuva.<br />\r\nComo as Grutas de S&atilde;o Miguel est&atilde;o na mesma regi&atilde;o, &eacute; interessante aproveitar para visit&aacute;-las no mesmo per&iacute;odo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', null, '2018-05-16 21:55:05', null, null, '65', '50', '65', '50', 's', 'imagens/passeios/GRUTA.jpg', '25007', 'image/jpeg');
INSERT INTO `passeios` VALUES ('7', '3', 'RIO SUCURI', '<p>Situado na Fazenda S&atilde;o Geraldo, o Rio Sucuri, considerado um dos rios de &aacute;guas mais cristalinas no mundo oferece o passeio de flutua&ccedil;&atilde;o, que tem in&iacute;cio com uma caminhada de 500m na mata ciliar levando o visitante at&eacute; as nascentes do rio, que ficaram mais conhecidas ap&oacute;s filmagem para a novela Alma G&ecirc;mea. Durante a trilha o visitante pode apreciar a fauna e flora local e fazer paradas em mirantes para observa&ccedil;&atilde;o das nascentes. A flutua&ccedil;&atilde;o de aproximadamente 1800m nas &aacute;guas cristalinas do Rio Sucuri, permite ao visitante apreciar a beleza da flora subaqu&aacute;tica e a intera&ccedil;&atilde;o com diversos cardumes de peixes como piraputangas, pacus, corimbas.</p>\r\n\r\n<p>Dist&acirc;ncia do Centro: 18 km.<br />\r\nDura&ccedil;&atilde;o do Passeio: &frac12; dia.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>IMPORTANTE:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Levar roupa de banho e toalha e maquina subaqu&aacute;tica.</p>\r\n', null, '2018-05-16 21:55:05', null, null, '202', '168', '202', '150', 's', 'imagens/passeios/rio sucuri.jpg', '141077', 'image/jpeg');
INSERT INTO `passeios` VALUES ('8', '3', 'AQUÁRIO NATURAL - FLUTUAÇÃO + TRILHA', '<p>Situado na Reserva Ecol&oacute;gica Ba&iacute;a Bonita, o passeio tem in&iacute;cio com uma caminhada de aproximadamente 15 minutos por uma trilha na mata ciliar, que leva at&eacute; a nascente do Rio Ba&iacute;a Bonita, onde &eacute; realizada a flutua&ccedil;&atilde;o de aproximadamente 900m rio abaixo.<br />\r\nO visitante flutua na companhia de peixes e aprecia uma rica vegeta&ccedil;&atilde;o subaqu&aacute;tica, que d&aacute; a sensa&ccedil;&atilde;o de estar num verdadeiro aqu&aacute;rio. Todo o percurso tem o acompanhamento do barco de apoio. O Rio Ba&iacute;a Bonita des&aacute;gua no Rio Formoso, o maior da regi&atilde;o. Outra divers&atilde;o do passeio &eacute; a carretilha, onde o divertimento &eacute; garantido.</p>\r\n\r\n<p>Dist&acirc;ncia do Centro: 07 km.<br />\r\nDura&ccedil;&atilde;o do Passeio: &frac12; dia: somente flutua&ccedil;&atilde;o</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\nLevar roupa de banho e toalha e maquina subaqu&aacute;tica.</p>\r\n', null, '2018-05-16 21:55:05', null, null, '231', '187', '115.5', '93.5', 's', 'imagens/passeios/aquario_natural-300x225.jpg', '37313', 'image/jpeg');
INSERT INTO `passeios` VALUES ('10', '3', 'NASCENTE AZUL', '<p><strong>NASCENTE AZUL</strong>&nbsp;- Ao chegar &agrave; Nascente Azul voc&ecirc; se encantar&aacute; com a Praia da Capela, um espelho d&rsquo;agua onde pode desfrutar a natureza, nadando junto a variadas esp&eacute;cies de peixes. A Praia da Capela conta com v&aacute;rios tipos de entretenimentos: tirolesa, praia, playground, &aacute;rea de banho para crian&ccedil;as, capela ecum&ecirc;nica com pinturas art&iacute;sticas, quadra de v&ocirc;lei, futebol de areia, redario e cascata, onde poder&aacute; receber uma massagem natural pelo impacto da &aacute;gua.<br />\r\nA&iacute;, voc&ecirc; pode saborear um delicioso almo&ccedil;o regional com variados tipos de saladas (opcional). No bar tamb&eacute;m s&atilde;o servidas por&ccedil;&otilde;es variadas.<br />\r\nO passeio inicia-se por uma trilha de f&aacute;cil acesso at&eacute; mesmo para quem possui limita&ccedil;&otilde;es de locomo&ccedil;&atilde;o, a trilha suspensa &eacute; interpretativa e possui uma rica flora, cachoeira, macacos, antas entre outros animais. A paisagem &eacute; deslumbrante, com uma linda vista da Serra de Bonito.<br />\r\nNa Nascente poder&aacute; contemplar &aacute;guas cristalinas. Na fenda da nascente ocorre um fen&ocirc;meno chamado espelhamento, proporcionando um tom azul turquesa. &Eacute; poss&iacute;vel fazer apneia na nascente junto h&aacute; varias esp&eacute;cies de peixes e plantas que ornamentam o ambiente. Ao fim do passeio de flutua&ccedil;&atilde;o &eacute; poss&iacute;vel ficar o resto do dia na Praia da Capela.</p>\r\n\r\n<p>Dist&acirc;ncia Centro: 29&nbsp;km&nbsp;<br />\r\nDura&ccedil;&atilde;o:&nbsp;3 horas&nbsp;<br />\r\nCrian&ccedil;as: 6 - 11 anos&nbsp;<br />\r\nCrian&ccedil;a Free: 0 - 5 anos</p>\r\n\r\n<p>&nbsp;</p>\r\n', null, '2018-05-16 21:55:05', null, null, '240', '190', '225', '175', 's', 'imagens/passeios/nascente azul.jpg', '179013', 'image/jpeg');
INSERT INTO `passeios` VALUES ('11', '3', 'BONITO AVENTURA C/ ALMOÇO', '<p>O passeio tem in&iacute;cio com uma caminhada de aproximadamente 1.800m pela mata ciliar do Rio Formoso, at&eacute; o p&iacute;er da Figueira, contemplando &aacute;rvores centen&aacute;rias, rica flora e fauna locais. A flutua&ccedil;&atilde;o de 2.200m no leito do Rio Formoso, al&eacute;m da intera&ccedil;&atilde;o com diversos cardumes de peixes e vegeta&ccedil;&atilde;o subaqu&aacute;tica, permite ao visitante fazer apn&eacute;ia e nadar durante o percurso, as descidas pelas corredeiras d&atilde;o um toque de emo&ccedil;&atilde;o ao passeio. &Eacute; uma flutua&ccedil;&atilde;o diferente, onde o visitante sentir&aacute; toda a liberdade do rio como se fosse um peixe.</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\nDist&acirc;ncia do Centro: 06 km.<br />\r\nDura&ccedil;&atilde;o do Passeio: &frac12; dia.<br />\r\nLevar roupa de banho e toalha e maquina subaqu&aacute;tica.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', null, '2018-05-16 21:55:05', null, null, '95', '95', '95', '95', 's', 'imagens/passeios/bonito_aventura-300x199.jpg', '29036', 'image/jpeg');
INSERT INTO `passeios` VALUES ('13', '4', 'BOTE NO RIO FORMOSO', '<p>Realizado em botes infl&aacute;veis por um dos principais rios da regi&atilde;o, possui percurso de 6 Km, passando por tr&ecirc;s cachoeiras e duas corredeiras com uma parada para banho de aprox. 20 min. Durante o passeio tem-se a oportunidade de contemplar a fauna e flora &agrave;s margens do rio at&eacute; o desembarque na Ilha do Padre, onde o turista pode usufruir da infra-estrutura do local que possui v&aacute;rios decks e cachoeiras para banho, al&eacute;m de sanit&aacute;rios, vesti&aacute;rio, bar, lanchonete e restaurante. A Lua Cheia traz a emo&ccedil;&atilde;o do passeio de Bote Noturno, onde &eacute; poss&iacute;vel ouvir e focar animais de h&aacute;bitos noturnos. O passeio de bote n&atilde;o tem limite de idade.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\nDist&acirc;ncia do Centro: 12 km.<br />\r\nDura&ccedil;&atilde;o do Passeio: &frac12; dia.<br />\r\nLevar roupa de banho, toalha e roupa extra</p>\r\n', null, '2018-05-16 21:55:05', null, null, '110', '110', '90', '90', 's', 'imagens/passeios/bote novo.jpg', '95946', 'image/jpeg');
INSERT INTO `passeios` VALUES ('14', '4', 'Bike LOBO GUARÁ', '<p>Trilha, banho de cachoeira, e aventura em duas rodas!<br />\r\n&nbsp;<br />\r\nO passeio de bicicleta Lobo Guar&aacute; Bike Adventure tem in&iacute;cio no centro de Bonito - MS, onde o grupo encontra o monitor e retira os equipamentos: Bicicleta, capacete, e luvas.<br />\r\n&nbsp;<br />\r\nO trajeto segue a rodovia at&eacute; o Parque Ecol&oacute;gico do Rio Formoso, onde o monitor orienta o grupo ao longo das trilhas em meio &agrave; mata ciliar do rio. Uma das cachoeiras &eacute; o ponto para o delicioso e refrescante banho de rio. Ainda no parque, o grupo planta uma muda de &aacute;rvore e aprende um pouco mais sobre o valor e impacto da conserva&ccedil;&atilde;o do meio ambiente. O retorno para a cidade &eacute; feito tamb&eacute;m pela rodovia, at&eacute; a sede. No total, s&atilde;o 18 km rodados em ritmo de passeio, n&atilde;o de corrida.<br />\r\n&nbsp;<br />\r\nO ponto de encontro do passeio est&aacute; localizado no centro da cidade e o passeio dura aproximadamente 03 horas e 30 minutos.<br />\r\n&nbsp;<br />\r\n&nbsp;<br />\r\n&nbsp;<br />\r\nIdade m&iacute;nima: 12 anos;<br />\r\nSa&iacute;das &agrave;s 07h30 e 14h00 diariamente; Consultar disponibilidade;<br />\r\nO pre&ccedil;o do passeio n&atilde;o inclui transprote;</p>\r\n', null, '2018-05-16 21:55:05', null, null, '115', '115', '115', '115', 's', 'imagens/passeios/Lobo Guara Bike Adventure112.jpg', '99472', 'image/jpeg');
INSERT INTO `passeios` VALUES ('15', '4', 'CABANAS ARVORISMO', '<p>Consiste num percurso completo de 300 metros de extens&atilde;o com altura variando de 4,0 a 15,0 metros do solo. Ao todo s&atilde;o 18 esta&ccedil;&otilde;es diferentes com dificuldades gradativas, al&eacute;m de duas tirolesas, uma de 55 metros e outra de 60 metros. O percurso finaliza em uma tirolesa aqu&aacute;tica no Rio Formoso. Antes do in&iacute;cio do passeio haver&aacute; um breve treinamento para familiarizar o cliente com os equipamentos e com o percurso.<br />\r\nA dura&ccedil;&atilde;o do passeio &eacute; de 1:30h a 2:00 horas.<br />\r\nO passeio &eacute; indicado para crian&ccedil;as a partir de seis anos e adultos que tenham boas condi&ccedil;&otilde;es f&iacute;sicas e peso m&aacute;ximo de 120kg.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\n- O vestu&aacute;rio ideal &eacute; usar cal&ccedil;ado fechado, cal&ccedil;a ou bermuda e camiseta que possam molhar, pois ao final h&aacute; uma tirelosa aqu&aacute;tica. Tamb&eacute;m ser&aacute; necess&aacute;rio sand&aacute;lia para retorno, uma troca de roupa, toalha, repelente e el&aacute;stico para prender cabelo.<br />\r\n- Por medidas de seguran&ccedil;a n&atilde;o permitimos pessoas que tenham peso acima de 120Kg, gestantes, pessoas que tenham ingerido bebidas alco&oacute;licas ou tenha feito uso de drogras h&aacute; poucas horas. Tamb&eacute;m n&atilde;o permitimos pessoas que sofram de alguma doen&ccedil;a card&iacute;aca ou que tenham realizado cirurgias recentemente.</p>\r\n\r\n<div style=\"background:url(http://pousadacaranda.com.br/wp-content/themes/pindol/css/skins/blue/images/box_shadow_cb.png) 50% 0% no-repeat; border:0px; padding:0px\">&nbsp;</div>\r\n', null, '2018-05-16 21:55:05', null, null, '112', '95', '95', '80', 's', 'imagens/passeios/arvorismo cabanas.jpg', '25881', 'image/jpeg');
INSERT INTO `passeios` VALUES ('16', '4', 'BÓIA CROSS', '<p>Uma pequena caminhada de aprox. 300m na mata ciliar leva at&eacute; o ponto inicial do passeio, uma emocionante aventura nas corredeiras do Rio Formoso em b&oacute;ias individuais, com acompanhamento de monitores, num percurso de aprox. 1.200m enfrentando tr&ecirc;s cachoeiras e duas corredeiras. Al&eacute;m da aventura o visitante tem a oportunidade de contemplar as belezas naturais de suas &aacute;guas cristalinas. O retorno &eacute; por trilha de aprox. 100m na mata ciliar que permite a observa&ccedil;&atilde;o da fauna e flora locais.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\nDist&acirc;ncia do Centro: 06 km.<br />\r\nDura&ccedil;&atilde;o do Passeio: 40 min.<br />\r\nIdade m&iacute;nima e de 06 anos.<br />\r\nLevar roupa de banho, toalha, papete ou chinelo e roupa extra.</p>\r\n', null, '2018-05-16 21:55:05', null, null, '70', '70', '60', '60', 's', 'imagens/passeios/boia_cross-300x225.jpg', '31717', 'image/jpeg');
INSERT INTO `passeios` VALUES ('17', '4', 'CAVALGADA RIO SUCURI', '<p>Neste passeio, o visitante cavalgar&aacute; por aproximadamente 3 horas atrav&eacute;s de paisagens diversificadas como campos usados para pastagens , matas fechadas, lagoas e morros. No meio do caminho, est&aacute; programada uma parada para descanso e um refrescante banho em piscinas naturais nas cristalinas &aacute;guas do Rio Formoso, pr&oacute;ximo a sua nascente. Ao longe, pode-se observar parte dos morros que comp&otilde;em o rec&eacute;m-criado Parque Nacional da Serra da Bodoquena, uma paisagem revigorante para seguir viagem. Com um pouco de sorte, &eacute; poss&iacute;vel observar animais silvestres como macacos, queixadas, quatis, tucanos, araras e outros.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\nDist&acirc;ncia do Centro: 18 km.<br />\r\nDura&ccedil;&atilde;o do Passeio: &frac12; dia.</p>\r\n\r\n<div style=\"background:url(http://pousadacaranda.com.br/wp-content/themes/pindol/css/skins/blue/images/box_shadow_cb.png) 50% 0% no-repeat; border:0px; padding:0px\">&nbsp;</div>\r\n', null, '2018-05-16 21:55:05', null, null, '57', '57', '57', '57', 's', 'imagens/passeios/cavalgada rio sucuri.JPG', '58540', 'image/jpeg');
INSERT INTO `passeios` VALUES ('18', '4', 'YBIRÁ-PE ARVORISMO', '<p>Com altura entre zero e vinte metros, oferece a estrutura necess&aacute;ria para a atividade, com equipamentos individuais e monitores capacitados. Est&aacute; &agrave;s margens do rio Formoso proporciona ao visitante o deslocamento entre as copas de &aacute;rvores nativas atrav&eacute;s de travessias em cabo de a&ccedil;o, madeira, bambu e corda. Coloca voc&ecirc; direto com a natureza e possibilita a manuten&ccedil;&atilde;o e a preserva&ccedil;&atilde;o da floresta, tendo o turismo de aventura como ferramenta de conserva&ccedil;&atilde;o. Ao final relaxe e se refresque nas &aacute;guas cristalinas de uma cachoeira.</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\nAltura m&iacute;nima: 1,20 m.<br />\r\nPeso m&aacute;ximo: 120 kg.<br />\r\nDist&acirc;ncia 09 km.<br />\r\nDura&ccedil;&atilde;o 1h30min.<br />\r\nPasseio restrito para gestantes.</p>\r\n\r\n<div style=\"background:url(http://pousadacaranda.com.br/wp-content/themes/pindol/css/skins/blue/images/box_shadow_cb.png) 50% 0% no-repeat; border:0px; padding:0px\">&nbsp;</div>\r\n', null, '2018-05-16 21:55:05', null, null, '135', '112', '135', '112', 's', 'imagens/passeios/Aventura-Ybira-pe-arvorismo-300x201.jpg', '37222', 'image/jpeg');
INSERT INTO `passeios` VALUES ('20', '4', 'BIKE NO RIO SUCURI', '<p>Localizado na Fazenda S&atilde;o Geraldo, o passeio de bike do Rio Sucuri possui aproximadamente 02 horas de dura&ccedil;&atilde;o em meio &agrave; mata fechada. Este programa oferece a possibilidade de se observar animais silvestres como macacos, queixadas, quatis, tucanos, araras, seriemas e outros, al&eacute;m das belas &aacute;rvores da regi&atilde;o</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\nDist&acirc;ncia: 18 km.<br />\r\nDura&ccedil;&atilde;o: meio per&iacute;odo.<br />\r\nLevar roupas leves.<br />\r\n&Oacute;timo passeio para observa animais, pois as bicicletas n&atilde;o fazem Barulho.</p>\r\n', null, '2018-05-16 21:55:06', null, null, '57', '57', '57', '57', 's', 'imagens/passeios/bike rio sucuri.JPG', '59359', 'image/jpeg');
INSERT INTO `passeios` VALUES ('21', '1', 'RIO DO PEIXE C/ ALMOÇO', '<p>Uma fascinante caminhada na Fazenda &Aacute;gua Viva, em um dos cen&aacute;rios mais belos e paradis&iacute;acos da regi&atilde;o. A primeira etapa do passeio tem percurso de aproximadamente 1.600m, passando por v&aacute;rias cachoeiras e piscinas naturais que est&atilde;o a disposi&ccedil;&atilde;o dos visitantes para banho e divers&atilde;o. Pequenas grutas submersas podem ser exploradas durante o trajeto. No caminho, observa-se uma fauna atraente com macacos, araras, tucanos, entre outros. Ap&oacute;s esta primeira etapa do passeio, um delicioso almo&ccedil;o sul-matogrossense &eacute; oferecido na sede da fazenda.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\nDist&acirc;ncia do Centro: 34 km.<br />\r\nDura&ccedil;&atilde;o do Passeio: Dia todo.<br />\r\nLevar roupa de banho e toalha.</p>\r\n\r\n<div style=\"background:url(http://pousadacaranda.com.br/wp-content/themes/pindol/css/skins/blue/images/box_shadow_cb.png) 50% 0% no-repeat; border:0px; padding:0px\">&nbsp;</div>\r\n', null, '2018-05-16 21:55:06', null, null, '232', '211', '196', '172', 's', 'imagens/passeios/Rio do Peixe.jpg', '451753', 'image/jpeg');
INSERT INTO `passeios` VALUES ('23', '1', 'CEITA CORÊ C/ ALMOÇO', '<p>Na l&iacute;ngua tupi-guarani &ldquo;Terra de meus filhos&rdquo;. A fazenda apresenta uma das sedes mais bonitas e tradicionais da regi&atilde;o, com uma casa &agrave; beira de um lago de &aacute;guas cristalinas, onde o visitante poder&aacute; fazer um passeio de barco para conhecer a nascente do Rio Chapena. Uma trilha de aproximadamente 1800m na mata ciliar do Rio Chapeninha leva o visitante a seis cachoeiras formadas por tufas calc&aacute;rias e pequenas grutas, al&eacute;m de piscinas naturais e carretilha. O almo&ccedil;o t&iacute;pico de fazenda &eacute; servido na sede.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\nDist&acirc;ncia do Centro: 36 km.<br />\r\nDura&ccedil;&atilde;o do Passeio: Dia todo.<br />\r\nLevar roupa de banho e toalha.</p>\r\n', null, '2018-05-16 21:55:06', null, null, '198', '145', '110', '94', 's', 'imagens/passeios/ceita core.jpg', '138315', 'image/jpeg');
INSERT INTO `passeios` VALUES ('24', '1', 'BOCA DA ONÇA C/ ALMOÇO', '<p>4 km de caminhada por mata preservada e trilhas que proporcionam total seguran&ccedil;a, levam o visitante at&eacute; as onze cachoeiras da propriedade, dentre elas a deslumbrante Cachoeira Boca da On&ccedil;a com 156 metros de queda livre &ndash; a mais alta do estado do Mato Grosso do Sul. O visitante poder&aacute; relaxar em piscinas naturais e se refrescar no Rio Salobra, um dos ber&ccedil;&aacute;rios de peixes do Pantanal. O retorno ao receptivo para o delicioso almo&ccedil;o regional, poder&aacute; ser realizado de duas maneiras: pela fascinante escadaria de 866 degraus, constru&iacute;da ao longo do pared&atilde;o de calc&aacute;rio, com uma inesquec&iacute;vel vista sobre o c&acirc;nion do Rio Salobra e &aacute;rea de descida do rapel ou ent&atilde;o a bordo da Oncinha, Toyota da fazenda que da apoio aos visitantes. O receptivo disponibiliza aos visitantes: restaurante e duas piscinas de &aacute;gua corrente com peixes t&iacute;picos da regi&atilde;o que nadam junto com o visitante.</p>\r\n\r\n<p><strong>IMPORTANTE:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dist&acirc;ncia do Centro: 55 km.<br />\r\nDura&ccedil;&atilde;o do Passeio: Dia todo.<br />\r\nLevar roupa de banho e toalha.<br />\r\nN&atilde;o aconselhado para a melhor Idade.</p>\r\n\r\n<p>&nbsp;</p>\r\n', null, '2018-05-16 21:55:06', null, null, '238', '202', '190', '160', 's', 'imagens/passeios/boca da onca.jpg', '196902', 'image/jpeg');
INSERT INTO `passeios` VALUES ('25', '1', 'PARQUE DAS CACHOEIRAS C/ ALMOÇO', '<p>O passeio come&ccedil;a com uma caminhada ecol&oacute;gica na mata ciliar do Rio Mimoso, observando os encantos da fauna e flora locais. Durante o percurso de 1.700m pode-se tomar banho e contemplar sete bel&iacute;ssimas cachoeiras formadas por tufas calc&aacute;rias, cada uma com sua beleza e encanto pr&oacute;prio, al&eacute;m de pequenas cavernas, piscinas naturais e carretilha. O Almo&ccedil;o &eacute; servido no receptivo da fazenda.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\nLevar roupa de banho e toalha.<br />\r\nDist&acirc;ncia do Centro: 17 km.<br />\r\nDura&ccedil;&atilde;o do Passeio: &frac12; dia.</p>\r\n', null, '2018-05-16 21:55:06', null, null, '176', '155', '138', '126', 's', 'imagens/passeios/parque das cachoeiras.jpg', '258343', 'image/jpeg');
INSERT INTO `passeios` VALUES ('28', '5', 'DISCOVERY NO RIO FORMOSO', '<p>Excelente para quem quer experimentar a sensa&ccedil;&atilde;o de mergulhar com equipamento scuba. Em meio &agrave; cardumes no impressionante cen&aacute;rio do Rio Formoso, que se caracteriza pelos troncos submersos e forma&ccedil;&otilde;es calc&aacute;rias, o mergulhador ir&aacute; se deslumbrar pelo cen&aacute;rio e poder&aacute; at&eacute; experimentar a famosa sensa&ccedil;&atilde;o de estar dentro de uma garrafa de champagne quando estiver embaixo de uma cachoeira. Todo o percurso de aproximadamente 300m &eacute; acompanhado por Instrutor / Dive M&aacute;ster. O passeio tem dura&ccedil;&atilde;o m&iacute;nima de 30 minutos dentro d&rsquo;&aacute;gua a uma profundidade m&eacute;dia de 4m. Este mergulho agrada inclusive os mais experientes, pelo visual diferente do mar e tamb&eacute;m pela transpar&ecirc;ncia da &aacute;gua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\nDist&acirc;ncia do Centro: 07 km<br />\r\nDura&ccedil;&atilde;o do Passeio: 03hs.</p>\r\n\r\n<div style=\"background:url(http://pousadacaranda.com.br/wp-content/themes/pindol/css/skins/blue/images/box_shadow_cb.png) 50% 0% no-repeat; border:0px; padding:0px\">&nbsp;</div>\r\n', null, '2018-05-16 21:55:06', null, null, '280', '280', '280', '280', 's', 'imagens/passeios/mergulho formoso.jpg', '49290', 'image/jpeg');
INSERT INTO `passeios` VALUES ('30', '5', 'RAPEL BOCA DA ONÇA', '<p>O passeio &eacute; realizado em uma descida repleta de adrenalina em um pared&atilde;o vertical de 90m de altura. A plataforma de rapel &eacute; uma estrutura de 34m de comprimento que se projeta no abismo, proporcionando uma vista deslumbrante do C&acirc;nion do Rio Salobra e das pequenas grutas existentes no pared&atilde;o. Terminando o rapel, um banho na maior cachoeira do estado (a Boca da On&ccedil;a, com seus 156m de altura) finaliza essa aventura.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\nDist&acirc;ncia do Centro: 55 km<br />\r\nDura&ccedil;&atilde;o do Passeio: Dia todo.<br />\r\nVestir cal&ccedil;a ou bermuda comprida, t&ecirc;nis, meias longas, camiseta com manga e um agasalho.<br />\r\nO limite m&aacute;ximo de visitantes por dia &eacute; de 16 pessoas.<br />\r\nNecess&aacute;rio trenamento 01 dia antes do passeio.</p>\r\n', null, '2018-05-16 21:55:06', null, null, '499', '430', '499', '430', 's', 'imagens/passeios/rapel boca da onca.jpg', '69701', 'image/jpeg');
INSERT INTO `passeios` VALUES ('32', '6', 'BALNEÁRIO DO SOL', '<p>Localizado as margens do Rio Formoso, oferece a possibilidade de nadar nas piscinas ou no pr&oacute;prio Rio Formoso, entre Piraputangas, Curimbas e Dourados, com lindas cachoeiras fazendo parte do cen&aacute;rio. Aves e macacos podem ser vistos e fotografados. O atrativo possui sanit&aacute;rios, quadras de v&ocirc;lei e futebol de areia, carretilha, plataforma para saltos, sal&atilde;o de jogos, parque infantil, piscina de &aacute;gua corrente, bar, restaurante, lanchonete, quiosques para churrasco e red&aacute;rio.</p>\r\n\r\n<p>Dist&acirc;ncia do Centro: 10 km.<br />\r\nDura&ccedil;&atilde;o do Passeio: Livre.</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\nLevar roupa de banho e toalha<br />\r\nN&atilde;o &eacute; necess&aacute;rio o acompanhamento de guia local</p>\r\n', null, '2018-05-16 21:55:06', null, null, '50', '50', '40', '40', 's', 'imagens/passeios/Balneario do sol.jpg', '130144', 'image/jpeg');
INSERT INTO `passeios` VALUES ('33', '6', 'BALNEÁRIO MUNICIPAL', '<p>As &aacute;guas cristalinas do Rio Formoso permitem uma vis&atilde;o n&iacute;tida de peixes de cores e tamanhos variados. O balne&aacute;rio oferece aos seus visitantes: estacionamento, quadras de v&ocirc;lei e futebol de areia, lanchonetes, restaurantes, quiosques com churrasqueiras e sanit&aacute;rios (adaptados para cadeirantes). &Eacute; um lugar apropriado para passar o dia e se refrescar em um rio de &aacute;guas cristalinas, com grande quantidade de peixes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\nDist&acirc;ncia do Centro: 06 km.<br />\r\nDura&ccedil;&atilde;o do Passeio: Livre.<br />\r\nLevar roupa de banho e toalha.<br />\r\nN&atilde;o &eacute; necess&aacute;rio o acompanhamento de guia local.</p>\r\n\r\n<div style=\"background:url(http://pousadacaranda.com.br/wp-content/themes/pindol/css/skins/blue/images/box_shadow_cb.png) 50% 0% no-repeat; border:0px; padding:0px\">&nbsp;</div>\r\n', null, '2018-05-16 21:55:06', null, null, '36', '36', '30', '30', 's', 'imagens/passeios/balneario municipal.jpg', '152999', 'image/jpeg');
INSERT INTO `passeios` VALUES ('34', '6', 'BALNEÁRIO PRAIA DA FIGUEIRA', '<p>Uma imensa &aacute;rvore dentro do balne&aacute;rio, deu origem ao nome do atrativo &ldquo;Praia da Figueira&rdquo;, que possui uma imensa lagoa de &aacute;guas cristalinas (60.000m2). A praia de Bonito oferece ao seu visitante, espa&ccedil;o para nadar, mergulhar, jogar biribol, praticar caiaque, tirolesa, pedalinho, jogar v&ocirc;lei de areia e frescobol. O espa&ccedil;o &eacute; cercado de muito verde e &oacute;tima infra-estrutura com bar, restaurante, lanchonete, sanit&aacute;rios com vesti&aacute;rio, espregui&ccedil;adeiras, playground, quadras de v&ocirc;lei, futebol de areia e red&aacute;rio sob uma imponente figueira com aproximadamente 25 anos de idade.</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\nDist&acirc;ncia do Centro: 14 km.<br />\r\nDura&ccedil;&atilde;o do Passeio: Livre.<br />\r\nLevar roupa de banho e toalha.<br />\r\nN&atilde;o &eacute; necess&aacute;rio o acompanhamento de guia local.</p>\r\n', null, '2018-05-16 21:55:06', null, null, '40', '40', '27', '27', 's', 'imagens/passeios/praia da figueira.jpg', '252336', 'image/jpeg');
INSERT INTO `passeios` VALUES ('35', '6', 'BALNEÁRIO ILHA BONITA', '<p>um pedacinho do para&iacute;so pra voc&ecirc;. Um lugar de encantos e belezas sem igual, as margens do rio formoso. S&oacute; na Ilha Bonita voc&ecirc; vai presenciar o fen&ocirc;meno da comunica&ccedil;&atilde;o entre o homem e os peixes atrav&eacute;s do toque de um sino, ir&aacute; ver peixes pequenos, m&eacute;dios e grandes. Contamos com uma excelente infraestrutura,e restaurante, quiosques individuais com churrasqueiras, parquinho para crian&ccedil;as, quadra de v&ocirc;lei de areia, &aacute;rea para exerc&iacute;cios f&iacute;sicos, red&aacute;rios, duas tirolesas, cinco trampolins, cachoeiras e trilhas.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>IMPORTANTE:</strong><br />\r\nO que levar: Roupa de banho, Toalha e Troca de roupa.<br />\r\nDist&acirc;ncia 12 km.<br />\r\nDura&ccedil;&atilde;o livre.</p>\r\n\r\n<div style=\"background:url(http://pousadacaranda.com.br/wp-content/themes/pindol/css/skins/blue/images/box_shadow_cb.png) 50% 0% no-repeat; border:0px; padding:0px\">&nbsp;</div>\r\n', null, '2018-05-16 21:55:06', null, null, '60', '60', '45', '45', 's', 'imagens/passeios/Balneario-Ilha-Bonita-300x199.jpg', '28576', 'image/jpeg');
INSERT INTO `passeios` VALUES ('36', '3', 'Barra do Sucuri', '<p>A aventura come&ccedil;a com o passeio de barco a remo cerca de 1.300m no Rio Sucuri, at&eacute; as proximidades de sua nascente. Exuberante fauna e flora enchem os olhos do visitante. O caminho de volta &eacute; feito dentro do Rio Flutuando pela suave correnteza, Na &aacute;gua cristalina, a visibilidade &eacute; excelente. H&aacute; enormes jardins subaqu&aacute;ticos com grande diversidade de peixes. O passeio termina no encontro das &aacute;guas do Rio Sucuri com o Rio Formoso. O equipamento j&aacute; esta incluso no valor do passeio (colete salva-vidas, m&aacute;scara snorkel, roupa e sapatilhas de Neoprene)A barra do Sucuri oferece, no trecho do Rio Formoso, 01 confort&aacute;vel balne&aacute;rio com decks, escada de acesso a &aacute;gua, trilhas ecol&oacute;gicas, redario, quadras de v&ocirc;lei e futebol de grama e bar. O passeio &eacute; acompanhado por guia especializado e credenciado. O que levar: Roupa de Banho, Toalha e &ldquo;Troca&rdquo; de roupa. Dist&acirc;ncia: 16 km Dura&ccedil;&atilde;o: 02h00.</p>\r\n', null, '2018-05-16 21:55:06', null, null, '145', '125', '145', '125', 's', 'imagens/passeios/barra do sucuri.jpg', '185263', 'image/jpeg');
INSERT INTO `passeios` VALUES ('37', '2', 'Gruta São Mateus', '<p>Visitar Bonito e n&atilde;o conhecer a Gruta S&atilde;o Mateus &eacute; imposs&iacute;vel, assim como descrever a obra divina realizada no interior da gruta, viajar &eacute; sonhar e seu sonho ser&aacute; imagin&aacute;vel como tanta beleza. Num percurso de 320metros de trilhas em meio a natureza, voc&ecirc; poder&aacute; conhecer diversas esp&eacute;cies de flora e de fauna, em uma altitude de 150 metros, num ambiente totalmente natural, em meio a arvores centen&aacute;rias. O que Usar :&Eacute; obrigat&oacute;rio o uso de t&ecirc;nis e roupa leve. . Dist&acirc;ncia: 3km. Dura&ccedil;&atilde;o: 1h20m</p>\r\n', null, '2018-05-16 21:55:06', null, null, '50', '40', '50', '40', 's', 'imagens/passeios/sao mateus.jpg', '117582', 'image/jpeg');
INSERT INTO `passeios` VALUES ('38', '4', 'Quadriciclo Rotta Zagaia', '<p>Aventura com muita emo&ccedil;&atilde;o em Bonito. Curta este inesquec&iacute;vel passeio de quadriciclo de 420 cilindradas, acompanhados por um monitor. O percurso natural de 3,5 km &eacute; realizado dentro do Zagaia Eco Resort passando por uma mata e v&aacute;rios obst&aacute;culos, facilmente voc&ecirc; se encantar&aacute; com as varias esp&eacute;cies de aves e animais silvestres presentes nessa bela regi&atilde;o. O passeio disponibiliza capacetes e tocas higienizadas. O que usar: Roupa confort&aacute;vel e t&ecirc;nis. Distancia: 04 km &ndash; Dura&ccedil;&atilde;o: 01h00.</p>\r\n\r\n<p>Garupa - R$ 190,00</p>\r\n', null, '2018-05-16 21:55:06', null, null, '140', '140', '140', '140', 's', 'imagens/passeios/quadriciclo zagaia.jpg', '392849', 'image/jpeg');
INSERT INTO `passeios` VALUES ('40', '4', 'Quadriciclo Trilha Boiadeira', '<p>O passeio &eacute; realizado em quadriciclos de 420 cilindradas, freio a disco, suspens&atilde;o a g&aacute;s, partida el&eacute;trica e aro 10. O percurso passa pela estrada boiadeira, que &eacute; usada por comitivas de gado como passagem at&eacute; as fazendas. Trajetos &iacute;ngremes, com pedras e buracos, no meio da mata e muita lama em dias de chuva, garantem aventura e emo&ccedil;&atilde;o durante os 9km de percurso, que conta com o acompanhamento de monitor experiente. O treinamento antecipado &eacute; obrigat&oacute;rio e o equipamento usado, j&aacute; esta incluso. Garupa acima de 05 anos, pilotando acima de 16 anos.</p>\r\n\r\n<p>R$190,00 garupa</p>\r\n', null, '2018-05-16 21:55:07', null, null, '140', '140', '140', '140', 's', 'imagens/passeios/trilha boiadeira.00.JPG', '163308', 'image/jpeg');
INSERT INTO `passeios` VALUES ('41', '7', 'Fazenda San Francisco (Day Use)', '<p>Para quem gosta de aves e natureza, um gostinho do Pantanal!</p>\r\n\r\n<p>A Fazenda San Francisco fica a 162 km de Bonito - MS, no munic&iacute;pio de Miranda. Com mais de 14.000 hectares de planta&ccedil;&otilde;es, campos de gado, e &aacute;rea preservada, ela esbanja paisagens naturais e abriga esp&eacute;cies de todos os tipos e tamanhos de plantas e animais.</p>\r\n\r\n<p>Os passeios de safari e chalana s&atilde;o contemplativos e mostram a riqueza do ecossistema do Pantanal Sul. Durante ambos, &eacute; poss&iacute;vel avistar uma incr&iacute;vel variedade de aves e, com sorte, cervos, jacar&eacute;s, capivaras, lobinhos, etc. Ospasseios tamb&eacute;m mostram paisagens rurais tipicamente pantaneiras. Tudo com toda a seguran&ccedil;a de um empreendimento com equipe qualificada e o certificado de Aventura Segura.</p>\r\n\r\n<p>As &aacute;reas visitas nos passeios incluem a regi&atilde;o preservada assim como os campos com gado e as planta&ccedil;&otilde;es de arroz, onde se v&ecirc; a maior parte das esp&eacute;cies.</p>\r\n\r\n<p>Dist&acirc;ncia de Bonito:</p>\r\n\r\n<p>162 km (Mais ou menos 02 horas e meia de deslocamento)<br />\r\nIn&iacute;cio do passeio no local: 08h30<br />\r\n&eacute;rmino do passeio no local: 16h30 (Aproximadamente)</p>\r\n\r\n<p>Inclui:</p>\r\n\r\n<p>- 02 Passeios diurnos;<br />\r\n- 01 Almo&ccedil;o;</p>\r\n\r\n<p>N&atilde;o inclui:</p>\r\n\r\n<p>Hospedagem;<br />\r\nBebidas;<br />\r\nTransporte;</p>\r\n', null, '2018-05-16 21:55:07', null, null, '178', '178', '123', '123', 's', 'imagens/passeios/San Fracnsico.jpg', '94146', 'image/jpeg');

-- ----------------------------
-- Table structure for passeios_categorias
-- ----------------------------
DROP TABLE IF EXISTS `passeios_categorias`;
CREATE TABLE `passeios_categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `ativo` enum('s','n') DEFAULT 's',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of passeios_categorias
-- ----------------------------
INSERT INTO `passeios_categorias` VALUES ('1', 'Cachoeiras', 's');
INSERT INTO `passeios_categorias` VALUES ('2', 'Grutas', 's');
INSERT INTO `passeios_categorias` VALUES ('3', 'Flutuações', 's');
INSERT INTO `passeios_categorias` VALUES ('4', 'Aventuras', 's');
INSERT INTO `passeios_categorias` VALUES ('5', 'Mergulho Autônomo e Rapel', 's');
INSERT INTO `passeios_categorias` VALUES ('6', 'Balneários', 's');
INSERT INTO `passeios_categorias` VALUES ('7', 'Fazendas', 's');

-- ----------------------------
-- Table structure for roteiros_apartamentos
-- ----------------------------
DROP TABLE IF EXISTS `roteiros_apartamentos`;
CREATE TABLE `roteiros_apartamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `valor_alta` double DEFAULT NULL,
  `valor_baixa` double DEFAULT NULL,
  `texto` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of roteiros_apartamentos
-- ----------------------------
INSERT INTO `roteiros_apartamentos` VALUES ('30', 'Apartamento Single', '155', '155', null);
INSERT INTO `roteiros_apartamentos` VALUES ('31', 'Apartamento Duplo', '185', '185', null);
INSERT INTO `roteiros_apartamentos` VALUES ('32', 'Apartamento Triplo', '275', '275', null);
INSERT INTO `roteiros_apartamentos` VALUES ('33', 'Apartamento Quádruplo', '353', '353', null);
INSERT INTO `roteiros_apartamentos` VALUES ('34', 'Apartamento Quíntuplo', '420', '420', null);

-- ----------------------------
-- Table structure for roteiros_clientes
-- ----------------------------
DROP TABLE IF EXISTS `roteiros_clientes`;
CREATE TABLE `roteiros_clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `numero_adultos` int(11) DEFAULT NULL,
  `numero_chd` int(11) DEFAULT NULL,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `dthr_solicitacao` datetime DEFAULT NULL,
  `id_transporte` int(11) DEFAULT '0',
  `valor_transporte` double DEFAULT NULL,
  `id_apartamento` int(11) DEFAULT '0',
  `valor_apartamento_adultos` double DEFAULT NULL,
  `valor_apartamento_chd` double DEFAULT NULL,
  `id_pagamento` int(11) DEFAULT NULL,
  `dthr_lido` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `apartamentos` (`id_apartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=3199 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of roteiros_clientes
-- ----------------------------
INSERT INTO `roteiros_clientes` VALUES ('3198', 'Clayton Guerini', '67996789868', 'Campo Grande', 'clayton.guerini@gmail.com', '2', '1', '2018-05-25', '2018-05-29', '2018-05-26 21:12:14', '2', null, '32', null, null, null, '2018-05-26 21:12:14');

-- ----------------------------
-- Table structure for roteiros_configuracaos
-- ----------------------------
DROP TABLE IF EXISTS `roteiros_configuracaos`;
CREATE TABLE `roteiros_configuracaos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `id_transporte` int(11) DEFAULT NULL,
  `valor_transporte` double DEFAULT NULL,
  `id_apartamento` int(11) DEFAULT NULL,
  `valor_apartamento_adultos` double DEFAULT NULL,
  `valor_apartamento_chd` double DEFAULT NULL,
  `id_pagamento` int(11) DEFAULT NULL,
  `dthr_lido` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `lido` enum('s','n') DEFAULT 'n',
  PRIMARY KEY (`id`),
  KEY `cliente` (`id_cliente`),
  KEY `transportes` (`id_transporte`),
  KEY `apartamento` (`id_apartamento`),
  CONSTRAINT `apartamento` FOREIGN KEY (`id_apartamento`) REFERENCES `roteiros_apartamentos` (`id`),
  CONSTRAINT `cliente` FOREIGN KEY (`id_cliente`) REFERENCES `roteiros_clientes` (`id`),
  CONSTRAINT `transportes` FOREIGN KEY (`id_transporte`) REFERENCES `roteiros_transportes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of roteiros_configuracaos
-- ----------------------------

-- ----------------------------
-- Table structure for roteiros_configuracao_passeios
-- ----------------------------
DROP TABLE IF EXISTS `roteiros_configuracao_passeios`;
CREATE TABLE `roteiros_configuracao_passeios` (
  `id_cliente` int(11) NOT NULL DEFAULT '0',
  `id_passeio` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_cliente`,`id_passeio`),
  KEY `passeios` (`id_passeio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of roteiros_configuracao_passeios
-- ----------------------------
INSERT INTO `roteiros_configuracao_passeios` VALUES ('3198', '10');
INSERT INTO `roteiros_configuracao_passeios` VALUES ('3198', '11');
INSERT INTO `roteiros_configuracao_passeios` VALUES ('3198', '15');
INSERT INTO `roteiros_configuracao_passeios` VALUES ('3198', '40');

-- ----------------------------
-- Table structure for roteiros_formas_pagamentos
-- ----------------------------
DROP TABLE IF EXISTS `roteiros_formas_pagamentos`;
CREATE TABLE `roteiros_formas_pagamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of roteiros_formas_pagamentos
-- ----------------------------
INSERT INTO `roteiros_formas_pagamentos` VALUES ('1', 'Sinal de 30% - Para confirmação da reserva.\r\nSaldo de 70% - No Check in na Pousada em Bonito');

-- ----------------------------
-- Table structure for roteiros_transportes
-- ----------------------------
DROP TABLE IF EXISTS `roteiros_transportes`;
CREATE TABLE `roteiros_transportes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` text,
  `valor` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of roteiros_transportes
-- ----------------------------
INSERT INTO `roteiros_transportes` VALUES ('1', ' Não Obrigado, vou com transporte próprio', null);
INSERT INTO `roteiros_transportes` VALUES ('2', 'Aluguel de Carro conforme disponibilidade de modelo - Diária R$ 150,00 ( Completo)', '150');
INSERT INTO `roteiros_transportes` VALUES ('3', 'Transfer Privativo (carro com ar condicionado + combustível incluso + motorista treinado) Campo Grande/Bonito/Campo Grande R$ 800,00 (não há necessidade de espera, possuímos logística de transporte com a chegada de seu voô).', '800');
INSERT INTO `roteiros_transportes` VALUES ('4', '* Horário do Transporte Campo Grande x Bonito  - Saídas previstas de Campo Grande as 09:30 - 14:30 -  18:00 - 23:00 hs - R$ 100,00\r\n\r\n\r\n* Horário do Transporte Bonito x Campo Grande - Saídas previstas de Bonito as  07:30 - 10:00 - 12:30 - 18:30 hs - R$ 100,00', '100');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Clayton Guerini', 'clayton.guerini@gmail.com', '$2y$10$kMsVDyesKlkvB8hLZa/ZoOlbvvpimi8MRr3pxuX3HgoCvoPMXjFtW', 'HooXPBAJeT3VDYlk6meR9wmvu4a6JzSNlEy413kpS33QkaMu8NsNY3G0Sykx', '2018-04-11 00:55:29', '2018-04-11 00:55:29');

-- ----------------------------
-- View structure for view_calculo_meu_roteiro
-- ----------------------------
DROP VIEW IF EXISTS `view_calculo_meu_roteiro`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_calculo_meu_roteiro` AS select `r`.`id` AS `id`,`r`.`nome` AS `nome`,`r`.`telefone` AS `telefone`,`r`.`cidade` AS `cidade`,`r`.`email` AS `email`,`r`.`numero_adultos` AS `numero_adultos`,`r`.`numero_chd` AS `numero_chd`,`r`.`dt_inicio` AS `dt_inicio`,`r`.`dt_fim` AS `dt_fim`,(to_days(`r`.`dt_fim`) - to_days(`r`.`dt_inicio`)) AS `diasHospedagem`,(`r`.`numero_adultos` + `r`.`numero_chd`) AS `numero_pessoas`,`r`.`dthr_solicitacao` AS `dthr_solicitacao`,`t`.`descricao` AS `descricao`,`t`.`valor` AS `valor`,if((`t`.`id` = 4),(((`r`.`numero_adultos` + `r`.`numero_chd`) * `t`.`valor`) * 2),((`r`.`numero_adultos` + `r`.`numero_chd`) * `t`.`valor`)) AS `total_transporte`,`h`.`nome` AS `apartamento`,`h`.`valor_alta` AS `valor_alta`,`h`.`valor_baixa` AS `valor_baixa`,if(((select count(0) from `alta_temporada` where ((`alta_temporada`.`dt_inicio` between `r`.`dt_inicio` and `r`.`dt_fim`) or (`alta_temporada`.`dt_fim` between `r`.`dt_inicio` and `r`.`dt_fim`))) > 0),`h`.`valor_alta`,`h`.`valor_baixa`) AS `diaria`,((to_days(`r`.`dt_fim`) - to_days(`r`.`dt_inicio`)) * if(((select count(0) from `alta_temporada` where ((`alta_temporada`.`dt_inicio` between `r`.`dt_inicio` and `r`.`dt_fim`) or (`alta_temporada`.`dt_fim` between `r`.`dt_inicio` and `r`.`dt_fim`))) > 0),`h`.`valor_alta`,`h`.`valor_baixa`)) AS `total_hospedagem`,(select `alta_temporada`.`nome` from `alta_temporada` where ((`alta_temporada`.`dt_inicio` between `r`.`dt_inicio` and `r`.`dt_fim`) or (`alta_temporada`.`dt_fim` between `r`.`dt_inicio` and `r`.`dt_fim`))) AS `nome_feriado`,if((`r`.`dthr_solicitacao` = `r`.`dthr_lido`),0,1) AS `lido` from ((`roteiros_clientes` `r` left join `roteiros_apartamentos` `h` on((`r`.`id_apartamento` = `h`.`id`))) left join `roteiros_transportes` `t` on((`r`.`id_transporte` = `t`.`id`))) order by `lido`,`r`.`dthr_solicitacao` desc ;

-- ----------------------------
-- View structure for view_calculo_meu_roteiro_passeios
-- ----------------------------
DROP VIEW IF EXISTS `view_calculo_meu_roteiro_passeios`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_calculo_meu_roteiro_passeios` AS select `rcp`.`id_cliente` AS `id_cliente`,`rcp`.`id_passeio` AS `id_passeio`,`r`.`numero_adultos` AS `numero_adultos`,`r`.`numero_chd` AS `numero_chd`,`r`.`dthr_solicitacao` AS `dthr_solicitacao`,`p`.`nome` AS `passeio`,`p`.`valor_adulto_alta` AS `valor_adulto_alta`,`p`.`valor_adulto_baixa` AS `valor_adulto_baixa`,`p`.`valor_chd_alta` AS `valor_chd_alta`,`p`.`valor_chd_baixa` AS `valor_chd_baixa`,(select `alta_temporada`.`nome` from `alta_temporada` where ((`alta_temporada`.`dt_inicio` between `r`.`dt_inicio` and `r`.`dt_fim`) or (`alta_temporada`.`dt_fim` between `r`.`dt_inicio` and `r`.`dt_fim`))) AS `nome_feriado`,if(((select count(0) from `alta_temporada` where ((`alta_temporada`.`dt_inicio` between `r`.`dt_inicio` and `r`.`dt_fim`) or (`alta_temporada`.`dt_fim` between `r`.`dt_inicio` and `r`.`dt_fim`))) > 0),(`r`.`numero_adultos` * `p`.`valor_adulto_alta`),(`r`.`numero_adultos` * `p`.`valor_adulto_baixa`)) AS `total_adultos`,if(((select count(0) from `alta_temporada` where ((`alta_temporada`.`dt_inicio` between `r`.`dt_inicio` and `r`.`dt_fim`) or (`alta_temporada`.`dt_fim` between `r`.`dt_inicio` and `r`.`dt_fim`))) > 0),(`r`.`numero_chd` * `p`.`valor_chd_alta`),(`r`.`numero_chd` * `p`.`valor_chd_baixa`)) AS `total_chds`,if(((select count(0) from `alta_temporada` where ((`alta_temporada`.`dt_inicio` between `r`.`dt_inicio` and `r`.`dt_fim`) or (`alta_temporada`.`dt_fim` between `r`.`dt_inicio` and `r`.`dt_fim`))) > 0),`p`.`valor_adulto_alta`,`p`.`valor_adulto_baixa`) AS `valor_por_adulto`,if(((select count(0) from `alta_temporada` where ((`alta_temporada`.`dt_inicio` between `r`.`dt_inicio` and `r`.`dt_fim`) or (`alta_temporada`.`dt_fim` between `r`.`dt_inicio` and `r`.`dt_fim`))) > 0),`p`.`valor_chd_alta`,`p`.`valor_chd_baixa`) AS `valor_por_chd`,(if(((select count(0) from `alta_temporada` where ((`alta_temporada`.`dt_inicio` between `r`.`dt_inicio` and `r`.`dt_fim`) or (`alta_temporada`.`dt_fim` between `r`.`dt_inicio` and `r`.`dt_fim`))) > 0),(`r`.`numero_adultos` * `p`.`valor_adulto_alta`),(`r`.`numero_adultos` * `p`.`valor_adulto_baixa`)) + if(((select count(0) from `alta_temporada` where ((`alta_temporada`.`dt_inicio` between `r`.`dt_inicio` and `r`.`dt_fim`) or (`alta_temporada`.`dt_fim` between `r`.`dt_inicio` and `r`.`dt_fim`))) > 0),(`r`.`numero_chd` * `p`.`valor_chd_alta`),(`r`.`numero_chd` * `p`.`valor_chd_baixa`))) AS `total_passeio` from ((`roteiros_configuracao_passeios` `rcp` left join `roteiros_clientes` `r` on((`rcp`.`id_cliente` = `r`.`id`))) left join `passeios` `p` on((`p`.`id` = `rcp`.`id_passeio`))) ;
