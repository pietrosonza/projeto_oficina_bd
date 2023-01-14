use oficina;

-- quantidade de ordens de servicos no período

select count(*) from ordem_servico;
	-- 5

-- quantiade de clientes ativos
select count(*) from cliente;
	-- 5
    

-- receita do período por serviços prestados
select sum(valor) valor_total from servicos_os so
	inner join equipe_servico es
    on so.idServico = es.idServico;
    -- 1500
        
-- receita do período por produtos vendidos
select sum(po.quantidade * pd.valor) valor_total from produtos_os po
	inner join produto pd
    on po.idProduto = pd.idProduto;
    -- 11890

-- receita total do período
select sum(valor) valor_total from (
	select os.idOs ordem_servico ,es.valor valor from ordem_servico os
    inner join servicos_os so
    on os.idOs = so.idOs
    inner join equipe_servico es
    on so.idServico = es.idServico
    UNION ALL
   select po.idOs, (po.quantidade * pd.valor) valor from produtos_os po
	inner join produto pd
    on po.idProduto = pd.idProduto
    ) valores;
	-- 13390



-- OS e seus valores
select ordem_servico, sum(valor) valor_total from (
	select so.idOs ordem_servico,es.valor valor from servicos_os so
    inner join equipe_servico es
    on so.idServico = es.idServico
    UNION ALL
   select po.idOs, (po.quantidade * pd.valor) valor from produtos_os po
	inner join produto pd
    on po.idProduto = pd.idProduto
    ) valores
	group by ordem_servico
    order by valor_total desc;
    
-- mecanicos que mais prestaram servico
    select concat(me.pNome, ' ', me.fNome) Mecanico, count(me.pNome) Servicos from servicos_os so
    inner join ordem_servico os
    on so.idOs = os.idOs
	inner join equipe_servico es
    on so.idservico = es.idServico
    inner join mecanico me
    on es.idServico = me.idServico
    where os.status_os <> 'aguardando'
    group by Mecanico
    order by Servicos desc;
    

	