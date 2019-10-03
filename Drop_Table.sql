
CREATE SCHEMA IF NOT EXISTS `502IcakKEF` DEFAULT CHARACTER SET utf8;

USE `502IcakKEF` ;
DROP TABLE IF EXISTS `Escala de Servico`;
DROP TABLE IF EXISTS `Escala de Serviço`;
DROP TABLE IF EXISTS `Cargos`;
DROP TABLE IF EXISTS `Usuarios`;
DROP TABLE IF EXISTS `Comissao`;
DROP TABLE IF EXISTS `Servidor`;
DROP TABLE IF EXISTS `Processo_Disciplinar`;
DROP TABLE IF EXISTS `Advogado`;
DROP TABLE IF EXISTS `Acusado`;
DROP TABLE IF EXISTS `Assunto`;
DROP TABLE IF EXISTS `Requerimentos`;
DROP TABLE IF EXISTS `Acusado_has_Processo_Disciplinar`;
DROP TABLE IF EXISTS `Acusado_has_Advogado`;
DROP TABLE IF EXISTS `Processo_Disciplinar_has_Assunto`;
DROP TABLE IF EXISTS `Testemunha`;
DROP TABLE IF EXISTS `Audiencia`;
DROP TABLE IF EXISTS `Testemunha_has_Audiencia`;
DROP TABLE IF EXISTS `Processo_Disciplinar_has_Audiencia`;
DROP TABLE IF EXISTS `Processo_Disciplinar_has_Testemunha`;
DROP TABLE IF EXISTS `Acusado_has_Audiencia`;
DROP TABLE IF EXISTS `Comissao_has_Audiencia`;