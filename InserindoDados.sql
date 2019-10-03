
# INSERINDO USUARIOS 
INSERT INTO `Usuarios` (`idUsuarios`, `email`, `senha`) VALUES
(NULL, 'ThaisBarbosaDias@dayrep.com ', 'iethu3Coh'),
(NULL, 'kauancastrogomes@einrot.com', 'chu8iSie9'),
(NULL, 'manuelaaraujocastro@jourrapide.com', 'oVah4ohd7'),
(NULL, 'gabrielmartinspereira@armyspy.com', 'eeNgee1ees1'),
(NULL, 'gabrielamartinsalmeida@fleckens.hu', 'Aibasieh5R'),
(NULL, 'jlkhhy@jnj', '65465'),
(NULL, 'çl@lkjb', '565454'),
(NULL, '2çlkjfd@çkjsdf', '2154'),
(NULL, 'uhudf@uhud', '32168'),
(NULL, 'krmkm3@sdfkg', '15164'),
(NULL, 'ttttt@asdfasd', '2sdf3260'),
(NULL, 'çlkjç@bosdfg', '084181'),
(NULL, 'rtrf@lkjh', '26565'),
(NULL, 'krmkm3@sdfkg', '15164'),
(NULL, 'asdf@asdfasd', '2321860'),
(NULL, 'nicolashgomescastro@gustr.com', 'eish1Ute5oog'),
(NULL, 'pedrocardosomartins@fleckens.hu', 'Gu9boh9oh'),
(NULL, 'larrykwhite@dayrep.com', 'rog1oR0tiesh'),
(NULL, 'brunoribeirosousa@fleckens.hu', 'aet8Rahp5f'),
(NULL, 'irmapmartin@fleckens.hu', 'deeyeeX3');

# INSERINDO ADVOGADOS
INSERT INTO `502IcakKEF`.`Advogado` (`idAdvogado`, `Nome`, `OAB`, `Contato`, `E-mail`, `Sexo`, `Cidade`, `Usuarios_idUsuarios`) VALUES
(NULL, 'DPE', '0000', '693555-5645', 'dpero@dpe.com ', 'M', 'Porto Velho', 1),
(NULL, 'Kauan Gomes', '5809', '5997-6923', 'kauancastrogomes@einrot.com', 'M', 'Porto Velho', 2),
(NULL, 'Manuela Castro', '6175', '5094-9230', 'manuelaaraujocastro@jourrapide.com', 'F', 'Vilhena', 3),
(NULL, 'Gabriel Pereira', '4333', '4432-7060', 'gabrielmartinspereira@armyspy.com', 'M', 'Vilhena', 4),
(NULL, 'Gabriela Almeida', '9594', '6127-7892', 'gabrielamartinsalmeida@fleckens.hu', 'F', 'Porto Velho', 5),
(NULL, 'João Alfredo', '5555', '32115555', 'joao@gmail.com', 'M', 'Fortaleza', 6),
(NULL, 'Diego Almeida da Cruz', '4444', '32114547', 'diogoac@gmail.com', 'M', 'Porto Velho', 7),
(NULL, 'Roberto Sobrinho', '3333', '44458888', 'rober@gmail.com', 'M', 'Porto Velho', 8),
(NULL, 'Maria da Silva', '9999', '32225555', 'maria@gmail.com', 'F', 'Candeias', 9),
(NULL, 'Juliana Alves', '8766', '32115447', 'ju@gmail.com', 'F', 'Porto Velho', 10),
(NULL, 'Thaís Barbosa Dias', '6684', '695485-5614', 'ThaisBarbosaDias@dayrep.com ', 'F', 'Porto Velho', 11);

# INSERINDO CARGOS
INSERT INTO `502IcakKEF`.`Cargos` (`idCargos`, `idCargos_pai`, `Cargos`, `Descricao`) VALUES
(NULL, 1, 'Governador', 'cargo máximo do Estado'),
(NULL, 1, 'Secretário de Estado', 'badeco do governador'),
(NULL, 2, 'Coordenador', 'badeco do secretário'),
(NULL, 3, 'Gerente Regional', 'badeco do coordenador'),
(NULL, 3, 'Diretor Geral', 'badeco do gerente regional e do coordenador'),
(NULL, 5, 'Diretor de Segurança', 'badeco do diretor geral'),
(NULL, 6, 'Chefe de Plantão', 'badeco do diretor de segurança e do geral'),
(NULL, 5, 'Comissariado', 'badeco do diretor geral'),
(NULL, 5, 'Armeiro', 'badeco do diretor geral'),
(NULL, 6, 'Plantonista', 'badeco do chefe de plantao'),
(NULL, 3, 'Chefe do Núcleo de PADI', 'badeco do coordenador'),
(NULL, 11, 'Presidente de Comissão', 'badeco do chefe do núcleo'),
(NULL, 12, 'Membros de Comissão', 'badeco do presidente de comissão');

# INSERINDO COMISSÕES
INSERT INTO `Comissao` (`idComissao`, `Comissao`, `Funcao`) VALUES
(NULL, '1ª Comissão', 'Instrução de Processos'),
(NULL, '2ª Comissão', 'Instrução de Processos e Diligências'),
(NULL, '3ª Comissão', 'Diligências'),
(NULL, '4ª Comissão', 'Instrução de Processos'),
(NULL, 'Sem comissão', 'servidor de unidade');

# INSERINDO ACUSADOS
INSERT INTO `Acusado` (`idAcusado`, `Nome`, `Execucao`, `Sexo`, `Nascimento`, `Pai`, `Mae`, `Idade`) VALUES
(NULL, 'Fernando Beiramar', '9223455645678', 'M', '1970-04-04', 'Augusto Beiramar', 'Maria Beiramar', 35),
(NULL, 'Marcola da Paz', '00010012456', 'M', '1960-10-09', 'Marcolino da paz', 'Josefa de Alencar', 35),
(NULL, 'Alphonse Capone', '10000123456', 'M', '1940-10-20', 'Giusepe garibald', 'Clementina das dores', 49),
(NULL, 'Robin Hood', '100000456789', 'M', '1840-10-15', 'Robin whaks', 'slim shaddy', 29),
(NULL, 'Bonnie Elizabeth Parker', '102222123456', 'F', '1910-10-01', 'Piter Parker ', 'Elizabeth Parker ', 25),
(NULL, 'Clyde Chestnut Barrow', '1234555640000', 'M', '1909-03-24', 'Joel Chestnut Barrow', 'margaret Chestnut Barrow', 27);

# INSERINDO ASSUNTO 
INSERT INTO `Assunto` (`idAssunto`, `Assunto`) VALUES
(NULL, 'Fuga do Fechado'),
(NULL, 'Tentativa de Fuga'),
(NULL, 'Evasão do semi-aberto'),
(NULL, 'Celular'),
(NULL, 'Droga'),
(NULL, 'Ameaça'),
(NULL, 'Agressão'),
(NULL, 'Dano ao Patrimônio'),
(NULL, 'Violação do Monitoramento');

# INSERINDO SERVIDORES
INSERT INTO `502IcakKEF`.`Servidor` (`idServidor`, `Nome`, `Matricula`, `Escala de Servico`, `Cargos_idCargos`, `Usuarios_idUsuarios`, `Comissao_idComissao`, `Sexo`, `Cidade`) VALUES
(NULL, 'Alex', '300456816', 'A', 12, 12, 1, 'M', 'Porto Velho'),
(NULL, 'Gustavo', '300554667', 'A', 12, 13, 2, 'M', 'Porto Velho'),
(NULL, 'Bruno', '300545267', 'B', 13, 14, 1, 'M', 'Porto Velho'),
(NULL, 'Felipe', '300451919', 'C', 9, 15, 5, 'M', 'Porto Velho'),
(NULL, 'Aroldo', '300545267', 'B', 9, 16, 5, 'M', 'Vilhena'),
(NULL, 'Márcia', '300451919', 'C', 13, 17, 1, 'F', 'Porto Velho'),
(NULL, 'Aline', '300545267', 'B', 9, 18, 5, 'F', 'Vilhena'),
(NULL, 'Letícia', '300451919', 'C', 9, 19, 5, 'F', 'Porto Velho'),
(NULL, 'Davi', '300017995', 'D', 13, 20, 2, 'M', 'Porto Velho');


# INSERINDO AUDIÊNCIAS
INSERT INTO `Audiencia` (`idAudiencia`, `Data`, `Hora`, `Realizada`) VALUES
(NULL, '2019-10-14', '08:00:00', NULL),
(NULL, '2019-10-15', '08:00:00', NULL),
(NULL, '2019-10-18', '08:00:00', NULL),
(NULL, '2019-10-15', '09:30:00', NULL),
(NULL, '2019-10-15', '08:30:00', NULL),
(NULL, '2019-10-18', '10:40:00', NULL),
(NULL, '2019-10-20', '08:00:00', NULL),
(NULL, '2019-10-25', '08:00:00', NULL),
(NULL, '2019-11-05', '08:00:00', NULL),
(NULL, '2019-11-06', '08:00:00', NULL),
(NULL, '2019-11-10', '08:00:00', NULL),
(NULL, '2019-11-05', '09:00:00', NULL),
(NULL, '2019-11-06', '09:00:00', NULL),
(NULL, '2019-11-10', '09:00:00', NULL),
(NULL, '2019-11-05', '10:00:00', NULL),
(NULL, '2019-11-06', '10:00:00', NULL),
(NULL, '2019-11-10', '10:00:00', NULL),
(NULL, '2019-11-12', '08:00:00', NULL);

# INSERINDO TESTEMUNHAS
INSERT INTO `Testemunha` (`idTestemunha`, `Testemunha`, `Matricula`) VALUES
(NULL, 'Charles Chaplim', '5454459'),
(NULL, 'Gustavo Lima', '59595'),
(NULL, 'Marília Mendonça', '848484'),
(NULL, 'Jack Chain', '010065'),
(NULL, 'Gustavo Guanabara', '010101'),
(NULL, 'Valéria Nunes', '55555'),
(NULL, 'Jota Quest', '66666'),
(NULL, 'Capital Inicial', '88888');

# INSERINDO PROCESSOS
INSERT INTO `Processo_Disciplinar` (`idProcesso_Disciplinar`, `Processo_SEI`, `Numero_PADI`, `Relatorio_Seg`, `Resultado`, `Comissao_idComissao`) VALUES
(NULL, '0033.451555/2018-76', '0140/2019', '14/2018/CRVG', NULL, 1),
(NULL, '0033.451545/2018-76', '0114/2019', '22/2018/PMP', NULL, 1),
(NULL, '0033.554545/2018-76', '1255/2019', '78/2018/CRVG', NULL, 2),
(NULL, '0033.787885/2018-76', '1124/2019', '02/2018/PEMR', NULL, 2),
(NULL, '0033.111155/2018-76', '1035/2019', '36/2018/PEMR', NULL, 2),
(NULL, '0033.888788/2018-76', '0254/2019', '95/2018/CDJMAS', NULL, 1),
(NULL, '0033.943334/2018-76', '0654/2019', '64/2018/CDJMAS', NULL, 1),
(NULL, '0033.983132/2018-76', '0378/2019', '66/2018/PEMR', NULL, 2),
(NULL, '0033.054515/2018-76', '0398/2019', '98/2018/CDJMAS', NULL, 1),
(NULL, '0033.115566/2018-76', '0951/2019', '21/2018/PEENP', NULL, 1),
(NULL, '0033.055060/2018-76', '0344/2019', '05/2018/PEENP', NULL, 1);