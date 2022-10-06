create database if not exists ToDo_Erica;
USE ToDo_Erica;

create table if not exists Produto(
idProd int auto_increment not null primary key,
nomeProduto varchar(64),
valorProd float(6,2),
descricaoProd varchar(64),
estoqueProd int,
departamentoProd varchar(32),
categoriaProd varchar(32)
);

create table if not exists Clientes(
idCliente int auto_increment not null primary key,
nomeCliente varchar (64) not null
);


create table if not exists Avaliacao(
idAvaliacao int auto_increment not null primary key,
descricaoAvaliacao varchar(64),
dataAvaliacao date,
comentAvaliacao varchar (64),
notaAvaliacao int not null,
idCliente int not null,
idProd int not null,
CONSTRAINT fk_idClieAvalia foreign key (IdCliente)
REFERENCES Clientes (idCliente),
constraint fk_idProdAvalia FOREIGN KEY (idProd)
REFERENCES Produto (idProd)
);

insert into produto(nomeProduto,valorProd,descricaoProd,estoqueProd,departamentoProd,categoriaProd)
values("Camiseta Branca", 89.90," Camiseta básica branca", 15, "Feminino","Camiseta"),
("Regata Preta", 29.90," Regata básica preta", 10, "Feminino","Regata"),
("Calça Preta", 129.90," Calça jeans preta ", 20, "Feminino","Calça"),
("Short Rosa", 69.90," Short jeans rosa", 21, "Infantil","Short"),
("Blusao moletom", 119.90," Blusao moletom basico", 25, "Masculino","Moletom"),
("Top malha", 39.90," Top esportivo básico", 36, "Feminino","Top"),
("Camiseta manga longa", 69.90 ," Camiseta básica manga longa", 11, "Feminino","Camiseta"),
("Calça moletom", 89.90," Calça moletom básica", 29, "Infantil","Calça"),
("Cueca boxer", 25.90," Cueca algodão boxer", 13, "Masculino","Cueca"),
("Maio adulto", 169.90," Maio adulto pluz size", 30, "Feminino","Maio"),
("Sunga infantil", 59.90," Sunga infantil azul", 22, "Infantil","Sunga"),
("Sutia feminino", 49.90," Sutia feminino adulto preto", 17, "Feminino","Sutia"),
("Biquini infantil", 69.90," Biquini infantil rosa", 26, "Infantil","Biquini"),
("Meia Branca", 10.90," Meia infantil branca", 20, "Infantil","Meia"),
("Saia verde", 99.90," Saia longa verde", 22, "Feminino","Saia");


insert into clientes(nomeCliente) values 
("Erica Manis"), ("Aricia Duarte"), ("Maria Pereira"), ("Joana Peyrot"), ("Maria Cecilia"), 
("Norma Flores"),("Rafael Dutra"), ("Eduardo Maio"), ("Marcelo Silva"), ("Joana Ribeiro"), 
("Eduardo Silva"), ("Isabella Oiveira");


insert into avaliacao(descricaoAvaliacao,dataAvaliacao,comentAvaliacao,notaAvaliacao,idCliente,idProd) values
("Maravilhoso","2022-09-01","adorei o produto",5,5,1), ("Produto excelente","2022-07-03","produto mara",5,5,2),
("Entrega rapida","2022-06-22","entrega otima",3,3,3), ("Entrega rapida","2022-03-15","servico de entrega",3,3,3),
("Adorei o produto","2022-03-05","Maravilhoso",5,1,4), ("Amei","2022-03-21","Show! Tecido e caimento ótimo",5,2,5),
("Muito Bom","2022-03-07","servico de entrega",4,3,6), ("Não Recomendo","2022-03-22","O tecido é ruim",2,4,7),
("Adorei","2022-03-22","produto muito bom",4,6,9), ("Mara","2022-03-22","Genteeee... é linda!",5,7,10), ("Extraordinaria","2022-03-22","Super confortavel",4,8,11),
("Adorei o caimento","2022-03-22","O tecido é super fofo",5,9,12), ("Confortavel","2022-01-11","ótimo material.",3,10,13),
("Muito Top","2022-05-15","servico de entrega",4,10,14), ("Imaginei diferente","2021-08-12","servico de entrega",2,9,15),
("A cor é diferente","2022-03-22","servico de entrega",1,8,15), ("Entrega rapida","2022-08-25","servico de entrega",3,7,14),
("Produto muito show","2022-09-22","Valeu super comprar",4,6,13), ("Amei","2020-03-22","Muito show",4,5,12),
("Fiquei surpreendida","2022-02-28","Dos deuses!",4,4,11), ("Adorei o caimento","2019-05-22","ótimo produto",4,3,12),
("Não vestiu bem","2021-11-22","O corte não é legal e a peça fica estranha ao vestir",1,2,10), ("Muito lindo","2020-10-22","Tecido excelente",4,1,9), 
("Lindo","2022-09-12","Muito top",4,5,8), ("","2022-05-10","servico de entrega demorou",2,4,7),
("","2022-03-02","Podia ser mais bonito",2,3,6), ("Maravilhosoooo","2022-03-04","Super valeu a pena",5,11,5),
("Detestei","2022-03-22","Muito ruim!",1,12,4), ("Precisei trocar","2021-01-02","O produto é bem maior do que o tamanho do site",3,6,3),
("Tamanho maior do que comprei","2022-03-22","Precisei trocar",3,5,8);

