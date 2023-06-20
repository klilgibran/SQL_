
-- ==========     função: BETWEEN ===============================
select *
from clientes 
where Data_Nascimento BETWEEN '1984-02-01' and '1996-09-20';

select *
from clientes 
where Qtd_Filhos BETWEEN 1 and 3; #é contado a partir do 1, ou seja, 2 e 3. 

-- =========== IN E NOT IN ======================
select *
from clientes 
where nome in ('Jacquelyn', 'Ian', 'Lauren');

select *
from clientes 
where nome NOT IN ('Jacquelyn', 'Ian', 'Lauren'); #ou seja, foi retirado esses nomes da lista.alter

 -- ====================Like =======================

 select *
 from clientes
 where nome like 'christy'; #filtragem 
 
select *
from clientes
where nome like 'A%'; #filtragem dos nomes que começam com a letra 'A'

select *
from clientes
where nome like '%E'; #todas as strings que terminam com a letra 'E'

select *
from clientes
where nome like 'A%';

select *
from clientes
where nome like '%ssie%'; #retorna a seleção dessa string 

select *
from clientes
where nome like '%r_'; #retorna UMA LETRA depois de qualquer substring 'r'

select *
from clientes
where nome like '__r%'; #retorna DUAS LETRAS antes de qualquer substring 'r'






 









