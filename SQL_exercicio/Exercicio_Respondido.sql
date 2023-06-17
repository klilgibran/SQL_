-- Exercício 1:
-- a) Selecione todas as colunas e linhas da tabela de produtos.
select * from produtos;

-- b) Agora selecione apenas as colunas Nome_Produto, Marca_Produto e Preco_Unit.
select Nome_Produto, Marca_Produto , Preco_Unit
from produtos;

-- Renomeie essas colunas para Nome do Produto, Marca e Preço Unitário.
select Nome_Produto as "Produto", Marca_Produto as "Preço", Preco_Unit as "Preço Unitario"
from produtos;

-- c) Selecione as 5 primeiras linhas da tabela de lojas (considere todas as colunas).
select * from lojas limit 5;

-- ============== Exercício 2: ====================
-- a) Faça uma consulta na tabela de lojas e ordene a tabela de acordo com a coluna de Num_Funcionarios, em ordem crescente.
select * 
from lojas
order by Num_Funcionarios DESC; 

-- Obs: Sua consulta deve retornar as colunas de Loja (AS 'Nome da Loja'), Endereco (AS 'Endereço'), Num_Funcionarios (AS 'Qtd. Funcionários') e Telefone (AS 'Número para contato').

-- b) Faça uma cosulta na tabela de clientes, ordenando a tabela de acordo com o nome (ordem alfabética) e sobrenome (ordem alfabética). Retorne todas as colunas e linhas da 
-- tabela.

select * 
from clientes
order by nome ASC;

-- ==============================  Exercício 3 ==================================
-- a) Faça um filtro na tabela de produtos e retorne apenas os produtos com custo maior ou igual a 200
select * 
from produtos 
where Custo_Unit >= 400;

-- b) Faça um filtro na tabela de produtos e retorne apenas os produtos da marca "DELL"
select * 
from produtos 
where Marca_Produto = "dell";

-- ====================== Exercício 4: ============================
-- a) Descubra o total de custo da tabela de pedidos.
select sum(Custo_Venda) 
from pedidos;

-- b) Descubra a quantidade total de lojas
select count(Loja) 
from lojas;

-- c) Descubra o custo médio dos produtos (de acordo com a tabela de produtos)
select avg(Custo_Unit) 
from produtos;

-- d) Descubra a quantidade mínima e máxima de funcionários das lojas (faça isso em um único SELECT).
select max(Num_Funcionarios) , min(Num_Funcionarios)
from lojas;
-- Exercício 5:
-- a) Faça um agrupamento para descobrir o total de clientes por Sexo.
select Sexo , count(ID_Cliente)
from clientes 
group by Sexo; 
-- b) Faça um agrupamento para descobrir quantos produtos existem por categoria.
select ID_Categoria , Categoria,  count(ID_Produto)
from produtos 
inner join categorias
on categorias.ID_Categoria = produtos.ID_Categoria
group by categoria;

-- c) Faça um agrupamento para descobrir a soma total de receita por Loja
select Loja , sum(Receita_Venda)
from pedidos
inner join lojas 
on pedidos.ID_Loja = lojas.ID_Loja
group by Loja ;





















