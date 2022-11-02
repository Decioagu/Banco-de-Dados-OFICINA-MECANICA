-- SELECIONANDO COLUNAS "cliente"
select * from cliente;

-- SELECIONANDO COLUNAS "cliente"
select tipo_cadastro, count(tipo_cadastro) 
from cliente
group by tipo_cadastro;

-- SELECIONANDO COLUNAS "cliente"
select * from cliente
where tipo_cadastro = 'cpf'
order by nome_cliente;

-- SELECIONANDO COLUNAS "cliente"
select * from cliente
where tipo_cadastro = 'cnpj'
order by nome_cliente;

-- SELECIONANDO COLUNAS "avaliacao_orcamento_servico"
select * from avaliacao_orcamento_servico;

-- SELECIONANDO COLUNAS "avaliacao_orcamento_servico"
select avaliacao.id_avaliacao_orcamento_servico, avaliacao.responsavel_avaliacao_orcamento_servico, avaliacao.valor_orcamento_servico, veiculo.placa, cliente.nome_cliente -- O QUE MOSTRAR
from avaliacao_orcamento_servico as avaliacao -- DE QUE TABELA
join veiculo -- UNIR TABELA
on avaliacao.id_veiculo_fk = veiculo.id_veiculo -- CHAVES
join cliente -- UNIR TABELA
on veiculo.id_cliente_fk = cliente.id_cliente -- CHAVES
order by avaliacao.id_avaliacao_orcamento_servico; -- ORDENAR PELA COLUNA

-- SELECIONANDO COLUNAS "equipe_avaliacao"
select equipe.id_equipe_avaliacao, equipe.id_avaliacao_orcamento_servico_fk, equipe.id_colaborador_fk, colaborador.nome_colaborador, veiculo.placa, cliente.nome_cliente
from equipe_avaliacao as equipe -- DE QUE TABELA
join colaborador -- UNIR TABELA
on equipe.id_colaborador_fk = colaborador.id_colaborador -- CHAVES
join avaliacao_orcamento_servico as avaliacao -- UNIR TABELA
on equipe.id_avaliacao_orcamento_servico_fk = avaliacao.id_avaliacao_orcamento_servico
join veiculo -- UNIR TABELA
on avaliacao.id_veiculo_fk = veiculo.id_veiculo -- CHAVES
join cliente -- UNIR TABELA
on veiculo.id_cliente_fk = cliente.id_cliente -- CHAVES
order by equipe.id_equipe_avaliacao;

-- SELECIONANDO COLUNAS "solicitacao_peca"
select * from solicitacao_peca;

-- SELECIONANDO COLUNAS "solicitacao_peca"
select * 
from solicitacao_peca
where id_os_fk != 'null';

-- SELECIONANDO COLUNAS "peca"
select * 
from peca
where id_peca = 7;

-- SELECIONANDO COLUNAS "os"
select * 
from os
where id_os = 5;






