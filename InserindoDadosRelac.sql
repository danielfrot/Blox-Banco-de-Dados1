# INSERINDO RELACIONAMENTO ENTRE ACUSADO E ADVOGADO/DPE
INSERT INTO `Acusado_has_Advogado` (`Acusado_idAcusado`, `Advogado_idAdvogado`) VALUES
(2, 1),
(1, 2),
(1, 4),
(1, 6),
(3, 3),
(4, 4),
(5, 1),
(6, 1);

# INSERINDO RELACIONAMENTO ENTRE ACUSADO E PROCESSO
INSERT INTO `Acusado_has_Processo_Disciplinar` (`Acusado_idAcusado`, `Processo_Disciplinar_idProcesso_Disciplinar`) VALUES
(2, 1),
(1, 2),
(1, 4),
(1, 6),
(3, 3),
(4, 4);

# INSERINDO RELACIONAMENTO ENTRE ACUSADO E AUDIÊNCIA
INSERT INTO `Acusado_has_Audiencia` (`Acusado_idAcusado`, `Audiencia_idAudiencia`) VALUES
(2, 1),
(1, 2),
(1, 4),
(1, 6),
(3, 3),
(4, 4);

# INSERINDO RELACIONAMENTO ENTRE COMISSÃO E AUDIÊNCIA
INSERT INTO `Comissao_has_Audiencia` (`Comissao_idComissao`, `Audiencia_idAudiencia`) VALUES
(2, 1),
(1, 2),
(1, 4),
(1, 6),
(2, 2),
(1, 1),
(1, 3),
(3, 3),
(4, 4);

# INSERINDO RELACIONAMENTO ENTRE PROCESSO E ASSUNTO
INSERT INTO `Processo_Disciplinar_has_Assunto` (`Processo_Disciplinar_idProcesso_Disciplinar`, `Assunto_idAssunto`) VALUES
(2, 1),
(1, 2),
(1, 4),
(1, 6),
(3, 3),
(4, 4);

# INSERINDO RELACIONAMENTO ENTRE PROCESSO E AUDIÊNCIA
INSERT INTO `Processo_Disciplinar_has_Audiencia` (`Processo_Disciplinar_idProcesso_Disciplinar`, `Audiencia_idAudiencia`) VALUES
(2, 1),
(1, 2),
(1, 4),
(1, 6),
(3, 3),
(4, 4);

# INSERINDO RELACIONAMENTO ENTRE TESTEMUNHA E PROCESSO
INSERT INTO `Processo_Disciplinar_has_Testemunha` (`Testemunha_idTestemunha`, `Processo_Disciplinar_idProcesso_Disciplinar`) VALUES
(2, 1),
(1, 2),
(1, 4),
(1, 6),
(3, 3),
(4, 4);

# INSERINDO RELACIONAMENTO ENTRE TESTEMUNHA E AUDIÊNCIA
INSERT INTO `Testemunha_has_Audiencia` (`Testemunha_idTestemunha`, `Audiencia_idAudiencia`) VALUES
(2, 1),
(1, 2),
(1, 4),
(1, 6),
(3, 3),
(4, 4);