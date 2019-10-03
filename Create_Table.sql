-- -----------------------------------------------------
-- Table `502IcakKEF`.`Cargos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `502IcakKEF`.`Cargos` (
  `idCargos` INT NOT NULL AUTO_INCREMENT,
  `idCargos_pai` INT NOT NULL,
  `Cargos` VARCHAR(45) NULL,
  `Descricao` VARCHAR(45) NULL,
  PRIMARY KEY (`idCargos`, `idCargos_pai`),
  CONSTRAINT `fk_Cargos_Cargos1`
    FOREIGN KEY (`idCargos_pai`)
    REFERENCES `502IcakKEF`.`Cargos` (`idCargos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE INDEX `fk_Cargos_Cargos1_idx` ON `502IcakKEF`.`Cargos` (`idCargos_pai` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `502IcakKEF`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `502IcakKEF`.`Usuarios` (
  `idUsuarios` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NULL,
  `senha` VARCHAR(45) NULL,
  PRIMARY KEY (`idUsuarios`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `502IcakKEF`.`Comissao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `502IcakKEF`.`Comissao` (
  `idComissao` INT NOT NULL AUTO_INCREMENT,
  `Comissao` VARCHAR(45) NULL,
  `Funcao` VARCHAR(45) NULL,
  PRIMARY KEY (`idComissao`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `502IcakKEF`.`Servidor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `502IcakKEF`.`Servidor` (
  `idServidor` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NULL,
  `Matricula` VARCHAR(45) NULL,
  `Escala de Servico` VARCHAR(45) NULL,
  `Cargos_idCargos` INT NOT NULL,
  `Usuarios_idUsuarios` INT NOT NULL,
  `Comissao_idComissao` INT NOT NULL,
  `Sexo` VARCHAR(45) NULL,
  `Cidade` VARCHAR(45) NULL,
  PRIMARY KEY (`idServidor`, `Cargos_idCargos`, `Usuarios_idUsuarios`, `Comissao_idComissao`),
  CONSTRAINT `fk_Servidor_Cargos1`
    FOREIGN KEY (`Cargos_idCargos`)
    REFERENCES `502IcakKEF`.`Cargos` (`idCargos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Servidor_Usuarios1`
    FOREIGN KEY (`Usuarios_idUsuarios`)
    REFERENCES `502IcakKEF`.`Usuarios` (`idUsuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Servidor_Comissao1`
    FOREIGN KEY (`Comissao_idComissao`)
    REFERENCES `502IcakKEF`.`Comissao` (`idComissao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE INDEX `fk_Servidor_Cargos1_idx` ON `502IcakKEF`.`Servidor` (`Cargos_idCargos` ASC) VISIBLE;
CREATE INDEX `fk_Servidor_Usuarios1_idx` ON `502IcakKEF`.`Servidor` (`Usuarios_idUsuarios` ASC) VISIBLE;
CREATE INDEX `fk_Servidor_Comissao1_idx` ON `502IcakKEF`.`Servidor` (`Comissao_idComissao` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `502IcakKEF`.`Processo_Disciplinar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `502IcakKEF`.`Processo_Disciplinar` (
  `idProcesso_Disciplinar` INT NOT NULL AUTO_INCREMENT,
  `Processo_SEI` VARCHAR(45) NOT NULL,
  `Numero_PADI` VARCHAR(45) NOT NULL,
  `Relatorio_Seg` VARCHAR(45) NULL,
  `Resultado` VARCHAR(45) NULL,
  `Comissao_idComissao` INT NOT NULL,
  PRIMARY KEY (`idProcesso_Disciplinar`, `Comissao_idComissao`),
  CONSTRAINT `fk_Processo_Disciplinar_Comissao1`
    FOREIGN KEY (`Comissao_idComissao`)
    REFERENCES `502IcakKEF`.`Comissao` (`idComissao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE INDEX `fk_Processo_Disciplinar_Comissao1_idx` ON `502IcakKEF`.`Processo_Disciplinar` (`Comissao_idComissao` ASC) VISIBLE;
CREATE UNIQUE INDEX `Numero_PADI_UNIQUE` ON `502IcakKEF`.`Processo_Disciplinar` (`Numero_PADI` ASC) VISIBLE;
CREATE UNIQUE INDEX `Processo_SEI_UNIQUE` ON `502IcakKEF`.`Processo_Disciplinar` (`Processo_SEI` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `502IcakKEF`.`Advogado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `502IcakKEF`.`Advogado` (
  `idAdvogado` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NOT NULL,
  `OAB` VARCHAR(45) NOT NULL,
  `Contato` VARCHAR(45) NOT NULL,
  `E-mail` VARCHAR(45) NOT NULL,
  `Sexo` VARCHAR(1) NOT NULL,
  `Cidade` VARCHAR(45) NOT NULL,
  `Usuarios_idUsuarios` INT NOT NULL,
  PRIMARY KEY (`idAdvogado`, `Usuarios_idUsuarios`),
  CONSTRAINT `fk_Advogado_Usuarios1`
    FOREIGN KEY (`Usuarios_idUsuarios`)
    REFERENCES `502IcakKEF`.`Usuarios` (`idUsuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE UNIQUE INDEX `OAB_UNIQUE` ON `502IcakKEF`.`Advogado` (`OAB` ASC) VISIBLE;
CREATE INDEX `fk_Advogado_Usuarios1_idx` ON `502IcakKEF`.`Advogado` (`Usuarios_idUsuarios` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `502IcakKEF`.`Acusado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `502IcakKEF`.`Acusado` (
  `idAcusado` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NULL,
  `Execucao` VARCHAR(45) NULL,
  `Sexo` VARCHAR(45) NULL,
  `Nascimento` DATE NULL,
  `Pai` VARCHAR(45) NULL,
  `Mae` VARCHAR(45) NULL,
  `Idade` INT NULL,
  PRIMARY KEY (`idAcusado`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `502IcakKEF`.`Assunto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `502IcakKEF`.`Assunto` (
  `idAssunto` INT NOT NULL AUTO_INCREMENT,
  `Assunto` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idAssunto`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `502IcakKEF`.`Requerimentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `502IcakKEF`.`Requerimentos` (
  `idtable1` INT NOT NULL AUTO_INCREMENT,
  `Tipo_Documento` VARCHAR(45) NULL,
  `Numero` VARCHAR(45) NULL,
  `Data` DATE NULL,
  PRIMARY KEY (`idtable1`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `502IcakKEF`.`Acusado_has_Processo_Disciplinar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `502IcakKEF`.`Acusado_has_Processo_Disciplinar` (
  `Acusado_idAcusado` INT NOT NULL,
  `Processo_Disciplinar_idProcesso_Disciplinar` INT NOT NULL,
  PRIMARY KEY (`Acusado_idAcusado`, `Processo_Disciplinar_idProcesso_Disciplinar`),
  CONSTRAINT `fk_Acusado_has_Processo_Disciplinar_Acusado1`
    FOREIGN KEY (`Acusado_idAcusado`)
    REFERENCES `502IcakKEF`.`Acusado` (`idAcusado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Acusado_has_Processo_Disciplinar_Processo_A1`
    FOREIGN KEY (`Processo_Disciplinar_idProcesso_Disciplinar`)
    REFERENCES `502IcakKEF`.`Processo_Disciplinar` (`idProcesso_Disciplinar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE INDEX `fk_Acusado_has_Processo_Disciplinar_Processo_idx` ON `502IcakKEF`.`Acusado_has_Processo_Disciplinar` (`Processo_Disciplinar_idProcesso_Disciplinar` ASC) VISIBLE;
CREATE INDEX `fk_Acusado_has_Processo_Disciplinar_Acusado1_idx` ON `502IcakKEF`.`Acusado_has_Processo_Disciplinar` (`Acusado_idAcusado` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `502IcakKEF`.`Acusado_has_Advogado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `502IcakKEF`.`Acusado_has_Advogado` (
  `Acusado_idAcusado` INT NOT NULL,
  `Advogado_idAdvogado` INT NOT NULL,
  PRIMARY KEY (`Acusado_idAcusado`, `Advogado_idAdvogado`),
  CONSTRAINT `fk_Acusado_has_Advogado_Acusado1`
    FOREIGN KEY (`Acusado_idAcusado`)
    REFERENCES `502IcakKEF`.`Acusado` (`idAcusado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Acusado_has_Advogado_Advogado1`
    FOREIGN KEY (`Advogado_idAdvogado`)
    REFERENCES `502IcakKEF`.`Advogado` (`idAdvogado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE INDEX `fk_Acusado_has_Advogado_Advogado1_idx` ON `502IcakKEF`.`Acusado_has_Advogado` (`Advogado_idAdvogado` ASC) VISIBLE;
CREATE INDEX `fk_Acusado_has_Advogado_Acusado1_idx` ON `502IcakKEF`.`Acusado_has_Advogado` (`Acusado_idAcusado` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `502IcakKEF`.`Processo_Disciplinar_has_Assunto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `502IcakKEF`.`Processo_Disciplinar_has_Assunto` (
  `Processo_Disciplinar_idProcesso_Disciplinar` INT NOT NULL,
  `Assunto_idAssunto` INT NOT NULL,
  PRIMARY KEY (`Processo_Disciplinar_idProcesso_Disciplinar`, `Assunto_idAssunto`),
  CONSTRAINT `fk_Processo_Disciplinar_has_Assunto_Processo_A1`
    FOREIGN KEY (`Processo_Disciplinar_idProcesso_Disciplinar`)
    REFERENCES `502IcakKEF`.`Processo_Disciplinar` (`idProcesso_Disciplinar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Processo_Disciplinar_has_Assunto_Assunto1`
    FOREIGN KEY (`Assunto_idAssunto`)
    REFERENCES `502IcakKEF`.`Assunto` (`idAssunto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE INDEX `fk_Processo_Disciplinar_has_Assunto_Assunto1_idx` ON `502IcakKEF`.`Processo_Disciplinar_has_Assunto` (`Assunto_idAssunto` ASC) VISIBLE;
CREATE INDEX `fk_Processo_Disciplinar_has_Assunto_Processo_idx` ON `502IcakKEF`.`Processo_Disciplinar_has_Assunto` (`Processo_Disciplinar_idProcesso_Disciplinar` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `502IcakKEF`.`Testemunha`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `502IcakKEF`.`Testemunha` (
  `idTestemunha` INT NOT NULL AUTO_INCREMENT,
  `Testemunha` VARCHAR(45) NOT NULL,
  `Matricula` VARCHAR(45) NULL,
  PRIMARY KEY (`idTestemunha`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `502IcakKEF`.`Audiencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `502IcakKEF`.`Audiencia` (
  `idAudiencia` INT NOT NULL AUTO_INCREMENT,
  `Data` DATE NOT NULL,
  `Hora` TIME NULL,
  `Realizada` TINYINT NULL,
  PRIMARY KEY (`idAudiencia`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `502IcakKEF`.`Testemunha_has_Audiencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `502IcakKEF`.`Testemunha_has_Audiencia` (
  `Testemunha_idTestemunha` INT NOT NULL,
  `Audiencia_idAudiencia` INT NOT NULL,
  PRIMARY KEY (`Testemunha_idTestemunha`, `Audiencia_idAudiencia`),
  CONSTRAINT `fk_Testemunha_has_Audiencia_Testemunha1`
    FOREIGN KEY (`Testemunha_idTestemunha`)
    REFERENCES `502IcakKEF`.`Testemunha` (`idTestemunha`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Testemunha_has_Audiencia_Audiencia1`
    FOREIGN KEY (`Audiencia_idAudiencia`)
    REFERENCES `502IcakKEF`.`Audiencia` (`idAudiencia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE INDEX `fk_Testemunha_has_Audiencia_Audiencia1_idx` ON `502IcakKEF`.`Testemunha_has_Audiencia` (`Audiencia_idAudiencia` ASC) VISIBLE;
CREATE INDEX `fk_Testemunha_has_Audiencia_Testemunha1_idx` ON `502IcakKEF`.`Testemunha_has_Audiencia` (`Testemunha_idTestemunha` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `502IcakKEF`.`Processo_Disciplinar_has_Testemunha`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `502IcakKEF`.`Processo_Disciplinar_has_Testemunha` (
  `Testemunha_idTestemunha` INT NOT NULL,
  `Processo_Disciplinar_idProcesso_Disciplinar` INT NOT NULL,
  PRIMARY KEY (`Testemunha_idTestemunha`, `Processo_Disciplinar_idProcesso_Disciplinar`),
  CONSTRAINT `fk_Testemunha_has_Processo_Disciplinar_Testemu1`
    FOREIGN KEY (`Testemunha_idTestemunha`)
    REFERENCES `502IcakKEF`.`Testemunha` (`idTestemunha`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Testemunha_has_Processo_Disciplinar_Process1`
    FOREIGN KEY (`Processo_Disciplinar_idProcesso_Disciplinar`)
    REFERENCES `502IcakKEF`.`Processo_Disciplinar` (`idProcesso_Disciplinar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE INDEX `fk_Testemunha_has_Processo_Disciplinar_Proce_idx` ON `502IcakKEF`.`Processo_Disciplinar_has_Testemunha` (`Processo_Disciplinar_idProcesso_Disciplinar` ASC) VISIBLE;
CREATE INDEX `fk_Testemunha_has_Processo_Disciplinar_Teste_idx` ON `502IcakKEF`.`Processo_Disciplinar_has_Testemunha` (`Testemunha_idTestemunha` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `502IcakKEF`.`Processo_Disciplinar_has_Audiencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `502IcakKEF`.`Processo_Disciplinar_has_Audiencia` (
  `Processo_Disciplinar_idProcesso_Disciplinar` INT NOT NULL,
  `Audiencia_idAudiencia` INT NOT NULL,
  PRIMARY KEY (`Processo_Disciplinar_idProcesso_Disciplinar`, `Audiencia_idAudiencia`),
  CONSTRAINT `fk_Processo_Disciplinar_has_Audiencia1_Proces1`
    FOREIGN KEY (`Processo_Disciplinar_idProcesso_Disciplinar`)
    REFERENCES `502IcakKEF`.`Processo_Disciplinar` (`idProcesso_Disciplinar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Processo_Disciplinar_has_Audiencia1_Audiê1`
    FOREIGN KEY (`Audiencia_idAudiencia`)
    REFERENCES `502IcakKEF`.`Audiencia` (`idAudiencia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE INDEX `fk_Processo_Disciplinar_has_Audiencia1_Audi_idx` ON `502IcakKEF`.`Processo_Disciplinar_has_Audiencia` (`Audiencia_idAudiencia` ASC) VISIBLE;
CREATE INDEX `fk_Processo_Disciplinar_has_Audiencia1_Proc_idx` ON `502IcakKEF`.`Processo_Disciplinar_has_Audiencia` (`Processo_Disciplinar_idProcesso_Disciplinar` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `502IcakKEF`.`Acusado_has_Audiencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `502IcakKEF`.`Acusado_has_Audiencia` (
  `Acusado_idAcusado` INT NOT NULL,
  `Audiencia_idAudiencia` INT NOT NULL,
  PRIMARY KEY (`Acusado_idAcusado`, `Audiencia_idAudiencia`),
  CONSTRAINT `fk_Acusado_has_Audiencia_Acusado1`
    FOREIGN KEY (`Acusado_idAcusado`)
    REFERENCES `502IcakKEF`.`Acusado` (`idAcusado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Acusado_has_Audiencia_Audiencia1`
    FOREIGN KEY (`Audiencia_idAudiencia`)
    REFERENCES `502IcakKEF`.`Audiencia` (`idAudiencia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE INDEX `fk_Acusado_has_Audiencia_Audiencia1_idx` ON `502IcakKEF`.`Acusado_has_Audiencia` (`Audiencia_idAudiencia` ASC) VISIBLE;
CREATE INDEX `fk_Acusado_has_Audiencia_Acusado1_idx` ON `502IcakKEF`.`Acusado_has_Audiencia` (`Acusado_idAcusado` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `502IcakKEF`.`Comissao_has_Audiencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `502IcakKEF`.`Comissao_has_Audiencia` (
  `Comissao_idComissao` INT NOT NULL,
  `Audiencia_idAudiencia` INT NOT NULL,
  PRIMARY KEY (`Comissao_idComissao`, `Audiencia_idAudiencia`),
  CONSTRAINT `fk_Comissao_has_Audiencia_Comissao1`
    FOREIGN KEY (`Comissao_idComissao`)
    REFERENCES `502IcakKEF`.`Comissao` (`idComissao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Comissao_has_Audiencia_Audiencia1`
    FOREIGN KEY (`Audiencia_idAudiencia`)
    REFERENCES `502IcakKEF`.`Audiencia` (`idAudiencia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE INDEX `fk_Comissao_has_Audiencia_Audiencia1_idx` ON `502IcakKEF`.`Comissao_has_Audiencia` (`Audiencia_idAudiencia` ASC) VISIBLE;
CREATE INDEX `fk_Comissao_has_Audiencia_Comissao1_idx` ON `502IcakKEF`.`Comissao_has_Audiencia` (`Comissao_idComissao` ASC) VISIBLE;
