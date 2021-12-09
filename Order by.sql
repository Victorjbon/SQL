#Função order by
select * from tabela_de_produtos;
#ordenou pelo preço de lista
select * from tabela_de_produtos order by PRECO_DE_LISTA;

select * from tabela_de_produtos order by PRECO_DE_LISTA DESC;

select * from tabela_de_produtos order by NOME_DO_PRODUTO;
#ordena primeiro por embalagem e depois por nome do produto
select * from tabela_de_produtos order by EMBALAGEM, NOME_DO_PRODUTO;
select * from tabela_de_produtos order by EMBALAGEM, NOME_DO_PRODUTO asc;

#Qual (ou quais) foi (foram) a(s) maior(es) venda(s) do produto 
#“Linha Refrescante - 1 Litro - Morango/Limão”, em quantidade? 
select * from tabela_de_produtos where NOME_DO_PRODUTO = 'Linha Refrescante - 1 Litro - Morango/Limão';
select * from itens_notas_fiscais where CODIGO_DO_PRODUTO = '1101035' order by QUANTIDADE DESC;

#Agrupando resultados grup by (sum,min,max,avg,count)
select * from tabela_de_clientes;
select ESTADO, sum(LIMITE_DE_CREDITO) as LIMITE_TOTAL from tabela_de_clientes group by ESTADO; 

select EMBALAGEM, PRECO_DE_LISTA from tabela_de_produtos;
select EMBALAGEM, max(PRECO_DE_LISTA) as MAIOR_PRECO from tabela_de_produtos group by EMBALAGEM;
select EMBALAGEM, count(PRECO_DE_LISTA) as contagem from tabela_de_produtos group by EMBALAGEM;

select BAIRRO, SUM(LIMITE_DE_CREDITO) as LIMITE from tabela_de_clientes group by BAIRRO;
select BAIRRO, SUM(LIMITE_DE_CREDITO) as LIMITE from tabela_de_clientes where 
CIDADE = 'Rio de Janeiro' group by BAIRRO;

#pode ter mais de um campo no group by
select BAIRRO, ESTADO, SUM(LIMITE_DE_CREDITO) as LIMITE from tabela_de_clientes where 
CIDADE = 'Rio de Janeiro' group by BAIRRO,ESTADO;

#ORDENANDO por bairro
select BAIRRO, ESTADO, SUM(LIMITE_DE_CREDITO) as LIMITE from tabela_de_clientes where 
CIDADE = 'Rio de Janeiro' group by BAIRRO, ESTADO ORDER BY BAIRRO;

select CODIGO_DO_PRODUTO, COUNT(QUANTIDADE) as QUANT from itens_notas_fiscais 
WHERE CODIGO_DO_PRODUTO = '1101035'
group by CODIGO_DO_PRODUTO;

SELECT COUNT(*) FROM itens_notas_fiscais WHERE codigo_do_produto = '1101035' AND QUANTIDADE = 99;

select * from itens_notas_fiscais;