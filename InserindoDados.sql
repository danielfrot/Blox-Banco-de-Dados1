
# INSERINDO USUARIOS 
INSERT INTO `Usuarios` (`idUsuarios`, `email`, `senha`) VALUES
(1, 'ThaisBarbosaDias@dayrep.com ', 'iethu3Coh'),
(2, 'kauancastrogomes@einrot.com', 'chu8iSie9'),
(3, 'manuelaaraujocastro@jourrapide.com', 'oVah4ohd7'),
(4, 'gabrielmartinspereira@armyspy.com', 'eeNgee1ees1'),
(5, 'gabrielamartinsalmeida@fleckens.hu', 'Aibasieh5R');
(6, 'jlkhhy@jnj', '65465');
(7, 'çl@lkjb', '565454');
(8, '2çlkjfd@çkjsdf', '2154');
(9, 'uhudf@uhud', '32168');
(10, 'krmkm3@sdfkg', '15164');
(11, 'asdf@asdfasd', '2321860');
(12, 'çlkjç@bosdfg', '084181');
(13, 'rtrf@lkjh', '26565');

# INSERINDO ADVOGADOS
INSERT INTO `502IcakKEF`.`Advogado` (`idAdvogado`, `Nome`, `OAB`, `Contato`, `E-mail`, `Sexo`, `Cidade`, `Usuários_idUsuários`) VALUES
(1, 'Thaís Barbosa Dias', '6684', '695485-5614', 'ThaisBarbosaDias@dayrep.com ', 'F', 'Porto Velho', 1),
(2, 'Kauan Gomes', '5809', '5997-6923', 'kauancastrogomes@einrot.com', 'M', 'Porto Velho', 2),
(3, 'Manuela Castro', '6175', '5094-9230', 'manuelaaraujocastro@jourrapide.com', 'F', 'Vilhena', 3),
(4, 'Gabriel Pereira', '4333', '4432-7060', 'gabrielmartinspereira@armyspy.com', 'M', 'Vilhena', 4),
(5, 'Gabriela Almeida', '9594', '6127-7892', 'gabrielamartinsalmeida@fleckens.hu', 'F', 'Porto Velho', 5);
(6, 'João Alfredo', '5555', '32115555', 'joao@gmail.com', 'M', 'Fortaleza', 6);
(7, 'Daniel Frota', '4444', '32114547', 'daniel@gmail.com', 'M', 'Porto Velho', 7);
(8, 'Roberto Sobrinho', '3333', '44458888', 'rober@gmail.com', 'M', 'Porto Velho', 8);
(9, 'Maria da Silva', '9999', '32225555', 'maria@gmail.com', 'F', 'Candeias', 9);
(10, 'Juliana Alves', '8766', '32115447', 'ju@gmail.com', 'F', 'Porto Velho', 10);

# INSERINDO SERVIDORES
INSERT INTO `502IcakKEF`.`Servidor` (`idServidor`, `Nome`, `Matricula`, `Escala de Serviço`, `Cargos_idCargos`, `Usuarios_idUsuarios`, `Comissao_idComissao`, `Sexo`, `Cidade`) VALUES
(DEFAULT, 'Alex', '300456816', 'A', DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
(DEFAULT, 'Gustavo', '300554667', 'A', DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
(DEFAULT, 'Bruno', '300545267', 'B', DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
(DEFAULT, 'Felipe', '300451919', 'C', DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
(DEFAULT, 'Davi', '300017995', 'D', DEFAULT, DEFAULT, DEFAULT, NULL, NULL);

# INSERINDO CARGOS
INSERT INTO `502IcakKEF`.`Cargos` (`idCargos`, `idCargos_pai`, `Cargos`, `Descricao`) VALUES
(1, NULL, 'Governador', 'cargo máximo do Estado');
(2, 1, 'Secretário de Estado', 'cargo máximo de uma secretaria');
(3, 2, 'Coordenador', NULL);
(4, 3, 'Gerente Regional', NULL);
(5, 3, 'Diretor Geral', NULL);
(6, 5, 'Diretor de Segurança', NULL);
(7, 6, 'Chefe de Plantão', NULL);
(8, 5, 'Comissariado', NULL);
(9, 5, 'Armeiro', NULL);
(10, 6, 'Plantonista', NULL);
(11, 3, 'Núcleo de PADI', NULL);
(12, 11, 'Presidente de Comissão', NULL);
(13, 12, 'Membros de Comissão', NULL);

# INSERINDO COMISSÕES
INSERT INTO `Comissao` (`idComissao`, `Membros`, `Funcao`) VALUES ('3', '3ª Comissão', 'Diligências'), ('4', '4ª Comissão', 'Instrução de Processos');