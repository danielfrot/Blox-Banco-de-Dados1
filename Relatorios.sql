# 7.1 Acusados do sexo masculino (nome, sexo, idade)
SELECT  `Nome`, `Sexo`,`Idade` FROM `Acusado` WHERE `Sexo` LIKE 'M';

# 7.2 Total de acusados por idade (sexo,idade, total)
SELECT Sexo, Idade, COUNT(Idade) FROM `Acusado` group by Idade ,Sexo;

# 7.3 Total de "audiências" por comissão por período (comissão, quantidade)


# 7.4 Listar todos os Advogados com o OAB maior 5000 e da cidade Porto Velho
SELECT * FROM `Advogado` WHERE OAB > 5000 AND Cidade = 'Porto Velho';

# 7.5 Listar todos os servidores com especialização em “armamento” de Vilhena do sexo Masculino.
SELECT Nome, Matricula Sexo, Cidade, Cargos FROM Servidor JOIN Cargos
on Cargos_idCargos = idCargos WHERE Cidade = 'Vilhena' and Cargos = 'Armeiro';