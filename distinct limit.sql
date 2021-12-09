#FUNÇÃO distinct seleciona apenas os valores unicos que não se repetem
select EMBALAGEM, TAMANHO from tabela_de_produtos;

select distinct EMBALAGEM,TAMANHO from tabela_de_produtos where SABOR = 'Laranja';

select distinct EMBALAGEM,TAMANHO, SABOR from tabela_de_produtos;

select distinct EMBALAGEM from tabela_de_produtos;

select distinct BAIRRO from tabela_de_clientes where CIDADE = 'Rio de Janeiro';

#FUNÇÃO LIMIT - Limita o número de linhas exibidas - observa uma amostra
select * from tabela_de_produtos limit 8;
select * from tabela_de_produtos limit 2,4;
select * from tabela_de_produtos limit 1,3;

#obter as 10 primeiras vendas do dia 01/01/2017
select * from notas_fiscais where DATA_VENDA = '2017-01-01' limit 10;
