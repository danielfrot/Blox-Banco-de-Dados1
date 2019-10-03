-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 03-Out-2019 às 03:32
-- Versão do servidor: 8.0.13-4
-- versão do PHP: 7.2.19-0ubuntu0.18.04.2
--
-- Database: `502IcakKEF`
--
CREATE DATABASE IF NOT EXISTS `502IcakKEF` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `502IcakKEF`;
-- --------------------------------------------------------
--
-- Estrutura da tabela `Acusado`
--
DROP TABLE IF EXISTS `Acusado`;
CREATE TABLE `Acusado` (
  `idAcusado` int(11) NOT NULL,
  `Nome` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Execucao` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Sexo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Nascimento` date DEFAULT NULL,
  `Pai` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Mae` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Idade` int(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- --------------------------------------------------------
--
-- Estrutura da tabela `Acusado_has_Advogado`
--
DROP TABLE IF EXISTS `Acusado_has_Advogado`;
CREATE TABLE `Acusado_has_Advogado` (
  `Acusado_idAcusado` int(11) NOT NULL,
  `Advogado_idAdvogado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- --------------------------------------------------------
--
-- Estrutura da tabela `Acusado_has_Audiencia`
--
DROP TABLE IF EXISTS `Acusado_has_Audiencia`;
CREATE TABLE `Acusado_has_Audiencia` (
  `Acusado_idAcusado` int(11) NOT NULL,
  `Audiencia_idAudiencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- --------------------------------------------------------
--
-- Estrutura da tabela `Advogado`
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
  `Usuarios_idUsuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
-- Estrutura da tabela `Assunto`
--
DROP TABLE IF EXISTS `Assunto`;
CREATE TABLE `Assunto` (
  `idAssunto` int(11) NOT NULL,
  `Assunto` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Descricao` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- --------------------------------------------------------
--
-- Estrutura da tabela `Audiencia`
--
DROP TABLE IF EXISTS `Audiencia`;
CREATE TABLE `Audiencia` (
  `idAudiencia` int(11) NOT NULL,
  `Data e Hora` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Realizada` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- --------------------------------------------------------
--
-- Estrutura da tabela `Cargos`
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
DROP TABLE IF EXISTS `Comissao`;
CREATE TABLE `Comissao` (
  `idComissao` int(11) NOT NULL,
  `Membros` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Funcao` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- --------------------------------------------------------
--
-- Estrutura da tabela `Comissao_has_Audiencia`
--
DROP TABLE IF EXISTS `Comissao_has_Audiencia`;
CREATE TABLE `Comissao_has_Audiencia` (
  `Comissao_idComissao` int(11) NOT NULL,
  `Audiencia_idAudiencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- --------------------------------------------------------
--
-- Estrutura da tabela `Escala de Servico`
--
DROP TABLE IF EXISTS `Escala de Servico`;
CREATE TABLE `Escala de Servico` (
  `idEscala de Servico` int(11) NOT NULL,
  `Período` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Entrada` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Saida` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- --------------------------------------------------------
--
-- Estrutura da tabela `Processo_Disciplinar`
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
DROP TABLE IF EXISTS `Processo_Disciplinar_has_Assunto`;
CREATE TABLE `Processo_Disciplinar_has_Assunto` (
  `Processo_Disciplinar_idProcesso_Disciplinar` int(11) NOT NULL,
  `Assunto_idAssunto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- --------------------------------------------------------
--
-- Estrutura da tabela `Processo_Disciplinar_has_Audiencia`
--
DROP TABLE IF EXISTS `Processo_Disciplinar_has_Audiencia`;
CREATE TABLE `Processo_Disciplinar_has_Audiencia` (
  `Processo_Disciplinar_idProcesso_Disciplinar` int(11) NOT NULL,
  `Audiencia_idAudiencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- --------------------------------------------------------
--
-- Estrutura da tabela `Processo_Disciplinar_has_Testemunha`
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
DROP TABLE IF EXISTS `Servidor`;
CREATE TABLE `Servidor` (
  `idServidor` int(11) NOT NULL,
  `Nome` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Matricula` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Escala de Servico` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Cargos_idCargos` int(11) NOT NULL,
  `Usuarios_idUsuarios` int(11) NOT NULL,
  `Comissao_idComissao` int(11) NOT NULL,
  `Sexo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Cidade` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- --------------------------------------------------------
--
-- Estrutura da tabela `Testemunha`
--
DROP TABLE IF EXISTS `Testemunha`;
CREATE TABLE `Testemunha` (
  `idTestemunha` int(11) NOT NULL,
  `Testemunha` varchar(45) COLLATE utf8_unicode_ci DEFAULT NOT NULL,
  `Matricula` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- --------------------------------------------------------
--
-- Estrutura da tabela `Testemunha_has_Audiencia`
--
DROP TABLE IF EXISTS `Testemunha_has_Audiencia`;
CREATE TABLE `Testemunha_has_Audiencia` (
  `Testemunha_idTestemunha` int(11) NOT NULL,
  `Audiencia_idAudiencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- --------------------------------------------------------
--
-- Estrutura da tabela `Usuarios`
--
DROP TABLE IF EXISTS `Usuarios`;
CREATE TABLE `Usuarios` (
  `idUsuarios` int(11) NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senha` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
-- 