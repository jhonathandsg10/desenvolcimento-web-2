INSERT INTO TB_ASSOCIADO (nome, cpf, data_nascimento, telefone, email, endereco) VALUES ('Maria Aparecida', '123.456.789-78', '1990-10-21', '(67) 98888-5555', 'maria@gmail.com', 'Av. Dourados, 123, Centro, Naviraí-MS');
INSERT INTO TB_ASSOCIADO (nome, cpf, data_nascimento, telefone, email, endereco) VALUES ('João Aclecio da Silva', '123.456.789-78', '1990-10-21', '(67) 98888-5555', 'joao@gmail.com', 'Av. Dourados, 123, Centro, Naviraí-MS');
INSERT INTO TB_ASSOCIADO (nome, cpf, data_nascimento, telefone, email, endereco) VALUES ('Pedro Henrique', '123.456.789-78', '1990-10-21', '(67) 98888-5555', 'pedro@gmail.com', 'Av. Dourados, 123, Centro, Naviraí-MS');
INSERT INTO TB_ASSOCIADO (nome, cpf, data_nascimento, telefone, email, endereco) VALUES ('Catarina Alcantara', '123.456.789-78', '1990-10-21', '(67) 98888-5555', 'catarina@gmail.com', 'Av. Dourados, 123, Centro, Naviraí-MS');
INSERT INTO TB_ASSOCIADO (nome, cpf, data_nascimento, telefone, email, endereco) VALUES ('Izabel de Lima', '123.456.789-78', '1990-10-21', '(67) 98888-5555', 'izabel@gmail.com', 'Av. Dourados, 123, Centro, Naviraí-MS');

INSERT INTO TB_EQUIPAMENTO (nome, descricao, marca, categoria, foto, valor, quantidade) VALUES ('Andador de Alumínio D10-130KG', 'Suporta até 130kg. 3 em 1: Andador fixo, articulado e móvel; Estrutura dobrável, fácil de guardar e transportar. Par de rodas opcional. Marcha silenciosa. Regulagem de altura.', 'Dellamed', 'ANDADOR', 'https://m.media-amazon.com/images/I/41CJJfky8zL._AC_SY450_.jpg', 195.97, 10);

INSERT INTO TB_EQUIPAMENTO (nome, descricao, marca, categoria, foto, valor, quantidade) VALUES ('Cadeira de Banho', 'A Cadeira de Banho Higiênica D40 da Dellamed é multifuncional: uso sobre o vaso sanitário, para banho e para locomoção interna na casa. É considerada a cadeira de banho de melhor custo benefício da categoria. A cadeira possui 4 rodas que facilitam a movimentação do usuário mesmo em locais com espaços reduzidos: giros de 360º. É dobrável e desmontável, o que facilita guardá-la após o uso. A D40 vem com suporte para comadre, apoio de braços ergonômico, encosto em material sintético flexível e apoio de pés removível.', 'Dellamed', 'CADEIRA_DE_BANHO', 'https://m.media-amazon.com/images/I/51RCd82VntL._AC_SL1000_.jpg', 389.00, 12);

INSERT INTO TB_EQUIPAMENTO_ITEM (numero_serie, situacao, id_equipamento_fk) VALUES ('12T56DE', 'DISPONIVEL', 1);
INSERT INTO TB_EQUIPAMENTO_ITEM (numero_serie, situacao, id_equipamento_fk) VALUES ('12T56DR', 'EMPRESTADO', 1);

INSERT INTO TB_EQUIPAMENTO_ITEM (numero_serie, situacao, id_equipamento_fk) VALUES ('326GRS', 'RESERVADO', 2);
INSERT INTO TB_EQUIPAMENTO_ITEM (numero_serie, situacao, id_equipamento_fk) VALUES ('126GRS', 'EMPRESTADO', 2);
