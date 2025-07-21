-- 1 Questao 1: Dado uma seguradora, identificar quais são os veículos com seguros sob suaresponsabilidade e listar as vigências das apólices.

SELECT
    s.nome AS nome_seguradora,     -- Nome da seguradora
    m.marca,                       -- Marca do veículo (ex: Honda, Ford)
    m.modelo,                      -- Modelo do veículo (ex: Civic, Ka)
    v.ano,                         -- Ano de fabricação do veículo
    v.renavam,                     -- Código RENAVAM do veículo (registro nacional)
    sv.apolice                    -- Número da apólice de seguro referente ao veículo
FROM
    trabalho_final.Seguradoras s  -- Tabela principal: seguradoras
JOIN
    trabalho_final.Seguradora_Veiculos sv  -- Tabela que relaciona seguradoras com veículos
    ON s.id_seguradora = sv.id_seguradora  -- Faz o vínculo entre as seguradoras e os veículos segurados
JOIN
    trabalho_final.Veiculos v     -- Tabela de veículos
    ON sv.id_veiculo = v.id_veiculo  -- Junta com veículos usando o id_veiculo
JOIN
    trabalho_final.Modelos m      -- Tabela com marca e modelo do veículo
    ON v.id_modelo = m.id_modelo  -- Junta com o modelo do veículo
WHERE
    s.id_seguradora = 1;          -- Filtro: só traz dados da seguradora com id 7 (você pode trocar pelo id desejado)

-- 2 questao: Dado um atendente, descubra se ele já usou o serviço de corridas e quando.

SELECT
    p.cpf AS cpf_do_atendente,         -- Seleciona o CPF da pessoa que é atendente
    a.id_atendente,                    -- Seleciona o ID do atendente
    c.data_inicio,                     -- Data em que a corrida começou
	c.data_fim,                        -- Data em que a corrida terminou
    c.hora_inicio,                     -- Hora em que a corrida começou
    c.hora_fim                         -- Hora em que a corrida terminou
FROM
    trabalho_final.Atendentes a        -- Tabela que armazena os dados dos atendentes
JOIN
    trabalho_final.Passageiros pas     -- Faz join com a tabela de passageiros
    ON a.id_atendente = pas.id_passageiro  -- Garante que o atendente também está registrado como passageiro
JOIN
    trabalho_final.Corridas c          -- Faz join com a tabela de corridas
    ON pas.id_passageiro = c.id_passageiro -- Busca todas as corridas feitas por esse passageiro (que é o atendente)
JOIN
    trabalho_final.Pessoas p           -- Faz join com a tabela de pessoas para pegar o CPF
    ON a.id_atendente = p.id_pessoa    -- Garante que estamos pegando o CPF da mesma pessoa (atendente)
WHERE
    a.id_atendente = 10;               -- Filtro: queremos apenas os dados do atendente 


-- 3 questao: Listar quais foram os passageiros que nunca fizeram uma corrida.

SELECT
    p.cpf,                  -- Seleciona o CPF da pessoa (da tabela Pessoas)
    pas.id_passageiro       -- Seleciona o ID do passageiro (da tabela Passageiros)
FROM
    trabalho_final.Passageiros pas             -- Tabela principal: Passageiros
LEFT JOIN
    trabalho_final.Corridas c                  -- Faz um LEFT JOIN com a tabela Corridas
    ON pas.id_passageiro = c.id_passageiro     -- Junta com base no ID do passageiro
JOIN
    trabalho_final.Pessoas p                   -- Junta com a tabela Pessoas (para pegar o CPF)
    ON pas.id_passageiro = p.id_pessoa         -- Relaciona o passageiro à pessoa correspondente
WHERE
    c.id_passageiro IS NULL;                   -- Filtra apenas passageiros que **não têm** nenhuma corrida

-- 4 Questao: Dado um passageiro, mostrar a quantidade de vezes onde ele foi o passageiro principal ou o caronista.

SELECT
    p.cpf,                 -- Seleciona o CPF da pessoa (da tabela Pessoas)
    p.id_pessoa,           -- Seleciona o ID da pessoa

    -- Subconsulta: conta quantas vezes a pessoa participou como passageiro principal em Corridas
    (SELECT COUNT(*)
     FROM trabalho_final.Corridas c
     WHERE c.id_passageiro = p.id_pessoa) AS corridas_como_principal,

    -- Subconsulta: conta quantas vezes a pessoa participou como caronista em Caronas
    (SELECT COUNT(*)
     FROM trabalho_final.Caronas ca
     WHERE ca.id_caronista = p.id_pessoa) AS corridas_como_caronista

FROM
    trabalho_final.Pessoas p              -- Tabela principal: Pessoas
WHERE
    p.id_pessoa = 45;                     -- Filtro: só retorna informações da pessoa com ID 21 (substitua conforme necessário)


-- Questao 5: Dada uma corrida, listar todas as perguntas e respostas feitas ao atendente responsável.

SELECT
    perg.numero_pergunta,            -- Número da pergunta (sequencial por corrida e passageiro)
    perg.pergunta,                   -- Texto da pergunta feita pelo passageiro
    perg.resposta,                   -- Resposta fornecida (pode ser NULL se ainda não respondida)
    atend.id_atendente,             -- ID do atendente que respondeu essa pergunta
    p_atendente.cpf AS cpf_do_atendente  -- CPF do atendente, recuperado da tabela Pessoas
FROM
    trabalho_final.Perguntas perg   -- Tabela de perguntas feitas durante um atendimento
JOIN
    trabalho_final.Atendimentos atend  -- Junta com a tabela de atendimentos
    ON perg.id_passageiro = atend.id_passageiro 
    AND perg.numero_corrida = atend.numero_corrida
    -- Junta a pergunta com o atendimento correspondente pelo passageiro e número da corrida
JOIN
    trabalho_final.Pessoas p_atendente  -- Junta com a tabela de pessoas para buscar os dados do atendente
    ON atend.id_atendente = p_atendente.id_pessoa
    -- O atendente também é uma pessoa, então usamos o ID para pegar seu CPF
WHERE
    perg.id_passageiro = 21        -- Filtro: apenas perguntas feitas pelo passageiro com ID 21
    AND perg.numero_corrida = 1;   -- Filtro: apenas as perguntas da corrida número 1

-- questao 6:  Listar todos os passageiros e o valor percentual pago por eles em corridas com mais de um passageiro.
SELECT
    p.cpf,                                     -- Seleciona o CPF da pessoa, vindo da tabela Pessoas.
    participantes.id_pessoa,                   -- Seleciona o ID da pessoa (seja passageiro principal ou caronista) da subconsulta.
    participantes.id_passageiro_principal,     -- Seleciona o ID do passageiro que solicitou a corrida, para agrupar visualmente.
    participantes.numero_corrida,              -- Seleciona o número da corrida.
    -- Arredonda o percentual pago para 2 casas decimais. A sintaxe '::numeric' é uma forma concisa de fazer o CAST no PostgreSQL.
    ROUND(participantes.percentual_pago::numeric, 2) AS percentual_pago
-- A fonte de dados principal é a subconsulta chamada 'participantes'.
FROM (
    -- Esta subconsulta interna une os dados de passageiros principais e caronistas.

    -- Parte 1: Calcula o percentual para os PASSAGEIROS PRINCIPAIS de corridas com carona.
    SELECT
        c.id_passageiro AS id_pessoa,                  -- O ID da pessoa nesta parte é o próprio passageiro principal.
        c.id_passageiro AS id_passageiro_principal,    -- Define o ID do passageiro principal.
        c.numero_corrida,                              -- O número da corrida.
        (c.valor_passageiro / c.valor_corrida) * 100 AS percentual_pago -- Calcula o percentual bruto pago por ele.
    FROM
        trabalho_final.Corridas c                      -- A fonte é a tabela de Corridas.
    WHERE
        -- Este filtro garante que apenas corridas compartilhadas sejam incluídas.
        -- Ele verifica se a combinação (id_passageiro, numero_corrida) existe na tabela de Caronas.
        (c.id_passageiro, c.numero_corrida) IN (SELECT DISTINCT id_passageiro, numero_corrida FROM trabalho_final.Caronas)

    -- O UNION ALL combina os resultados dos passageiros principais com os resultados dos caronistas.
    UNION ALL

    -- Parte 2: Calcula o percentual para os CARONISTAS.
    SELECT
        ca.id_caronista AS id_pessoa,                  -- O ID da pessoa nesta parte é o caronista.
        c.id_passageiro AS id_passageiro_principal,    -- Mantém a referência de quem solicitou a corrida.
        c.numero_corrida,                              -- O número da corrida.
        (ca.valor_carona / c.valor_corrida) * 100 AS percentual_pago -- Calcula o percentual bruto pago pelo caronista.
    FROM
        trabalho_final.Caronas ca                      -- A fonte principal aqui é a tabela de Caronas.
    -- Junta com a tabela Corridas para obter o valor total da corrida (valor_corrida).
    JOIN
        trabalho_final.Corridas c ON ca.id_passageiro = c.id_passageiro AND ca.numero_corrida = c.numero_corrida
-- A subconsulta inteira é apelidada de 'participantes'.
) AS participantes
-- Junta o resultado da subconsulta 'participantes' com a tabela Pessoas.
JOIN
    trabalho_final.Pessoas p ON participantes.id_pessoa = p.id_pessoa -- A junção é feita pelo ID da pessoa para buscar o CPF.
-- Ordena o resultado final para melhor visualização.
ORDER BY
    participantes.id_passageiro_principal, -- Agrupa todas as pessoas da mesma corrida juntas.
    participantes.numero_corrida,          -- Garante a ordem por corrida.
    participantes.percentual_pago DESC;    -- Mostra quem pagou a maior porcentagem primeiro dentro de cada corrida.

-- Questão 7: Listar todos os passageiros e mostrar a quantidade de vezes onde ele foi o passageiro principal ou o passageiro caronista.


SELECT
    p.id_pessoa AS id_passageiro,                                    -- Seleciona o ID da pessoa, vindo da tabela Pessoas.
    p.cpf AS cpf_passageiro,                                          -- Seleciona o CPF da pessoa para fácil identificação.
    p.rg AS rg_passageiro,                                            -- Seleciona o RG da pessoa.
    
    -- Usa COALESCE para transformar um resultado NULO (se o passageiro nunca foi principal) em 0.
    COALESCE(corridas_principais.total_principal, 0) AS corridas_como_passageiro_principal,
    
    -- Usa COALESCE para transformar um resultado NULO (se o passageiro nunca foi caronista) em 0.
    COALESCE(corridas_caronista.total_caronista, 0) AS corridas_como_caronista,
    
    -- Soma as duas contagens para obter o total de participações em corridas.
    (COALESCE(corridas_principais.total_principal, 0) + COALESCE(corridas_caronista.total_caronista, 0)) AS total_corridas
FROM
    trabalho_final.Pessoas AS p                                     -- Começa com a tabela de Pessoas como base.
INNER JOIN
    trabalho_final.Passageiros AS pass ON p.id_pessoa = pass.id_passageiro -- Garante que estamos olhando apenas para pessoas que são passageiros.
    
-- Junta (com LEFT JOIN) a nossa lista de passageiros com uma subconsulta que já pré-calculou as corridas principais.
LEFT JOIN (
    SELECT
        id_passageiro,                                                -- O ID do passageiro a ser agrupado.
        COUNT(*) AS total_principal                                   -- Conta todas as corridas para cada passageiro.
    FROM
        trabalho_final.Corridas
    GROUP BY
        id_passageiro                                                 -- Agrupa a contagem por passageiro.
) AS corridas_principais ON pass.id_passageiro = corridas_principais.id_passageiro -- A condição de junção é o ID do passageiro.

-- Junta (com LEFT JOIN) com uma segunda subconsulta que pré-calculou as caronas.
LEFT JOIN (
    SELECT
        id_caronista,                                                 -- O ID do caronista a ser agrupado.
        COUNT(*) AS total_caronista                                   -- Conta todas as caronas para cada pessoa.
    FROM
        trabalho_final.Caronas
    GROUP BY
        id_caronista                                                  -- Agrupa a contagem por caronista.
) AS corridas_caronista ON pass.id_passageiro = corridas_caronista.id_caronista -- A condição de junção é o ID do passageiro/caronista.

ORDER BY
    total_corridas DESC, p.id_pessoa;                                 -- Ordena o resultado final pelos mais ativos, com o ID como critério de desempate.


--  Questão 8.1: Dado um passageiro, liste todas as cidades em que esse passageiro já esteve. 

SELECT DISTINCT                                                       -- Garante que cada cidade seja listada apenas uma vez.
    cid.nome_cidade,                                                  -- Seleciona o nome da cidade.
    est.sigla_estado                                                  -- Seleciona a sigla do estado para contexto.
FROM
    ( -- Início da subconsulta no FROM, que cria uma "tabela virtual" com todos os endereços do passageiro.
      -- Parte 1: Endereços onde ele foi o passageiro principal.
        SELECT id_endereco
        FROM trabalho_final.Corridas
        WHERE id_passageiro = 21 -- Filtra pelo ID do passageiro desejado.

        UNION -- Combina os resultados da Parte 1 e 2, removendo duplicatas.

      -- Parte 2: Endereços onde ele foi caronista.
        SELECT c.id_endereco
        FROM trabalho_final.Caronas ca
        -- É preciso juntar com Corridas para descobrir o endereço da corrida em que ele pegou carona.
        JOIN trabalho_final.Corridas c ON ca.id_passageiro = c.id_passageiro AND ca.numero_corrida = c.numero_corrida
        WHERE ca.id_caronista = 21 -- Filtra pelo mesmo ID de passageiro.
    ) AS EnderecosDasCorridas -- Define o nome (apelido) da nossa tabela virtual.
-- A partir daqui, conectamos a lista de endereços com as tabelas de localização.
JOIN
    trabalho_final.Enderecos ender ON EnderecosDasCorridas.id_endereco = ender.id_endereco
JOIN
    trabalho_final.CEPs cep ON ender.id_cep = cep.id_cep
JOIN
    trabalho_final.Cidades cid ON cep.id_cidade = cid.id_cidade
JOIN
    trabalho_final.Estados est ON cid.id_estado = est.id_estado
ORDER BY
    est.sigla_estado, cid.nome_cidade; -- Organiza o resultado final por estado e cidade.


--  Questão 8.2:  Dada uma cidade, verifique quantas perguntas foram feitas por passageiros e ordene o número de perguntas por cidade, considerando que devem ser retornadas apenas cidades com mais de 40 perguntas.
SELECT
    cid.nome_cidade,                                                  -- Seleciona o nome da cidade para o agrupamento.
    est.sigla_estado,                                                 -- Seleciona a sigla do estado.
    COUNT(perg.numero_pergunta) AS total_de_perguntas                 -- Conta o número de perguntas em cada grupo de cidade.
FROM
    trabalho_final.Perguntas perg                                     -- Começa pela tabela de Perguntas, que é o que queremos contar.
-- Inicia a cadeia de junções para conectar uma Pergunta até sua Cidade de origem.
JOIN
    trabalho_final.Atendimentos atend ON perg.id_passageiro = atend.id_passageiro AND perg.numero_corrida = atend.numero_corrida
JOIN
    trabalho_final.Corridas c ON atend.id_passageiro = c.id_passageiro AND atend.numero_corrida = c.numero_corrida
JOIN
    trabalho_final.Enderecos ender ON c.id_endereco = ender.id_endereco
JOIN
    trabalho_final.CEPs cep ON ender.id_cep = cep.id_cep
JOIN
    trabalho_final.Cidades cid ON cep.id_cidade = cid.id_cidade
JOIN
    trabalho_final.Estados est ON cid.id_estado = est.id_estado
GROUP BY
    cid.id_cidade, est.sigla_estado                                   -- Agrupa todas as linhas pela cidade para que o COUNT funcione corretamente.
ORDER BY
    total_de_perguntas DESC;                                          -- Ordena para mostrar as cidades com mais perguntas primeiro.


-- QUESTÃO 9.1
SELECT
    participantes.ano,                                                -- Seleciona o ano da corrida, vindo da subconsulta.
    p.cpf,                                                            -- O CPF da pessoa para identificação.
    participantes.id_pessoa,                                          -- O ID da pessoa (principal ou caronista).
    participantes.id_passageiro_principal,                            -- O ID de quem pediu a corrida, para agrupar visualmente.
    participantes.numero_corrida,                                     -- O número da corrida.
    ROUND(participantes.percentual_pago::numeric, 2) AS percentual_pago -- Arredonda o percentual para 2 casas decimais.
FROM (
    -- Início da subconsulta que une as duas fontes de pagamento.
    -- Parte 1: Passageiros principais de corridas compartilhadas.
    SELECT
        EXTRACT(YEAR FROM c.data_inicio) AS ano,                      -- Extrai o ano da data de início da corrida.
        c.id_passageiro AS id_pessoa,                                 -- Define o ID da pessoa.
        c.id_passageiro AS id_passageiro_principal,                   -- Define o ID do passageiro principal.
        c.numero_corrida,
        (c.valor_passageiro / c.valor_corrida) * 100 AS percentual_pago -- Calcula o percentual.
    FROM
        trabalho_final.Corridas c
    WHERE
        (c.id_passageiro, c.numero_corrida) IN (SELECT DISTINCT id_passageiro, numero_corrida FROM trabalho_final.Caronas) -- Filtra apenas corridas compartilhadas.
        AND EXTRACT(YEAR FROM c.data_inicio) BETWEEN 2020 AND 2025   -- Filtra pelo período de anos especificado.

    UNION ALL -- Une com a próxima lista.

    -- Parte 2: Caronistas.
    SELECT
        EXTRACT(YEAR FROM c.data_inicio) AS ano,                      -- Extrai o ano da data de início da corrida.
        ca.id_caronista AS id_pessoa,                                 -- Define o ID da pessoa (neste caso, o caronista).
        c.id_passageiro AS id_passageiro_principal,
        c.numero_corrida,
        (ca.valor_carona / c.valor_corrida) * 100 AS percentual_pago -- Calcula o percentual do caronista.
    FROM
        trabalho_final.Caronas ca
    JOIN
        trabalho_final.Corridas c ON ca.id_passageiro = c.id_passageiro AND ca.numero_corrida = c.numero_corrida -- Junta com Corridas para pegar o valor total e a data.
    WHERE
        EXTRACT(YEAR FROM c.data_inicio) BETWEEN 2020 AND 2025       -- Filtra pelo mesmo período de anos.
) AS participantes
JOIN
    trabalho_final.Pessoas p ON participantes.id_pessoa = p.id_pessoa -- Junta com Pessoas para obter o CPF.
ORDER BY
    participantes.ano, participantes.id_passageiro_principal, participantes.numero_corrida; -- Ordena por ano e depois por corrida.



-- Questão 9.2

-- Cria uma tabela temporária (CTE) chamada ParticipacoesPorAno para organizar a lógica.
WITH ParticipacoesPorAno AS (
    -- Parte 1: Seleciona as participações como passageiro principal.
    SELECT
        id_passageiro AS id_pessoa,                           -- Identifica a pessoa.
        EXTRACT(YEAR FROM data_inicio) AS ano,                -- Extrai o ano da participação.
        'principal' AS tipo                                   -- Cria uma coluna 'tipo' para classificar esta participação.
    FROM
        trabalho_final.Corridas
    WHERE EXTRACT(YEAR FROM data_inicio) BETWEEN 2020 AND 2025 -- Filtra pela década.

    UNION ALL -- Une com a lista de caronistas.

    -- Parte 2: Seleciona as participações como caronista.
    SELECT
        ca.id_caronista AS id_pessoa,                         -- Identifica a pessoa.
        EXTRACT(YEAR FROM c.data_inicio) AS ano,              -- Extrai o ano da participação (vindo da tabela Corridas).
        'caronista' AS tipo                                   -- Classifica esta participação como 'caronista'.
    FROM
        trabalho_final.Caronas ca
    JOIN
        trabalho_final.Corridas c ON ca.id_passageiro = c.id_passageiro AND ca.numero_corrida = c.numero_corrida
    WHERE EXTRACT(YEAR FROM c.data_inicio) BETWEEN 2020 AND 2025 -- Filtra pela mesma década.
)
-- Consulta principal que usa a tabela temporária ParticipacoesPorAno.
SELECT
    p.id_pessoa,                                              -- Seleciona o ID da pessoa.
    p.cpf,                                                    -- Seleciona o CPF da pessoa.
    ppa.ano,                                                  -- Seleciona o ano do grupo.
    -- Contagem condicional: conta uma ocorrência APENAS SE o tipo for 'principal'.
    COUNT(CASE WHEN ppa.tipo = 'principal' THEN 1 END) AS corridas_como_principal,
    -- Contagem condicional: conta uma ocorrência APENAS SE o tipo for 'caronista'.
    COUNT(CASE WHEN ppa.tipo = 'caronista' THEN 1 END) AS corridas_como_caronista,
    -- Conta todas as linhas do grupo para dar o total do ano, independentemente do tipo.
    COUNT(*) AS total_corridas_no_ano
FROM
    ParticipacoesPorAno ppa                                   -- Usa a nossa lista unificada como fonte.
JOIN
    trabalho_final.Pessoas p ON ppa.id_pessoa = p.id_pessoa   -- Junta com Pessoas para obter os dados pessoais (CPF).
GROUP BY
    p.id_pessoa, p.cpf, ppa.ano                               -- Agrupa os resultados por pessoa E por ano para contagem correta.
ORDER BY
    p.id_pessoa, ppa.ano;                                     -- Ordena os resultados por pessoa e depois por ano.
