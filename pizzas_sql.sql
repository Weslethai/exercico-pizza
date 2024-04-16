
use sistema_pizza;
 -- CRIANDO AS TABELAS PIZZAS, PIZZAIOLOS, EMBALAGEM, RECEITAS.
CREATE TABLE pizzas (
    id_pizza INTeger PRIMARY KEY AUTO_INCREMENT,
    sabor VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    descricao  text,
	preco decimal (9,2),
    ingredientes varchar (100),
    pizzaiolo_id INT,
    embalagem_id int,
    receitas_id int,
    FOREIGN KEY (pizzaiolo_id) references pizzaiolos (id_pizzaiolo),
    FOREIGN KEY (embalagem_id) references Embalagem (id_embalagem),
    FOREIGN KEY (receitas_id) references receitas (id_receitas)
);
CREATE TABLE pizzaiolos (
    id_pizzaiolo INTeger  PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    salario DECIMAL(10,2) NOT NULL
);
CREATE TABLE Embalagem(
  id_embalagem 	int primary key auto_increment,
  MATERIAL VARCHAR(100),
  TAMANHO VARCHAR(45),
  PRECO DECIMAL(10,2)
  );
  CREATE TABLE receitas (
    id_receitas INTeger PRIMARY KEY AUTO_INCREMENT,
  	autor varchar (30) not null,
    instrucoes TEXT NOT NULL
);
-- INSERINDO OS VALORES DA TABELA PIZZA
	INSERT INTO pizzas VALUES
(1,'Calabresa', 'Grande', 'Pizza de calabresa com cebola e queijo', 35.90, 'Calabresa, cebola, queijo',1,1,1),
(2, 'Marguerita', 'Média', 'Pizza tradicional italiana com molho de tomate, queijo e manjericão', 29.90, 'Molho de tomate, queijo mussarela, manjericão',2,2,2),
(3,'Frango com Catupiry', 'Grande', 'Pizza de frango desfiado com catupiry cremoso', 38.50, 'Frango desfiado, catupiry, tomate',3,3,3),
(4,'Quatro Queijos', 'Média', 'Pizza com uma seleção de quatro queijos: mussarela, provolone, parmesão e gorgonzola', 32.00, 'Queijo mussarela, queijo provolone, queijo parmesão, queijo gorgonzola',4,4,4),
(5,'Portuguesa', 'Grande', 'Pizza à moda portuguesa com presunto, ovo, cebola, azeitonas e queijo', 37.00, 'Presunto, ovo, cebola, azeitonas, queijo',5,5,5),
(6,'Pepperoni', 'Média', 'Pizza com generosas fatias de pepperoni e queijo derretido', 30.50, 'Pepperoni, queijo mussarela',6,6,6),
(7,'Vegetariana', 'Grande', 'Pizza vegetariana com uma variedade de legumes frescos e queijo', 34.90, 'Abobrinha, pimentão, cebola, cogumelos, queijo',7,7,7),
(8,'Calabresa com Catupiry', 'Média', 'Combinação deliciosa de calabresa picante e catupiry cremoso', 33.00, 'Calabresa, catupiry, cebola',8,8,8),
(9,'Marguerita Especial', 'Grande', 'Versão especial da tradicional Marguerita com tomatinhos cereja e azeite trufado', 39.90, 'Molho de tomate, queijo mussarela, manjericão, tomatinhos cereja, azeite trufado',9,9,9),
(10,'Frango com Requeijão', 'Média', 'Pizza de frango desfiado com requeijão cremoso', 35.50, 'Frango desfiado, requeijão, cebola, tomate',10,10,10),
(11,'Quatro Estações', 'Grande', 'Pizza com quatro sabores em cada fatia: calabresa, frango, milho e portuguesa', 41.00, 'Calabresa, frango, milho, presunto, ovo, cebola, azeitonas',11,11,11),
(12,'Pepperoni Duplo', 'Média', 'Pizza com dobro de pepperoni para os amantes dessa iguaria', 32.50, 'Pepperoni, queijo mussarela',12,12,12),
(13,'Marguerita Vegana', 'Grande', 'Pizza Marguerita sem ingredientes de origem animal', 36.90, 'Molho de tomate, queijo vegano, manjericão',13,13,13),
(14,'Frango com Cheddar', 'Média', 'Pizza de frango desfiado com cheddar cremoso', 34.00, 'Frango desfiado, cheddar, cebola, pimentão',14,14,14),
(15,'Especial da Casa', 'Grande', 'Pizza com a seleção exclusiva de ingredientes da casa', 42.00, 'Ingredientes secretos da casa',15,15,15),
(16,'Napolitana', 'Média', 'Pizza napolitana com anchovas, azeitonas pretas, alcaparras e molho de tomate', 31.00, 'Anchovas, azeitonas pretas, alcaparras, molho de tomate, queijo',16,16,16),
(17,'Marguerita Light', 'Grande', 'Pizza Marguerita com ingredientes leves e menos calóricos', 38.90, 'Molho de tomate light, queijo light, manjericão fresco',17,17,17),
(18,'Frango à Moda da Casa', 'Média', 'Pizza de frango desfiado com ingredientes especiais da casa', 36.50, 'Frango desfiado, ingredientes secretos da casa',18,18,18),
(19,'Calabresa Especial', 'Grande', 'Pizza de calabresa especial com tempero exclusivo', 40.00, 'Calabresa especial, cebola, queijo',19,19,19),
(20,'Pepperoni Picante', 'Média', 'Pizza com pepperoni levemente picante e queijo derretido', 33.50, 'Pepperoni picante, queijo mussarela',20,20,20),
(21,'Vegetariana Light', 'Grande', 'Pizza vegetariana com ingredientes light e saudáveis', 37.90, 'Abobrinha, pimentão, cebola, cogumelos, queijo light',21,21,21),
(22,'Calabresa com Cheddar', 'Média', 'Pizza de calabresa picante com cheddar cremoso', 35.00, 'Calabresa picante, cheddar, cebola, pimentão',22,22,22),
(23,'Quatro Queijos Premium', 'Grande', 'Pizza com uma seleção premium de quatro queijos: brie, gruyère, parmesão e gorgonzola', 45.00, 'Queijo brie, queijo gruyère, queijo parmesão, queijo gorgonzola',23,23,23),
(24,'Pepperoni Especial', 'Média', 'Pizza com pepperoni especial e ingredientes exclusivos', 34.50, 'Pepperoni especial, queijo mussarela, tomate, cebola',24,24,24),
(25,'Vegetariana Premium', 'Grande', 'Pizza vegetariana premium com ingredientes exclusivos e selecionados', 39.90, 'Abobrinha, pimentão, cogumelos trufados, queijo premium',25,25,25),
(26,'Calabresa com Bacon', 'Média', 'Pizza de calabresa picante com bacon crocante', 36.00, 'Calabresa picante, bacon, queijo mussarela',26,26,26),
(27,'Três Queijos', 'Grande', 'Pizza com uma seleção de três queijos: mussarela, provolone e parmesão', 38.00, 'Queijo mussarela, queijo provolone, queijo parmesão',27,27,27),
(28,'Pepperoni Clássico', 'Média', 'Pizza com pepperoni clássico e queijo derretido', 32.00, 'Pepperoni, queijo mussarela',28,28,28),
(29,'Vegetariana Especial', 'Grande', 'Pizza vegetariana especial com ingredientes exclusivos', 42.90, 'Abobrinha, pimentão, cogumelos trufados, queijo especial',29,29,29),
(30,'Frango com Cream Cheese', 'Média', 'Pizza de frango desfiado com cream cheese cremoso', 36.50, 'Frango desfiado, cream cheese, cebola, tomate',30,30,30);

-- INSERINDO VALORES DA TABELA EMBALAGEM
INSERT INTO Embalagem (MATERIAL, TAMANHO, PRECO)  VALUES
('Papelão', 'Pequena', 1.50),
('Plástico', 'Média', 2.00),
('Papelão', 'Grande', 2.50),
('Papel', 'Pequena', 1.00),
('Plástico', 'Grande', 3.00),
('Papelão', 'Média', 2.00),
('Papel', 'Grande', 2.00),
('Plástico', 'Pequena', 1.50),
('Papel', 'Média', 1.50),
('Caixa de Isopor', 'Grande', 4.00),
('Papelão', 'Pequena', 1.50),
('Papelão', 'Média', 2.00),
('Plástico', 'Grande', 3.00),
('Caixa de Isopor', 'Pequena', 2.00),
('Caixa de Isopor', 'Média', 3.00),
('Papel', 'Pequena', 1.00),
('Papel', 'Média', 1.50),
('Plástico', 'Grande', 3.00),
('Caixa de Isopor', 'Pequena', 2.00),
('Caixa de Isopor', 'Média', 3.00),
('Plástico', 'Pequena', 1.50),
('Papel', 'Média', 1.50),
('Caixa de Isopor', 'Grande', 4.00),
('Papelão', 'Pequena', 1.50),
('Plástico', 'Média', 2.00),
('Caixa de Papelão', 'Grande', 3.50),
('Caixa de Papelão', 'Média', 2.50),
('Caixa de Papel', 'Grande', 2.00),
('Caixa de Papel', 'Média', 1.50),
('Caixa de Plástico', 'Média', 2.00);

-- INSERINDO OS VALORES DA TABELA PIZZAIOLO
INSERT INTO pizzaiolos (nome, salario)
VALUES
('João Silva', 2500.00),
('Maria Oliveira', 2800.00),
('Pedro Santos', 2600.00),
('Ana Costa', 2700.00),
('Carlos Pereira', 3000.00),
('Fernanda Almeida', 2900.00),
('Rafael Martins', 3100.00),
('Juliana Mendes', 2950.00),
('Marcos Souza', 2700.00),
('Larissa Lima', 2850.00),
('Gustavo Carvalho', 3200.00),
('Camila Vieira', 3000.00),
('Lucas Rodrigues', 3300.00),
('Amanda Barbosa', 3100.00),
('Diego Ferreira', 2800.00),
('Carolina Silva', 2900.00),
('Thiago Oliveira', 2700.00),
('Mariana Santos', 3000.00),
('Roberto Alves', 3250.00),
('Natália Costa', 3150.00),
('Paulo Sousa', 2950.00),
('Isabela Fernandes', 3050.00),
('Ricardo Nunes', 2700.00),
('Patrícia Lima', 2900.00),
('Leonardo Martins', 3350.00),
('Cristina Oliveira', 3100.00),
('Vinícius Silva', 3400.00),
('Sofia Oliveira', 3200.00),
('Daniel Costa', 3000.00),
('Mônica Almeida', 3100.00),
('helena Silva', 3000.00);

-- INSERINDO VALORES DA TABELA RECEITAS
INSERT INTO receitas (autor, instrucoes) VALUES
('Chef Renato','Misture a farinha, o fermento, o sal, o açúcar e o óleo em uma tigela grande. Adicione água morna gradualmente até formar uma massa homogênea. Sove a massa por 10 minutos e deixe descansar por 1 hora. Divida a massa em porções, abra em discos e adicione os ingredientes do recheio. Asse em forno preaquecido a 220°C por 15 minutos.'),
('Chef Ana','Em uma frigideira aquecida, coloque a manteiga e refogue a cebola e o alho até dourarem. Adicione o arroz e refogue por mais 2 minutos. Acrescente o caldo de galinha e deixe cozinhar em fogo baixo por 15 minutos. Misture o queijo parmesão e sirva quente.'),
('Chef Carlos','Tempere os filés de frango com sal, pimenta, alho e suco de limão. Em uma frigideira, aqueça o azeite e doure os filés de ambos os lados. Adicione a cebola, o tomate e o molho de tomate. Cozinhe por mais 10 minutos em fogo baixo. Sirva com arroz branco e batatas cozidas.'),
('Chef Sofia', 'Em uma tigela grande, misture a carne moída com cebola picada, alho picado, sal, pimenta-do-reino e salsa. Modele a mistura em formato de hambúrgueres. Em uma grelha quente, grelhe os hambúrgueres por 5 minutos de cada lado ou até ficarem no ponto desejado. Monte os hambúrgueres com os acompanhamentos desejados e sirva.'),
('Chef Miguel','Em uma panela, aqueça o azeite e refogue a cebola e o alho até dourarem. Adicione o tomate, o molho de tomate, o sal, a pimenta e o orégano. Deixe cozinhar em fogo baixo por 20 minutos, mexendo ocasionalmente. Sirva quente sobre a massa de sua preferência.'),
('Chef Helena', 'Misture o cream cheese, o açúcar, a baunilha e o suco de limão em uma tigela até obter um creme homogêneo. Espalhe essa mistura sobre a massa já assada. Cubra com as frutas de sua preferência e sirva.'),
('Chef Lucas', 'Em uma frigideira, aqueça o azeite e refogue a cebola, o pimentão e o alho até ficarem macios. Adicione o frango desfiado, o molho de tomate, o cominho, o coentro e a pimenta. Cozinhe por 10 minutos em fogo médio. Recheie as tortillas com a mistura de frango, adicione queijo por cima e dobre as tortillas ao meio. Doure as quesadillas em uma frigideira até o queijo derreter.'),
('Chef Marcela','Em uma tigela, misture a carne moída com cebola picada, alho picado, sal, pimenta-do-reino e salsa. Modele a mistura em formato de almôndegas. Em uma panela grande, aqueça o azeite e doure as almôndegas de todos os lados. Adicione o molho de tomate e deixe cozinhar em fogo baixo por 20 minutos. Sirva quente com macarrão ou arroz.'),
('Chef André','Tempere os camarões com sal, pimenta e suco de limão. Em uma frigideira, aqueça a manteiga e o azeite e refogue o alho até dourar. Adicione os camarões e cozinhe por 3-4 minutos de cada lado até ficarem rosados e cozidos. Retire os camarões da frigideira e reserve. Na mesma frigideira, adicione o vinho branco e o caldo de peixe. Deixe reduzir pela metade e adicione o creme de leite. Cozinhe por mais 2 minutos e sirva o molho sobre os camarões.'),
('Chef Amanda', 'Em uma panela, aqueça o azeite e refogue a cebola, o alho, o pimentão e a pimenta dedo-de-moça até ficarem macios. Adicione o arroz e refogue por mais 2 minutos. Acrescente o caldo de legumes e deixe cozinhar em fogo baixo por 15 minutos ou até o arroz ficar macio. Adicione o tomate, o coentro e a cebolinha. Misture bem e sirva quente.'),
('Chef Renata', 'Tempere o filé mignon com sal, pimenta e alho picado. Em uma frigideira quente, doure o filé mignon dos dois lados até atingir o ponto desejado. Retire o filé da frigideira e reserve. Na mesma frigideira, adicione a manteiga, a cebola e os cogumelos. Refogue até os cogumelos ficarem macios. Adicione o vinho tinto e deixe reduzir. Acrescente o creme de leite, o mostarda e o caldo de carne. Cozinhe até o molho engrossar. Sirva o filé com o molho por cima.'),
('Chef Roberto', 'Cozinhe o macarrão em água fervente com sal até ficar al dente. Escorra e reserve. Em uma panela, aqueça o azeite e refogue o alho até dourar. Adicione o bacon em cubos e frite até ficar crocante. Acrescente o creme de leite, o queijo parmesão ralado e a noz-moscada. Misture bem até obter um molho cremoso. Adicione o macarrão cozido ao molho e misture até que esteja bem incorporado. Sirva quente, polvilhado com mais queijo parmesão e pimenta-do-reino.'),
('Chef Camila', 'Em uma tigela grande, misture o atum escorrido com a maionese, a cebola picada, a azeitona, o cheiro-verde, o suco de limão, sal e pimenta a gosto. Corte os pães ao meio e retire um pouco do miolo para formar uma cavidade. Recheie os pães com a mistura de atum. Coloque uma fatia de queijo mussarela sobre o recheio. Leve ao forno preaquecido a 180°C por 15 minutos ou até o queijo derreter. Sirva quente.'),
('Chef João', 'Em uma tigela, misture o polvilho azedo, o queijo ralado, o sal e o óleo. Adicione o leite fervente aos poucos, mexendo sempre, até obter uma massa lisa e homogênea. Deixe a massa descansar por 10 minutos. Modele pequenas bolinhas e coloque em uma assadeira untada. Leve ao forno preaquecido a 180°C por 25 minutos ou até ficarem dourados. Sirva quente.'),
('Chef Luciana','Em uma panela, aqueça o azeite e refogue a cebola e o alho até dourarem. Adicione o tomate picado, o extrato de tomate, o açúcar, o sal, a pimenta-do-reino e o manjericão. Deixe cozinhar em fogo baixo por 15 minutos, mexendo ocasionalmente. Enquanto isso, cozinhe o macarrão em água fervente com sal até ficar al dente. Escorra o macarrão e misture ao molho. Sirva quente.'),
('Chef Eduardo', 'Tempere o peixe com sal, pimenta, suco de limão e alho picado. Em uma frigideira, aqueça o azeite e doure o peixe dos dois lados até ficar cozido. Retire o peixe da frigideira e reserve. Na mesma frigideira, adicione a manteiga e o alho. Refogue por alguns minutos e adicione o camarão. Cozinhe até o camarão ficar rosado. Acrescente o creme de leite, o queijo parmesão e o cheiro-verde. Cozinhe até o molho engrossar. Sirva o peixe com o molho por cima.'),
('Chef Gabriela', 'Em uma tigela, misture a farinha, o fermento em pó, o açúcar e o sal. Adicione o ovo, o leite e a manteiga derretida. Misture bem até obter uma massa homogênea. Aqueça uma frigideira antiaderente e despeje uma concha de massa. Cozinhe por alguns minutos até começar a formar bolhas na superfície. Vire a panqueca e cozinhe do outro lado. Repita o processo com o restante da massa. Sirva quente com mel, frutas ou outros acompanhamentos.'),
('Chef Felipe', 'Em uma panela, aqueça o azeite e refogue a cebola e o alho até dourarem. Adicione o arroz e refogue por mais 2 minutos. Acrescente o vinho branco e mexa até evaporar. Adicione o caldo de legumes aos poucos, mexendo sempre, até o arroz ficar al dente. Misture o queijo parmesão ralado e o creme de leite. Desligue o fogo e deixe descansar por alguns minutos. Sirva o risoto quente, polvilhado com mais queijo ralado e salsa picada.'),
('Chef Isabela', 'Em uma tigela, misture o frango desfiado, a maionese, a cebola picada, o milho, a azeitona, o cheiro-verde, sal e pimenta a gosto. Corte os pães ao meio e retire um pouco do miolo para formar uma cavidade. Recheie os pães com a mistura de frango. Coloque uma fatia de queijo sobre o recheio. Leve ao forno preaquecido a 180°C por 15 minutos ou até o queijo derreter. Sirva quente.'),
('Chef Rafael', 'Em uma panela, aqueça o azeite e refogue a cebola e o alho até dourarem. Adicione o frango em cubos e doure de todos os lados. Acrescente o pimentão, a cenoura, o brócolis e o molho de soja. Cozinhe por alguns minutos até os legumes ficarem macios. Dissolva o amido de milho em um pouco de água e adicione à panela, mexendo até engrossar o molho. Sirva quente com arroz branco.'),
('Chef Mariana', 'Em uma tigela grande, misture a carne moída, o ovo, a cebola picada, o alho picado, o sal, a pimenta-do-reino e a salsa. Modele a mistura em formato de almôndegas. Em uma frigideira grande, aqueça o azeite e doure as almôndegas de todos os lados. Retire as almôndegas da frigideira e reserve. Na mesma frigideira, adicione o molho de tomate e deixe aquecer. Volte as almôndegas para a frigideira e cozinhe por mais 10 minutos em fogo baixo. Sirva quente.'),
('Chef Pedro', 'Em uma panela grande, aqueça o azeite e refogue a cebola e o alho até dourarem. Adicione o arroz e refogue por mais 2 minutos. Acrescente o vinho branco e mexa até evaporar. Adicione o caldo de legumes aos poucos, mexendo sempre, até o arroz ficar al dente. Misture o aspargo picado, o queijo parmesão ralado e a manteiga. Desligue o fogo e deixe descansar por alguns minutos. Sirva o risoto quente.'),
('Chef Sofia', 'Em uma tigela grande, misture o frango desfiado, o cream cheese, a cebola picada, o pimentão picado, o milho, a salsa, sal e pimenta a gosto. Corte os pães ao meio e retire um pouco do miolo para formar uma cavidade. Recheie os pães com a mistura de frango. Coloque uma fatia de queijo sobre o recheio. Leve ao forno preaquecido a 180°C por 15 minutos ou até o queijo derreter. Sirva quente.'),
('Chef Lucas', 'Em uma tigela, misture a farinha de trigo, o fermento em pó, o açúcar e o sal. Adicione o ovo, o leite e a manteiga derretida. Misture bem até obter uma massa homogênea. Aqueça uma frigideira antiaderente e despeje uma concha de massa. Cozinhe por alguns minutos até começar a formar bolhas na superfície. Vire a panqueca e cozinhe do outro lado. Repita o processo com o restante da massa. Sirva quente com mel, frutas ou outros acompanhamentos.'),
('Chef Paula', 'Em uma panela grande, aqueça o azeite e refogue a cebola e o alho até dourarem. Adicione o arroz e refogue por mais 2 minutos. Acrescente o vinho branco e mexa até evaporar. Adicione o caldo de legumes aos poucos, mexendo sempre, até o arroz ficar al dente. Misture o camarão cozido, o creme de leite, o queijo parmesão ralado e a salsinha picada. Desligue o fogo e deixe descansar por alguns minutos. Sirva o risoto quente.'),
('Chef Ricardo','Em uma panela grande, aqueça o azeite e refogue a cebola e o alho até dourarem. Adicione o frango em cubos e doure de todos os lados. Acrescente o pimentão, a cebolinha, o molho de soja e o gergelim. Cozinhe por alguns minutos até os legumes ficarem macios. Dissolva o amido de milho em um pouco de água e adicione à panela, mexendo até engrossar o molho. Sirva quente com arroz branco.'),
('Chef Vanessa','Em uma tigela, misture o polvilho doce, o queijo ralado, o sal e o óleo. Adicione o leite fervente aos poucos, mexendo sempre, até obter uma massa lisa e homogênea. Deixe a massa descansar por 10 minutos. Modele pequenas bolinhas e coloque em uma assadeira untada. Leve ao forno preaquecido a 180°C por 25 minutos ou até ficarem dourados. Sirva quente.'),
('Chef Gustavo', 'Em uma panela, aqueça o azeite e refogue a cebola e o alho até dourarem. Adicione o frango em cubos e doure de todos os lados. Acrescente o pimentão, a cenoura, o brócolis e o molho de soja. Cozinhe por alguns minutos até os legumes ficarem macios. Dissolva o amido de milho em um pouco de água e adicione à panela, mexendo até engrossar o molho. Sirva quente com arroz branco.'),
('Chef Ana', 'Em uma tigela, misture o frango desfiado, a maionese, a cenoura ralada, o milho, a cebola picada, o cheiro-verde, sal e pimenta a gosto. Corte os pães ao meio e retire um pouco do miolo para formar uma cavidade. Recheie os pães com a mistura de frango. Coloque uma fatia de queijo sobre o recheio. Leve ao forno preaquecido a 180°C por 15 minutos ou até o queijo derreter. Sirva quente.'),
('Chef Daniel','Em uma panela, aqueça o azeite e refogue a cebola e o alho até dourarem. Adicione o arroz e refogue por mais 2 minutos. Acrescente o vinho branco e mexa até evaporar. Adicione o caldo de legumes aos poucos, mexendo sempre, até o arroz ficar al dente. Misture o tomate picado, o queijo parmesão ralado e a manteiga. Desligue o fogo e deixe descansar por alguns minutos. Sirva o risoto quente.');

select Sabor as Pizza, pizzaiolos.nome as pizzaiolo from pizzas    		-- relatorio para pizzas e pizzaiolos aptos para produzir	--  
inner join pizzaiolos on pizzas.pizzaiolo_id = pizzaiolos.id_pizzaiolo;

select ingredientes, Sabor as Pizza from pizzas; -- relatorio para sabor e ingrediente

select Sabor as Pizza, pizzaiolos.nome as Pizzaiolo, receitas.instrucoes as Instruções  from pizzas -- relatorio para saber  os sabores das pizzas, nome dos pizzaiolos e as intruções
inner join pizzaiolos on pizzas.pizzaiolo_id = pizzaiolos.id_pizzaiolo
inner join receitas on pizzas.receitas_id = receitas.id_receitas;

