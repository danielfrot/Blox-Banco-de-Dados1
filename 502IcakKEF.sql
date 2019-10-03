-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 03-Out-2019 às 03:32
-- Versão do servidor: 8.0.13-4
-- versão do PHP: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `502IcakKEF`
--
CREATE DATABASE IF NOT EXISTS `502IcakKEF` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `502IcakKEF`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Acusado`
--
-- Criação: 03-Out-2019 às 02:25
--

DROP TABLE IF EXISTS `Acusado`;
CREATE TABLE `Acusado` (
  `idAcusado` int(11) NOT NULL,
  `Nome` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Execucao` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Sexo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Nascimento` date DEFAULT NULL,
  `Pai` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Mãe` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Idade` int(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `Acusado`
--

INSERT INTO `Acusado` (`idAcusado`, `Nome`, `Execucao`, `Sexo`, `Nascimento`, `Pai`, `Mãe`, `Idade`) VALUES
(1, 'Fernando Beiramar', '9223455645678', 'Masculino', '1970-04-04', 'Augusto Beiramar', 'Maria Beiramar', 35),
(2, 'Marcola da Paz', '00010012456', 'Masculino', '1960-10-09', 'Marcolino da paz', 'Josefa de Alencar', 35),
(3, 'Alphonse Capone', '10000123456', 'Masculino', '1940-10-20', 'Giusepe garibald', 'Clementina das dores', 49),
(4, 'Robin Hood', '100000456789', 'Masculino', '1840-10-15', 'Robin whaks', 'slim shaddy', 29),
(5, 'Bonnie Elizabeth Parker', '102222123456', 'Feminino', '1910-10-01', 'Piter Parker ', 'Elizabeth Parker ', 25),
(6, 'Clyde Chestnut Barrow', '1234555640000', 'Masculino', '1909-03-24', 'Joel Chestnut Barrow', 'margaret Chestnut Barrow', 27);

-- --------------------------------------------------------

--
-- Estrutura da tabela `Acusado_has_Advogado`
--
-- Criação: 03-Out-2019 às 00:55
--

DROP TABLE IF EXISTS `Acusado_has_Advogado`;
CREATE TABLE `Acusado_has_Advogado` (
  `Acusado_idAcusado` int(11) NOT NULL,
  `Advogado_idAdvogado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Acusado_has_Audiência`
--
-- Criação: 03-Out-2019 às 00:55
--

DROP TABLE IF EXISTS `Acusado_has_Audiência`;
CREATE TABLE `Acusado_has_Audiência` (
  `Acusado_idAcusado` int(11) NOT NULL,
  `Audiência_idAudiência` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Advogado`
--
-- Criação: 03-Out-2019 às 00:55
--

DROP TABLE IF EXISTS `Advogado`;
CREATE TABLE `Advogado` (
  `idAdvogado` int(11) NOT NULL,
  `Nome` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `OAB` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Contato` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `E-mail` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Sexo` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `Cidade` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Usuários_idUsuários` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `Advogado`
--

INSERT INTO `Advogado` (`idAdvogado`, `Nome`, `OAB`, `Contato`, `E-mail`, `Sexo`, `Cidade`, `Usuários_idUsuários`) VALUES
(1, 'Thaís Barbosa Dias', '6684', '695485-5614', 'ThaisBarbosaDias@dayrep.com ', 'F', 'Porto Velho', 1),
(2, 'Kauan Gomes', '5809', '5997-6923', 'kauancastrogomes@einrot.com', 'M', 'Porto Velho', 2),
(3, 'Manuela Castro', '6175', '5094-9230', 'manuelaaraujocastro@jourrapide.com', 'F', 'Vilhena', 3),
(4, 'Gabriel Pereira', '4333', '4432-7060', 'gabrielmartinspereira@armyspy.com', 'M', 'Vilhena', 4),
(5, 'Gabriela Almeida', '9594', '6127-7892', 'gabrielamartinsalmeida@fleckens.hu', 'F', 'Porto Velho', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `Assunto`
--
-- Criação: 03-Out-2019 às 00:55
--

DROP TABLE IF EXISTS `Assunto`;
CREATE TABLE `Assunto` (
  `idAssunto` int(11) NOT NULL,
  `Assunto` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Descricao` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Audiência`
--
-- Criação: 03-Out-2019 às 00:55
--

DROP TABLE IF EXISTS `Audiência`;
CREATE TABLE `Audiência` (
  `idAudiência` int(11) NOT NULL,
  `Data e Hora` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Realizada` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Cargos`
--
-- Criação: 03-Out-2019 às 01:04
--

DROP TABLE IF EXISTS `Cargos`;
CREATE TABLE `Cargos` (
  `idCargos` int(11) NOT NULL,
  `idCargos_pai` int(11) NOT NULL,
  `Cargos` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Descricao` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Comissao`
--
-- Criação: 03-Out-2019 às 00:55
--

DROP TABLE IF EXISTS `Comissao`;
CREATE TABLE `Comissao` (
  `idComissao` int(11) NOT NULL,
  `Membros` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Funcao` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Comissao_has_Audiência`
--
-- Criação: 03-Out-2019 às 00:55
--

DROP TABLE IF EXISTS `Comissao_has_Audiência`;
CREATE TABLE `Comissao_has_Audiência` (
  `Comissao_idComissao` int(11) NOT NULL,
  `Audiência_idAudiência` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Escala de Serviço`
--
-- Criação: 03-Out-2019 às 00:55
--

DROP TABLE IF EXISTS `Escala de Serviço`;
CREATE TABLE `Escala de Serviço` (
  `idEscala de Serviço` int(11) NOT NULL,
  `Período` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Entrada` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Saída` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Processo_Disciplinar`
--
-- Criação: 03-Out-2019 às 00:55
--

DROP TABLE IF EXISTS `Processo_Disciplinar`;
CREATE TABLE `Processo_Disciplinar` (
  `idProcesso_Disciplinar` int(11) NOT NULL,
  `Processo_SEI` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Numero_PADI` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Relatorio_Seg` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Acusados` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Assunto` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Comissao` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Defesa` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Resultado` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Comissao_idComissao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Processo_Disciplinar_has_Assunto`
--
-- Criação: 03-Out-2019 às 00:55
--

DROP TABLE IF EXISTS `Processo_Disciplinar_has_Assunto`;
CREATE TABLE `Processo_Disciplinar_has_Assunto` (
  `Processo_Disciplinar_idProcesso_Disciplinar` int(11) NOT NULL,
  `Assunto_idAssunto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Processo_Disciplinar_has_Audiência`
--
-- Criação: 03-Out-2019 às 00:55
--

DROP TABLE IF EXISTS `Processo_Disciplinar_has_Audiência`;
CREATE TABLE `Processo_Disciplinar_has_Audiência` (
  `Processo_Disciplinar_idProcesso_Disciplinar` int(11) NOT NULL,
  `Audiência_idAudiência` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Processo_Disciplinar_has_Testemunha`
--
-- Criação: 03-Out-2019 às 00:55
--

DROP TABLE IF EXISTS `Processo_Disciplinar_has_Testemunha`;
CREATE TABLE `Processo_Disciplinar_has_Testemunha` (
  `Testemunha_idTestemunha` int(11) NOT NULL,
  `Processo_Disciplinar_idProcesso_Disciplinar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Requerimentos`
--
-- Criação: 03-Out-2019 às 00:55
--

DROP TABLE IF EXISTS `Requerimentos`;
CREATE TABLE `Requerimentos` (
  `idtable1` int(11) NOT NULL,
  `Tipo_Documento` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Numero` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Servidor`
--
-- Criação: 03-Out-2019 às 01:04
--

DROP TABLE IF EXISTS `Servidor`;
CREATE TABLE `Servidor` (
  `idServidor` int(11) NOT NULL,
  `Nome` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Matrículal` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Escala de Serviço` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Cargos_idCargos` int(11) NOT NULL,
  `Usuários_idUsuários` int(11) NOT NULL,
  `Comissao_idComissao` int(11) NOT NULL,
  `Sexo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Cidade` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Testemunha`
--
-- Criação: 03-Out-2019 às 00:55
--

DROP TABLE IF EXISTS `Testemunha`;
CREATE TABLE `Testemunha` (
  `idTestemunha` int(11) NOT NULL,
  `Testemunhacol` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Servidor` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Testemunha_has_Audiência`
--
-- Criação: 03-Out-2019 às 00:55
--

DROP TABLE IF EXISTS `Testemunha_has_Audiência`;
CREATE TABLE `Testemunha_has_Audiência` (
  `Testemunha_idTestemunha` int(11) NOT NULL,
  `Audiência_idAudiência` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Usuários`
--
-- Criação: 03-Out-2019 às 00:55
--

DROP TABLE IF EXISTS `Usuários`;
CREATE TABLE `Usuários` (
  `idUsuários` int(11) NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senha` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `Usuários`
--

INSERT INTO `Usuários` (`idUsuários`, `email`, `senha`) VALUES
(1, 'ThaisBarbosaDias@dayrep.com ', 'iethu3Coh'),
(2, 'kauancastrogomes@einrot.com', 'chu8iSie9'),
(3, 'manuelaaraujocastro@jourrapide.com', 'oVah4ohd7'),
(4, 'gabrielmartinspereira@armyspy.com', 'eeNgee1ees1'),
(5, 'gabrielamartinsalmeida@fleckens.hu', 'Aibasieh5R');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Acusado`
--
ALTER TABLE `Acusado`
  ADD PRIMARY KEY (`idAcusado`);

--
-- Indexes for table `Acusado_has_Advogado`
--
ALTER TABLE `Acusado_has_Advogado`
  ADD PRIMARY KEY (`Acusado_idAcusado`,`Advogado_idAdvogado`),
  ADD KEY `fk_Acusado_has_Advogado_Advogado1_idx` (`Advogado_idAdvogado`),
  ADD KEY `fk_Acusado_has_Advogado_Acusado1_idx` (`Acusado_idAcusado`);

--
-- Indexes for table `Acusado_has_Audiência`
--
ALTER TABLE `Acusado_has_Audiência`
  ADD PRIMARY KEY (`Acusado_idAcusado`,`Audiência_idAudiência`),
  ADD KEY `fk_Acusado_has_Audiência_Audiência1_idx` (`Audiência_idAudiência`),
  ADD KEY `fk_Acusado_has_Audiência_Acusado1_idx` (`Acusado_idAcusado`);

--
-- Indexes for table `Advogado`
--
ALTER TABLE `Advogado`
  ADD PRIMARY KEY (`idAdvogado`,`Usuários_idUsuários`),
  ADD UNIQUE KEY `OAB_UNIQUE` (`OAB`),
  ADD KEY `fk_Advogado_Usuários1_idx` (`Usuários_idUsuários`);

--
-- Indexes for table `Assunto`
--
ALTER TABLE `Assunto`
  ADD PRIMARY KEY (`idAssunto`);

--
-- Indexes for table `Audiência`
--
ALTER TABLE `Audiência`
  ADD PRIMARY KEY (`idAudiência`);

--
-- Indexes for table `Cargos`
--
ALTER TABLE `Cargos`
  ADD PRIMARY KEY (`idCargos`,`idCargos_pai`),
  ADD KEY `fk_Cargos_Cargos1_idx` (`idCargos_pai`);

--
-- Indexes for table `Comissao`
--
ALTER TABLE `Comissao`
  ADD PRIMARY KEY (`idComissao`);

--
-- Indexes for table `Comissao_has_Audiência`
--
ALTER TABLE `Comissao_has_Audiência`
  ADD PRIMARY KEY (`Comissao_idComissao`,`Audiência_idAudiência`),
  ADD KEY `fk_Comissao_has_Audiência_Audiência1_idx` (`Audiência_idAudiência`),
  ADD KEY `fk_Comissao_has_Audiência_Comissao1_idx` (`Comissao_idComissao`);

--
-- Indexes for table `Escala de Serviço`
--
ALTER TABLE `Escala de Serviço`
  ADD PRIMARY KEY (`idEscala de Serviço`);

--
-- Indexes for table `Processo_Disciplinar`
--
ALTER TABLE `Processo_Disciplinar`
  ADD PRIMARY KEY (`idProcesso_Disciplinar`,`Comissao_idComissao`),
  ADD UNIQUE KEY `Numero_PADI_UNIQUE` (`Numero_PADI`),
  ADD UNIQUE KEY `Processo_SEI_UNIQUE` (`Processo_SEI`),
  ADD KEY `fk_Processo_Administrativo_Disciplinar_Comissao1_idx` (`Comissao_idComissao`);

--
-- Indexes for table `Processo_Disciplinar_has_Assunto`
--
ALTER TABLE `Processo_Disciplinar_has_Assunto`
  ADD PRIMARY KEY (`Processo_Disciplinar_idProcesso_Disciplinar`,`Assunto_idAssunto`),
  ADD KEY `fk_Processo_Administrativo_Disciplinar_has_Assunto_Assunto1_idx` (`Assunto_idAssunto`),
  ADD KEY `fk_Processo_Administrativo_Disciplinar_has_Assunto_Processo_idx` (`Processo_Disciplinar_idProcesso_Disciplinar`);

--
-- Indexes for table `Processo_Disciplinar_has_Audiência`
--
ALTER TABLE `Processo_Disciplinar_has_Audiência`
  ADD PRIMARY KEY (`Processo_Disciplinar_idProcesso_Disciplinar`,`Audiência_idAudiência`),
  ADD KEY `fk_Processo_Administrativo_Disciplinar_has_Audiência1_Audi_idx` (`Audiência_idAudiência`),
  ADD KEY `fk_Processo_Administrativo_Disciplinar_has_Audiência1_Proc_idx` (`Processo_Disciplinar_idProcesso_Disciplinar`);

--
-- Indexes for table `Processo_Disciplinar_has_Testemunha`
--
ALTER TABLE `Processo_Disciplinar_has_Testemunha`
  ADD PRIMARY KEY (`Testemunha_idTestemunha`,`Processo_Disciplinar_idProcesso_Disciplinar`),
  ADD KEY `fk_Testemunha_has_Processo_Administrativo_Disciplinar_Proce_idx` (`Processo_Disciplinar_idProcesso_Disciplinar`),
  ADD KEY `fk_Testemunha_has_Processo_Administrativo_Disciplinar_Teste_idx` (`Testemunha_idTestemunha`);

--
-- Indexes for table `Requerimentos`
--
ALTER TABLE `Requerimentos`
  ADD PRIMARY KEY (`idtable1`);

--
-- Indexes for table `Servidor`
--
ALTER TABLE `Servidor`
  ADD PRIMARY KEY (`idServidor`,`Cargos_idCargos`,`Usuários_idUsuários`,`Comissao_idComissao`),
  ADD KEY `fk_Servidor_Cargos1_idx` (`Cargos_idCargos`),
  ADD KEY `fk_Servidor_Usuários1_idx` (`Usuários_idUsuários`),
  ADD KEY `fk_Servidor_Comissao1_idx` (`Comissao_idComissao`);

--
-- Indexes for table `Testemunha`
--
ALTER TABLE `Testemunha`
  ADD PRIMARY KEY (`idTestemunha`);

--
-- Indexes for table `Testemunha_has_Audiência`
--
ALTER TABLE `Testemunha_has_Audiência`
  ADD PRIMARY KEY (`Testemunha_idTestemunha`,`Audiência_idAudiência`),
  ADD KEY `fk_Testemunha_has_Audiência_Audiência1_idx` (`Audiência_idAudiência`),
  ADD KEY `fk_Testemunha_has_Audiência_Testemunha1_idx` (`Testemunha_idTestemunha`);

--
-- Indexes for table `Usuários`
--
ALTER TABLE `Usuários`
  ADD PRIMARY KEY (`idUsuários`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Acusado`
--
ALTER TABLE `Acusado`
  MODIFY `idAcusado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Advogado`
--
ALTER TABLE `Advogado`
  MODIFY `idAdvogado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Assunto`
--
ALTER TABLE `Assunto`
  MODIFY `idAssunto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Cargos`
--
ALTER TABLE `Cargos`
  MODIFY `idCargos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Comissao`
--
ALTER TABLE `Comissao`
  MODIFY `idComissao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Processo_Disciplinar`
--
ALTER TABLE `Processo_Disciplinar`
  MODIFY `idProcesso_Disciplinar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Requerimentos`
--
ALTER TABLE `Requerimentos`
  MODIFY `idtable1` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Servidor`
--
ALTER TABLE `Servidor`
  MODIFY `idServidor` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `Acusado_has_Advogado`
--
ALTER TABLE `Acusado_has_Advogado`
  ADD CONSTRAINT `fk_Acusado_has_Advogado_Acusado1` FOREIGN KEY (`Acusado_idAcusado`) REFERENCES `Acusado` (`idAcusado`),
  ADD CONSTRAINT `fk_Acusado_has_Advogado_Advogado1` FOREIGN KEY (`Advogado_idAdvogado`) REFERENCES `Advogado` (`idadvogado`);

--
-- Limitadores para a tabela `Acusado_has_Audiência`
--
ALTER TABLE `Acusado_has_Audiência`
  ADD CONSTRAINT `fk_Acusado_has_Audiência_Acusado1` FOREIGN KEY (`Acusado_idAcusado`) REFERENCES `Acusado` (`idAcusado`),
  ADD CONSTRAINT `fk_Acusado_has_Audiência_Audiência1` FOREIGN KEY (`Audiência_idAudiência`) REFERENCES `Audiência` (`idaudiência`);

--
-- Limitadores para a tabela `Advogado`
--
ALTER TABLE `Advogado`
  ADD CONSTRAINT `fk_Advogado_Usuários1` FOREIGN KEY (`Usuários_idUsuários`) REFERENCES `Usuários` (`idusuários`);

--
-- Limitadores para a tabela `Cargos`
--
ALTER TABLE `Cargos`
  ADD CONSTRAINT `fk_Cargos_Cargos1` FOREIGN KEY (`idCargos_pai`) REFERENCES `Cargos` (`idcargos`);

--
-- Limitadores para a tabela `Comissao_has_Audiência`
--
ALTER TABLE `Comissao_has_Audiência`
  ADD CONSTRAINT `fk_Comissao_has_Audiência_Audiência1` FOREIGN KEY (`Audiência_idAudiência`) REFERENCES `Audiência` (`idaudiência`),
  ADD CONSTRAINT `fk_Comissao_has_Audiência_Comissao1` FOREIGN KEY (`Comissao_idComissao`) REFERENCES `Comissao` (`idcomissao`);

--
-- Limitadores para a tabela `Processo_Disciplinar`
--
ALTER TABLE `Processo_Disciplinar`
  ADD CONSTRAINT `fk_Processo_Administrativo_Disciplinar_Comissao1` FOREIGN KEY (`Comissao_idComissao`) REFERENCES `Comissao` (`idcomissao`);

--
-- Limitadores para a tabela `Processo_Disciplinar_has_Assunto`
--
ALTER TABLE `Processo_Disciplinar_has_Assunto`
  ADD CONSTRAINT `fk_Processo_Administrativo_Disciplinar_has_Assunto_Assunto1` FOREIGN KEY (`Assunto_idAssunto`) REFERENCES `Assunto` (`idassunto`),
  ADD CONSTRAINT `fk_Processo_Administrativo_Disciplinar_has_Assunto_Processo_A1` FOREIGN KEY (`Processo_Disciplinar_idProcesso_Disciplinar`) REFERENCES `Processo_Disciplinar` (`idprocesso_disciplinar`);

--
-- Limitadores para a tabela `Processo_Disciplinar_has_Audiência`
--
ALTER TABLE `Processo_Disciplinar_has_Audiência`
  ADD CONSTRAINT `fk_Processo_Administrativo_Disciplinar_has_Audiência1_Audiê1` FOREIGN KEY (`Audiência_idAudiência`) REFERENCES `Audiência` (`idaudiência`),
  ADD CONSTRAINT `fk_Processo_Administrativo_Disciplinar_has_Audiência1_Proces1` FOREIGN KEY (`Processo_Disciplinar_idProcesso_Disciplinar`) REFERENCES `Processo_Disciplinar` (`idprocesso_disciplinar`);

--
-- Limitadores para a tabela `Processo_Disciplinar_has_Testemunha`
--
ALTER TABLE `Processo_Disciplinar_has_Testemunha`
  ADD CONSTRAINT `fk_Testemunha_has_Processo_Administrativo_Disciplinar_Process1` FOREIGN KEY (`Processo_Disciplinar_idProcesso_Disciplinar`) REFERENCES `Processo_Disciplinar` (`idprocesso_disciplinar`),
  ADD CONSTRAINT `fk_Testemunha_has_Processo_Administrativo_Disciplinar_Testemu1` FOREIGN KEY (`Testemunha_idTestemunha`) REFERENCES `Testemunha` (`idtestemunha`);

--
-- Limitadores para a tabela `Servidor`
--
ALTER TABLE `Servidor`
  ADD CONSTRAINT `fk_Servidor_Cargos1` FOREIGN KEY (`Cargos_idCargos`) REFERENCES `Cargos` (`idcargos`),
  ADD CONSTRAINT `fk_Servidor_Comissao1` FOREIGN KEY (`Comissao_idComissao`) REFERENCES `Comissao` (`idcomissao`),
  ADD CONSTRAINT `fk_Servidor_Usuários1` FOREIGN KEY (`Usuários_idUsuários`) REFERENCES `Usuários` (`idusuários`);

--
-- Limitadores para a tabela `Testemunha_has_Audiência`
--
ALTER TABLE `Testemunha_has_Audiência`
  ADD CONSTRAINT `fk_Testemunha_has_Audiência_Audiência1` FOREIGN KEY (`Audiência_idAudiência`) REFERENCES `Audiência` (`idaudiência`),
  ADD CONSTRAINT `fk_Testemunha_has_Audiência_Testemunha1` FOREIGN KEY (`Testemunha_idTestemunha`) REFERENCES `Testemunha` (`idtestemunha`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
