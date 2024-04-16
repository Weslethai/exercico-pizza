select Sabor as Pizza, pizzaiolos.nome as pizzaiolo from pizzas    		-- relatorio para pizzas e pizzaiolos aptos para produzir	--  
inner join pizzaiolos on pizzas.pizzaiolo_id = pizzaiolos.id_pizzaiolo;

select ingredientes, Sabor as Pizza from pizzas; -- relatorio para sabor e ingrediente

select Sabor as Pizza, pizzaiolos.nome as Pizzaiolo, receitas.instrucoes as Instruções  from pizzas -- relatorio para saber  os sabores das pizzas, nome dos pizzaiolos e as intruções
inner join pizzaiolos on pizzas.pizzaiolo_id = pizzaiolos.id_pizzaiolo
inner join receitas on pizzas.receitas_id = receitas.id_receitas;
