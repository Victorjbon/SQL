#condições lógicas - and / or
select * from tabela_de_produtos where SABOR = 'Manga'
OR TAMANHO = '470 ml';

select * from tabela_de_produtos where SABOR = 'Manga'
and TAMANHO = '470 ml';

#seleciona todos menos os que forem manga e 470 ml ao mesmo tempo
select * from tabela_de_produtos where not (SABOR = 'Manga'
and TAMANHO = '470 ml');

#seleciona todos menos os que forem manga ou 470 ml ao mesmo tempo
select * from tabela_de_produtos where not (SABOR = 'Manga'
or TAMANHO = '470 ml');

select * from tabela_de_produtos where SABOR = 'Manga'
and not (TAMANHO = '470 ml');

#seleciona todos contidos em laranja e manga
select * from tabela_de_produtos where SABOR in ('Laranja', 'Manga');
select * from tabela_de_produtos where SABOR = 'Laranja' or SABOR = 'Manga';

select * from tabela_de_produtos where SABOR = 'Laranja' or SABOR = 'Manga';

#TABELA DE CLIENTES
select * from tabela_de_clientes where CIDADE in ('Rio de Janeiro','São Paulo')
and IDADE >=20;

select * from tabela_de_clientes where CIDADE in ('Rio de Janeiro','São Paulo')
and (IDADE >=20 and IDADE<=25);

#Função LIKE
select * from tabela_de_produtos where SABOR like '%Maça%'
and EMBALAGEM = 'pet';

select * from tabela_de_clientes where NOME like '%Mattos';








