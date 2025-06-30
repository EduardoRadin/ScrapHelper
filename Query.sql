--1️ Relatório de Clientes Ativos
--Enunciado: Liste o nome, telefone e e-mail de todos os clientes cadastrados que estejam ativos no sistema. Ordene o resultado em ordem alfabética pelo nome do cliente.
--Objetivo técnico: Usar SELECT, WHERE e ORDER BY.

select pes_nome "Nome", end_pes_email "Email", end_pes_telefone "Telefone" from pessoa, endereco_pes
where pes_cod=cod_pessoa 
order by pes_nome ;

--2 Relatório de Equipamentos por Cliente
--Enunciado: Liste o nome do cliente, o tipo de equipamento e a data de cadastro de cada equipamento.
--Exiba apenas os equipamentos que estejam atualmente em posse do cliente (não em manutenção).
--Ordene por cliente e, dentro do cliente, por data de cadastro do equipamento.
--Objetivo técnico: Usar JOIN entre clientes e equipamentos, WHERE e ORDER BY.

select pes_nome "Nome", eqp_tipo "Tipo de equipamento", to_char(os.os_data_entrada, 'dd/mm/yyyy') "Cadastro de equipamento" from pessoa p
inner join equipamento e on e.cod_pessoa= p.pes_cod
inner join ordem_servico os on os.cod_eqp=e.eqp_id
where os.os_data_conclusao >= os.os_data_entrada
order by p.pes_nome, os.os_data_entrada;

--3 Relatório de Ordens de Serviço Atribuídas
--Enunciado: Liste o ID da ordem de serviço, o nome do técnico responsável, o nome do cliente e a data de abertura. 
--Exiba apenas ordens de serviço que ainda não foram concluídas. 
--Ordene pela data de abertura, da mais antiga para a mais recente.
--Objetivo técnico: Usar JOIN entre ordens de serviço, técnicos e clientes, com filtros e ordenação.

select os.os_cod "Código", f.fun_nome "Nome do funcionário", p.pes_nome "Nome do cliente",  to_char(os.os_data_entrada, 'dd/mm/yyyy') "Entrada" from ordem_servico os
inner join funcionario f on f.fun_cod = os.cod_fun 
inner join equipamento e on e.eqp_id = os.cod_eqp
inner join pessoa p on p.pes_cod=e.cod_pessoa
where os_eqp_status != 'Concluído'
order by os.os_data_entrada;


-- 4 Relatório Resumido de Ordens por Técnico
--Enunciado: Mostre, para cada técnico, a quantidade total de ordens de serviço finalizadas e o valor total faturado dessas ordens.
--Liste somente técnicos que tenham pelo menos uma ordem finalizada. 
--Ordene os resultados pelo valor total faturado, do maior para o menor.
--Objetivo técnico: Usar JOIN entre ordens de serviço e técnicos, GROUP BY, COUNT, SUM, HAVING e ORDER BY."


select f.fun_nome "Nome funcionário", COUNT(os.os_cod) "Total de ordens", SUM(os.os_orcamento) "Orçamento total" from ordem_servico os
inner join funcionario f on f.fun_cod = os.cod_fun
where os.os_eqp_status = 'Concluído'
group by f.fun_nome
order by 3 desc;
