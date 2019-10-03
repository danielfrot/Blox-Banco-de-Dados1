
# INSERINDO USUARIOS 
INSERT INTO `Usuarios` (`idUsuarios`, `email`, `senha`) VALUES
(1, 'ThaisBarbosaDias@dayrep.com ', 'iethu3Coh'),
(2, 'kauancastrogomes@einrot.com', 'chu8iSie9'),
(3, 'manuelaaraujocastro@jourrapide.com', 'oVah4ohd7'),
(4, 'gabrielmartinspereira@armyspy.com', 'eeNgee1ees1'),
(5, 'gabrielamartinsalmeida@fleckens.hu', 'Aibasieh5R'),
(6, 'jlkhhy@jnj', '65465'),
(7, 'çl@lkjb', '565454'),
(8, '2çlkjfd@çkjsdf', '2154'),
(9, 'uhudf@uhud', '32168'),
(10, 'krmkm3@sdfkg', '15164'),
(11, 'ttttt@asdfasd', '2sdf3260'),
(12, 'çlkjç@bosdfg', '084181'),
(13, 'rtrf@lkjh', '26565'),
(14, 'krmkm3@sdfkg', '15164'),
(15, 'asdf@asdfasd', '2321860'),
(16, 'nicolashgomescastro@gustr.com', 'eish1Ute5oog'),
(17, 'pedrocardosomartins@fleckens.hu', 'Gu9boh9oh'),
(18, 'larrykwhite@dayrep.com', 'rog1oR0tiesh'),
(19, 'brunoribeirosousa@fleckens.hu', 'aet8Rahp5f'),
(20, 'irmapmartin@fleckens.hu', 'deeyeeX3');

# INSERINDO ADVOGADOS
INSERT INTO `502IcakKEF`.`Advogado` (`idAdvogado`, `Nome`, `OAB`, `Contato`, `E-mail`, `Sexo`, `Cidade`, `Usuarios_idUsuarios`) VALUES
(1, 'DPE', '0000', '693555-5645', 'dpero@dpe.com ', 'M', 'Porto Velho', 1),
(2, 'Kauan Gomes', '5809', '5997-6923', 'kauancastrogomes@einrot.com', 'M', 'Porto Velho', 2),
(3, 'Manuela Castro', '6175', '5094-9230', 'manuelaaraujocastro@jourrapide.com', 'F', 'Vilhena', 3),
(4, 'Gabriel Pereira', '4333', '4432-7060', 'gabrielmartinspereira@armyspy.com', 'M', 'Vilhena', 4),
(5, 'Gabriela Almeida', '9594', '6127-7892', 'gabrielamartinsalmeida@fleckens.hu', 'F', 'Porto Velho', 5),
(6, 'João Alfredo', '5555', '32115555', 'joao@gmail.com', 'M', 'Fortaleza', 6),
(7, 'Diego Almeida da Cruz', '4444', '32114547', 'diogoac@gmail.com', 'M', 'Porto Velho', 7),
(8, 'Roberto Sobrinho', '3333', '44458888', 'rober@gmail.com', 'M', 'Porto Velho', 8),
(9, 'Maria da Silva', '9999', '32225555', 'maria@gmail.com', 'F', 'Candeias', 9),
(10, 'Juliana Alves', '8766', '32115447', 'ju@gmail.com', 'F', 'Porto Velho', 10),
(11, 'Thaís Barbosa Dias', '6684', '695485-5614', 'ThaisBarbosaDias@dayrep.com ', 'F', 'Porto Velho', 11);

# INSERINDO CARGOS
INSERT INTO `502IcakKEF`.`Cargos` (`idCargos`, `idCargos_pai`, `Cargos`, `Descricao`) VALUES
(1, 1, 'Governador', 'cargo máximo do Estado'),
(2, 1, 'Secretário de Estado', 'cargo máximo de uma secretaria'),
(3, 2, 'Coordenador', 'badeco do secretário'),
(4, 3, 'Gerente Regional', 'badeco do coordenador'),
(5, 3, 'Diretor Geral', 'badeco do gerente regional e do coordenador'),
(6, 5, 'Diretor de Segurança', 'badeco do diretor geral'),
(7, 6, 'Chefe de Plantão', 'badeco do diretor de segurança e do geral'),
(8, 5, 'Comissariado', 'badeco do diretor geral'),
(9, 5, 'Armeiro', 'badeco do diretor geral'),
(10, 6, 'Plantonista', 'badeco do chefe de plantao'),
(11, 3, 'Chefe do Núcleo de PADI', 'badeco do coordenador'),
(12, 11, 'Presidente de Comissão', 'badeco do chefe do núcleo'),
(13, 12, 'Membros de Comissão', 'badeco do presidente de comissão');

# INSERINDO COMISSÕES
INSERT INTO `Comissao` (`idComissao`, `Comissao`, `Funcao`) VALUES
(1, '1ª Comissão', 'Instrução de Processos'),
(2, '2ª Comissão', 'Instrução de Processos e Diligências'),
(3, '3ª Comissão', 'Diligências'),
(4, '4ª Comissão', 'Instrução de Processos');

# INSERINDO ACUSADOS
INSERT INTO `Acusado` (`idAcusado`, `Nome`, `Execucao`, `Sexo`, `Nascimento`, `Pai`, `Mae`, `Idade`) VALUES
(1, 'Fernando Beiramar', '9223455645678', 'Masculino', '1970-04-04', 'Augusto Beiramar', 'Maria Beiramar', 35),
(2, 'Marcola da Paz', '00010012456', 'Masculino', '1960-10-09', 'Marcolino da paz', 'Josefa de Alencar', 35),
(3, 'Alphonse Capone', '10000123456', 'Masculino', '1940-10-20', 'Giusepe garibald', 'Clementina das dores', 49),
(4, 'Robin Hood', '100000456789', 'Masculino', '1840-10-15', 'Robin whaks', 'slim shaddy', 29),
(5, 'Bonnie Elizabeth Parker', '102222123456', 'Feminino', '1910-10-01', 'Piter Parker ', 'Elizabeth Parker ', 25),
(6, 'Clyde Chestnut Barrow', '1234555640000', 'Masculino', '1909-03-24', 'Joel Chestnut Barrow', 'margaret Chestnut Barrow', 27);

# INSERINDO ASSUNTO 
INSERT INTO `Assunto` (`idAssunto`, `Assunto`) VALUES
(1, 'Fuga do Fechado'),
(2, 'Tentativa de Fuga'),
(3, 'Evasão do semi-aberto'),
(4, 'Celular'),
(5, 'Droga'),
(6, 'Ameaça'),
(7, 'Agressão'),
(8, 'Dano ao Patrimônio'),
(9, 'Violação do Monitoramento');

# INSERINDO SERVIDORES
INSERT INTO `502IcakKEF`.`Servidor` (`idServidor`, `Nome`, `Matricula`, `Escala de Servico`, `Cargos_idCargos`, `Usuarios_idUsuarios`, `Comissao_idComissao`, `Sexo`, `Cidade`) VALUES
(1, 'Alex', '300456816', 'A', 12, 12, 1, 'M', 'Porto Velho'),
(2, 'Gustavo', '300554667', 'A', 12, 13, 2, 'M', 'Porto Velho'),
(3, 'Bruno', '300545267', 'B', 13, 14, 1, 'M', 'Porto Velho'),
(4, 'Felipe', '300451919', 'C', 13, 15, 1, 'M', 'Porto Velho'),
(5, 'Davi', '300017995', 'D', 13, 16, 2, 'M', 'Porto Velho');

# INSERINDO AUDIÊNCIAS
INSERT INTO `Audiencia` (`idAudiencia`, `Data`, `Hora`, `Realizada`) VALUES
(1, '2019-10-14', '08:00:00', NULL),
(2, '2019-10-15', '08:00:00', NULL),
(3, '2019-10-18', '08:00:00', NULL),
(4, '2019-10-20', '08:00:00', NULL),
(5, '2019-10-25', '08:00:00', NULL),
(6, '2019-11-05', '08:00:00', NULL),
(7, '2019-11-06', '08:00:00', NULL),
(8, '2019-11-10', '08:00:00', NULL),
(9, '2019-11-12', '08:00:00', NULL);
