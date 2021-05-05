use pedido_venda
show grants

insert into produto(nome, valor_unitario, quantidade_estoque)
values('arroz', '6.50', '39')

select*from produto

insert into item_pedido(pedido_id, produto_id, quantidade)
	values('3', '1', '5')
    
select*from item_pedido

select*from cliente
	where nome = 'João Silva'
    
select*from cliente
	where data_nascimento> '1991-01-01'
    
select*from pedido
	where observacao is not null
		and valor_total > 2
