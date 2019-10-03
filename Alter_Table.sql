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
-- Indexes for table `Acusado_has_Audiencia`
--
ALTER TABLE `Acusado_has_Audiencia`
  ADD PRIMARY KEY (`Acusado_idAcusado`,`Audiencia_idAudiencia`),
  ADD KEY `fk_Acusado_has_Audiencia_Audiencia1_idx` (`Audiencia_idAudiencia`),
  ADD KEY `fk_Acusado_has_Audiencia_Acusado1_idx` (`Acusado_idAcusado`);

--
-- Indexes for table `Advogado`
--
ALTER TABLE `Advogado`
  ADD PRIMARY KEY (`idAdvogado`,`Usuarios_idUsuarios`),
  ADD UNIQUE KEY `OAB_UNIQUE` (`OAB`),
  ADD KEY `fk_Advogado_Usuarios1_idx` (`Usuarios_idUsuarios`);

--
-- Indexes for table `Assunto`
--
ALTER TABLE `Assunto`
  ADD PRIMARY KEY (`idAssunto`);

--
-- Indexes for table `Audiencia`
--
ALTER TABLE `Audiencia`
  ADD PRIMARY KEY (`idAudiencia`);

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
-- Indexes for table `Comissao_has_Audiencia`
--
ALTER TABLE `Comissao_has_Audiencia`
  ADD PRIMARY KEY (`Comissao_idComissao`,`Audiencia_idAudiencia`),
  ADD KEY `fk_Comissao_has_Audiencia_Audiencia1_idx` (`Audiencia_idAudiencia`),
  ADD KEY `fk_Comissao_has_Audiencia_Comissao1_idx` (`Comissao_idComissao`);

--
-- Indexes for table `Escala de Servico`
--
ALTER TABLE `Escala de Servico`
  ADD PRIMARY KEY (`idEscala de Servico`);

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
-- Indexes for table `Processo_Disciplinar_has_Audiencia`
--
ALTER TABLE `Processo_Disciplinar_has_Audiencia`
  ADD PRIMARY KEY (`Processo_Disciplinar_idProcesso_Disciplinar`,`Audiencia_idAudiencia`),
  ADD KEY `fk_Processo_Administrativo_Disciplinar_has_Audiencia1_Audi_idx` (`Audiencia_idAudiencia`),
  ADD KEY `fk_Processo_Administrativo_Disciplinar_has_Audiencia1_Proc_idx` (`Processo_Disciplinar_idProcesso_Disciplinar`);

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
  ADD PRIMARY KEY (`idServidor`,`Cargos_idCargos`,`Usuarios_idUsuarios`,`Comissao_idComissao`),
  ADD KEY `fk_Servidor_Cargos1_idx` (`Cargos_idCargos`),
  ADD KEY `fk_Servidor_Usuarios1_idx` (`Usuarios_idUsuarios`),
  ADD KEY `fk_Servidor_Comissao1_idx` (`Comissao_idComissao`);

--
-- Indexes for table `Testemunha`
--
ALTER TABLE `Testemunha`
  ADD PRIMARY KEY (`idTestemunha`);

--
-- Indexes for table `Testemunha_has_Audiencia`
--
ALTER TABLE `Testemunha_has_Audiencia`
  ADD PRIMARY KEY (`Testemunha_idTestemunha`,`Audiencia_idAudiencia`),
  ADD KEY `fk_Testemunha_has_Audiencia_Audiencia1_idx` (`Audiencia_idAudiencia`),
  ADD KEY `fk_Testemunha_has_Audiencia_Testemunha1_idx` (`Testemunha_idTestemunha`);

--
-- Indexes for table `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`idUsuarios`);

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
-- Limitadores para a tabela `Acusado_has_Audiencia`
--
ALTER TABLE `Acusado_has_Audiencia`
  ADD CONSTRAINT `fk_Acusado_has_Audiencia_Acusado1` FOREIGN KEY (`Acusado_idAcusado`) REFERENCES `Acusado` (`idAcusado`),
  ADD CONSTRAINT `fk_Acusado_has_Audiencia_Audiencia1` FOREIGN KEY (`Audiencia_idAudiencia`) REFERENCES `Audiencia` (`idaudiencia`);

--
-- Limitadores para a tabela `Advogado`
--
ALTER TABLE `Advogado`
  ADD CONSTRAINT `fk_Advogado_Usuarios1` FOREIGN KEY (`Usuarios_idUsuarios`) REFERENCES `Usuarios` (`idusuarios`);

--
-- Limitadores para a tabela `Cargos`
--
ALTER TABLE `Cargos`
  ADD CONSTRAINT `fk_Cargos_Cargos1` FOREIGN KEY (`idCargos_pai`) REFERENCES `Cargos` (`idcargos`);

--
-- Limitadores para a tabela `Comissao_has_Audiencia`
--
ALTER TABLE `Comissao_has_Audiencia`
  ADD CONSTRAINT `fk_Comissao_has_Audiencia_Audiencia1` FOREIGN KEY (`Audiencia_idAudiencia`) REFERENCES `Audiencia` (`idaudiencia`),
  ADD CONSTRAINT `fk_Comissao_has_Audiencia_Comissao1` FOREIGN KEY (`Comissao_idComissao`) REFERENCES `Comissao` (`idcomissao`);

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
-- Limitadores para a tabela `Processo_Disciplinar_has_Audiencia`
--
ALTER TABLE `Processo_Disciplinar_has_Audiencia`
  ADD CONSTRAINT `fk_Processo_Administrativo_Disciplinar_has_Audiencia1_Audiê1` FOREIGN KEY (`Audiencia_idAudiencia`) REFERENCES `Audiencia` (`idaudiencia`),
  ADD CONSTRAINT `fk_Processo_Administrativo_Disciplinar_has_Audiencia1_Proces1` FOREIGN KEY (`Processo_Disciplinar_idProcesso_Disciplinar`) REFERENCES `Processo_Disciplinar` (`idprocesso_disciplinar`);

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
  ADD CONSTRAINT `fk_Servidor_Usuarios1` FOREIGN KEY (`Usuarios_idUsuarios`) REFERENCES `Usuarios` (`idusuarios`);

--
-- Limitadores para a tabela `Testemunha_has_Audiencia`
--
ALTER TABLE `Testemunha_has_Audiencia`
  ADD CONSTRAINT `fk_Testemunha_has_Audiencia_Audiencia1` FOREIGN KEY (`Audiencia_idAudiencia`) REFERENCES `Audiencia` (`idaudiencia`),
  ADD CONSTRAINT `fk_Testemunha_has_Audiencia_Testemunha1` FOREIGN KEY (`Testemunha_idTestemunha`) REFERENCES `Testemunha` (`idtestemunha`);
COMMIT;

