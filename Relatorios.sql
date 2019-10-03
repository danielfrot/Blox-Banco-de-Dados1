# 7.1 Acusados do sexo masculino (nome, sexo, idade)
SELECT  `Nome`, `Sexo`,`Idade` FROM `Acusado`;

# 7.2 Total de acusados por idade (sexo,idade, total)
SELECT Sexo,Idade,COUNT(Idade) FROM `Acusado`group by Idade ,Sexo;


# 7.4 Listar todos os Advogados com o OAB maior 5000 e da cidade Porto Velho

SELECT * FROM `Advogado` WHERE OAB > 5000 AND Cidade = 'Porto Velho';