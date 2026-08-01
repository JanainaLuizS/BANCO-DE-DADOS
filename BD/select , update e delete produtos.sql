drop database  GigaByteDB;

create database  GigaByteDB;


USE GigaByteDB;

create table if not exists produtos(
sku varchar(20) primary key,
nome_produto VARCHAR(100) NOT NULL,
categoria VARCHAR(50),
preco DECIMAL(10, 2) NOT NULL check (preco > 0), # esse checkgarante que não possa cadastrar n° negativo
quantidade_estoque INT NOT NULL DEFAULT 0 # o default significa se não tiver nada atribuido, ele automaticamente atribui o valor que vc colocar, no caso 0
);

-- Insere 20 produtos de uma vez
INSERT INTO produtos (sku, nome_produto, categoria, preco, quantidade_estoque) 
VALUES
-- HARDWARE
('HW001', 'SSD 1TB Kingston', 'Hardware', 450.00, 25),
('HW002', 'Placa de Vídeo RTX 4060', 'Hardware', 2200.00, 10),
('HW003', 'Memória RAM 16GB DDR4', 'Hardware', 320.00, 50),
('HW004', 'Processador Core i5', 'Hardware', 950.00, 15),
('HW005', 'Placa-mãe Asus B550', 'Hardware', 750.00, 0),
('HW006', 'Fonte 650W Corsair', 'Hardware', 410.00, 30),
('HW007', 'SSD 2TB Samsung Evo', 'Hardware', 850.00, 20),
('HW008', 'Gabinete Gamer ATX', 'Hardware', 380.00, 18),
('HW009', 'Processador Ryzen 7', 'Hardware', 1400.00, 12),
('HW010', 'Placa de Vídeo GTX 1660', 'Hardware', 1100.00, 0),
('HW011', 'Cooler CPU Water Cooler', 'Hardware', 550.00, 25),
('HW012', 'Placa de Vídeo RTX 4070 Ti', 'Hardware', 5200.00, 5),
('HW013', 'Memória RAM 32GB DDR5', 'Hardware', 980.00, 30),
('HW014', 'SSD M.2 NVMe 1TB', 'Hardware', 510.00, 40),
('HW015', 'Processador Core i9', 'Hardware', 3100.00, 8),
('HW016', 'Placa-mãe Z790', 'Hardware', 1800.00, 10),
('HW017', 'Fonte 1000W Modular', 'Hardware', 1100.00, 14),
('HW018', 'Gabinete MidTower Branco', 'Hardware', 430.00, 22),
('HW019', 'HD Externo 2TB USB 3.0', 'Hardware', 480.00, 55),
('HW020', 'SSD M.2 NVMe 2TB', 'Hardware', 1100.00, 30),
('HW021', 'Processador Ryzen 9', 'Hardware', 3400.00, 10),
('HW022', 'Placa de Vídeo RTX 4080', 'Hardware', 7500.00, 4),
('HW023', 'Memória RAM 64GB DDR5 (2x32)', 'Hardware', 1900.00, 15),
('HW024', 'Fonte 850W Gold Modular', 'Hardware', 800.00, 25),
('HW025', 'Placa-mãe AM5 X670', 'Hardware', 2100.00, 12),
('HW026', 'HD Interno 4TB SATA', 'Hardware', 600.00, 40),
('HW027', 'Placa de Captura 4K', 'Hardware', 900.00, 18),
('PER001', 'Mouse Gamer Logitech', 'Periféricos', 280.00, 100),
('PER002', 'Teclado Mecânico Redragon', 'Periféricos', 350.00, 70),
('PER003', 'Headset HyperX Cloud', 'Periféricos', 550.00, 40),
('PER004', 'Webcam Full HD Logitech', 'Periféricos', 220.00, 60),
('PER005', 'Microfone Condensador', 'Periféricos', 400.00, 35),
('PER006', 'Monitor Gamer 27" 144Hz', 'Periféricos', 1600.00, 18),
('PER007', 'Mouse Gamer Sem Fio', 'Periféricos', 450.00, 50),
('PER008', 'Teclado Mecânico 60%', 'Periféricos', 390.00, 60),
('PER009', 'Cadeira Gamer Premium', 'Periféricos', 1300.00, 15),
('PER010', 'Caixa de Som Bluetooth', 'Periféricos', 180.00, 70),
('PER011', 'Monitor Ultrawide 34" QHD', 'Periféricos', 2800.00, 10),
('PER012', 'Mouse Ergonômico Vertical', 'Periféricos', 260.00, 60),
('PER013', 'Teclado Mecânico TKL (80%)', 'Periféricos', 420.00, 50),
('PER014', 'Sistema de Som 2.1 (Desktop)', 'Periféricos', 350.00, 30),
('PER015', 'Mesa Digitalizadora (Tablet)', 'Periféricos', 600.00, 20),
('PER016', 'Joystick/Controle de Voo', 'Periféricos', 850.00, 5),
('PER017', 'Headset Sem Fio (Branco)', 'Periféricos', 580.00, 35),
('SW007', 'Microsoft Windows 11 Pro Original', 'Software', 899.00, 25),
('SW008', 'Pacote Microsoft Office 2021 Home & Student', 'Software', 599.00, 10),
('SW009', 'Antivírus Kaspersky Premium 1 Ano', 'Software', 129.90, 30),
('SW010', 'Adobe Photoshop CC Licença Mensal', 'Software', 89.90, 50),
('SW011', 'AutoCAD LT 2025 Licença Anual', 'Software', 3999.00, 3),
('SW012', 'Pacote Office 365 (Anual)', 'Software', 299.00, 800),
('SW013', 'Software Edição de Vídeo', 'Software', 750.00, 100),
('SW014', 'Software Edição de Imagem', 'Software', 450.00, 200),
('SW015', 'Software de Backup (Cloud 1TB)', 'Software', 199.90, 1000),
('ACC001', 'Mousepad Grande', 'Acessórios', 90.00, 200),
('ACC002', 'Cabo HDMI 2.1', 'Acessórios', 120.00, 150),
('ACC003', 'Filtro de Linha (8 Tomadas)', 'Acessórios', 75.00, 80),
('ACC004', 'Pasta Térmica (Seringa)', 'Acessórios', 85.00, 150),
('ACC005', 'Kit Fans RGB (3 Unidades)', 'Acessórios', 210.00, 45),
('ACC006', 'Suporte p/ Headset', 'Acessórios', 60.00, 90),
('ACC007', 'Organizador de Cabos', 'Acessórios', 45.00, 300),
('ACC008', 'Hub USB-C (7 em 1)', 'Acessórios', 230.00, 100),
('ACC009', 'Kit de Limpeza para Telas', 'Acessórios', 50.00, 250),
('ACC010', 'Suporte Vertical para Notebook', 'Acessórios', 110.00, 80),
('ACC011', 'Cabo HDMI 2.0 2 Metros Gold', 'Acessórios', 39.90, 60),
('ACC012', 'Suporte Articulado para Monitor ELG F80N', 'Acessórios', 229.90, 14),
('ACC013', 'Mouse Pad Redragon P010 RGB', 'Acessórios', 129.00, 22),
('ACC014', 'Hub USB 3.0 4 Portas Orico', 'Acessórios', 89.90, 35),
('ACC015', 'Base Refrigerada para Notebook Cooler Master Notepal L2', 'Acessórios', 149.90, 17);

#Pedido: "Preciso dos 3 produtos mais baratos da categoria 'Hardware' que tenhamos em estoque (quantidade_estoque > 0) para a promoção da página inicial."

select * from  produtos 
where categoria = 'hardware' and quantidade_estoque > 0  order by preco asc limit 3;

#Pedido: "Quero uma lista de todos os produtos (nome e SKU) que estão com
#estoque zerado (quantidade_estoque = 0) para eu poder fazer o pedido de reposição."

select nome_produto, sku from  produtos 
where quantidade_estoque = 0;

#Pedido: "Quais são os nossos 2 produtos mais caros da loja inteira? Quero o nome e o preço."

select nome_produto, preco from  produtos 
order by preco desc limit 2;

#Pedido: "Um cliente ligou procurando por 'Placas'. Gere um relatório de todos os produtos que contenham a palavra 'Placa' em seu nome (Ex: Placade Vídeo, Placa-mãe)."

select * from  produtos 
where nome_produto like '%placa%' ; # símbolo antes e depois garante pegar a palavra placa em qualquer posição da frase

#Pedido: Mostrar os 3 produtos mais caros da categoria 'Periféricos'

select * from  produtos 
where categoria like 'Periféricos' order by preco desc limit 3;

#Exercício 1
#A loja recebeu um novo lote de placas-mãe Asus B550.
#Atualize o campo quantidade_estoque para 25 unidades onde o SKU for HW005.

update produtos
set quantidade_estoque = 25
where SKU = 'HW005' ; 

#Exercício 2
#A placa de vídeo GTX 1660 chegou novamente ao estoque.
#Defina quantidade_estoque como 10 para o SKU HW010.

update produtos
set quantidade_estoque = 10
where SKU = 'HW010' ; 


#Exercício 3
#O produto RTX 4070 Ti teve uma redução de preço para R$ 4999,00.
#Atualize o preço desse produto (SKU HW012).

update produtos
set preco = 4999.00
where SKU = 'HW012' ; 

#Exercício 4
#A descrição da Fonte 1000W Modular deve incluir a certificação “80 Plus Gold”.
#Atualize o campo nome_produto para refletir essa informação (SKU HW017).

update produtos
set nome_produto = 'Fonte 1000W Modular certificação 80 Plus Gold '
where SKU = 'HW017' ; 

#Exercício 5
#O Teclado Mecânico Redragon entrou em promoção.
#Altere o preço para R$ 329,00 (SKU PER002).

update produtos
set preco = 329.00
where SKU = 'PER002' ; 

#Exercício 6
#Chegaram mais 10 unidades da Cadeira Gamer Premium.
#Atualize quantidade_estoque para 25 (SKU PER009).

update produtos
set quantidade_estoque = 25
where SKU = 'PER009' ; 

#Exercício 7
#O Monitor Ultrawide 34" QHD teve redução de preço para R$ 2699,00.
#Atualize o valor (SKU PER011).

update produtos
set preco = 2699.00
where SKU = 'PER011' ; 

#Exercício 8
#O produto Joystick/Controle de Voo teve estoque atualizado para 8 unidades.

update produtos
set quantidade_estoque = 8
where nome_produto = 'Joystick/Controle de Voo' ; 

#Exercício 9
#O produto Microsoft 365 deve ter seu nome completo com “(Assinatura Anual)”.
# Atualize nome_produto (SKU SW012).

update produtos
set nome_produto = ' Microsoft 365 com Assinatura Anual'
where SKU = 'SW012' ; 

#Exercício 1 – Remover produto descontinuado
#O produto Placa-mãe antiga com SKU HW005 foi definitivamente descontinuado.

delete from produtos
where SKU = 'HW005';

#Exercício 2 – Remover software expirado do catálogo
#O software SW008 Pacote Microsoft Office 2021 Home & Student) não faz mais parte do catálogo digital.
#Exclua o registro do SKU SW008.

delete from produtos
where SKU = 'SW008';

#Exercício 3 – Excluir item com descrição duplicada
#A equipe identificou duplicidade no item de Cabos HDMI 2m com SKU ACC011.
#Remova o produto duplicado.

delete from produtos
where SKU = 'ACC011';

#Exercício 4 – Remover produto com estoque permanentemente zerado
#O produto HW010 está fora de linha e nunca será reposto. Exclua o item onde o SKU seja HW010.

delete from produtos
where SKU = 'HW010';

#Exercício 5 – Remover pacote antigo do Microsoft Office
#O pacote SW007 Microsoft Windows 11 Education Original será retirado do catálogo. Apague o item correspondente.

delete from produtos
where SKU = 'SW007';

select * from  produtos 
where SKU ='ACC011';




