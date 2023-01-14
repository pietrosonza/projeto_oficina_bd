-- Criando tabela Cliente
create table cliente(
	idCliente int auto_increment primary key,
    pNome varchar(45) not null,
    fNome varchar(44) not null,
    cpf char(11) not null,
    endereco varchar(45),
    contato varchar(45),
    constraint cliente_unique unique (CPF)
    );

-- Criando tabela Veiculo
create table veiculo(
	idVeiculo int auto_increment primary key,
    idCliente int not null,
    vModelo varchar(45) not null,
    marca varchar(45) not null,
    ano char(4),
    placa char(8) not null,
    chassi varchar(45) not null,
    constraint veiculo_unique unique (placa, chassi),
    constraint fk_cliente foreign key (idCliente) references cliente(idCliente)
    );
    
-- criando tabela Ordem de Servico
create table ordem_servico(
	idOs int auto_increment primary key,
    idVeiculo int not null,
    dataEmissao DATE,
    dataEntrega DATE not null,
    status_os ENUM('aguardando', 'processando', 'finalizada') not null,
    constraint fk_veiculo foreign key (idVeiculo) references veiculo(idVeiculo)
    );
    
-- criando tabela Equipe/Serviço
create table equipe_servico(
	idServico int auto_increment primary key,
    especialidade ENUM('concertos', 'revisões') not null,
    valor float not null
    );

-- criando tabela mecanicos
create table mecanico(
	idMecanico int auto_increment primary key,
    idServico int not null,
    pNome varchar(45) not null,
    fNome varchar(45) not null,
    especialidade ENUM('concertos', 'revisões'),
    endereco varchar(45),
    constraint fk_servico foreign key (idServico) references equipe_servico(idServico)
    );
    

-- criando tabela Produtos
create table produto(
	idProduto int auto_increment primary key,
    nomeProduto varchar(45) not null,
    descricao varchar(100),
    valor float not null
    );
    
-- criando n:m servico por ordem de servico
create table servicos_os(
	idOs int not null,
    idServico int not null,
    constraint fk_servico_os foreign key (idOs) references ordem_servico(idOs),
    constraint fk_servico_servico foreign key (idServico) references equipe_servico(idServico)
    );

-- criando n:m produto por OS
create table produtos_os(
	idOs int not null,
    idProduto int not null,
    quantidade int not null,
    constraint fk_produto_os foreign key (idOs) references ordem_servico(idOs),
    constraint fk_produto_produto foreign key (idProduto) references produto(idProduto)
    );
    
    
    
    
    
    
    
    
    
