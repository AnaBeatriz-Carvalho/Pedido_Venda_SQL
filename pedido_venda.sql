select current_user();
create database pedido_venda;

use pedido_venda;
create table pedido_venda. cliente(
	id bigint primary key auto_increment,
    nome varchar(100),
    email varchar(50),
    data_nascimento date

)engine=InnoDB;

create table pedido_venda.pedido(
	id bigint primary key auto_increment,
    data_pedido date,
    observacao text,
    data_entrega date,
    valor_frete decimal (6,2),
    valor_total decimal(10,2)
)engine=InnoDB;

alter table pedido_venda.pedido	
	add column cliente_id bigint,
    add constraint fk_cliente_id
		foreign key(cliente_id)
			references cliente(id)
grant select, isert on pedido_venda.* to 'Beatriz'@'localhost'
flush privileges