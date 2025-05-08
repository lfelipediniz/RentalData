-- atividade3_3-2.sql: carga de dados fictícios para a base atividade3_bd

-- 1) Hospede (15 tuplas)
INSERT INTO hospede(cpf, nome, sobrenome, datanascimento, sexo, endereco, telefone, email, senha) VALUES
('11111111111','Zé','Hospedante','1985-03-12','M','Rua dos Alfeneiros, 4','(11)1111-1111','ze@hospede.com','senhaZ3'),
('22222222222','Maria','Visitante','1990-07-24','F','Av. Brasil, 1000','(21)2222-2222','maria@visit.com','senhaM4'),
('33333333333','Pedro','Explorador','1978-01-05','M','Rua das Flores, 77','(31)3333-3333','pedro@explor.com','p3dr0'),
('44444444444','Ana','Caiada','1995-10-12','F','Praça Central, 5',NULL,'ana@caiada.com','aN4!'),
('55555555555','Lucas','Turista','1988-04-30','M','Rua Beija-Flor, 200','(41)5555-5555',NULL,'tur1sta'),
('66666666666','Joana','Pé-de-Moleque','1992-12-15','F','Av. Paulista, 1500','(11)6666-6666','joana@pdm.com','moleque'),
('77777777777','Rafael','Rodrigues','1983-09-09','M','Travessa X, 23','(51)7777-7777','rafael@rod.com','r4fael'),
('88888888888','Carla','Aventureira','1996-06-18','F','Rua Sol Nascente, 12',NULL,'carla@aventura.com','avent1ra'),
('99999999999','Bruno','Peregrino','1980-02-28','M','Av. Mar, 350','(61)9999-9999','bruno@peregrino.com','peregr1no'),
('10101010101','Paula','Descobridora','1991-08-08','F','Rua Lagoa, 90','(71)0000-0000','paula@descubre.com','d3sc0b'),
('12121212121','Tiago','Errante','1987-11-11','M','Av. Verde, 45','(81)1212-1212',NULL,'errante'),
('13131313131','Bianca','Curiosa','1993-05-20','F','Rua Alegria, 99','(91)1313-1313','bianca@curiosa.com','cur10sa'),
('14141414141','Eduardo','Viajante','1982-03-03','M','Estrada Real, 1',NULL,'eduardo@viaja.com','v1aj4nte'),
('15151515151','Mariana','Hospedeira','1994-09-29','F','Rua Cristal, 58','(31)1515-1515',NULL,'h0spede'),
('16161616161','Fernando','Globetrotter','1985-12-25','M','Av. Gigante, 200','(21)1616-1616','fernando@globe.com','gl0be');

-- 2) Locador (15 tuplas)
INSERT INTO locador(cpf, nome, sobrenome, datanascimento, sexo, endereco, telefone, email, senha) VALUES
('17171717171','Zuleica','Anfitriã','1975-02-14','F','Rua Azul, 10','(11)1717-1717','zuleica@host.com','anfitRiA'),
('18181818181','Carlos','Morador','1969-05-18','M','Av. Solar, 205','(21)1818-1818','carlos@host.com','m0r4dor'),
('19191919191','Patrícia','Recepciona','1980-10-10','F','Rua das Laranjeiras, 7',NULL,'patricia@rec.com','recepT'),
('20202020202','Ricardo','Provedor','1978-11-22','M','Praça das Árvores, 15','(31)2020-2020','ricardo@prov.com','prov1dor'),
('21212121212','Letícia','BoaHospedagem','1982-07-07','F','Rua das Acácias, 100','(41)2121-2121',NULL,'b0ahosp'),
('22232323232','Mateus','CasaFeliz','1984-09-30','M','Av. Alegre, 250','(51)2223-2323','mateus@casafeliz.com','feliz123'),
('23232323232','Fernanda','PortaAberta','1979-12-12','F','Rua Libertad, 33','(61)2323-2323',NULL,'portAb'),
('24242424242','Gustavo','Portão','1986-04-04','M','Rua Entrada, 77','(71)2424-2424','gustavo@portao.com','p0rt4o'),
('25252525252','Larissa','Recep','1990-01-01','F','Av. Central, 10','(81)2525-2525','larissa@recp.com','r3c3p'),
('26262626262','Rogério','Hospedador','1977-03-03','M','Rua Amarela, 12',NULL,'rogerio@hosp.com','hosp3d'),
('27272727272','Tatiana','Chalé','1983-08-08','F','Chalé Encantado, s/n','(91)2727-2727','tatiana@chale.com','encant0'),
('28282828282','André','Aconchego','1975-06-06','M','Casa Aconchegante, 5','(31)2828-2828',NULL,'aconcheg0'),
('29292929292','Monica','BemVinda','1988-10-30','F','Rua BoasVindas, 66','(21)2929-2929','monica@bemvinda.com','bem012'),
('30303030303','Leandro','VistaLinda','1981-12-25','M','Av. Panorâmica, 123','(41)3030-3030','leandro@vista.com','vist4'),
('31313131313','Juliana','Serenidade','1976-11-11','F','Rua do Sossego, 11','(51)3131-3131',NULL,'seren1');

-- 3) Localizacao (15 tuplas)
INSERT INTO localizacao(id_localizacao, cidade, estado, pais, cep, bairro) VALUES
(1,'São Carlos','SP','Brasil','13566-250','Centro'),
(2,'Araraquara','SP','Brasil','14801-000','Jardim'),
(3,'Campinas','SP','Brasil','13040-001','Barão Geraldo'),
(4,'Rio Claro','SP','Brasil','13500-000','Vila Nova'),
(5,'Ibitinga','SP','Brasil','14900-000','Santo Antônio'),
(6,'Belo Horizonte','MG','Brasil','30140-002','Savassi'),
(7,'Curitiba','PR','Brasil','80010-000','Batel'),
(8,'Florianópolis','SC','Brasil','88010-000','Centro'),
(9,'Porto Alegre','RS','Brasil','90010-000','Moinhos de Vento'),
(10,'Fortaleza','CE','Brasil','60010-000','Meireles'),
(11,'Salvador','BA','Brasil','40010-000','Pelourinho'),
(12,'Brasília','DF','Brasil','70010-000','Asa Sul'),
(13,'Manaus','AM','Brasil','69010-000','Centro'),
(14,'Recife','PE','Brasil','50010-000','Boa Vista'),
(15,'Belém','PA','Brasil','66010-000','Cidade Velha');

-- 4) Comodidade (15 tuplas)
INSERT INTO comodidade(nome) VALUES
('WiFi'),('Ar Condicionado'),('Piscina'),('Cozinha'),('Estacionamento'),
('TV'),('Aquecedor'),('Cafeteira'),('Lavadora'),('Secadora'),
('Jardim'),('Churrasqueira'),('Pet Friendly'),('Academia'),('Elevador');

-- 5) Regra (10 tuplas)
INSERT INTO regra(tipo, permitido) VALUES
('Fumar', FALSE),
('Pets', TRUE),
('Som Alto', FALSE),
('Cozinhar', TRUE),
('Casa de Festa', FALSE),
('Churrasco', TRUE),
('Piscina Após 22h', FALSE),
('Visitas', TRUE),
('Uso da Churrasqueira', TRUE),
('Yoga no Jardim', TRUE);


-- 6) Propriedade (15 tuplas)
INSERT INTO propriedade(nome, tipo, endereco, nbanheiros, nquartos, preco_noite, noite_min, noite_max, maxhospedes, checkin, checkout, taxalimpeza, cpf_locador, id_localizacao) VALUES
('Casa Feliz','casa_inteira','Rua Alegre, 10',2,3,150.00,1,7,6,'14:00','12:00',50.00,'17171717171',1),
('Chalé Encantado','casa_inteira','Chalé Encantado, s/n',1,2,200.00,2,5,4,'15:00','11:00',60.00,'27272727272',2),
('Apartamento Solar','quarto_individual','Av. Solar, 205',1,1,80.00,1,10,2,'13:00','10:00',30.00,'18181818181',3),
('Loft Urbano','casa_inteira','Rua das Laranjeiras, 7',1,1,120.00,1,3,2,'14:00','11:00',40.00,'19191919191',4),
('Pousada do Lago','casa_inteira','Estrada Real, 1',3,5,300.00,2,10,10,'16:00','10:00',100.00,'14141414141',5),
('Studio Compacto','quarto_individual','Rua Sol Nascente, 12',1,1,90.00,1,5,2,'13:00','12:00',35.00,'33333333333',6),
('Sítio Verde','casa_inteira','Sítio Verde, Km 10',2,4,250.00,2,8,8,'15:00','11:00',80.00,'22232323232',7),
('Cobertura Panorâmica','casa_inteira','Av. Panorâmica, 123',2,3,400.00,3,7,6,'14:00','12:00',120.00,'30303030303',8),
('Chácara Bom Jesus','casa_inteira','Chácara Bom Jesus, 5',2,6,350.00,2,10,12,'15:00','10:00',90.00,'28282828282',9),
('Apartamento Estilo','quarto_compartilhado','Rua Cristal, 58',1,2,60.00,1,15,4,'12:00','11:00',25.00,'15151515151',1),
('Casa da Serra','casa_inteira','Rua da Serra, 100',2,4,180.00,1,7,5,'14:00','12:00',55.00,'66666666666',2),
('Flat Central','quarto_individual','Av. Central, 10',1,1,110.00,1,30,2,'13:00','12:00',45.00,'25252525252',3),
('Pipoca Hostel','quarto_compartilhado','Praça Central, 5',1,4,40.00,1,20,8,'15:00','10:00',15.00,'44444444444',4),
('Casa do Sol','casa_inteira','Rua do Sol, 1',2,3,220.00,2,6,5,'14:00','11:00',65.00,'17171717171',5),
('Cabana Refúgio','casa_inteira','Estrada das Pedras, km 12',1,1,170.00,1,3,2,'14:00','11:00',40.00,'31313131313',10);



-- Quarto (cada propriedade 1-3 quartos)
INSERT INTO quarto(id_propriedade, numero, ncamas, tipocama, banheiroprivativo) VALUES
(1,1,1,'solteiro',FALSE),(1,2,1,'casal',FALSE),(1,3,2,'solteiro',TRUE),
(2,1,1,'casal',FALSE),(2,2,1,'solteiro',FALSE),
(3,1,1,'solteiro',FALSE),
(4,1,1,'casal',TRUE),
(5,1,2,'solteiro',TRUE),(5,2,2,'casal',TRUE),(5,3,1,'solteiro',FALSE),
(6,1,1,'solteiro',FALSE),
(7,1,2,'casal',TRUE),(7,2,1,'solteiro',FALSE),
(8,1,1,'solteiro',FALSE),(8,2,1,'solteiro',FALSE),
(9,1,3,'solteiro',TRUE);

-- Reserva (15 tuplas)
INSERT INTO reserva(datareserva, checkin, checkout, nhospedes, imposto, precototal, precocomtaxa, status, id_propriedade, cpf_hospede) VALUES
('2025-05-01','2025-05-10','2025-05-15',2,40.00,600.00,640.00,'confirmada',1,'11111111111'),
('2025-05-02','2025-05-12','2025-05-14',1,24.00,180.00,204.00,'pendente',2,'22222222222'),
('2025-05-03','2025-06-01','2025-06-05',4,80.00,1200.00,1280.00,'confirmada',3,'33333333333'),
('2025-05-04','2025-05-20','2025-05-25',6,180.00,1800.00,1980.00,'cancelada',5,'44444444444'),
('2025-05-05','2025-06-10','2025-06-12',2,32.00,360.00,392.00,'confirmada',6,'55555555555'),
('2025-05-06','2025-05-18','2025-05-22',8,320.00,2400.00,2720.00,'confirmada',7,'66666666666'),
('2025-05-07','2025-06-15','2025-06-18',3,96.00,360.00,456.00,'confirmada',8,'77777777777'),
('2025-05-08','2025-05-25','2025-05-28',5,150.00,900.00,1050.00,'pendente',9,'88888888888'),
('2025-05-09','2025-06-05','2025-06-10',2,80.00,300.00,380.00,'confirmada',10,'99999999999'),
('2025-05-10','2025-05-30','2025-06-02',1,25.00,110.00,135.00,'confirmada',11,'10101010101'),
('2025-05-11','2025-06-08','2025-06-12',4,160.00,720.00,880.00,'confirmada',12,'12121212121'),
('2025-05-12','2025-05-22','2025-05-26',3,90.00,540.00,630.00,'confirmada',13,'13131313131'),
('2025-05-13','2025-06-01','2025-06-04',6,360.00,1800.00,2160.00,'pendente',14,'14141414141'),
('2025-05-14','2025-06-10','2025-06-15',2,60.00,300.00,360.00,'confirmada',15,'15151515151'),
('2025-05-15','2025-05-20','2025-05-22',5,150.00,1100.00,1250.00,'confirmada',1,'16161616161');
