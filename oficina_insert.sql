-- inserindo clientes
insert into cliente (pNome, fNome, cpf, endereco, contato)
	values
	('Pietro', 'Sonza', '12345678912', 'Florianopolis', '+4833214874'),
    ('Sandro', 'Sonza', '12345678913', 'Blumenau', '+4733548747'),
    ('Merieli', 'Padilha', '12345678914', 'Joinville', '+4735487484'),
    ('Sandro', 'Azevedo', '12345678915', 'Chapeco', '+4634548741');

-- inserindo veiculos 
insert into veiculo (idCliente, vModelo, marca, ano, placa, chassi)
	values
    (1, 'Golf', 'Volkswagen', 2021, 'ABC-1234', '12345678910'),
    (2, 'Hb29', 'Hyundai', 2022, 'ABC-1235', '12345678911'),
    (3, 'Tracker', 'Chevrolet', 2021, 'ABA-1236', '12345678912'),
    (4, 'Toro', 'Fiat', null, 'ABC-1237', '12345678913');
    
-- inserindo equipe/serviço
insert into equipe_servico(especialidade, valor)
	values
    ('concertos', 400),
    ('revisões', 150);
    
-- inserindo mecanico
insert into mecanico (idServico, pNome, fNome, especialidade, endereco)
	values
    (1, 'Gian', 'Sonza', 'concertos', 'Lages'),
    (1, 'Celito', 'Sonza', 'concertos', 'Lages'),
    (2, 'Jane', 'Sonza', 'revisões', 'Florianopolis');
    
-- inserindo produtos
insert into produto (nomeProduto, descricao, valor)
	values
    ('embreagem', null, 2500),
    ('freio', null, 1500),
    ('lampadas', null, 50),
    ('oleo', null, 30);
    
-- inserindo ordem de servico
insert into ordem_servico(idVeiculo, dataEmissao, dataEntrega, status_os)
	values
    (1, null, '2023-01-15', 'processando'),
    (2, '2022-12-30', '2023-01-02', 'finalizada'),
    (3, '2023-01-04', '2023-01-06', 'processando'),
    (4, null, '2023-01-20', 'aguardando');

-- inserindo serviõs por os
insert into servicos_os (idOs, idServico)
	values
    (1, 1),
    (2, 2),
    (3, 1),
    (4, 2);
    
-- inserindo produtos por os
insert into produtos_os (idOs, idProduto, quantidade)
	values
    (1, 1, 1),
    (2, 4, 1),
    (3, 2, 2),
    (4, 3, 4),
    (1, 3, 4),
    (2, 3, 4),
    (1, 4, 1);
    
    
insert into cliente (pNome,fNome, cpf, endereco, contato)
	values
    ('Ana Julia', 'Sonza', '12345678921', 'Jaguari', '+5532552333');

insert into veiculo (idCliente, vModelo, marca, ano, placa, chassi)
	values
    (5, 'Camaro', 'Chevrolet', 2019, 'ABD-1234', '123456123451');

insert into ordem_servico(idVeiculo, dataEmissao, dataEntrega, status_os)
	values
    (5, null, '2023-01-18', 'processando');
    
insert into servicos_os(idOs, idServico)
	values
    (5, 1);

insert into produtos_os(idOs, idProduto, quantidade)
	values
	(5,1,1),
	(5,2,2),
	(5,3,4),
	(5,4,1);
