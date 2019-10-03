
# mostrando a descrição da tabela
DESCRIBE <nome_da_tabela>;

# Adicionando coluna a tabela
ALTER TABLE <nome_da_tabela>
ADD <nome_da_coluna> INT;

# Adicionando a chave estrangeira e fazendo referencia com outra tabela
ALTER TABLE <nome_da_tabela>
ADD FOREIGN KEY (<nome_da_coluna>);
REFERENCES <nome_da_tabela_referencia>(<id_nome_do_campo>)



