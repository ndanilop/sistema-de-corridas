-- Inserção Tabela: Estados (20 tuplas)

INSERT INTO trabalho_final.Estados (id_estado, nome_estado, sigla_estado) VALUES

(1, 'São Paulo', 'SP'), (2, 'Rio de Janeiro', 'RJ'), (3, 'Minas Gerais', 'MG'), (4, 'Bahia', 'BA'), (5, 'Paraná', 'PR'),

(6, 'Rio Grande do Sul', 'RS'), (7, 'Santa Catarina', 'SC'), (8, 'Goiás', 'GO'), (9, 'Pernambuco', 'PE'), (10, 'Ceará', 'CE'),

(11, 'Amazonas', 'AM'), (12, 'Pará', 'PA'), (13, 'Mato Grosso', 'MT'), (14, 'Mato Grosso do Sul', 'MS'), (15, 'Distrito Federal', 'DF'),

(16, 'Espírito Santo', 'ES'), (17, 'Maranhão', 'MA'), (18, 'Piauí', 'PI'), (19, 'Rio Grande do Norte', 'RN'), (20, 'Paraíba', 'PB');



-- Inserção Tabela: Cidades (20 tuplas)

INSERT INTO trabalho_final.Cidades (id_cidade, nome_cidade, id_estado) VALUES

(1, 'São Paulo', 1), (2, 'Niterói', 2), (3, 'Belo Horizonte', 3), (4, 'Salvador', 4), (5, 'Curitiba', 5), (6, 'Porto Alegre', 6),

(7, 'Florianópolis', 7), (8, 'Goiânia', 8), (9, 'Recife', 9), (10, 'Fortaleza', 10), (11, 'Manaus', 11), (12, 'Belém', 12),

(13, 'Cuiabá', 13), (14, 'Campo Grande', 14), (15, 'Brasília', 15), (16, 'Vitória', 16), (17, 'São Luís', 17), (18, 'Teresina', 18),

(19, 'Natal', 19), (20, 'João Pessoa', 20);



-- Inserção Tabela: CEPs (20 tuplas)

INSERT INTO trabalho_final.CEPs (id_cep, cep, id_cidade) VALUES

(1, '01001-001', 1), (2, '24020-081', 2), (3, '30110-002', 3), (4, '40020-003', 4), (5, '80010-004', 5), (6, '90010-005', 6),

(7, '88010-006', 7), (8, '74003-007', 8), (9, '50030-008', 9), (10, '60025-009', 10), (11, '69005-010', 11), (12, '66010-011', 12),

(13, '78005-012', 13), (14, '79002-013', 14), (15, '70040-014', 15), (16, '29010-015', 16), (17, '65010-016', 17), (18, '64000-017', 18),

(19, '59012-018', 19), (20, '58010-019', 20);



-- Inserção Tabela: Enderecos (20 tuplas)

INSERT INTO trabalho_final.Enderecos (id_endereco, rua, numero, id_cep) VALUES

(1, 'Rua das Flores', '10', 1), (2, 'Avenida Central', '20', 2), (3, 'Praça da Liberdade', '30', 3), (4, 'Largo do Pelourinho', '40', 4),

(5, 'Rua das Araucárias', '50', 5), (6, 'Avenida Ipiranga', '60', 6), (7, 'Rua das Palmeiras', '70', 7), (8, 'Avenida Goiás', '80', 8),

(9, 'Rua da Moeda', '90', 9), (10, 'Avenida Beira Mar', '100', 10), (11, 'Rua dos Barés', '110', 11), (12, 'Avenida Presidente Vargas', '120', 12),

(13, 'Rua Joaquim Murtinho', '130', 13), (14, 'Avenida Afonso Pena', '140', 14), (15, 'Eixo Monumental', '150', 15), (16, 'Rua Sete de Setembro', '160', 16),

(17, 'Avenida Litorânea', '170', 17), (18, 'Avenida Frei Serafim', '180', 18), (19, 'Rua Pedro Afonso', '190', 19), (20, 'Avenida Epitácio Pessoa', '200', 20);



-- Inserção Tabela: Pessoas (60 tuplas)

INSERT INTO trabalho_final.Pessoas (id_pessoa, cpf, rg, data_nascimento, id_endereco) VALUES

(1, '111.111.111-01', '11.111.111-1', '1990-01-01', 1), (2, '111.111.111-02', '11.111.111-2', '1990-01-02', 2), (3, '111.111.111-03', '11.111.111-3', '1990-01-03', 3), (4, '111.111.111-04', '11.111.111-4', '1990-01-04', 4), (5, '111.111.111-05', '11.111.111-5', '1990-01-05', 5),

(6, '111.111.111-06', '11.111.111-6', '1990-01-06', 6), (7, '111.111.111-07', '11.111.111-7', '1990-01-07', 7), (8, '111.111.111-08', '11.111.111-8', '1990-01-08', 8), (9, '111.111.111-09', '11.111.111-9', '1990-01-09', 9), (10, '111.111.111-10', '11.111.111-0', '1990-01-10', 10),

(11, '111.111.111-11', '11.111.112-1', '1990-01-11', 11), (12, '111.111.111-12', '11.111.112-2', '1990-01-12', 12), (13, '111.111.111-13', '11.111.112-3', '1990-01-13', 13), (14, '111.111.111-14', '11.111.112-4', '1990-01-14', 14), (15, '111.111.111-15', '11.111.112-5', '1990-01-15', 15),

(16, '111.111.111-16', '11.111.112-6', '1990-01-16', 16), (17, '111.111.111-17', '11.111.112-7', '1990-01-17', 17), (18, '111.111.111-18', '11.111.112-8', '1990-01-18', 18), (19, '111.111.111-19', '11.111.112-9', '1990-01-19', 19), (20, '111.111.111-20', '11.111.112-0', '1990-01-20', 20),

(21, '222.222.222-21', '22.222.222-1', '1995-02-01', 1), (22, '222.222.222-22', '22.222.222-2', '1995-02-02', 2), (23, '222.222.222-23', '22.222.222-3', '1995-02-03', 3), (24, '222.222.222-24', '22.222.222-4', '1995-02-04', 4), (25, '222.222.222-25', '22.222.222-5', '1995-02-05', 5),

(26, '222.222.222-26', '22.222.222-6', '1995-02-06', 6), (27, '222.222.222-27', '22.222.222-7', '1995-02-07', 7), (28, '222.222.222-28', '22.222.222-8', '1995-02-08', 8), (29, '222.222.222-29', '22.222.222-9', '1995-02-09', 9), (30, '222.222.222-30', '22.222.222-0', '1995-02-10', 10),

(31, '222.222.222-31', '22.222.223-1', '1995-02-11', 11), (32, '222.222.222-32', '22.222.223-2', '1995-02-12', 12), (33, '222.222.222-33', '22.222.223-3', '1995-02-13', 13), (34, '222.222.222-34', '22.222.223-4', '1995-02-14', 14), (35, '222.222.222-35', '22.222.223-5', '1995-02-15', 15),

(36, '222.222.222-36', '22.222.223-6', '1995-02-16', 16), (37, '222.222.222-37', '22.222.223-7', '1995-02-17', 17), (38, '222.222.222-38', '22.222.223-8', '1995-02-18', 18), (39, '222.222.222-39', '22.222.223-9', '1995-02-19', 19), (40, '222.222.222-40', '22.222.223-0', '1995-02-20', 20),

(41, '333.333.333-41', '33.333.333-1', '1985-03-01', 1), (42, '333.333.333-42', '33.333.333-2', '1985-03-02', 2), (43, '333.333.333-43', '33.333.333-3', '1985-03-03', 3), (44, '333.333.333-44', '33.333.333-4', '1985-03-04', 4), (45, '333.333.333-45', '33.333.333-5', '1985-03-05', 5),

(46, '333.333.333-46', '33.333.333-6', '1985-03-06', 6), (47, '333.333.333-47', '33.333.333-7', '1985-03-07', 7), (48, '333.333.333-48', '33.333.333-8', '1985-03-08', 8), (49, '333.333.333-49', '33.333.333-9', '1985-03-09', 9), (50, '333.333.333-50', '33.333.333-0', '1985-03-10', 10),

(51, '333.333.333-51', '33.333.334-1', '1985-03-11', 11), (52, '333.333.333-52', '33.333.334-2', '1985-03-12', 12), (53, '333.333.333-53', '33.333.334-3', '1985-03-13', 13), (54, '333.333.333-54', '33.333.334-4', '1985-03-14', 14), (55, '333.333.333-55', '33.333.334-5', '1985-03-15', 15),

(56, '333.333.333-56', '33.333.334-6', '1985-03-16', 16), (57, '333.333.333-57', '33.333.334-7', '1985-03-17', 17), (58, '333.333.333-58', '33.333.334-8', '1985-03-18', 18), (59, '333.333.333-59', '33.333.334-9', '1985-03-19', 19), (60, '333.333.333-60', '33.333.334-0', '1985-03-20', 20);



-- Inserção Tabela: Motoristas (20 tuplas)

INSERT INTO trabalho_final.Motoristas (id_motorista, cnh, conta_corrente) VALUES

(1, 'CNH001', 'CC001'), (2, 'CNH002', 'CC002'), (3, 'CNH003', 'CC003'), (4, 'CNH004', 'CC004'), (5, 'CNH005', 'CC005'), (6, 'CNH006', 'CC006'), (7, 'CNH007', 'CC007'), (8, 'CNH008', 'CC008'), (9, 'CNH009', 'CC009'), (10, 'CNH010', 'CC010'),

(11, 'CNH011', 'CC011'), (12, 'CNH012', 'CC012'), (13, 'CNH013', 'CC013'), (14, 'CNH014', 'CC014'), (15, 'CNH015', 'CC015'), (16, 'CNH016', 'CC016'), (17, 'CNH017', 'CC017'), (18, 'CNH018', 'CC018'), (19, 'CNH019', 'CC019'), (20, 'CNH020', 'CC020');



-- Inserção Tabela: Passageiros (22 tuplas)

INSERT INTO trabalho_final.Passageiros (id_passageiro, cartao) VALUES

(21, 'CARD021'), (22, 'CARD022'), (23, 'CARD023'), (24, 'CARD024'), (25, 'CARD025'), (26, 'CARD026'), (27, 'CARD027'), (28, 'CARD028'), (29, 'CARD029'), (30, 'CARD030'),

(31, 'CARD031'), (32, 'CARD032'), (33, 'CARD033'), (34, 'CARD034'), (35, 'CARD035'), (36, 'CARD036'), (37, 'CARD037'), (38, 'CARD038'), (39, 'CARD039'),

(41, 'CARD041'), (42, 'CARD042'), (43, 'CARD043');



-- Inserção Tabela: Atendentes (20 tuplas)

INSERT INTO trabalho_final.Atendentes (id_atendente, formacao) VALUES

(41, 'Administração'), (42, 'Psicologia'), (43, 'Comunicação'), (44, 'Direito'), (45, 'Letras'), (46, 'Turismo'), (47, 'Marketing'), (48, 'Contabilidade'), (49, 'Recursos Humanos'), (50, 'Relações Públicas'),

(51, 'Engenharia'), (52, 'História'), (53, 'Geografia'), (54, 'Filosofia'), (55, 'Sociologia'), (56, 'Pedagogia'), (57, 'Ciências Sociais'), (58, 'Jornalismo'), (59, 'Publicidade'), (60, 'Design');



-- Inserção Tabela: Modelos (20 tuplas)

INSERT INTO trabalho_final.Modelos (id_modelo, modelo, marca, caracteristicas) VALUES

(1, 'Onix', 'Chevrolet', 'Hatch, Econômico'), (2, 'HB20', 'Hyundai', 'Hatch, Confortável'), (3, 'Kwid', 'Renault', 'Subcompacto, Ágil'), (4, 'Mobi', 'Fiat', 'Subcompacto, Urbano'), (5, 'Argo', 'Fiat', 'Hatch, Moderno'),

(6, 'Polo', 'Volkswagen', 'Hatch, Seguro'), (7, 'Corolla', 'Toyota', 'Sedan, Confiável'), (8, 'Civic', 'Honda', 'Sedan, Esportivo'), (9, 'Creta', 'Hyundai', 'SUV, Espaçoso'), (10, 'Renegade', 'Jeep', 'SUV, Robusto'),

(11, 'Compass', 'Jeep', 'SUV, Sofisticado'), (12, 'T-Cross', 'Volkswagen', 'SUV, Tecnológico'), (13, 'Tracker', 'Chevrolet', 'SUV, Conectado'), (14, 'Kicks', 'Nissan', 'SUV, Design Arrojado'), (15, 'Hilux', 'Toyota', 'Picape, Forte'),

(16, 'S10', 'Chevrolet', 'Picape, Durável'), (17, 'Toro', 'Fiat', 'Picape, Versátil'), (18, 'Strada', 'Fiat', 'Picape, Compacta'), (19, 'Fit', 'Honda', 'Monovolume, Flexível'), (20, 'Versa', 'Nissan', 'Sedan, Porta-malas Grande');



-- Inserção Tabela: Veiculos (20 tuplas)

INSERT INTO trabalho_final.Veiculos (id_veiculo, renavam, data_compra, preco, id_modelo, ano, id_motorista) VALUES

(1, 'REN001', '2023-01-10', 75000, 1, 2023, 1), (2, 'REN002', '2023-02-11', 78000, 2, 2023, 2), (3, 'REN003', '2023-03-12', 65000, 3, 2023, 3), (4, 'REN004', '2023-04-13', 95000, 5, 2023, 4),

(5, 'REN005', '2024-01-14', 110000, 6, 2024, 5), (6, 'REN006', '2022-08-15', 140000, 7, 2022, 6), (7, 'REN007', '2023-07-16', 130000, 9, 2023, 7), (8, 'REN008', '2022-09-17', 150000, 10, 2022, 8),

(9, 'REN009', '2024-02-18', 180000, 11, 2024, 9), (10, 'REN010', '2023-06-19', 135000, 12, 2023, 10), (11, 'REN011', '2022-04-20', 125000, 13, 2022, 11), (12, 'REN012', '2022-10-21', 115000, 14, 2022, 12),

(13, 'REN013', '2023-08-22', 220000, 15, 2023, 13), (14, 'REN014', '2022-12-23', 160000, 17, 2022, 14), (15, 'REN015', '2024-03-24', 105000, 18, 2024, 15), (16, 'REN016', '2023-05-25', 80000, 1, 2023, 16),

(17, 'REN017', '2022-03-26', 82000, 2, 2022, 17), (18, 'REN018', '2024-04-27', 68000, 4, 2024, 18), (19, 'REN019', '2023-11-28', 145000, 8, 2023, 19), (20, 'REN020', '2022-07-29', 190000, 16, 2022, 20);



-- Inserção Tabela: Seguradoras (20 tuplas)

INSERT INTO trabalho_final.Seguradoras (id_seguradora, cnpj, nome, telefone, id_endereco) VALUES

(1, '11.111.111/0001-11', 'Porto Seguro', '(11) 3333-3333', 1), (2, '22.222.222/0001-22', 'Bradesco Seguros', '(21) 2222-2222', 2), (3, '33.333.333/0001-33', 'SulAmérica', '(31) 3131-3131', 3), (4, '44.444.444/0001-44', 'Tokio Marine', '(11) 4444-4444', 4),

(5, '55.555.555/0001-55', 'Allianz Seguros', '(51) 5555-5555', 5), (6, '66.666.666/0001-66', 'Mapfre Seguros', '(61) 6666-6666', 6), (7, '77.777.777/0001-77', 'HDI Seguros', '(71) 7777-7777', 7), (8, '88.888.888/0001-88', 'Liberty Seguros', '(81) 8888-8888', 8),

(9, '99.999.999/0001-99', 'Sompo Seguros', '(91) 9999-9999', 9), (10, '10.101.010/0001-01', 'Zurich Seguros', '(12) 1010-1010', 10), (11, '12.345.678/0001-99', 'Caixa Seguradora', '(13) 1234-5678', 11), (12, '23.456.789/0001-88', 'Azul Seguros', '(14) 2345-6789', 12),

(13, '34.567.890/0001-77', 'Alfa Seguradora', '(15) 3456-7890', 13), (14, '45.678.901/0001-66', 'Generali', '(16) 4567-8901', 14), (15, '56.789.012/0001-55', 'Itaú Seguros', '(17) 5678-9012', 15), (16, '67.890.123/0001-44', 'Mitsui Sumitomo', '(18) 6789-0123', 16),

(17, '78.901.234/0001-33', 'Fairfax Brasil', '(19) 7890-1234', 17), (18, '89.012.345/0001-22', 'Essor Seguros', '(20) 8901-2345', 18), (19, '90.123.456/0001-11', 'Argo Seguros', '(21) 9012-3456', 19), (20, '01.234.567/0001-00', 'Chubb Seguros', '(41) 0123-4567', 20);



-- Inserção Tabela: Seguradora_Veiculos (20 tuplas)

INSERT INTO trabalho_final.Seguradora_Veiculos (id_veiculo, id_seguradora, valor, apolice) VALUES

(1, 1, 2500, 'AP-001'), (2, 1, 2600, 'AP-002'), (3, 1, 2200, 'AP-003'), (4, 4, 3000, 'AP-004'), (5, 4, 3500, 'AP-005'), (6, 6, 4000, 'AP-006'), (7, 7, 3800, 'AP-007'), (8, 8, 4200, 'AP-008'),

(9, 9, 4800, 'AP-009'), (10, 10, 4100, 'AP-010'), (11, 11, 3900, 'AP-011'), (12, 12, 3700, 'AP-012'), (13, 13, 5500, 'AP-013'), (14, 14, 4500, 'AP-014'), (15, 15, 3600, 'AP-015'), (16, 16, 2550, 'AP-016'),

(17, 17, 2650, 'AP-017'), (18, 18, 2300, 'AP-018'), (19, 19, 4300, 'AP-019'), (20, 20, 5000, 'AP-020');



-- Inserção Tabela: Motorista_Corridas (25 tuplas)

INSERT INTO trabalho_final.Motorista_Corridas (id_passageiro, numero_corrida, id_motorista) VALUES

(21, 1, 1), (22, 1, 2), (23, 1, 3), (24, 1, 4), (25, 1, 5), (26, 1, 6), (21, 2, 7), (27, 1, 8), (28, 1, 9), (29, 1, 10),

(30, 1, 11), (31, 1, 12), (32, 1, 13), (33, 1, 14), (34, 1, 15), (35, 1, 16), (36, 1, 17), (41, 1, 18), (22, 2, 19), (23, 2, 20),

(41, 2, 1), (42, 1, 2), (42, 2, 3), (43, 1, 4), (43, 2, 5);



-- Inserção Tabela: Corridas (25 tuplas)

INSERT INTO trabalho_final.Corridas (numero_corrida, id_passageiro, valor_passageiro, data_inicio, hora_inicio, data_fim, hora_fim, valor_corrida, id_endereco, complemento) VALUES

-- Corridas Compartilhadas (valor_corrida = valor_passageiro + soma das caronas)

(1, 21, 25.50, '2022-01-01', '08:00', '2022-01-01', '08:20', 85.50, 1, 'Bloco A'), -- CORRIGIDO: Total era 40.50, correto é 85.50 (25.50 + 4*15.00)

(1, 22, 30.00, '2022-01-02', '09:15', '2022-01-02', '09:45', 130.00, 2, NULL), -- CORRIGIDO: Total era 55.00, correto é 130.00 (30.00 + 4*25.00)

(2, 23, 17.50, '2015-07-01', '10:00', '2015-07-01', '10:15', 67.50, 20, 'Praça'), -- CORRIGIDO: Total era 30.00, correto é 67.50 (17.50 + 4*12.50)

(1, 30, 12.50, '2015-04-11', '20:10', '2015-04-11', '20:20', 42.50, 11, NULL), -- CORRIGIDO: Total era 12.50, correto é 42.50 (12.50 + 3*10.00)

(1, 31, 55.00, '2024-04-12', '23:00', '2024-04-12', '23:50', 100.00, 12, 'Hotel'), -- CORRIGIDO: Total era 55.00, correto é 100.00 (55.00 + 3*15.00)

(1, 33, 31.00, '2024-05-14', '18:00', '2024-05-14', '18:40', 36.00, 14, NULL), -- CORRIGIDO: Total era 31.00, correto é 36.00 (31.00 + 5.00)

(1, 34, 28.00, '2012-05-15', '09:20', '2012-05-15', '09:55', 33.00, 15, NULL), -- CORRIGIDO: Total era 28.00, correto é 33.00 (28.00 + 5.00)



-- Corridas Individuais (valor_corrida = valor_passageiro)

(1, 23, 15.75, '2024-01-03', '14:00', '2024-01-03', '14:15', 15.75, 3, 'Em frente ao correio'),

(1, 24, 45.00, '2024-01-04', '18:30', '2024-01-04', '19:10', 45.00, 4, NULL),

(1, 25, 22.80, '2024-02-05', '11:00', '2024-02-05', '11:25', 22.80, 5, NULL),

(1, 26, 18.00, '2024-02-06', '07:30', '2024-02-06', '07:50', 18.00, 6, 'Apto 101'),

(2, 21, 21.00, '2024-02-07', '22:00', '2024-02-07', '22:20', 21.00, 7, NULL),

(1, 27, 20.00, '2024-03-08', '13:00', '2024-03-08', '13:30', 20.00, 8, 'Portão B'),

(1, 28, 19.50, '2024-03-09', '16:45', '2024-03-09', '17:05', 19.50, 9, NULL),

(1, 29, 33.20, '2024-03-10', '10:00', '2024-03-10', '10:40', 33.20, 10, 'Casa'),

(1, 32, 25.00, '2024-04-13', '08:00', '2024-04-13', '08:30', 25.00, 13, NULL),

(1, 35, 14.90, '2024-05-16', '12:00', '2024-05-16', '12:15', 14.90, 16, 'Empresa'),

(1, 36, 38.60, '2024-06-17', '15:10', '2024-06-17', '15:55', 38.60, 17, NULL),

(1, 41, 18.50, '2024-06-18', '19:00', '2024-06-18', '19:20', 18.50, 18, 'Faculdade'),

(2, 22, 24.00, '2024-06-19', '13:30', '2024-06-19', '14:00', 24.00, 19, NULL),

(2, 41, 25.00, '2024-07-10', '12:00', '2024-07-10', '12:30', 25.00, 1, 'Segunda corrida do Atendente 41'),

(1, 42, 15.00, '2024-07-02', '11:00', '2024-07-02', '11:15', 15.00, 5, 'Corrida do Atendente 42'),

(2, 42, 35.50, '2024-07-03', '15:30', '2024-07-03', '16:00', 35.50, 8, 'Outra corrida do Atendente 42'),

(1, 43, 22.00, '2024-07-04', '09:00', '2024-07-04', '09:25', 22.00, 10, 'Corrida do Atendente 43'),

(2, 43, 19.80, '2024-07-05', '18:00', '2024-07-05', '18:20', 19.80, 12, 'Outra corrida do Atendente 43');



-- Inserção Tabela: Caronas (20 tuplas)

INSERT INTO trabalho_final.Caronas (id_caronista, numero_corrida, id_passageiro, valor_carona) VALUES

(22, 1, 21, 15.00), (23, 1, 21, 15.00), (24, 1, 21, 15.00), (25, 1, 21, 15.00),

(21, 1, 22, 25.00), (23, 1, 22, 25.00), (24, 1, 22, 25.00), (25, 1, 22, 25.00),

(21, 2, 23, 12.50), (22, 2, 23, 12.50), (24, 2, 23, 12.50), (25, 2, 23, 12.50),

(26, 1, 30, 10.00), (27, 1, 30, 10.00), (28, 1, 30, 10.00),

(29, 1, 31, 15.00), (30, 1, 31, 15.00), (32, 1, 31, 15.00),

(33, 1, 34, 5.00),

(34, 1, 33, 5.00);



-- Inserção Tabela: Atendimentos (25 tuplas)

INSERT INTO trabalho_final.Atendimentos (id_passageiro, numero_corrida, id_atendente) VALUES

(21, 1, 41), (22, 1, 42), (23, 1, 43), (24, 1, 44), (25, 1, 45), (26, 1, 46), (21, 2, 47), (27, 1, 48), (28, 1, 49), (29, 1, 50),

(30, 1, 51), (31, 1, 52), (32, 1, 53), (33, 1, 54), (34, 1, 55), (35, 1, 56), (36, 1, 57), (41, 1, 58), (22, 2, 59), (23, 2, 60),

(41, 2, 41), (42, 1, 42), (42, 2, 42), (43, 1, 43), (43, 2, 43);



-- Inserção Tabela: Perguntas (24 tuplas)

INSERT INTO trabalho_final.Perguntas (id_passageiro, numero_corrida, numero_pergunta, pergunta, resposta) VALUES

(21, 1, 1, 'Esqueci minha carteira, e agora?', 'Vamos contatar o motorista.'),

(21, 1, 2, 'Vou buscar, e agora?', 'Buscar o que'),

(21, 1, 3, 'A carteira', 'Nao vai!'),

(22, 1, 1, 'Gostaria de elogiar o motorista.', 'Obrigado! Seu elogio foi registrado.'),

(23, 1, 1, 'A rota foi muito longa.', 'Sentimos muito, vamos analisar o trajeto.'),

(24, 1, 1, 'Como avaliar a corrida?', 'Você pode avaliar no final da viagem pelo app.'),

(25, 1, 1, 'O carro estava sujo.', 'Pedimos desculpas, vamos notificar o motorista.'),

(26, 1, 1, 'Posso levar meu pet?', 'Sim, na categoria PET.'),

(21, 2, 1, 'Qual o valor final?', 'O valor final foi R$21,00.'),

(27, 1, 1, 'A cobrança foi duplicada.', 'Vamos estornar o valor imediatamente.'),

(28, 1, 1, 'O motorista foi rude.', 'Lamentamos o ocorrido. Medidas serão tomadas.'),

(29, 1, 1, 'Como usar cupom de desconto?', 'Na tela de pagamento, insira o código do cupom.'),

(30, 1, 1, 'Esqueci um objeto no carro.', 'Por favor, descreva o objeto.'),

(31, 1, 1, 'O ar condicionado não funcionava.', 'Feedback registrado. Obrigado por nos avisar.'),

(32, 1, 1, 'Posso adicionar uma parada?', 'Sim, antes de confirmar a corrida.'),

(33, 1, 1, 'O motorista não encontrou o endereço.', 'Vamos verificar o localizador do motorista.'),

(34, 1, 1, 'A música estava muito alta.', 'Entendido. Vamos orientar nossos parceiros.'),

(35, 1, 1, 'Como cancelar a corrida?', 'Pelo botão "Cancelar" no aplicativo.'),

(36, 1, 1, 'Qual a placa do carro?', 'A placa é informada no app ao aceitar a corrida.'),

(41, 1, 1, 'Obrigado pelo serviço!', 'Nós que agradecemos a preferência!'),

(22, 2, 1, 'A viagem foi tranquila?', 'Sim, foi tudo ótimo!'),

(23, 2, 1, 'Posso pedir para outra pessoa?', 'Sim, basta alterar o nome do passageiro.'),

(22, 1, 2, 'Onde posso ver os detalhes do motorista elogiado?', 'Você pode ver o histórico de corridas no seu perfil no app.'),

(22, 2, 2, 'O carro era um modelo diferente do que aparecia no app.', 'Pedimos desculpas pela inconsistência. Vamos verificar o cadastro do veículo.');


