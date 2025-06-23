-- Inserir Categorias
INSERT INTO tb_categoria (id, descricao) VALUES (1, 'Curso');
INSERT INTO tb_categoria (id, descricao) VALUES (2, 'Oficina');

-- Inserir Participantes
INSERT INTO tb_participante (id, nome, email) VALUES (1, 'José Silva', 'jose@gmail.com');
INSERT INTO tb_participante (id, nome, email) VALUES (2, 'Tiago Faria', 'tiago@gmail.com');
INSERT INTO tb_participante (id, nome, email) VALUES (3, 'Maria do Rosário', 'maria@gmail.com');
INSERT INTO tb_participante (id, nome, email) VALUES (4, 'Teresa Silva', 'teresa@gmail.com');

-- Inserir Atividades
-- Note que o 'preco' é FLOAT no seu DDL, então use um ponto decimal.
-- Certifique-se de que a coluna categoria_id existe e está populada corretamente.
INSERT INTO tb_atividade (id, nome, descricao, preco, categoria_id) VALUES (1, 'Curso de HTML', 'Aprenda HTML de forma prática', 80.00, 1);
INSERT INTO tb_atividade (id, nome, descricao, preco, categoria_id) VALUES (2, 'Oficina de Github', 'Controle versões de seus projetos', 50.00, 2);

-- Inserir Blocos
-- As datas e horas devem estar no formato ISO 8601 para TIMESTAMP WITH TIME ZONE
INSERT INTO tb_bloco (id, inicio, fim, atividade_id) VALUES (1, '2017-09-25T08:00:00-03:00', '2017-09-25T11:00:00-03:00', 1);
INSERT INTO tb_bloco (id, inicio, fim, atividade_id) VALUES (2, '2017-09-25T14:00:00-03:00', '2017-09-25T18:00:00-03:00', 1);
INSERT INTO tb_bloco (id, inicio, fim, atividade_id) VALUES (3, '2017-09-26T08:00:00-03:00', '2017-09-26T11:00:00-03:00', 2);

-- Inserir Associações Atividade-Participante (tabela de junção)
INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (1, 1); -- Curso de HTML (a1) - José Silva (p1)
INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (2, 1); -- Oficina de Github (a2) - José Silva (p1)
INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (1, 2); -- Curso de HTML (a1) - Tiago Faria (p2)
INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (2, 3); -- Oficina de Github (a2) - Maria do Rosário (p3)
INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (2, 4); -- Oficina de Github (a2) - Teresa Silva (p4)