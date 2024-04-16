
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


