# 7.1 Acusados do sexo masculino (nome, sexo, idade)
SELECT  `Nome`, `Sexo`,`Idade` FROM `Acusado` WHERE `Sexo` LIKE 'M';

# 7.2 Total de acusados por idade (sexo,idade, total)
SELECT Sexo, Idade, COUNT(Idade) FROM `Acusado` group by Idade ,Sexo;

# 7.3 Total de "audiências" por comissão por período (comissão, quantidade, período)
# quantas audiências cada comissão fez no mes de outubro

SELECT com.Comissao, COUNT(aud.data), MONTHNAME(aud.data) FROM Comissao_has_Audiencia comhas INNER JOIN Comissao com
ON comhas.Comissao_idComissao = com.idComissao INNER JOIN Audiencia aud ON aud.idAudiencia = comhas.Audiencia_idAudiencia
WHERE aud.data BETWEEN '2019-10-01' AND '2019-10-31' GROUP BY com.Comissao, MONTHNAME(aud.data)

# Quantas audiências cada comissão fez no mes de outubro por dia
SELECT com.Comissao, aud.data, count(aud.data) from Comissao_has_Audiencia comhas inner join Comissao com
on comhas.Comissao_idComissao = com.idComissao inner join Audiencia aud
on aud.idAudiencia = comhas.Audiencia_idAudiencia
where aud.data between '2019-10-01'and '2019-10-31' group by aud.data, com.Comissao

# total de audiências no mes de outubro
SELECT
    #com.Comissao,
    #aud.data,
    COUNT(aud.data),
    MONTHNAME(aud.data)
FROM
    Comissao_has_Audiencia comhas
INNER JOIN Comissao com ON
    comhas.Comissao_idComissao = com.idComissao
INNER JOIN Audiencia aud ON
    aud.idAudiencia = comhas.Audiencia_idAudiencia
WHERE
    aud.data BETWEEN '2019-10-01' AND '2019-10-31'
GROUP BY
    #com.Comissao,
    #aud.data
    MONTHNAME(aud.data)

# 7.4 Listar todos os Advogados com o OAB maior 5000 e da cidade Porto Velho
SELECT * FROM `Advogado` WHERE OAB > 5000 AND Cidade = 'Porto Velho';

# 7.5 Listar todos os servidores com especialização em “armamento” de Vilhena do sexo Masculino.
SELECT Nome, Matricula, Sexo, Cidade, Cargos FROM Servidor JOIN Cargos
on Cargos_idCargos = idCargos WHERE Cidade = 'Vilhena' and Cargos = 'Armeiro' and Sexo = 'M';