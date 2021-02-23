-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.6-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para youtrack
CREATE DATABASE IF NOT EXISTS `youtrack` /*!40100 DEFAULT CHARACTER SET latin2 */;
USE `youtrack`;

-- Copiando estrutura para tabela youtrack.cadastro_horas
CREATE TABLE IF NOT EXISTS `cadastro_horas` (
  `horas_id` int(11) NOT NULL AUTO_INCREMENT,
  `qntde_horas` int(11) DEFAULT NULL,
  `motivo` char(100) DEFAULT NULL,
  `hora_inicial` time,
  `data_inicial` date,
  `hora_final` time,
  `hora_registro` timestamp NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`horas_id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela youtrack.cadastro_horas: 51 rows
/*!40000 ALTER TABLE `cadastro_horas` DISABLE KEYS */;
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(51, 10, 'Teste com mais horas.', '18:00:00', '2021-02-21', '04:00:00', '2021-02-10 00:00:00', 12);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(58, 2, 'Primeiro teste de hoje', '10:00:00', '2021-02-11', '11:00:00', '2021-02-11 00:00:00', 1);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(49, 1, 'Terminar um sistema.', '18:00:00', '2021-02-10', '19:00:00', '2021-02-10 00:00:00', 10);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(46, 1, 'Teste 5', '10:01:00', '2021-01-10', '11:01:00', '2021-02-10 00:00:00', 1);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(57, 2, 'Provavelmente o Ãºltimo teste de hoje.', '18:00:00', '2021-02-10', '20:00:00', '2021-02-10 00:00:00', 12);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(44, 1, 'Segundo teste', '18:00:00', '2021-02-10', '19:00:00', '2021-02-10 00:00:00', 1);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(59, 3, 'Teste sem a quantidade de horas extras.', '15:00:00', '2021-02-11', '18:00:00', '2021-02-11 00:00:00', 1);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(48, 3, 'Teste 5', '13:00:00', '2021-01-21', '16:00:00', '2021-02-10 00:00:00', 9);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(56, 1, 'Teste para reconfigurar o alert.', '17:00:00', '2021-02-10', '21:00:00', '2021-02-10 00:00:00', 12);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(53, 1, 'Teste com uma hora(2).', '12:00:00', '2021-02-10', '13:00:00', '2021-02-10 00:00:00', 12);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(55, 1, 'Repetindo teste para testar alert.', '09:00:00', '2021-02-10', '10:00:00', '2021-02-10 00:00:00', 12);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(47, 4, 'Teste 10', '14:00:00', '2021-01-11', '18:00:00', '2021-02-10 00:00:00', 1);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(54, 2, 'Teste com duas horas.', '10:00:00', '2021-02-10', '12:00:00', '2021-02-10 00:00:00', 12);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(45, 1, 'Terceiro teste', '18:00:00', '2021-02-09', '19:00:00', '2021-02-10 00:00:00', 1);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(50, 1, 'Teste de alert.', '18:00:00', '2021-02-10', '19:00:00', '2021-02-10 00:00:00', 10);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(43, 4, 'rethgrwth', '11:00:00', '2021-02-12', '12:00:00', '2021-02-10 00:00:00', 1);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(37, 1, 'Teste', '10:00:00', '2021-02-09', '11:00:00', '2021-02-10 00:00:00', 8);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(42, 1, 'Teste', '11:12:00', '2021-02-10', '12:12:00', '2021-02-10 00:00:00', 8);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(52, 1, 'Teste com uma hora.', '17:00:00', '2021-02-21', '18:00:00', '2021-02-10 00:00:00', 12);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(40, 1, 't', '11:00:00', '2021-02-12', '12:00:00', '2021-02-10 00:00:00', 8);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(41, 1, 'C', '10:00:00', '2021-01-11', '11:00:00', '2021-02-10 00:00:00', 8);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(60, 2, 'Gosto de trabalhar', '16:00:00', '2021-02-11', '18:00:00', '2021-02-11 00:00:00', 12);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(61, 1, 'Teste de conexÃ£o com o bd.', '18:00:00', '2021-02-11', '19:00:00', '2021-02-11 00:00:00', 12);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(62, 1, 'Sou workaholic', '19:00:00', '2021-02-12', '20:00:00', '2021-02-12 00:00:00', 12);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(63, 1, 'Hoje Ã© sexta-feira.', '07:00:00', '2021-02-12', '08:00:00', '2021-02-12 00:00:00', 12);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(64, NULL, 'Que loucura que foi essa?', '07:00:00', '2021-02-12', '08:00:00', '2021-02-12 00:00:00', 12);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(65, NULL, 'Teste inicial', '12:10:00', '2021-02-10', '13:13:00', '2021-02-15 00:00:00', 38);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(66, NULL, 'Segundo teste', '14:21:00', '2021-02-09', '16:40:00', '2021-02-15 00:00:00', 38);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(67, NULL, 'Primeiro teste de new user.', '08:21:00', '2021-02-15', '10:23:00', '2021-02-15 00:00:00', 45);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(68, NULL, 'Segundo teste de user.', '12:03:00', '2021-02-16', '14:28:00', '2021-02-15 00:00:00', 45);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(69, NULL, 'Terceiro teste de New User.', '18:22:00', '2021-02-20', '20:21:00', '2021-02-15 00:00:00', 45);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(70, NULL, 'Teste qualquer', '10:24:00', '2021-02-20', '12:02:00', '2021-02-15 00:00:00', 45);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(71, NULL, 'Fiquei ajudando o New User com seu projeto.', '03:55:00', '2021-02-15', '06:01:00', '2021-02-15 00:00:00', 1);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(72, NULL, 'Fiquei revisando alguns cÃ³digos.', '04:41:00', '2021-02-16', '05:11:00', '2021-02-15 00:00:00', 1);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(73, NULL, 'Precisava terminar um projeto.', '02:57:00', '2021-02-20', '03:51:00', '2021-02-15 00:00:00', 1);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(74, NULL, 'Fiquei ajudando o New User com seu projeto.', '02:33:00', '2021-02-20', '05:51:00', '2021-02-15 00:00:00', 9);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(75, NULL, 'ReuniÃ£o de Ãºltima hora com cliente.', '18:22:00', '2021-02-16', '18:45:00', '2021-02-15 00:00:00', 9);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(76, NULL, 'Chuva intenso que causou alagamentos.', '17:58:00', '2021-02-15', '18:02:00', '2021-02-15 00:00:00', 9);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(77, NULL, 'Fiquei auxiliando o New User com o seu projeto.', '02:36:00', '2021-02-20', '05:41:00', '2021-02-15 00:00:00', 38);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(78, NULL, 'Fui realizar um atendimento in loco.', '16:40:00', '2021-02-16', '18:02:00', '2021-02-15 00:00:00', 38);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(79, NULL, 'Chamada urgente de um cliente.', '18:00:00', '2021-02-15', '18:33:00', '2021-02-15 00:00:00', 38);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(80, NULL, 'Precisava acumular mais horas no banco.', '00:00:00', '2021-02-20', '05:00:00', '2021-02-15 00:00:00', 10);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(81, NULL, 'ContinuaÃ§Ã£o do processo do dia anterior.', '12:02:00', '2021-02-16', '16:31:00', '2021-02-15 00:00:00', 10);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(82, NULL, 'Precisei abonar o dia anterior.', '18:00:00', '2021-02-15', '23:59:00', '2021-02-15 00:00:00', 10);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(83, NULL, 'Fiquei auxiliando o New User em seu projeto.', '02:21:00', '2021-02-20', '05:12:00', '2021-02-15 00:00:00', 12);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(84, NULL, 'Estava com uma leve dificuldade de locomoÃ§Ã£o.', '17:02:00', '2021-02-16', '18:12:00', '2021-02-15 00:00:00', 12);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(85, NULL, 'Acho que estou me tornando um workaholic.', '18:00:00', '2021-02-15', '23:59:00', '2021-02-15 00:00:00', 12);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(86, NULL, 'Fiquei auxiliando o New User em seu projeto.', '02:33:00', '2021-02-20', '06:41:00', '2021-02-15 00:00:00', 8);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(87, NULL, 'Precisei levar minha mÃ£e ao mÃ©dico no dia anterior.', '18:00:00', '2021-02-16', '20:22:00', '2021-02-15 00:00:00', 8);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(88, NULL, 'Precisei me ausentar por motivos pessoais.', '15:23:00', '2021-02-15', '18:44:00', '2021-02-15 00:00:00', 8);
INSERT IGNORE INTO `cadastro_horas` (`horas_id`, `qntde_horas`, `motivo`, `hora_inicial`, `data_inicial`, `hora_final`, `hora_registro`, `usuario_id`) VALUES
	(89, NULL, 'Testando o required.', '10:02:00', '2021-02-16', '12:01:00', '2021-02-16 00:00:00', 12);
/*!40000 ALTER TABLE `cadastro_horas` ENABLE KEYS */;

-- Copiando estrutura para tabela youtrack.niveis_acessos
CREATE TABLE IF NOT EXISTS `niveis_acessos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

-- Copiando dados para a tabela youtrack.niveis_acessos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `niveis_acessos` DISABLE KEYS */;
INSERT IGNORE INTO `niveis_acessos` (`id`, `nome`) VALUES
	(1, 'Administrador');
INSERT IGNORE INTO `niveis_acessos` (`id`, `nome`) VALUES
	(2, 'Colaborador');
/*!40000 ALTER TABLE `niveis_acessos` ENABLE KEYS */;

-- Copiando estrutura para tabela youtrack.usuario_cadastro
CREATE TABLE IF NOT EXISTS `usuario_cadastro` (
  `usuario_id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `niveis_acessos_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin2;

-- Copiando dados para a tabela youtrack.usuario_cadastro: ~41 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario_cadastro` DISABLE KEYS */;
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(1, 'fulano', '123', 'Fulano First', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(2, 'cicrano', '321', 'Cicrano', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(3, 'beltrano', '789', 'Beltrano', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(4, 'fulano@teste.com', '123', 'Fulano Teste', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(5, 't@u.com', '123', 'Tu', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(6, 't@t.br', '123', 'Letra T', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(7, 'consult@nte', '12345', 'Consultante', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(8, 'usu@rio.com', '12', 'Usuário', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(9, 'ful@no', '1', 'Fulano Second', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(10, 'jamestblana@gmail.com', '1010', 'James', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(11, 'eu@eu.com.br', '123', 'Eu', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(12, 'tosted@teste.com.br', '1010', 'Tosted', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(13, '1@1.com', '1', 'One', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(14, 'administrador@admin.com', 'admin', 'Administrador', 1);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(16, 't@2.com', '2', 'Teste', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(17, 't@3.com', '3', 'Teste com gosto', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(18, 'thom@s.com', '5063', 'Thom??o', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(20, 'homer@simpson.com', '0', 'Homer', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(21, 'marge@simpson.com', '0', 'Marge', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(22, 'lisa@simpson.com', '0', 'Lisa', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(23, 'bart@simpson.com', '0', 'Bart', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(25, 'tom@cast.com.br', '123', 'Tom Cast', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(28, 'test@and0', '101', 'Test@nd0', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(30, 'testes@gmail.com', '7856', 'Teste', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(31, 'opt@flex.com', '1012', 'Flex', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(32, 'tomaraquefuncione@gmail.com', '1212', 'Tomara', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(33, 'u@u.com', '7856', 'U', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(34, 't@u.com', '451', 'Tuiu', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(35, 'carlos@henrique.com.br', '5214', 'Carlos', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(36, 'estoutestando@agora.com', '1659', 'Estou Testando', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(37, 'checkin@hotmail.com', '56123', 'Checked', 1);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(38, 'agoodlookingone@gmail.com', '9076', 'Good Looking', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(39, 'alert@boot.str', '4004', 'Alert', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(40, 'alert2@mail.com', '123', 'Alert 2', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(41, 'caceres@abyara.com', '4141', 'Caceres - Abyara', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(42, 'van@halen.com', '4701', 'Van Halen', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(43, 'yo@yahoo.com', '10', 'Yo-Yo', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(44, 'almanaque@revista.com', '58903', 'Almanaque', 2);
INSERT IGNORE INTO `usuario_cadastro` (`usuario_id`, `usuario`, `senha`, `nome`, `niveis_acessos_id`) VALUES
	(45, 'new@user.com', '9103', 'New User', 2);
/*!40000 ALTER TABLE `usuario_cadastro` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
