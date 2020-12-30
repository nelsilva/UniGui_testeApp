-- SQL Manager Lite for PostgreSQL 6.0.1.53431
-- ---------------------------------------
-- Host      : localhost
-- Database  : APILoja20
-- Version   : PostgreSQL 10.1, compiled by Visual C++ build 1800, 32-bit



SET check_function_bodies = false;
--
-- Definition for type dm_bairro (OID = 29335) : 
--
SET search_path = public, pg_catalog;
CREATE DOMAIN public.dm_bairro AS 
  varchar(40);
--
-- Definition for type dm_caminho_foto (OID = 29336) : 
--
CREATE DOMAIN public.dm_caminho_foto AS 
  varchar(70);
--
-- Definition for type dm_cep (OID = 29337) : 
--
CREATE DOMAIN public.dm_cep AS 
  varchar(9);
--
-- Definition for type dm_cest (OID = 29338) : 
--
CREATE DOMAIN public.dm_cest AS 
  varchar(10);
--
-- Definition for type dm_cnpj (OID = 29339) : 
--
CREATE DOMAIN public.dm_cnpj AS 
  varchar(18);
--
-- Definition for type dm_codigo_aliquota (OID = 29340) : 
--
CREATE DOMAIN public.dm_codigo_aliquota AS 
  varchar(2);
--
-- Definition for type dm_codigo_aliquota_fixo (OID = 29341) : 
--
CREATE DOMAIN public.dm_codigo_aliquota_fixo AS 
  varchar(2) NOT NULL;
--
-- Definition for type dm_codigo_genero (OID = 29342) : 
--
CREATE DOMAIN public.dm_codigo_genero AS 
  varchar(2);
--
-- Definition for type dm_codigo_ncm (OID = 29343) : 
--
CREATE DOMAIN public.dm_codigo_ncm AS 
  varchar(8);
--
-- Definition for type dm_codigo_ncm_fixo (OID = 29344) : 
--
CREATE DOMAIN public.dm_codigo_ncm_fixo AS 
  varchar(8) NOT NULL;
--
-- Definition for type dm_complemento (OID = 29345) : 
--
CREATE DOMAIN public.dm_complemento AS 
  varchar(45);
--
-- Definition for type dm_contato (OID = 29346) : 
--
CREATE DOMAIN public.dm_contato AS 
  varchar(100);
--
-- Definition for type dm_cor (OID = 29347) : 
--
CREATE DOMAIN public.dm_cor AS 
  varchar(7);
--
-- Definition for type dm_cpf (OID = 29348) : 
--
CREATE DOMAIN public.dm_cpf AS 
  varchar(18);
--
-- Definition for type dm_cpf_cnpj (OID = 29349) : 
--
CREATE DOMAIN public.dm_cpf_cnpj AS 
  varchar(18);
--
-- Definition for type dm_cst_icms (OID = 29350) : 
--
CREATE DOMAIN public.dm_cst_icms AS 
  varchar(3);
--
-- Definition for type dm_data_hora (OID = 29351) : 
--
CREATE DOMAIN public.dm_data_hora AS 
  timestamp without time zone;
--
-- Definition for type dm_data_hora_fixo (OID = 29352) : 
--
CREATE DOMAIN public.dm_data_hora_fixo AS 
  timestamp without time zone NOT NULL;
--
-- Definition for type dm_detalhe (OID = 29353) : 
--
CREATE DOMAIN public.dm_detalhe AS 
  varchar(100);
--
-- Definition for type dm_documento (OID = 29354) : 
--
CREATE DOMAIN public.dm_documento AS 
  bigint;
--
-- Definition for type dm_dt (OID = 29355) : 
--
CREATE DOMAIN public.dm_dt AS 
  date;
--
-- Definition for type dm_dt_cadastro (OID = 29356) : 
--
CREATE DOMAIN public.dm_dt_cadastro AS 
  timestamp without time zone NOT NULL DEFAULT now();
--
-- Definition for type dm_email (OID = 29357) : 
--
CREATE DOMAIN public.dm_email AS 
  varchar(70);
--
-- Definition for type dm_email_fixo (OID = 29358) : 
--
CREATE DOMAIN public.dm_email_fixo AS 
  varchar(70) NOT NULL;
--
-- Definition for type dm_entrada_saida (OID = 29359) : 
--
CREATE DOMAIN public.dm_entrada_saida AS 
  varchar(1) NOT NULL DEFAULT 'E'::character varying;
--
-- Definition for type dm_estado_civil (OID = 29360) : 
--
CREATE DOMAIN public.dm_estado_civil AS 
  varchar(1);
--
-- Definition for type dm_fk (OID = 29361) : 
--
CREATE DOMAIN public.dm_fk AS 
  integer;
--
-- Definition for type dm_fk_fixo (OID = 29362) : 
--
CREATE DOMAIN public.dm_fk_fixo AS 
  integer NOT NULL;
--
-- Definition for type dm_grade (OID = 29363) : 
--
CREATE DOMAIN public.dm_grade AS 
  varchar(25);
--
-- Definition for type dm_grade_fixo (OID = 29364) : 
--
CREATE DOMAIN public.dm_grade_fixo AS 
  varchar(25) NOT NULL DEFAULT 'UNICO'::character varying;
--
-- Definition for type dm_ie (OID = 29365) : 
--
CREATE DOMAIN public.dm_ie AS 
  varchar(15);
--
-- Definition for type dm_ie_rg (OID = 29366) : 
--
CREATE DOMAIN public.dm_ie_rg AS 
  varchar(30);
--
-- Definition for type dm_logradouro (OID = 29367) : 
--
CREATE DOMAIN public.dm_logradouro AS 
  varchar(40);
--
-- Definition for type dm_ncm_expressao (OID = 29368) : 
--
CREATE DOMAIN public.dm_ncm_expressao AS 
  varchar(5);
--
-- Definition for type dm_nome (OID = 29369) : 
--
CREATE DOMAIN public.dm_nome AS 
  varchar(100);
--
-- Definition for type dm_nome_fantasia (OID = 29370) : 
--
CREATE DOMAIN public.dm_nome_fantasia AS 
  varchar(70);
--
-- Definition for type dm_nome_fixo (OID = 29371) : 
--
CREATE DOMAIN public.dm_nome_fixo AS 
  varchar(100) NOT NULL;
--
-- Definition for type dm_nome_reduzido (OID = 29372) : 
--
CREATE DOMAIN public.dm_nome_reduzido AS 
  varchar(40);
--
-- Definition for type dm_nome_reduzido_fixo (OID = 29373) : 
--
CREATE DOMAIN public.dm_nome_reduzido_fixo AS 
  varchar(40) NOT NULL;
--
-- Definition for type dm_nome_tabela (OID = 29374) : 
--
CREATE DOMAIN public.dm_nome_tabela AS 
  varchar(25) NOT NULL;
--
-- Definition for type dm_numero (OID = 29375) : 
--
CREATE DOMAIN public.dm_numero AS 
  varchar(10);
--
-- Definition for type dm_numero_nota (OID = 29376) : 
--
CREATE DOMAIN public.dm_numero_nota AS 
  varchar(10);
--
-- Definition for type dm_numero_nota_fixo (OID = 29377) : 
--
CREATE DOMAIN public.dm_numero_nota_fixo AS 
  varchar(10) NOT NULL;
--
-- Definition for type dm_obs (OID = 29378) : 
--
CREATE DOMAIN public.dm_obs AS 
  varchar(100);
--
-- Definition for type dm_percentual (OID = 29379) : 
--
CREATE DOMAIN public.dm_percentual AS 
  numeric(15,2) DEFAULT 0;
--
-- Definition for type dm_quantidade (OID = 29380) : 
--
CREATE DOMAIN public.dm_quantidade AS 
  numeric(15,3) DEFAULT 0;
--
-- Definition for type dm_razao_social (OID = 29381) : 
--
CREATE DOMAIN public.dm_razao_social AS 
  varchar(70) NOT NULL;
--
-- Definition for type dm_referencia (OID = 29382) : 
--
CREATE DOMAIN public.dm_referencia AS 
  varchar(20);
--
-- Definition for type dm_rg (OID = 29383) : 
--
CREATE DOMAIN public.dm_rg AS 
  varchar(20);
--
-- Definition for type dm_senha (OID = 29384) : 
--
CREATE DOMAIN public.dm_senha AS 
  varchar(70);
--
-- Definition for type dm_senha_fixo (OID = 29385) : 
--
CREATE DOMAIN public.dm_senha_fixo AS 
  varchar(70) NOT NULL;
--
-- Definition for type dm_sexo (OID = 29386) : 
--
CREATE DOMAIN public.dm_sexo AS 
  varchar(1);
--
-- Definition for type dm_sim_nao (OID = 29387) : 
--
CREATE DOMAIN public.dm_sim_nao AS 
  char(1) NOT NULL DEFAULT 'S'::bpchar;
--
-- Definition for type dm_telefone (OID = 29388) : 
--
CREATE DOMAIN public.dm_telefone AS 
  varchar(16);
--
-- Definition for type dm_text (OID = 29389) : 
--
CREATE DOMAIN public.dm_text AS 
  text;
--
-- Definition for type dm_tipo_contato_fixo (OID = 29390) : 
--
CREATE DOMAIN public.dm_tipo_contato_fixo AS 
  varchar(20) NOT NULL;
--
-- Definition for type dm_tipo_contribuinte (OID = 29391) : 
--
CREATE DOMAIN public.dm_tipo_contribuinte AS 
  varchar(1);
--
-- Definition for type dm_tipo_produto (OID = 29392) : 
--
CREATE DOMAIN public.dm_tipo_produto AS 
  varchar(2);
--
-- Definition for type dm_uf_fixo (OID = 29393) : 
--
CREATE DOMAIN public.dm_uf_fixo AS 
  varchar(2) NOT NULL DEFAULT 'RJ'::character varying;
--
-- Definition for type dm_unidade (OID = 29394) : 
--
CREATE DOMAIN public.dm_unidade AS 
  varchar(6);
--
-- Definition for type dm_unidade_fixo (OID = 29395) : 
--
CREATE DOMAIN public.dm_unidade_fixo AS 
  varchar(6) NOT NULL;
--
-- Definition for type dm_url_fixo (OID = 29396) : 
--
CREATE DOMAIN public.dm_url_fixo AS 
  varchar(100) NOT NULL;
--
-- Definition for type dm_vl (OID = 29397) : 
--
CREATE DOMAIN public.dm_vl AS 
  numeric(15,2);
--
-- Definition for function fun_tg_pessoa_alteracao (OID = 29398) : 
--
CREATE FUNCTION public.fun_tg_pessoa_alteracao (
)
RETURNS trigger
AS 
$body$
BEGIN
  UPDATE 
    pessoa
  SET 
  	alteracao = now()
  WHERE id = new.id;
  RETURN NEW;
END;
$body$
LANGUAGE plpgsql;
--
-- Definition for function fun_tg_pessoa_dependente_alteracao (OID = 29399) : 
--
CREATE FUNCTION public.fun_tg_pessoa_dependente_alteracao (
)
RETURNS trigger
AS 
$body$
BEGIN
  UPDATE 
    pessoa_dependente
  SET 
  	alteracao = now()
  WHERE id = new.id;
  RETURN NEW;
END;
$body$
LANGUAGE plpgsql;
--
-- Structure for table caixa (OID = 29402) : 
--
CREATE TABLE public.caixa (
    id bigserial NOT NULL,
    fk_conta_gerencial bigint,
    descricao varchar(100),
    valor dm_vl,
    tipo char(1) NOT NULL,
    data dm_dt,
    turno integer NOT NULL,
    caixa integer,
    id_global bigint,
    dt_cadastro dm_dt_cadastro
)
WITH (oids = false);
ALTER TABLE ONLY public.caixa ALTER COLUMN fk_conta_gerencial SET STATISTICS 0;
--
-- Structure for table cargo (OID = 29411) : 
--
CREATE TABLE public.cargo (
    id serial NOT NULL,
    nome dm_nome_reduzido_fixo NOT NULL,
    ativo dm_sim_nao DEFAULT 'S'::bpchar NOT NULL,
    dt_cadastro dm_dt_cadastro
)
WITH (oids = false);
--
-- Structure for table cargo_permissao (OID = 29421) : 
--
CREATE TABLE public.cargo_permissao (
    id serial NOT NULL,
    fk_permissao dm_fk_fixo NOT NULL,
    fk_cargo dm_fk_fixo NOT NULL,
    ativo dm_sim_nao,
    dt_cadastro dm_dt_cadastro
)
WITH (oids = false);
--
-- Structure for table cliente (OID = 29430) : 
--
CREATE TABLE public.cliente (
    id serial NOT NULL,
    fkpessoa bigint NOT NULL,
    bloqueado dm_sim_nao DEFAULT 'N'::bpchar NOT NULL,
    limite_credito dm_vl,
    tipo_contribuinte dm_tipo_contribuinte,
    consumidor_rural dm_sim_nao DEFAULT 'N'::bpchar NOT NULL,
    consumidor_final dm_sim_nao DEFAULT 'N'::bpchar NOT NULL,
    especial dm_sim_nao DEFAULT 'N'::bpchar NOT NULL
)
WITH (oids = false);
--
-- Structure for table conta_gerencial (OID = 29443) : 
--
CREATE TABLE public.conta_gerencial (
    id serial NOT NULL,
    nome dm_nome_reduzido_fixo,
    ativo dm_sim_nao,
    fk_plano_conta dm_fk,
    fk_plano_conta_categoria dm_fk,
    padrao_api dm_sim_nao,
    dt_cadastro dm_dt_cadastro
)
WITH (oids = false);
--
-- Structure for table filial (OID = 29470) : 
--
CREATE TABLE public.filial (
    id serial NOT NULL,
    nome_fantasia dm_nome_fantasia,
    razao_social dm_razao_social,
    logradouro dm_logradouro,
    numero dm_numero,
    bairro dm_bairro,
    fk_cidade dm_fk,
    cep dm_cep,
    telefone_1 dm_telefone,
    telefone_2 dm_telefone,
    telefone_3 dm_telefone,
    cnpj dm_cnpj,
    ie dm_ie,
    gerente dm_nome,
    complemento dm_complemento,
    email dm_email,
    smtp varchar(70),
    email_senha dm_senha,
    porta_email integer,
    serie_nfe integer,
    natureza_operacao_nfe varchar(70),
    perc_aliquota_sn dm_percentual,
    calcular_base_icms dm_sim_nao,
    ativo dm_sim_nao,
    dt_cadastro dm_dt_cadastro
)
WITH (oids = false);
--
-- Structure for table filial_certificado (OID = 29479) : 
--
CREATE TABLE public.filial_certificado (
    id bigserial NOT NULL,
    fk_filial bigint,
    certificado_caminho varchar(100),
    certificado_numero_serie varchar(70),
    certificado_senha varchar(100),
    certificado_idcsc varchar(100),
    certificado_csc varchar(100),
    validade date,
    tipo integer,
    certificado_pfx text
)
WITH (oids = false);
--
-- Structure for table grade (OID = 29488) : 
--
CREATE TABLE public.grade (
    id serial NOT NULL,
    nome dm_grade_fixo,
    ativo dm_sim_nao,
    padrao dm_sim_nao,
    padrao_api dm_sim_nao,
    dt_cadastro dm_dt_cadastro
)
WITH (oids = false);
--
-- Structure for table grupo (OID = 29497) : 
--
CREATE TABLE public.grupo (
    id serial NOT NULL,
    nome dm_nome_reduzido_fixo NOT NULL,
    cor dm_cor,
    atendimento dm_sim_nao,
    ativo dm_sim_nao DEFAULT 'S'::bpchar NOT NULL,
    restringe_idade dm_sim_nao,
    domingo dm_sim_nao,
    segunda dm_sim_nao,
    terca dm_sim_nao,
    quarta dm_sim_nao,
    quinta dm_sim_nao,
    sexta dm_sim_nao,
    sabado dm_sim_nao,
    mobile dm_sim_nao,
    dt_cadastro dm_dt_cadastro
)
WITH (oids = false);
--
-- Structure for table grupo_acessorio (OID = 29507) : 
--
CREATE TABLE public.grupo_acessorio (
    id serial NOT NULL,
    fk_grupo dm_fk_fixo,
    nome dm_nome_reduzido_fixo,
    gravar dm_sim_nao,
    dt_cadastro dm_dt_cadastro,
    ativo dm_sim_nao
)
WITH (oids = false);
--
-- Structure for table marca (OID = 29516) : 
--
CREATE TABLE public.marca (
    id serial NOT NULL,
    nome dm_nome_fixo,
    ativo dm_sim_nao,
    dt_cadastro dm_dt_cadastro
)
WITH (oids = false);
--
-- Structure for table pagar (OID = 29525) : 
--
CREATE TABLE public.pagar (
    id bigserial NOT NULL,
    fk_conta_gerencial bigint,
    documento dm_documento,
    descricao varchar(100) NOT NULL,
    dt_cadastro dm_dt_cadastro,
    dt_lancamento dm_dt,
    id_global bigint,
    obs dm_obs,
    cancelado dm_sim_nao DEFAULT 'N'::bpchar,
    motivo_cancelamento varchar(150)
)
WITH (oids = false);
--
-- Structure for table pagar_formapg (OID = 29535) : 
--
CREATE TABLE public.pagar_formapg (
    id bigserial NOT NULL,
    fk_pagar_parcela bigint NOT NULL,
    fk_conta_gerencial bigint,
    vl_pago dm_vl,
    dt_lancamento dm_dt,
    id_global bigint NOT NULL
)
WITH (oids = false);
--
-- Structure for table pagar_parcela (OID = 29544) : 
--
CREATE TABLE public.pagar_parcela (
    id bigserial NOT NULL,
    fk_pagar bigint NOT NULL,
    vl_parcela dm_vl,
    dt_vencimento dm_dt NOT NULL,
    dt_pagamento dm_dt,
    vl_pago dm_vl,
    juros dm_vl,
    desconto dm_vl,
    id_global bigint NOT NULL,
    duplicata varchar(45),
    dt_bom_para dm_dt,
    id_baixa bigint,
    juros_diario dm_vl,
    dpc dm_sim_nao DEFAULT 'N'::bpchar,
    dt_cadastro dm_dt_cadastro
)
WITH (oids = false);
--
-- Structure for table permissao (OID = 29554) : 
--
CREATE TABLE public.permissao (
    id serial NOT NULL,
    nome dm_nome_reduzido_fixo NOT NULL,
    descricao dm_nome NOT NULL,
    dt_cadastro dm_dt_cadastro,
    ativo dm_sim_nao
)
WITH (oids = false);
--
-- Structure for table plano_conta (OID = 29595) : 
--
CREATE TABLE public.plano_conta (
    id bigserial NOT NULL,
    nome dm_nome_reduzido_fixo NOT NULL,
    tipo dm_entrada_saida,
    padrao_api dm_sim_nao,
    ativo dm_sim_nao,
    dt_cadastro dm_dt_cadastro
)
WITH (oids = false);
--
-- Structure for table plano_conta_categoria (OID = 29604) : 
--
CREATE TABLE public.plano_conta_categoria (
    id serial NOT NULL,
    fk_plano dm_fk_fixo NOT NULL,
    nome dm_nome_reduzido_fixo NOT NULL,
    padrao_api dm_sim_nao,
    ativo dm_sim_nao,
    dt_cadastro dm_dt_cadastro
)
WITH (oids = false);
--
-- Structure for table produto (OID = 29613) : 
--
CREATE TABLE public.produto (
    id bigserial NOT NULL,
    fk_grupo dm_fk_fixo,
    fk_subgrupo dm_fk,
    fk_marca dm_fk,
    nome dm_nome_fixo,
    nome_reduzido dm_nome_reduzido_fixo,
    referencia dm_referencia,
    fk_unidade dm_unidade_fixo,
    codigo_ncm dm_codigo_ncm,
    ippt varchar(1),
    tipo_produto dm_tipo_produto,
    codigo_genero dm_codigo_genero,
    peso_liquido dm_vl,
    peso_bruto dm_vl,
    converter_kg dm_sim_nao,
    utilizado dm_sim_nao,
    especificacao dm_text,
    baixar_estoque dm_sim_nao,
    balanca dm_sim_nao,
    balanca_tecla integer,
    servico dm_sim_nao,
    kit dm_sim_nao,
    ativo dm_sim_nao,
    fk_fornecedor dm_fk,
    cest dm_cest,
    codigo_anp integer,
    ncm_excessao dm_ncm_expressao,
    dt_cadastro dm_dt_cadastro
)
WITH (oids = false);
--
-- Structure for table produto_ean (OID = 29620) : 
--
CREATE TABLE public.produto_ean (
    fk_produto bigint NOT NULL,
    ean varchar(14) NOT NULL
)
WITH (oids = false);
--
-- Structure for table produto_filial (OID = 29625) : 
--
CREATE TABLE public.produto_filial (
    id serial NOT NULL,
    fk_produto dm_fk_fixo,
    fk_filial dm_fk_fixo,
    dt_ultima_saida dm_data_hora,
    vl_custo dm_vl,
    vl_venda dm_vl,
    desconto dm_percentual,
    acrescimo dm_percentual,
    vl_custo_total dm_vl,
    vl_frete dm_vl,
    vl_outros dm_vl,
    vl_custo_medio dm_vl,
    perc_substituicao_tributaria dm_percentual,
    perc_comissao dm_percentual,
    perc_mva dm_percentual,
    vl_seguro_outro dm_vl,
    perc_simples_nacional dm_percentual,
    vl_frete_terceiro dm_vl,
    vl_icms_st_recolher dm_vl,
    perc_markup dm_percentual,
    cfop_dentro integer,
    cfop_fora integer,
    cst_icms dm_cst_icms,
    cfop_compra integer,
    espelhar_desconto_acrescimo dm_sim_nao,
    dt_reajuste dm_data_hora,
    vl_anterior_reajuste dm_vl,
    perc_icms dm_percentual,
    perc_icms_fora dm_percentual,
    perc_ipi dm_percentual,
    codigo_pis integer,
    codigo_cofins integer,
    perc_aliquota_pis dm_vl,
    perc_aliquota_confins dm_vl,
    codigo_ipi integer,
    cst_origem varchar(1),
    perc_reducao_base dm_vl,
    dt_cadastro dm_dt,
    dt_ultima_entrada dm_dt,
    ultima_nota_entrada dm_numero_nota,
    codigo_excecao_ipi varchar(2)
)
WITH (oids = false);
--
-- Structure for table produto_grade (OID = 29634) : 
--
CREATE TABLE public.produto_grade (
    id serial NOT NULL,
    fk_filial dm_fk_fixo,
    fk_produto dm_fk_fixo,
    fk_grade dm_grade,
    quantidade dm_quantidade DEFAULT 0,
    quantidade_minima dm_quantidade,
    quantidade_maxima dm_quantidade,
    dt_cadastro dm_dt_cadastro
)
WITH (oids = false);
--
-- Structure for table produto_imposto (OID = 29642) : 
--
CREATE TABLE public.produto_imposto (
    uf dm_uf_fixo NOT NULL,
    fk_produto dm_fk_fixo NOT NULL,
    cfop integer,
    cfop_compra integer,
    cst_icms varchar(3),
    perc_simples_nacional dm_vl,
    perc_mva dm_vl,
    vl_icms_st_recolher dm_vl,
    perc_icms dm_vl,
    perc_ipi dm_vl,
    perc_substituicao_tributaria dm_vl,
    codigo_execao_ipi varchar(2),
    perc_icms_fora dm_vl,
    codigo_pis integer,
    codigo_cofins integer,
    perc_aliquota_pis dm_vl,
    perc_aliquota_confis dm_vl,
    codigo_ipi integer,
    cst_origem char(1),
    perc_reducao_base dm_vl,
    codigo_excecao_ipi varchar(2),
    aliquota varchar(2)
)
WITH (oids = false);
--
-- Structure for table produto_preco (OID = 29650) : 
--
CREATE TABLE public.produto_preco (
    id serial NOT NULL,
    fk_produto dm_fk_fixo,
    fk_filial dm_fk_fixo,
    fk_produto_tabela dm_nome_tabela,
    vl_unitario dm_vl,
    perc_acrescimo dm_percentual,
    perc_desconto dm_percentual,
    quantidade_minima_venda dm_quantidade,
    quantidade_maxima_venda dm_quantidade,
    dt_reajuste dm_data_hora,
    dt_validade dm_data_hora,
    vl_anterior_reajuste dm_vl,
    dt_cadastro dm_dt_cadastro
)
WITH (oids = false);
--
-- Structure for table produto_tabela (OID = 29659) : 
--
CREATE TABLE public.produto_tabela (
    id serial NOT NULL,
    nome dm_nome_tabela,
    ativo dm_sim_nao,
    dt_cadastro dm_dt_cadastro,
    padrao_api dm_sim_nao
)
WITH (oids = false);
--
-- Structure for table subgrupo (OID = 29668) : 
--
CREATE TABLE public.subgrupo (
    id serial NOT NULL,
    fk_grupo dm_fk_fixo,
    nome dm_nome_reduzido_fixo,
    ativo dm_sim_nao,
    dt_cadastro dm_dt_cadastro
)
WITH (oids = false);
--
-- Structure for table unidade (OID = 29677) : 
--
CREATE TABLE public.unidade (
    id serial NOT NULL,
    sigla dm_unidade_fixo,
    nome varchar(21) NOT NULL,
    fracionado dm_sim_nao,
    dt_cadastro dm_dt_cadastro,
    ativo dm_sim_nao DEFAULT 'S'::bpchar NOT NULL
)
WITH (oids = false);
--
-- Structure for table usuario (OID = 29687) : 
--
CREATE TABLE public.usuario (
    id bigserial NOT NULL,
    fkpessoa bigint NOT NULL,
    fk_perfil dm_fk NOT NULL,
    login dm_email NOT NULL,
    senha_acesso dm_senha,
    senha_liberacao dm_senha,
    ativo dm_sim_nao DEFAULT 'S'::bpchar NOT NULL,
    dt_cadastro dm_dt_cadastro
)
WITH (oids = false);
--
-- Structure for table usuario_filial (OID = 29697) : 
--
CREATE TABLE public.usuario_filial (
    id serial NOT NULL,
    fk_filial dm_fk_fixo,
    fk_usuario dm_fk_fixo,
    dt_cadastro dm_dt_cadastro
)
WITH (oids = false);
--
-- Structure for table usuario_permissao (OID = 29703) : 
--
CREATE TABLE public.usuario_permissao (
    id serial NOT NULL,
    fk_usuario dm_fk_fixo,
    fk_permissao dm_fk_fixo,
    dt_cadastro dm_dt_cadastro,
    permissao_api varchar(1) DEFAULT 'N'::character varying NOT NULL,
    acesso dm_sim_nao,
    inclusao dm_sim_nao,
    alteracao dm_sim_nao,
    exclusao dm_sim_nao,
    impressao dm_sim_nao,
    fk_filial bigint
)
WITH (oids = false);
--
-- Structure for table logs (OID = 29734) : 
--
CREATE TABLE public.logs (
    id serial NOT NULL,
    log_data timestamp(0) without time zone,
    log_evento varchar(255),
    log_usuario varchar(100),
    log_obs varchar(255)
)
WITH (oids = false);
--
-- Structure for table estadocivil (OID = 38000) : 
--
CREATE TABLE public.estadocivil (
    id bigserial NOT NULL,
    nome dm_nome NOT NULL,
    ativo dm_sim_nao DEFAULT 'S'::bpchar
)
WITH (oids = false);
--
-- Structure for table pessoa (OID = 38014) : 
--
CREATE TABLE public.pessoa (
    id bigserial NOT NULL,
    nome dm_nome_fixo NOT NULL,
    fantasia_social dm_nome_fantasia,
    cpf_cnpj dm_cpf_cnpj,
    rg_ie dm_rg,
    ativo dm_sim_nao DEFAULT 'S'::bpchar NOT NULL,
    tipo_pessoa varchar(1) DEFAULT 'F'::character varying,
    dt_cadastrado dm_dt_cadastro DEFAULT now(),
    alteracao dm_data_hora_fixo DEFAULT now() NOT NULL,
    nascimento_constituicao dm_dt,
    sexo dm_sexo DEFAULT 'M'::character varying,
    pai dm_nome,
    mae dm_nome,
    estado_civil dm_fk,
    conjuge dm_nome,
    profissao dm_nome,
    especial dm_sim_nao DEFAULT 'N'::bpchar NOT NULL,
    bloqueado dm_sim_nao DEFAULT 'N'::bpchar NOT NULL,
    limite_credito dm_vl DEFAULT 0,
    tipo_contribuinte dm_tipo_contribuinte DEFAULT 0 NOT NULL,
    consumidor_rural dm_sim_nao DEFAULT 'N'::bpchar NOT NULL,
    consumidor_final dm_sim_nao DEFAULT 'N'::bpchar NOT NULL,
    cliente dm_sim_nao DEFAULT 'S'::bpchar,
    fornecedor dm_sim_nao DEFAULT 'N'::bpchar,
    funcionario dm_sim_nao DEFAULT 'N'::bpchar,
    empresa dm_sim_nao DEFAULT 'N'::bpchar,
    transportadora dm_sim_nao DEFAULT 'N'::bpchar,
    fornecedor_representante dm_nome,
    codigo varchar(10)
)
WITH (oids = false);
--
-- Structure for table estado (OID = 46286) : 
--
CREATE TABLE public.estado (
    id bigserial NOT NULL,
    fk_pais dm_fk,
    nome dm_nome_fixo NOT NULL,
    sigla dm_uf_fixo NOT NULL,
    perc_part_dest dm_vl,
    icms dm_vl,
    fundo_pobreza dm_vl,
    perc_part_emit dm_vl,
    icms_inter dm_vl,
    perc_marckup dm_vl
)
WITH (oids = false);
--
-- Structure for table cidade (OID = 46301) : 
--
CREATE TABLE public.cidade (
    id serial NOT NULL,
    nome dm_nome_fixo NOT NULL,
    uf dm_uf_fixo NOT NULL,
    codigo_ibge bigint
)
WITH (oids = false);
--
-- Structure for table tipo_parentesco (OID = 46354) : 
--
CREATE TABLE public.tipo_parentesco (
    id bigserial NOT NULL,
    nome dm_nome_fixo NOT NULL,
    ativo dm_sim_nao DEFAULT 'S'::bpchar NOT NULL
)
WITH (oids = false);
--
-- Structure for table pessoa_autorizado (OID = 46368) : 
--
CREATE TABLE public.pessoa_autorizado (
    id bigserial NOT NULL,
    fkpessoa bigint NOT NULL,
    fkautorizado bigint NOT NULL,
    fkparentesco dm_fk,
    dt_cadastro dm_dt_cadastro DEFAULT now() NOT NULL,
    alteracao dm_data_hora DEFAULT now() NOT NULL,
    limite_credito dm_vl,
    obs varchar(200),
    cpf_cnpj dm_cpf_cnpj
)
WITH (oids = false);
--
-- Structure for table pessoa_endereco (OID = 46398) : 
--
CREATE TABLE public.pessoa_endereco (
    id bigserial NOT NULL,
    fkpessoa bigint NOT NULL,
    codigo_cidade_ibge bigint,
    cep dm_cep,
    logradouro dm_logradouro,
    numero dm_numero,
    bairro dm_bairro,
    complemento dm_complemento,
    ativo dm_sim_nao DEFAULT 'S'::bpchar NOT NULL,
    principal dm_sim_nao DEFAULT 'N'::bpchar NOT NULL,
    dt_cadastro dm_dt_cadastro DEFAULT now() NOT NULL,
    uf dm_uf_fixo,
    cpf_cnpj dm_cpf_cnpj,
    fk_tipo_endereco bigserial NOT NULL,
    cidade varchar(100)
)
WITH (oids = false);
--
-- Structure for table tipo_endereco (OID = 46414) : 
--
CREATE TABLE public.tipo_endereco (
    id bigserial NOT NULL,
    tipo dm_nome_fixo NOT NULL,
    ativo dm_sim_nao DEFAULT 'S'::bpchar NOT NULL
)
WITH (oids = false);
--
-- Structure for table pessoa_contato (OID = 46461) : 
--
CREATE TABLE public.pessoa_contato (
    id bigserial NOT NULL,
    fkpessoa bigint NOT NULL,
    contato varchar(255),
    pessoa_contato dm_nome,
    detalhe dm_nome,
    rc varchar(1) DEFAULT 'R'::character varying NOT NULL,
    principal dm_sim_nao DEFAULT 'N'::bpchar NOT NULL,
    dt_cadastro dm_dt_cadastro DEFAULT now() NOT NULL,
    cpf_cnpj dm_cpf_cnpj,
    tipo_contato varchar(1),
    email_nfe dm_sim_nao DEFAULT 'N'::character varying,
    email_nfce dm_sim_nao DEFAULT 'N'::bpchar,
    email_mdfe dm_sim_nao DEFAULT 'N'::bpchar,
    email_cte dm_sim_nao DEFAULT 'N'::bpchar
)
WITH (oids = false);
--
-- Structure for table tipo_contato (OID = 46492) : 
--
CREATE TABLE public.tipo_contato (
    id bigserial NOT NULL,
    codigo_tipo varchar(2),
    descricao_tipo varchar(50),
    ativo varchar(1) DEFAULT 'S'::character varying
)
WITH (oids = false);
ALTER TABLE ONLY public.tipo_contato ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.tipo_contato ALTER COLUMN codigo_tipo SET STATISTICS 0;
ALTER TABLE ONLY public.tipo_contato ALTER COLUMN descricao_tipo SET STATISTICS 0;
ALTER TABLE ONLY public.tipo_contato ALTER COLUMN ativo SET STATISTICS 0;
--
-- Structure for table pessoa_referencia (OID = 54686) : 
--
CREATE TABLE public.pessoa_referencia (
    id bigserial NOT NULL,
    fkpessoa bigint NOT NULL,
    nome_referencia varchar(40),
    contato_referencia dm_nome,
    dt_cadastro dm_dt_cadastro DEFAULT now() NOT NULL,
    tipo_referencia varchar(1),
    telefone1 dm_telefone,
    telefone1_whatsapp dm_sim_nao,
    telefone2 dm_telefone,
    telefone2_whatsapp dm_sim_nao,
    telefone3 dm_telefone,
    email1 dm_email,
    email2 dm_email
)
WITH (oids = false);
--
-- Structure for table Aplicacoes (OID = 62881) : 
--
CREATE TABLE public."Aplicacoes" (
    id bigserial NOT NULL,
    nomeaplicacao varchar(100),
    descricaoaplicacao varchar(255)
)
WITH (oids = false);
ALTER TABLE ONLY public."Aplicacoes" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."Aplicacoes" ALTER COLUMN nomeaplicacao SET STATISTICS 0;
ALTER TABLE ONLY public."Aplicacoes" ALTER COLUMN descricaoaplicacao SET STATISTICS 0;
--
-- Structure for table Modulos (OID = 62891) : 
--
CREATE TABLE public."Modulos" (
    id bigserial NOT NULL,
    "NomeModulo" varchar(50),
    pkaplicacao bigint,
    descricaoaplicacao varchar(255),
    ativo dm_sim_nao
)
WITH (oids = false);
ALTER TABLE ONLY public."Modulos" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."Modulos" ALTER COLUMN "NomeModulo" SET STATISTICS 0;
ALTER TABLE ONLY public."Modulos" ALTER COLUMN pkaplicacao SET STATISTICS 0;
ALTER TABLE ONLY public."Modulos" ALTER COLUMN descricaoaplicacao SET STATISTICS 0;
ALTER TABLE ONLY public."Modulos" ALTER COLUMN ativo SET STATISTICS 0;
--
-- Data for table public.cargo (OID = 29411) (LIMIT 0,70)
--
INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (31, 'Esther Pereira', 'N', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (32, 'Meire Xavier Jr.', 'S', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (33, 'Víctor Moreira Jr.', 'S', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (34, 'Dr. Lucas Santos', 'N', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (35, 'Roberto Nogueira', 'N', '2020-07-28 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (36, 'Guilherme Saraiva', 'N', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (37, 'Tertuliano Macedo', 'N', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (38, 'Víctor Batista', 'S', '2020-07-28 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (39, 'Pablo Saraiva Filho', 'S', '2020-07-28 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (40, 'Vicente Barros', 'S', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (41, 'Eduarda Xavier', 'S', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (42, 'Paula Souza', 'S', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (43, 'Sr. Elísio Martins', 'N', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (44, 'Ígor Oliveira', 'N', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (45, 'Sílvia Pereira Neto', 'S', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (46, 'João Braga', 'S', '2020-07-28 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (47, 'Mércia Franco', 'N', '2020-07-28 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (48, 'Maria Macedo', 'S', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (49, 'Carlos Albuquerque', 'N', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (50, 'Srta. Norberto Carvalho', 'S', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (51, 'Sara Batista', 'S', '2020-07-28 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (52, 'Ofélia Carvalho', 'N', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (53, 'Dr. Aline Santos', 'N', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (54, 'Sara Franco', 'S', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (55, 'Talita Franco', 'S', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (56, 'Sílvia Reis Jr.', 'S', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (57, 'Cecília Reis', 'N', '2020-07-28 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (58, 'Víctor Carvalho', 'S', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (59, 'João Moraes', 'N', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (60, 'Bruna Carvalho', 'S', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (61, 'filhodaputa', 'S', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (76, 'teste2584', 'S', '2020-07-28 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (81, 'filhodaputaxzcxzcdsfdscxdsf', 'S', '2020-07-29 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (88, 'testeasdadsadasdasdas', 'S', '2020-07-28 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (89, 'Raul Souza', 'S', '2020-09-09 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (90, 'Sra. Vitória Costa', 'N', '2020-09-09 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (91, 'Morgana Braga', 'N', '2020-09-09 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (92, 'Talita Albuquerque', 'N', '2020-09-09 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (93, 'Frederico Franco', 'N', '2020-09-09 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (94, 'Sílvia Albuquerque', 'N', '2020-09-09 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (95, 'Yago Franco', 'N', '2020-09-09 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (96, 'Raul Macedo', 'N', '2020-09-09 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (97, 'Fabiano Barros', 'S', '2020-09-09 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (98, 'Srta. Talita Carvalho', 'N', '2020-09-09 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (99, 'Janaína Moreira', 'N', '2020-09-09 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (100, 'Marcelo Costa', 'S', '2020-09-09 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (101, 'Breno Reis', 'N', '2020-09-09 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (102, 'Ofélia Barros', 'S', '2020-09-09 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (103, 'Marli Carvalho Jr.', 'N', '2020-09-09 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (104, 'Marcela Batista', 'S', '2020-09-09 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (105, 'Aline Saraiva Filho', 'N', '2020-09-09 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (106, 'Mércia Santos', 'S', '2020-09-09 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (107, 'Alessandro Costa', 'N', '2020-09-10 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (108, 'Alessandro Franco', 'N', '2020-09-16 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (109, 'César Moraes', 'N', '2020-09-15 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (110, 'Sr. Yuri Oliveira', 'S', '2020-09-16 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (111, 'Natália Oliveira', 'N', '2020-09-15 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (112, 'Sirineu Franco', 'S', '2020-09-16 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (113, 'Antônio Albuquerque', 'S', '2020-09-15 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (114, 'Yago Batista', 'S', '2020-09-16 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (115, 'João Saraiva', 'N', '2020-09-16 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (116, 'Ofélia Melo', 'S', '2020-09-16 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (117, 'Lucas Braga', 'S', '2020-09-16 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (118, 'Paulo Batista Jr.', 'S', '2020-09-15 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (119, 'Núbia Martins', 'N', '2020-09-16 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (120, 'Nataniel Carvalho Filho', 'N', '2020-09-15 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (121, 'Dr. Ricardo Silva', 'N', '2020-09-16 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (122, 'Félix Pereira', 'S', '2020-09-16 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (123, 'Paulo Batista', 'N', '2020-09-16 00:00:00');

INSERT INTO cargo (id, nome, ativo, dt_cadastro)
VALUES (124, 'Dr. Júlia Moreira', 'S', '2020-09-16 00:00:00');

--
-- Data for table public.cargo_permissao (OID = 29421) (LIMIT 0,500)
--
INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (7, 1, 31, 'S', '2020-09-09 13:06:48.156963');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (18, 1, 31, 'N', '2020-09-03 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (19, 1, 31, 'S', '2020-08-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (20, 1, 31, 'N', '2019-12-17 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (21, 1, 31, 'N', '2019-12-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (22, 1, 31, 'N', '2020-05-31 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (23, 1, 31, 'N', '2019-11-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (24, 1, 31, 'S', '2020-08-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (25, 1, 31, 'N', '2020-07-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (26, 1, 31, 'S', '2020-01-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (27, 1, 31, 'N', '2019-10-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (28, 1, 31, 'S', '2019-10-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (29, 1, 31, 'S', '2019-11-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (30, 1, 92, 'S', '2019-12-16 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (31, 1, 44, 'S', '2020-06-02 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (32, 1, 98, 'S', '2020-05-31 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (35, 1, 98, 'N', '2020-08-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (40, 94, 59, 'S', '2020-07-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (41, 51, 48, 'N', '2019-10-29 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (43, 72, 61, 'N', '2020-01-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (44, 125, 40, 'S', '2020-09-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (45, 35, 47, 'S', '2020-07-29 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (46, 51, 96, 'N', '2019-10-16 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (54, 100, 92, 'S', '2020-01-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (55, 114, 101, 'N', '2020-06-19 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (56, 5, 53, 'S', '2019-11-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (57, 3, 58, 'S', '2020-08-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (61, 34, 61, 'S', '2020-03-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (63, 68, 96, 'S', '2020-01-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (68, 1, 31, 'N', '2019-10-16 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (69, 1, 31, 'S', '2020-03-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (70, 1, 31, 'N', '2020-05-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (71, 1, 31, 'S', '2020-02-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (72, 1, 31, 'N', '2020-08-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (73, 1, 31, 'S', '2020-05-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (74, 1, 31, 'S', '2020-06-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (75, 1, 31, 'N', '2020-08-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (76, 1, 31, 'N', '2019-12-02 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (77, 1, 31, 'S', '2020-06-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (78, 69, 31, 'S', '2020-03-16 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (79, 80, 31, 'S', '2019-11-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (80, 61, 31, 'S', '2019-12-03 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (81, 62, 31, 'N', '2019-11-05 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (82, 95, 31, 'N', '2019-09-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (83, 81, 31, 'S', '2020-01-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (84, 118, 31, 'N', '2020-02-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (85, 8, 31, 'S', '2019-10-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (86, 120, 31, 'S', '2019-11-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (87, 70, 31, 'N', '2020-04-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (88, 106, 60, 'N', '2020-08-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (89, 32, 44, 'N', '2020-07-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (93, 52, 93, 'S', '2020-06-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (94, 39, 81, 'N', '2020-08-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (96, 18, 31, 'N', '2020-01-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (97, 41, 47, 'N', '2019-10-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (102, 31, 31, 'N', '2019-12-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (103, 94, 44, 'S', '2019-11-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (104, 107, 60, 'N', '2020-01-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (105, 46, 38, 'S', '2019-10-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (106, 69, 48, 'S', '2019-11-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (107, 7, 34, 'N', '2019-11-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (108, 57, 48, 'S', '2020-02-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (109, 60, 31, 'S', '2020-07-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (110, 110, 43, 'N', '2020-03-05 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (111, 122, 44, 'S', '2020-04-17 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (112, 113, 58, 'N', '2019-11-29 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (113, 106, 51, 'N', '2020-04-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (114, 40, 42, 'N', '2020-05-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (115, 124, 31, 'S', '2020-03-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (116, 91, 49, 'S', '2019-09-29 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (117, 58, 57, 'N', '2020-05-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (118, 87, 56, 'N', '2020-03-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (119, 60, 57, 'S', '2020-02-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (120, 113, 40, 'S', '2019-09-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (121, 114, 56, 'N', '2019-11-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (122, 113, 55, 'N', '2020-09-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (123, 18, 44, 'N', '2019-11-04 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (124, 117, 47, 'S', '2019-12-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (125, 105, 52, 'N', '2020-06-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (126, 85, 53, 'N', '2020-08-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (127, 6, 35, 'N', '2020-06-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (128, 9, 51, 'N', '2020-07-02 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (129, 23, 50, 'S', '2020-02-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (130, 36, 47, 'S', '2020-05-05 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (131, 31, 49, 'S', '2020-05-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (132, 93, 51, 'N', '2020-02-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (133, 20, 60, 'N', '2019-09-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (134, 85, 38, 'N', '2019-11-30 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (135, 103, 40, 'N', '2020-08-17 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (136, 107, 48, 'S', '2020-02-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (137, 70, 47, 'S', '2020-03-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (138, 65, 48, 'N', '2019-11-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (139, 105, 44, 'N', '2019-11-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (140, 96, 50, 'S', '2019-09-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (141, 65, 60, 'N', '2020-01-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (142, 64, 60, 'S', '2020-09-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (143, 9, 38, 'S', '2020-03-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (144, 45, 55, 'S', '2020-01-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (145, 28, 35, 'S', '2019-10-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (146, 88, 57, 'S', '2019-12-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (147, 36, 56, 'N', '2020-04-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (148, 25, 31, 'S', '2019-11-04 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (149, 102, 31, 'S', '2020-01-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (150, 9, 49, 'S', '2020-01-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (151, 100, 46, 'S', '2019-10-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (152, 101, 40, 'N', '2019-11-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (153, 42, 35, 'S', '2020-01-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (154, 8, 61, 'N', '2020-03-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (155, 61, 45, 'N', '2019-11-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (156, 121, 61, 'N', '2019-09-30 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (157, 66, 34, 'N', '2020-06-19 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (158, 50, 43, 'S', '2019-09-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (163, 33, 45, 'S', '2020-02-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (168, 14, 60, 'N', '2019-12-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (180, 77, 39, 'S', '2020-07-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (185, 91, 36, 'S', '2020-04-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (190, 52, 38, 'N', '2020-01-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (195, 36, 46, 'N', '2020-07-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (200, 90, 61, 'N', '2019-11-30 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (205, 4, 59, 'N', '2020-02-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (210, 20, 58, 'S', '2020-03-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (215, 68, 61, 'S', '2019-09-19 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (220, 89, 51, 'S', '2020-09-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (225, 9, 54, 'S', '2020-08-29 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (230, 27, 44, 'N', '2020-03-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (233, 107, 55, 'S', '2019-10-31 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (239, 65, 55, 'S', '2020-01-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (244, 17, 35, 'N', '2020-07-04 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (249, 45, 49, 'N', '2019-11-19 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (254, 36, 37, 'S', '2020-07-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (259, 26, 51, 'S', '2020-01-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (264, 29, 31, 'S', '2019-10-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (269, 42, 51, 'S', '2020-01-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (274, 19, 33, 'S', '2019-09-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (279, 62, 55, 'S', '2019-10-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (284, 88, 34, 'N', '2020-07-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (289, 49, 46, 'N', '2019-12-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (294, 61, 42, 'S', '2020-07-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (300, 51, 47, 'N', '2020-07-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (305, 119, 35, 'N', '2020-05-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (310, 117, 38, 'S', '2019-10-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (313, 119, 53, 'S', '2019-10-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (318, 121, 34, 'S', '2019-09-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (323, 18, 56, 'S', '2019-11-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (328, 59, 40, 'S', '2020-06-04 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (337, 97, 43, 'N', '2019-09-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (342, 55, 49, 'N', '2020-03-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (347, 39, 60, 'N', '2019-12-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (356, 108, 33, 'S', '2020-07-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (361, 109, 56, 'N', '2020-04-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (366, 23, 37, 'S', '2020-02-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (371, 53, 33, 'S', '2020-06-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (159, 54, 34, 'N', '2020-07-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (164, 11, 50, 'N', '2019-11-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (169, 81, 42, 'S', '2020-03-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (179, 57, 56, 'N', '2020-02-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (184, 40, 32, 'N', '2020-01-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (189, 31, 36, 'S', '2019-09-30 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (196, 75, 32, 'N', '2020-09-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (201, 91, 56, 'S', '2019-11-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (206, 59, 33, 'N', '2020-05-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (211, 105, 54, 'S', '2020-03-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (212, 3, 33, 'S', '2020-09-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (213, 22, 50, 'N', '2019-09-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (214, 52, 53, 'S', '2020-02-29 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (219, 68, 55, 'N', '2020-04-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (224, 55, 38, 'S', '2020-07-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (229, 116, 53, 'S', '2020-03-31 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (234, 109, 31, 'N', '2019-12-02 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (238, 9, 42, 'S', '2019-10-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (243, 81, 34, 'N', '2020-03-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (248, 42, 31, 'S', '2020-02-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (255, 91, 38, 'S', '2020-07-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (260, 14, 51, 'N', '2020-02-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (265, 18, 51, 'N', '2020-04-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (270, 73, 50, 'S', '2019-09-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (273, 110, 61, 'S', '2020-06-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (276, 104, 51, 'S', '2020-05-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (281, 49, 52, 'S', '2020-01-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (286, 67, 45, 'S', '2020-07-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (291, 108, 43, 'N', '2020-02-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (292, 61, 39, 'N', '2020-08-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (297, 59, 58, 'N', '2020-09-05 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (302, 51, 61, 'S', '2019-10-30 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (307, 43, 61, 'S', '2020-06-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (316, 4, 46, 'S', '2020-08-03 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (321, 63, 45, 'S', '2019-11-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (326, 26, 43, 'N', '2019-11-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (331, 78, 43, 'S', '2020-05-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (332, 82, 41, 'N', '2020-06-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (333, 13, 54, 'N', '2019-10-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (336, 72, 33, 'N', '2020-06-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (341, 5, 53, 'N', '2020-08-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (346, 23, 60, 'S', '2020-05-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (351, 121, 37, 'S', '2020-01-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (352, 1, 44, 'N', '2020-05-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (357, 60, 46, 'S', '2020-06-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (362, 15, 61, 'S', '2019-11-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (367, 21, 52, 'S', '2020-01-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (160, 101, 47, 'N', '2020-06-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (165, 49, 42, 'S', '2020-05-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (170, 60, 36, 'N', '2020-03-19 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (176, 90, 34, 'N', '2020-08-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (178, 84, 48, 'S', '2020-03-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (183, 47, 32, 'N', '2020-02-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (188, 85, 57, 'N', '2019-11-17 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (197, 80, 43, 'S', '2020-03-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (202, 96, 47, 'S', '2020-08-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (207, 19, 33, 'S', '2020-02-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (218, 8, 36, 'N', '2019-09-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (223, 21, 59, 'N', '2020-02-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (228, 68, 57, 'S', '2020-02-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (235, 84, 46, 'N', '2019-11-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (240, 97, 55, 'N', '2019-10-19 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (245, 37, 35, 'S', '2020-08-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (250, 25, 38, 'N', '2019-12-02 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (253, 104, 38, 'N', '2020-01-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (258, 31, 60, 'N', '2019-11-16 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (263, 69, 52, 'S', '2019-09-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (268, 37, 48, 'N', '2019-10-29 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (277, 8, 31, 'N', '2019-12-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (282, 93, 33, 'S', '2020-02-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (287, 85, 45, 'S', '2020-02-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (296, 50, 52, 'N', '2020-08-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (298, 60, 48, 'S', '2019-11-16 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (303, 14, 45, 'N', '2020-02-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (308, 13, 37, 'S', '2019-09-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (315, 59, 37, 'S', '2020-03-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (320, 28, 45, 'S', '2020-02-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (325, 111, 38, 'S', '2020-01-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (330, 4, 39, 'S', '2020-01-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (334, 96, 57, 'N', '2020-02-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (339, 34, 36, 'N', '2019-12-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (344, 59, 32, 'S', '2020-03-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (349, 27, 41, 'N', '2020-06-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (354, 113, 51, 'N', '2019-11-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (359, 115, 48, 'N', '2020-09-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (364, 98, 42, 'N', '2020-01-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (369, 55, 33, 'N', '2020-08-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (161, 17, 59, 'N', '2020-08-05 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (166, 67, 51, 'N', '2020-03-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (171, 12, 37, 'S', '2020-02-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (172, 32, 50, 'S', '2020-03-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (173, 104, 51, 'S', '2020-05-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (174, 83, 51, 'N', '2020-03-02 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (175, 37, 47, 'S', '2020-08-16 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (177, 72, 59, 'S', '2019-09-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (182, 20, 48, 'N', '2020-02-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (187, 34, 37, 'N', '2020-06-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (198, 13, 35, 'S', '2019-11-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (203, 43, 48, 'S', '2020-05-30 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (208, 29, 44, 'N', '2020-09-02 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (217, 94, 44, 'N', '2020-06-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (222, 18, 34, 'N', '2020-09-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (227, 87, 44, 'N', '2020-08-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (236, 117, 38, 'N', '2020-07-31 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (241, 27, 35, 'S', '2019-12-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (246, 115, 37, 'N', '2020-05-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (251, 125, 57, 'S', '2019-12-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (252, 62, 34, 'S', '2019-12-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (257, 104, 41, 'N', '2020-01-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (262, 25, 41, 'S', '2020-08-17 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (267, 112, 33, 'S', '2019-09-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (278, 44, 43, 'N', '2020-09-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (283, 5, 40, 'N', '2019-12-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (288, 99, 42, 'S', '2020-04-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (295, 114, 43, 'N', '2020-06-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (299, 35, 40, 'S', '2020-01-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (304, 109, 41, 'S', '2020-06-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (309, 35, 58, 'S', '2020-02-17 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (314, 14, 56, 'N', '2020-06-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (319, 32, 39, 'S', '2020-08-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (324, 26, 53, 'N', '2020-07-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (329, 58, 42, 'N', '2020-06-03 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (335, 15, 60, 'S', '2020-05-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (340, 16, 58, 'N', '2020-05-19 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (345, 11, 46, 'N', '2020-05-04 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (350, 64, 46, 'N', '2020-02-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (353, 13, 44, 'S', '2020-05-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (358, 4, 38, 'S', '2019-12-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (363, 119, 39, 'N', '2020-08-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (368, 68, 51, 'N', '2020-03-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (162, 116, 52, 'N', '2019-09-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (167, 114, 52, 'N', '2019-12-04 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (181, 22, 49, 'N', '2020-02-02 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (186, 55, 32, 'N', '2020-02-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (191, 2, 40, 'S', '2020-05-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (192, 40, 43, 'S', '2020-04-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (193, 58, 55, 'N', '2020-03-05 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (194, 33, 36, 'N', '2020-07-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (199, 91, 38, 'S', '2019-09-29 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (204, 111, 56, 'S', '2020-06-05 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (209, 97, 36, 'N', '2020-04-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (216, 101, 31, 'S', '2020-05-02 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (221, 16, 40, 'S', '2019-10-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (226, 97, 37, 'N', '2020-02-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (231, 83, 34, 'N', '2019-11-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (232, 117, 33, 'S', '2020-07-16 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (237, 113, 35, 'N', '2020-05-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (242, 56, 53, 'S', '2020-08-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (247, 5, 59, 'S', '2020-07-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (256, 114, 58, 'S', '2020-05-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (261, 124, 42, 'S', '2020-05-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (266, 53, 53, 'N', '2020-04-19 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (271, 117, 34, 'S', '2020-02-02 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (272, 76, 61, 'S', '2019-11-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (275, 14, 40, 'N', '2020-08-05 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (280, 85, 51, 'N', '2020-02-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (285, 13, 33, 'S', '2020-08-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (290, 75, 60, 'N', '2020-03-29 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (293, 27, 48, 'N', '2020-09-16 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (301, 73, 46, 'S', '2019-10-03 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (306, 101, 36, 'S', '2020-08-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (311, 98, 61, 'S', '2019-12-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (312, 76, 58, 'S', '2020-05-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (317, 76, 42, 'S', '2020-09-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (322, 78, 50, 'N', '2020-01-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (327, 80, 59, 'N', '2020-09-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (338, 68, 33, 'S', '2020-06-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (343, 8, 48, 'S', '2020-07-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (348, 4, 54, 'N', '2020-05-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (355, 73, 58, 'N', '2020-04-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (360, 122, 31, 'S', '2020-07-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (365, 85, 40, 'S', '2020-08-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (370, 119, 51, 'S', '2019-11-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (372, 4, 97, 'N', '2020-03-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (373, 41, 93, 'N', '2020-06-17 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (374, 9, 115, 'N', '2019-09-29 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (375, 36, 123, 'S', '2019-10-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (376, 62, 105, 'S', '2020-04-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (377, 63, 103, 'N', '2019-12-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (378, 13, 112, 'N', '2020-07-31 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (379, 22, 116, 'N', '2019-12-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (380, 15, 118, 'S', '2020-09-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (381, 121, 104, 'N', '2020-05-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (382, 53, 99, 'S', '2020-07-03 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (383, 24, 118, 'S', '2020-01-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (384, 78, 114, 'N', '2020-03-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (385, 37, 114, 'S', '2020-03-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (386, 121, 114, 'N', '2019-11-30 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (387, 35, 106, 'S', '2020-04-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (388, 73, 99, 'S', '2020-06-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (389, 27, 92, 'S', '2020-01-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (390, 65, 113, 'S', '2019-10-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (391, 75, 98, 'S', '2020-07-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (392, 43, 90, 'N', '2020-06-05 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (393, 37, 94, 'N', '2020-06-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (394, 10, 100, 'N', '2020-06-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (395, 59, 115, 'N', '2020-05-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (396, 36, 105, 'N', '2019-09-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (397, 109, 93, 'S', '2019-10-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (398, 91, 91, 'N', '2020-08-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (399, 101, 92, 'S', '2020-02-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (400, 44, 94, 'S', '2020-07-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (401, 32, 112, 'S', '2020-07-16 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (402, 3, 115, 'N', '2019-12-29 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (403, 6, 102, 'N', '2020-07-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (404, 43, 110, 'N', '2020-03-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (405, 84, 121, 'N', '2020-03-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (406, 22, 102, 'S', '2019-11-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (407, 58, 88, 'S', '2020-04-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (408, 80, 117, 'S', '2020-07-19 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (409, 116, 106, 'S', '2019-12-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (410, 58, 94, 'S', '2019-12-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (411, 103, 96, 'S', '2019-12-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (412, 8, 92, 'N', '2020-08-31 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (413, 44, 111, 'S', '2020-09-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (414, 38, 112, 'S', '2019-10-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (415, 32, 96, 'S', '2020-05-03 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (416, 35, 122, 'S', '2020-01-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (417, 120, 109, 'N', '2020-09-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (418, 43, 88, 'S', '2020-04-05 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (419, 37, 90, 'S', '2020-01-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (420, 36, 107, 'N', '2020-02-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (421, 76, 115, 'S', '2020-06-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (422, 1, 124, 'N', '2020-07-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (423, 100, 88, 'S', '2020-04-19 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (424, 5, 100, 'N', '2020-08-31 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (425, 107, 99, 'N', '2019-11-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (426, 47, 106, 'N', '2020-01-05 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (427, 10, 93, 'N', '2019-12-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (428, 66, 88, 'N', '2019-10-03 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (429, 71, 109, 'N', '2019-10-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (430, 34, 123, 'N', '2020-04-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (431, 66, 103, 'S', '2019-11-30 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (432, 94, 89, 'N', '2020-05-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (433, 35, 104, 'S', '2020-01-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (434, 104, 120, 'N', '2020-06-05 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (435, 98, 104, 'N', '2019-09-29 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (436, 58, 95, 'N', '2019-11-04 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (437, 86, 88, 'S', '2020-03-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (438, 37, 97, 'N', '2019-11-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (439, 21, 122, 'N', '2020-02-29 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (440, 43, 90, 'N', '2019-09-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (441, 74, 91, 'S', '2020-01-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (442, 112, 99, 'N', '2020-01-04 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (443, 114, 101, 'S', '2020-08-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (444, 121, 95, 'S', '2020-01-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (445, 100, 96, 'S', '2020-05-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (446, 82, 122, 'N', '2020-03-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (447, 56, 117, 'N', '2020-03-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (448, 122, 108, 'N', '2020-04-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (449, 97, 93, 'S', '2020-03-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (450, 23, 119, 'N', '2020-02-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (451, 41, 100, 'N', '2019-12-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (452, 95, 123, 'N', '2020-04-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (453, 86, 97, 'N', '2019-12-30 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (454, 25, 122, 'S', '2020-04-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (455, 96, 93, 'S', '2020-02-04 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (456, 6, 119, 'N', '2020-02-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (457, 29, 118, 'S', '2019-09-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (458, 85, 112, 'N', '2020-05-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (459, 94, 111, 'S', '2020-05-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (460, 100, 112, 'N', '2020-03-16 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (461, 117, 120, 'N', '2020-01-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (462, 2, 120, 'S', '2020-04-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (463, 109, 96, 'N', '2020-09-02 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (464, 66, 120, 'S', '2019-11-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (465, 125, 111, 'N', '2019-10-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (466, 95, 91, 'S', '2020-08-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (467, 122, 116, 'N', '2020-01-17 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (468, 11, 122, 'N', '2020-02-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (469, 67, 121, 'S', '2020-06-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (470, 6, 93, 'N', '2020-05-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (471, 36, 120, 'S', '2020-06-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (472, 16, 115, 'S', '2020-02-04 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (473, 96, 106, 'N', '2020-03-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (474, 50, 92, 'N', '2020-05-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (475, 52, 114, 'S', '2020-05-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (476, 112, 88, 'N', '2020-05-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (477, 121, 100, 'S', '2019-09-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (478, 119, 102, 'N', '2019-10-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (479, 42, 93, 'S', '2020-07-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (480, 66, 115, 'S', '2020-06-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (481, 91, 123, 'N', '2019-11-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (482, 95, 93, 'S', '2020-04-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (483, 43, 114, 'S', '2020-04-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (484, 48, 94, 'S', '2019-10-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (485, 118, 114, 'S', '2019-10-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (486, 19, 120, 'N', '2020-07-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (491, 106, 110, 'S', '2020-07-02 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (492, 116, 96, 'N', '2020-05-30 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (493, 33, 101, 'N', '2020-01-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (495, 89, 100, 'S', '2019-10-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (500, 107, 95, 'N', '2020-05-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (505, 95, 119, 'S', '2019-11-30 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (510, 118, 102, 'S', '2019-11-19 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (487, 32, 104, 'N', '2020-04-19 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (499, 33, 89, 'S', '2020-01-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (504, 66, 106, 'N', '2019-12-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (509, 25, 97, 'N', '2020-05-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (488, 78, 98, 'N', '2019-10-30 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (498, 116, 111, 'N', '2020-03-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (503, 108, 120, 'N', '2020-06-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (508, 25, 98, 'S', '2020-07-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (489, 14, 117, 'N', '2020-08-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (496, 16, 98, 'S', '2019-11-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (501, 103, 108, 'N', '2019-10-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (506, 125, 96, 'S', '2020-09-02 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (511, 123, 95, 'N', '2020-03-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (490, 105, 108, 'N', '2019-09-30 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (494, 106, 120, 'N', '2020-04-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (497, 37, 98, 'N', '2019-09-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (502, 1, 108, 'N', '2020-08-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (507, 46, 100, 'S', '2020-03-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (512, 85, 95, 'N', '2020-03-17 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (513, 64, 102, 'S', '2020-06-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (514, 122, 103, 'S', '2019-11-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (515, 41, 110, 'S', '2020-02-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (516, 66, 105, 'N', '2020-03-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (517, 60, 109, 'N', '2019-09-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (518, 40, 111, 'S', '2020-01-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (519, 46, 88, 'S', '2020-06-19 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (520, 97, 94, 'N', '2019-11-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (521, 20, 91, 'S', '2019-11-29 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (522, 45, 100, 'N', '2020-07-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (523, 9, 114, 'N', '2020-05-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (524, 36, 115, 'N', '2020-06-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (525, 116, 123, 'N', '2020-04-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (526, 115, 102, 'N', '2019-12-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (527, 93, 104, 'N', '2020-05-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (528, 24, 118, 'N', '2020-09-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (529, 25, 97, 'S', '2020-04-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (530, 77, 100, 'S', '2020-06-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (531, 76, 91, 'N', '2020-01-04 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (532, 117, 118, 'S', '2020-08-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (533, 85, 118, 'S', '2020-04-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (534, 41, 123, 'N', '2020-07-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (535, 64, 113, 'N', '2020-07-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (536, 9, 108, 'S', '2019-10-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (537, 50, 93, 'S', '2020-06-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (538, 69, 116, 'N', '2019-11-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (539, 79, 119, 'N', '2020-05-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (540, 124, 88, 'S', '2020-05-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (541, 41, 114, 'N', '2020-06-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (542, 25, 88, 'N', '2020-03-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (543, 95, 115, 'N', '2019-11-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (544, 89, 95, 'N', '2019-12-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (545, 18, 102, 'N', '2020-04-03 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (546, 21, 116, 'S', '2020-06-27 00:00:00');

--
-- Data for table public.cargo_permissao (OID = 29421) (LIMIT 500,185)
--
INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (547, 72, 124, 'S', '2020-03-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (548, 27, 110, 'N', '2020-03-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (549, 122, 120, 'S', '2019-11-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (550, 100, 107, 'S', '2020-08-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (551, 25, 104, 'S', '2020-05-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (552, 89, 89, 'N', '2020-04-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (553, 101, 119, 'N', '2019-11-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (554, 45, 99, 'S', '2019-12-31 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (555, 37, 122, 'S', '2020-08-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (556, 3, 103, 'N', '2020-02-05 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (557, 24, 121, 'S', '2019-11-30 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (558, 8, 98, 'S', '2020-06-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (559, 72, 109, 'N', '2019-11-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (560, 86, 105, 'S', '2020-02-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (561, 37, 91, 'S', '2019-11-17 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (562, 63, 114, 'N', '2020-07-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (563, 105, 122, 'N', '2020-05-02 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (564, 25, 96, 'N', '2020-07-16 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (565, 71, 105, 'N', '2020-08-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (566, 68, 92, 'N', '2020-03-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (567, 16, 119, 'S', '2020-06-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (568, 91, 114, 'S', '2020-06-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (569, 71, 111, 'N', '2020-06-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (570, 83, 99, 'S', '2020-04-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (571, 22, 119, 'N', '2020-07-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (572, 95, 121, 'S', '2019-10-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (573, 124, 95, 'S', '2019-11-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (574, 36, 94, 'N', '2020-02-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (575, 100, 93, 'N', '2019-12-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (576, 50, 104, 'S', '2020-03-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (577, 78, 113, 'N', '2020-02-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (578, 106, 89, 'S', '2020-01-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (579, 58, 115, 'N', '2020-06-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (580, 114, 96, 'N', '2020-04-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (581, 70, 105, 'N', '2019-10-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (582, 61, 109, 'N', '2020-01-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (583, 122, 89, 'S', '2019-11-16 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (584, 112, 97, 'S', '2019-12-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (585, 90, 112, 'S', '2020-03-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (586, 28, 95, 'S', '2019-12-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (587, 11, 121, 'N', '2020-04-17 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (588, 50, 119, 'S', '2020-07-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (589, 34, 94, 'S', '2020-08-02 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (590, 3, 101, 'N', '2020-08-02 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (591, 122, 120, 'N', '2020-01-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (592, 39, 112, 'N', '2020-03-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (593, 113, 115, 'S', '2019-10-19 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (594, 66, 124, 'N', '2020-07-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (595, 95, 122, 'S', '2020-09-02 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (596, 54, 116, 'S', '2020-03-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (597, 89, 106, 'N', '2020-01-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (598, 115, 99, 'S', '2020-08-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (599, 11, 103, 'N', '2019-09-27 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (600, 88, 106, 'N', '2020-06-16 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (601, 42, 100, 'N', '2020-07-03 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (602, 106, 111, 'S', '2019-09-29 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (603, 6, 116, 'S', '2020-03-04 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (604, 69, 116, 'S', '2020-03-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (605, 95, 103, 'S', '2020-04-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (606, 4, 90, 'N', '2019-11-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (607, 4, 121, 'S', '2020-03-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (608, 51, 120, 'N', '2019-10-29 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (609, 88, 99, 'S', '2019-12-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (610, 51, 104, 'N', '2019-11-17 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (611, 4, 112, 'S', '2019-10-17 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (612, 44, 104, 'N', '2019-12-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (613, 125, 104, 'N', '2020-01-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (614, 90, 105, 'N', '2020-06-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (615, 116, 97, 'N', '2019-10-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (616, 96, 100, 'S', '2020-03-17 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (617, 64, 115, 'N', '2019-09-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (618, 64, 110, 'N', '2019-09-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (619, 113, 107, 'S', '2020-07-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (620, 20, 92, 'S', '2020-02-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (621, 90, 123, 'S', '2020-03-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (622, 11, 108, 'N', '2019-11-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (623, 25, 93, 'S', '2019-11-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (624, 91, 88, 'S', '2019-10-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (625, 56, 95, 'S', '2020-06-29 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (626, 98, 95, 'N', '2020-05-04 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (627, 120, 103, 'N', '2020-08-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (628, 43, 101, 'S', '2020-02-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (629, 89, 113, 'N', '2019-10-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (630, 117, 91, 'S', '2020-08-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (631, 58, 111, 'N', '2019-10-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (632, 7, 90, 'S', '2019-10-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (633, 113, 117, 'N', '2020-07-17 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (634, 51, 96, 'N', '2020-06-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (635, 31, 121, 'S', '2020-06-30 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (636, 59, 109, 'S', '2019-11-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (637, 104, 110, 'S', '2020-02-04 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (638, 65, 104, 'N', '2019-12-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (639, 57, 107, 'S', '2020-06-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (640, 60, 112, 'N', '2020-02-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (641, 40, 95, 'N', '2020-08-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (642, 90, 88, 'N', '2019-11-30 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (643, 98, 88, 'N', '2020-07-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (644, 35, 106, 'N', '2019-09-30 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (645, 13, 105, 'S', '2020-05-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (646, 51, 109, 'S', '2019-10-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (647, 25, 97, 'N', '2020-07-19 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (648, 11, 98, 'S', '2019-11-17 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (649, 72, 121, 'N', '2020-02-06 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (650, 69, 107, 'S', '2020-05-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (651, 55, 120, 'N', '2020-03-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (652, 80, 94, 'S', '2020-09-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (653, 84, 118, 'N', '2020-09-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (654, 122, 123, 'N', '2020-07-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (655, 10, 98, 'S', '2019-09-30 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (656, 91, 113, 'N', '2020-01-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (657, 34, 110, 'N', '2020-06-03 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (658, 19, 113, 'N', '2020-02-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (659, 5, 115, 'N', '2020-08-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (660, 55, 101, 'N', '2020-08-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (661, 99, 113, 'N', '2020-03-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (662, 111, 113, 'S', '2020-03-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (663, 102, 113, 'N', '2020-03-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (664, 86, 95, 'N', '2019-11-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (669, 73, 121, 'N', '2019-09-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (678, 30, 110, 'S', '2020-04-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (683, 19, 97, 'N', '2020-05-24 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (688, 41, 91, 'S', '2020-03-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (695, 29, 114, 'N', '2020-02-25 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (700, 23, 115, 'S', '2020-07-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (705, 120, 97, 'S', '2020-08-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (710, 53, 88, 'N', '2019-10-05 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (715, 70, 111, 'S', '2020-09-16 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (720, 7, 103, 'S', '2020-03-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (725, 49, 106, 'N', '2020-02-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (730, 14, 112, 'S', '2020-05-03 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (665, 58, 98, 'S', '2019-12-20 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (670, 50, 100, 'N', '2020-04-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (676, 28, 123, 'S', '2019-12-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (680, 69, 89, 'S', '2020-08-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (685, 4, 90, 'N', '2020-04-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (690, 72, 119, 'S', '2020-07-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (693, 117, 95, 'N', '2019-10-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (698, 90, 97, 'N', '2019-12-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (703, 47, 124, 'N', '2020-04-11 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (708, 124, 97, 'N', '2020-09-02 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (717, 125, 91, 'S', '2020-02-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (723, 22, 92, 'S', '2020-08-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (728, 46, 103, 'N', '2019-11-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (666, 77, 99, 'N', '2020-03-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (671, 8, 105, 'S', '2019-11-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (672, 42, 88, 'N', '2020-03-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (673, 123, 115, 'N', '2019-10-05 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (674, 39, 91, 'S', '2020-07-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (675, 83, 123, 'S', '2020-09-04 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (677, 39, 94, 'N', '2019-10-31 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (682, 19, 102, 'N', '2020-09-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (687, 65, 95, 'S', '2020-01-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (696, 71, 101, 'S', '2020-07-19 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (701, 49, 103, 'S', '2020-04-17 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (706, 22, 117, 'S', '2020-05-21 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (711, 16, 91, 'S', '2020-06-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (712, 94, 122, 'N', '2020-05-02 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (713, 124, 116, 'N', '2020-05-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (714, 36, 92, 'S', '2020-05-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (719, 17, 101, 'N', '2020-04-07 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (724, 94, 92, 'N', '2020-04-19 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (729, 12, 105, 'S', '2020-08-01 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (667, 51, 117, 'N', '2020-08-22 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (681, 72, 112, 'S', '2020-07-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (686, 14, 124, 'S', '2019-12-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (691, 119, 93, 'N', '2020-03-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (692, 125, 106, 'N', '2020-01-03 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (697, 35, 120, 'S', '2019-12-17 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (702, 41, 122, 'S', '2020-08-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (707, 77, 111, 'N', '2019-12-09 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (718, 97, 106, 'N', '2020-01-14 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (722, 103, 105, 'N', '2019-10-13 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (727, 86, 112, 'N', '2019-12-15 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (668, 124, 97, 'N', '2020-09-12 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (679, 2, 124, 'S', '2020-06-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (684, 117, 107, 'S', '2020-05-23 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (689, 25, 116, 'S', '2020-05-03 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (694, 65, 104, 'S', '2019-10-18 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (699, 35, 91, 'N', '2019-11-04 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (704, 36, 114, 'S', '2020-02-28 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (709, 101, 111, 'N', '2019-12-05 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (716, 47, 122, 'S', '2020-01-26 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (721, 87, 109, 'S', '2020-06-08 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (726, 79, 105, 'S', '2020-01-10 00:00:00');

INSERT INTO cargo_permissao (id, fk_permissao, fk_cargo, ativo, dt_cadastro)
VALUES (731, 79, 89, 'S', '2020-08-22 00:00:00');

--
-- Data for table public.cliente (OID = 29430) (LIMIT 0,7)
--
INSERT INTO cliente (id, fkpessoa, bloqueado, limite_credito, tipo_contribuinte, consumidor_rural, consumidor_final, especial)
VALUES (101, 1, 'N', NULL, 'S', 'S', 'S', 'N');

INSERT INTO cliente (id, fkpessoa, bloqueado, limite_credito, tipo_contribuinte, consumidor_rural, consumidor_final, especial)
VALUES (102, 20, 'N', 87.00, 'N', 'N', 'S', 'S');

INSERT INTO cliente (id, fkpessoa, bloqueado, limite_credito, tipo_contribuinte, consumidor_rural, consumidor_final, especial)
VALUES (109, 44, 'S', 17.00, 'N', 'N', 'S', 'S');

INSERT INTO cliente (id, fkpessoa, bloqueado, limite_credito, tipo_contribuinte, consumidor_rural, consumidor_final, especial)
VALUES (112, 6, 'S', 31.00, 'S', 'N', 'S', 'N');

INSERT INTO cliente (id, fkpessoa, bloqueado, limite_credito, tipo_contribuinte, consumidor_rural, consumidor_final, especial)
VALUES (113, 5, 'N', 86.00, 'N', 'N', 'S', 'S');

INSERT INTO cliente (id, fkpessoa, bloqueado, limite_credito, tipo_contribuinte, consumidor_rural, consumidor_final, especial)
VALUES (114, 4, 'S', 30.00, 'N', 'S', 'S', 'S');

INSERT INTO cliente (id, fkpessoa, bloqueado, limite_credito, tipo_contribuinte, consumidor_rural, consumidor_final, especial)
VALUES (119, 9, 'S', 2.00, 'S', 'N', 'S', 'S');

--
-- Data for table public.conta_gerencial (OID = 29443) (LIMIT 0,17)
--
INSERT INTO conta_gerencial (id, nome, ativo, fk_plano_conta, fk_plano_conta_categoria, padrao_api, dt_cadastro)
VALUES (25, 'Albuquerque e Associados', 'N', 11, 15, 'S', '2020-04-25 00:00:00');

INSERT INTO conta_gerencial (id, nome, ativo, fk_plano_conta, fk_plano_conta_categoria, padrao_api, dt_cadastro)
VALUES (26, 'Batista, Saraiva and Costa', 'N', 11, 15, 'S', '2019-11-01 00:00:00');

INSERT INTO conta_gerencial (id, nome, ativo, fk_plano_conta, fk_plano_conta_categoria, padrao_api, dt_cadastro)
VALUES (27, 'Carvalho - Albuquerque', 'N', 11, 15, 'N', '2020-08-25 00:00:00');

INSERT INTO conta_gerencial (id, nome, ativo, fk_plano_conta, fk_plano_conta_categoria, padrao_api, dt_cadastro)
VALUES (28, 'Moreira S.A.', 'N', 11, 15, 'S', '2020-01-17 00:00:00');

INSERT INTO conta_gerencial (id, nome, ativo, fk_plano_conta, fk_plano_conta_categoria, padrao_api, dt_cadastro)
VALUES (29, 'Carvalho, Braga and Souza', 'S', 11, 15, 'S', '2019-10-10 00:00:00');

INSERT INTO conta_gerencial (id, nome, ativo, fk_plano_conta, fk_plano_conta_categoria, padrao_api, dt_cadastro)
VALUES (30, 'Oliveira - Carvalho', 'S', 11, 15, 'N', '2020-06-13 00:00:00');

INSERT INTO conta_gerencial (id, nome, ativo, fk_plano_conta, fk_plano_conta_categoria, padrao_api, dt_cadastro)
VALUES (31, 'Albuquerque - Moreira', 'N', 11, 15, 'S', '2020-03-31 00:00:00');

INSERT INTO conta_gerencial (id, nome, ativo, fk_plano_conta, fk_plano_conta_categoria, padrao_api, dt_cadastro)
VALUES (32, 'Melo - Moreira', 'N', 11, 15, 'S', '2019-09-14 00:00:00');

INSERT INTO conta_gerencial (id, nome, ativo, fk_plano_conta, fk_plano_conta_categoria, padrao_api, dt_cadastro)
VALUES (33, 'Santos Comércio', 'N', 11, 15, 'S', '2020-05-06 00:00:00');

INSERT INTO conta_gerencial (id, nome, ativo, fk_plano_conta, fk_plano_conta_categoria, padrao_api, dt_cadastro)
VALUES (34, 'Franco, Reis and Saraiva', 'N', 11, 15, 'S', '2020-03-03 00:00:00');

INSERT INTO conta_gerencial (id, nome, ativo, fk_plano_conta, fk_plano_conta_categoria, padrao_api, dt_cadastro)
VALUES (35, 'Carvalho - Carvalho', 'N', 11, 15, 'N', '2020-08-21 00:00:00');

INSERT INTO conta_gerencial (id, nome, ativo, fk_plano_conta, fk_plano_conta_categoria, padrao_api, dt_cadastro)
VALUES (36, 'Santos - Carvalho', 'N', 11, 15, 'N', '2020-06-26 00:00:00');

INSERT INTO conta_gerencial (id, nome, ativo, fk_plano_conta, fk_plano_conta_categoria, padrao_api, dt_cadastro)
VALUES (37, 'Franco - Saraiva', 'S', 11, 15, 'S', '2020-06-13 00:00:00');

INSERT INTO conta_gerencial (id, nome, ativo, fk_plano_conta, fk_plano_conta_categoria, padrao_api, dt_cadastro)
VALUES (38, 'Macedo, Santos and Souza', 'S', 11, 15, 'S', '2020-06-06 00:00:00');

INSERT INTO conta_gerencial (id, nome, ativo, fk_plano_conta, fk_plano_conta_categoria, padrao_api, dt_cadastro)
VALUES (39, 'Oliveira LTDA', 'N', 11, 15, 'S', '2020-08-22 00:00:00');

INSERT INTO conta_gerencial (id, nome, ativo, fk_plano_conta, fk_plano_conta_categoria, padrao_api, dt_cadastro)
VALUES (40, 'Carvalho - Braga', 'N', 11, 15, 'N', '2020-03-19 00:00:00');

INSERT INTO conta_gerencial (id, nome, ativo, fk_plano_conta, fk_plano_conta_categoria, padrao_api, dt_cadastro)
VALUES (41, 'Martins, Macedo and Moraes', 'S', 11, 15, 'S', '2020-05-15 00:00:00');

--
-- Data for table public.filial (OID = 29470) (LIMIT 0,3)
--
INSERT INTO filial (id, nome_fantasia, razao_social, logradouro, numero, bairro, fk_cidade, cep, telefone_1, telefone_2, telefone_3, cnpj, ie, gerente, complemento, email, smtp, email_senha, porta_email, serie_nfe, natureza_operacao_nfe, perc_aliquota_sn, calcular_base_icms, ativo, dt_cadastro)
VALUES (3, 'API SYSTEMS - Filial 2', 'API SYSTEMS - Filial 2', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 'S', 'S', '2020-09-03 00:00:00');

INSERT INTO filial (id, nome_fantasia, razao_social, logradouro, numero, bairro, fk_cidade, cep, telefone_1, telefone_2, telefone_3, cnpj, ie, gerente, complemento, email, smtp, email_senha, porta_email, serie_nfe, natureza_operacao_nfe, perc_aliquota_sn, calcular_base_icms, ativo, dt_cadastro)
VALUES (1, 'API SYSTEMS', 'API SYSTEMS', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 'S', 'S', '2020-09-03 17:53:13.299763');

INSERT INTO filial (id, nome_fantasia, razao_social, logradouro, numero, bairro, fk_cidade, cep, telefone_1, telefone_2, telefone_3, cnpj, ie, gerente, complemento, email, smtp, email_senha, porta_email, serie_nfe, natureza_operacao_nfe, perc_aliquota_sn, calcular_base_icms, ativo, dt_cadastro)
VALUES (2, 'API SYSTEMS - Filial 1', 'API SYSTEMS - Filial 1', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 'S', 'S', '2020-09-03 00:00:00');

--
-- Data for table public.filial_certificado (OID = 29479) (LIMIT 0,28)
--
INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (2, 1, 'http://lorempixel.com/640/480', '04', '90258', '10200', '38232', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (3, 1, 'http://lorempixel.com/640/480', '79', '02149', '18215', '77537', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (5, 1, 'http://lorempixel.com/640/480', '24', '68654', '09419', '38149', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (6, 1, 'http://lorempixel.com/640/480', '10', '14729', '14073', '13818', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (7, 1, 'http://lorempixel.com/640/480', '28', '14137', '15303', '15514', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (8, 1, 'http://lorempixel.com/640/480', '78', '644143432', '309620133', '074955337', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (9, 1, 'http://lorempixel.com/640/480', '08', '917128950', '039143560', '704625450', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (10, 1, 'http://lorempixel.com/640/480', '26', '543601503', '456397069', '720230126', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (11, 2, 'http://lorempixel.com/640/480', '17', '581157892', '111082859', '834602218', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (12, 2, 'http://lorempixel.com/640/480', '24', '432676649', '144147348', '445965742', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (13, 2, 'http://lorempixel.com/640/480', '24', '839708846', '105905163', '352977101', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (14, 2, 'http://lorempixel.com/640/480', '70', '930226414', '558553879', '158387572', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (15, 2, 'http://lorempixel.com/640/480', '94', '857334357', '875944140', '535823386', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (16, 2, 'http://lorempixel.com/640/480', '25', '250351350', '852839659', '067533142', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (17, 3, 'http://lorempixel.com/640/480', '23', '695046505', '946227202', '879073652', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (18, 3, 'http://lorempixel.com/640/480', '83', '889365039', '055503943', '468301154', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (19, 3, 'http://lorempixel.com/640/480', '87', '398504334', '443350303', '887558110', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (20, 3, 'http://lorempixel.com/640/480', '99', '972872039', '919474360', '051424219', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (21, 3, 'http://lorempixel.com/640/480', '03', '670333044', '178117438', '000692069', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (22, 3, 'http://lorempixel.com/640/480', '04', '251647448', '526354353', '555889432', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (23, 3, 'http://lorempixel.com/640/480', '65', '691099481', '293936315', '986428795', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (24, 3, 'http://lorempixel.com/640/480', '34', '502434555', '700697337', '292769813', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (25, 3, 'http://lorempixel.com/640/480', '18', '739134136', '342973406', '406829392', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (26, 3, 'http://lorempixel.com/640/480', '08', '947155642', '253701458', '899069270', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (27, 3, 'http://lorempixel.com/640/480', '54', '419893772', '824232576', '475217973', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (28, 3, 'http://lorempixel.com/640/480', '33', '652591562', '995847364', '946804327', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (29, 3, 'http://lorempixel.com/640/480', '87', '130155342', '855704356', '385457741', '2021-04-20', 1, NULL);

INSERT INTO filial_certificado (id, fk_filial, certificado_caminho, certificado_numero_serie, certificado_senha, certificado_idcsc, certificado_csc, validade, tipo, certificado_pfx)
VALUES (30, 3, 'http://lorempixel.com/640/480', '52', '376887363', '599885943', '343103923', '2021-04-20', 1, NULL);

--
-- Data for table public.grade (OID = 29488) (LIMIT 0,75)
--
INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (437, 'asdadasdxczxc', 'S', 'S', 'S', '2020-08-20 13:23:40.399844');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (438, 'asdadasdxczxcz', 'S', 'S', 'S', '2020-08-20 13:23:45.475535');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (439, 'asdasdxzcz', 'S', 'S', 'S', '2020-08-20 13:24:13.581319');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (516, 'fgdfg', 'N', 'S', 'S', '2020-09-04 19:06:47.502641');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (434, '584444', 'D', 'D', 'D', '2020-08-20 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (435, 'TESTE1323223', 'F', 'D', 'F', '2020-08-20 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (87, '@@$$', 'N', 'N', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (322, 'teste4545245255', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (518, 'ad', 'S', 'N', 'N', '2020-05-19 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (90, 'testeeeee', 'N', '5', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (519, 'et', 'N', 'S', 'S', '2020-03-03 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (520, 'numquam', 'S', 'S', 'N', '2020-06-13 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (387, 'gg', 'S', 'S', 'S', '2020-08-13 11:57:28.732436');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (55, 'tesr', 'S', 'N', 'S', '2020-07-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (262, 'teste2579', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (521, 'doloribus', 'S', 'N', 'S', '2020-03-31 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (118, 'taae2', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (117, 'tesaaae 0007', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (126, 'sasassdsd', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (79, 'asdasdadasdaaaaaaaaaaaaaa', 'N', 'N', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (86, 'asassaaaaaaaaaaaaaaaaaaaa', 'N', 'N', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (93, 'UNICA', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (522, 'saepe', 'S', 'N', 'S', '2019-09-18 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (151, 'teste5144', 'S', 'S', 'S', '2020-07-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (149, 'tesaaae kalskjdaksjdlkajs', 'S', 'S', 'S', '2020-07-31 15:19:03.11761');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (150, 'qwqwdqwd', 'S', 'S', 'S', '2020-07-31 15:19:06.491117');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (391, 'teste121', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (523, 'placeat', 'S', 'N', 'N', '2019-12-20 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (524, 'corporis', 'S', 'N', 'N', '2020-02-14 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (331, 'testee', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (269, 'teste5454544', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (446, 'sdadsadad', 'S', 'S', 'S', '2020-08-20 14:16:29.839792');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (525, 'minima', 'S', 'N', 'N', '2020-06-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (114, 'tese', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (388, 'vacaputaldsdsdoca', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (74, 'teste', 'N', 'N', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (389, 'vaca', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (73, '25808', 'N', 'N', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (338, 'testeasdasdawads', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (164, 'testedsds', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (165, 'lkh', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (166, 'lkdfdfdfh', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (390, 'putavadia2', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (248, 'teste257475', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (341, 'testeasdasdawadkkkkkkkkks', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (285, 'testeeeeeeeeeeee', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (436, 'testeasas hhhhhhh', 'S', 'N', 'N', '2020-08-20 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (348, 'testeasdasdawadkkkkkkks', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (494, 'Rafael', 'S', 'S', 'S', '2020-09-03 14:01:34.5245');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (453, 'testeasadsadasdsadase', 'S', 'S', 'S', '2020-08-20 14:26:31.045836');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (417, 'testesz', 'r', 'r', 'r', '2020-08-20 11:27:14.453087');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (530, 'Lazarine', 'S', 'N', 'N', '2020-09-22 19:05:20.322144');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (499, 'Vendas', 'S', 'N', 'S', '2020-09-03 14:06:18.380627');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (272, 'teste15145', 'N', 'S', 'S', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (500, 'ddsada                   ', 'S', 'N', 'S', '2020-09-03 17:59:35.302012');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (72, 'TESTE 2', 'S', 'S', 'S', '2020-07-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (2, 'AZUL', 'S', 'S', 'S', '2020-08-20 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (422, 'testeszz', 'r', 'r', 'r', '2020-08-20 11:34:30.290068');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (458, 'dsdsdadasdasda', 'S', 'S', 'S', '2020-08-20 14:42:28.750206');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (406, 'testeee', 'S', 'S', 'N', '2020-08-19 18:25:37.177795');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (425, 'testeszsssz', 'r', 'r', 'r', '2020-08-20 11:51:45.0114');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (426, 'testeszsssasasz', 'r', 'r', 'r', '2020-08-20 11:52:26.734337');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (427, 'sdsdasdasaa', 'r', 'r', 'r', '2020-08-20 11:55:35.521518');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (507, '12', 'S', 'S', 'S', '2020-09-03 18:04:09.9579');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (368, 'TESTE658', 'N', 'D', 'N', '2020-08-21 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (428, 'asdadsada', 'r', 'r', 'r', '2020-08-20 11:56:32.601733');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (467, 'DADSADASDA', 'S', 'S', 'S', '2020-08-20 15:28:04.369602');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (479, 'aaaaaaaa', 'D', 'D', 'S', '2020-08-20 17:05:49.6746');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (5, 'ROSA', 'S', 'S', 'S', '2020-08-20 00:00:00');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (468, 'DAADASDASDADSADASDA', 'S', 'S', 'S', '2020-08-20 15:31:15.308891');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (469, '845451ASDAS', 'D', 'D', 'S', '2020-08-20 15:31:36.258818');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (476, 'aaaaaazxzxz', 'D', 'S', 'S', '2020-08-20 16:28:01.164166');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (482, 'asadsxczfcd', 'l', 'l', 'l', '2020-08-20 18:27:00.433266');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (485, 'asczxcdsrfsdse', 'l', 'l', 'l', '2020-08-20 18:28:55.178872');

INSERT INTO grade (id, nome, ativo, padrao, padrao_api, dt_cadastro)
VALUES (999999, 'ERIC', 'D', 'S', 'S', '2020-08-20 18:45:37.635529');

--
-- Data for table public.grupo (OID = 29497) (LIMIT 0,35)
--
INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (467, 'Home', NULL, 'N', 'N', 'S', 'S', 'N', 'N', 'S', 'N', 'S', 'S', 'N', '2019-10-30 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (468, 'Clothing', NULL, 'N', 'S', 'S', 'N', 'S', 'S', 'N', 'N', 'N', 'S', 'S', '2020-02-19 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (469, 'Health', NULL, 'N', 'N', 'S', 'S', 'N', 'S', 'N', 'S', 'S', 'N', 'S', '2020-01-12 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (470, 'Garden', NULL, 'N', 'S', 'N', 'N', 'N', 'S', 'N', 'S', 'S', 'N', 'N', '2020-02-07 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (471, 'Tools', NULL, 'S', 'N', 'S', 'S', 'S', 'N', 'N', 'N', 'S', 'N', 'N', '2020-01-14 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (472, 'Books', NULL, 'S', 'N', 'S', 'S', 'N', 'S', 'N', 'N', 'S', 'N', 'S', '2020-07-17 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (473, 'Games', NULL, 'S', 'N', 'N', 'N', 'S', 'N', 'S', 'N', 'S', 'S', 'N', '2020-01-09 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (474, 'Clothing', NULL, 'S', 'N', 'N', 'S', 'S', 'S', 'N', 'S', 'N', 'S', 'N', '2019-09-27 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (475, 'Games', NULL, 'N', 'S', 'N', 'S', 'S', 'S', 'S', 'S', 'N', 'N', 'S', '2019-12-01 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (476, 'Kids', NULL, 'N', 'S', 'S', 'N', 'N', 'N', 'N', 'N', 'S', 'N', 'N', '2020-03-10 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (477, 'Health', NULL, 'S', 'S', 'S', 'S', 'S', 'N', 'N', 'N', 'N', 'N', 'S', '2020-06-09 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (478, 'Shoes', NULL, 'N', 'S', 'N', 'S', 'N', 'S', 'N', 'S', 'S', 'N', 'S', '2020-01-31 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (479, 'Beauty', NULL, 'S', 'N', 'N', 'N', 'S', 'S', 'S', 'N', 'N', 'S', 'N', '2019-11-13 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (480, 'Kids', NULL, 'S', 'N', 'S', 'N', 'N', 'S', 'S', 'N', 'S', 'N', 'S', '2020-01-25 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (481, 'Automotive', NULL, 'S', 'N', 'S', 'N', 'N', 'N', 'S', 'S', 'N', 'S', 'S', '2020-06-21 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (482, 'Toys', NULL, 'S', 'S', 'N', 'S', 'N', 'N', 'S', 'N', 'N', 'N', 'N', '2019-12-23 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (483, 'Tools', NULL, 'S', 'S', 'S', 'S', 'S', 'N', 'S', 'S', 'N', 'N', 'N', '2020-06-05 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (484, 'Music', NULL, 'N', 'N', 'S', 'S', 'N', 'S', 'N', 'N', 'N', 'S', 'S', '2020-05-21 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (485, 'Baby', NULL, 'N', 'S', 'N', 'S', 'S', 'N', 'S', 'N', 'S', 'N', 'S', '2020-04-01 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (486, 'Industrial', NULL, 'N', 'N', 'S', 'S', 'N', 'S', 'N', 'S', 'S', 'S', 'S', '2019-09-25 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (487, 'Books', NULL, 'S', 'S', 'N', 'N', 'N', 'S', 'N', 'N', 'S', 'S', 'N', '2019-11-24 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (488, 'Books', NULL, 'S', 'N', 'S', 'S', 'N', 'S', 'S', 'S', 'S', 'N', 'S', '2020-03-13 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (489, 'Baby', NULL, 'N', 'N', 'N', 'S', 'S', 'N', 'S', 'S', 'N', 'S', 'S', '2020-03-05 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (490, 'Health', NULL, 'S', 'N', 'N', 'S', 'N', 'N', 'S', 'S', 'N', 'S', 'S', '2020-05-04 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (491, 'Books', NULL, 'N', 'N', 'S', 'S', 'N', 'S', 'S', 'S', 'S', 'S', 'N', '2019-09-16 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (492, 'Beauty', NULL, 'S', 'N', 'S', 'S', 'S', 'N', 'S', 'S', 'N', 'S', 'S', '2020-07-18 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (493, 'Computers', NULL, 'S', 'S', 'N', 'N', 'S', 'N', 'S', 'N', 'S', 'S', 'N', '2020-01-09 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (494, 'Clothing', NULL, 'N', 'S', 'N', 'S', 'N', 'N', 'S', 'S', 'S', 'N', 'N', '2020-01-12 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (495, 'Home', NULL, 'N', 'N', 'S', 'S', 'N', 'S', 'S', 'N', 'N', 'S', 'S', '2020-07-17 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (496, 'Kids', NULL, 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'N', 'N', 'N', 'S', '2020-05-07 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (497, 'Beauty', NULL, 'N', 'S', 'S', 'S', 'S', 'N', 'S', 'S', 'S', 'S', 'N', '2019-12-22 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (498, 'Industrial', NULL, 'S', 'S', 'N', 'S', 'S', 'S', 'N', 'S', 'N', 'S', 'N', '2020-05-04 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (499, 'Grocery', NULL, 'N', 'N', 'S', 'S', 'N', 'S', 'S', 'S', 'N', 'S', 'N', '2020-04-15 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (500, 'Computers', NULL, 'S', 'N', 'N', 'S', 'S', 'N', 'S', 'S', 'S', 'N', 'N', '2020-03-15 00:00:00');

INSERT INTO grupo (id, nome, cor, atendimento, ativo, restringe_idade, domingo, segunda, terca, quarta, quinta, sexta, sabado, mobile, dt_cadastro)
VALUES (501, 'Games', NULL, 'S', 'N', 'S', 'S', 'N', 'N', 'N', 'N', 'S', 'N', 'S', '2019-12-19 00:00:00');

--
-- Data for table public.grupo_acessorio (OID = 29507) (LIMIT 0,2)
--
INSERT INTO grupo_acessorio (id, fk_grupo, nome, gravar, dt_cadastro, ativo)
VALUES (13, 494, 'Soap', 'S', '2020-07-17 00:00:00', 'S');

INSERT INTO grupo_acessorio (id, fk_grupo, nome, gravar, dt_cadastro, ativo)
VALUES (14, 470, 'Table', 'S', '2020-06-19 00:00:00', 'N');

--
-- Data for table public.marca (OID = 29516) (LIMIT 0,11)
--
INSERT INTO marca (id, nome, ativo, dt_cadastro)
VALUES (9, 'tesaaae 0007', 'S', '2020-08-18 11:47:27.204959');

INSERT INTO marca (id, nome, ativo, dt_cadastro)
VALUES (6, 'tesaaae 0007', 'S', '2020-07-31 15:14:09.958578');

INSERT INTO marca (id, nome, ativo, dt_cadastro)
VALUES (7, 'asassaaaaaaaaaaaaaaaaaa2', 'S', '2020-07-31 15:14:15.688757');

INSERT INTO marca (id, nome, ativo, dt_cadastro)
VALUES (10, '123 teste', 'S', '2020-08-20 11:51:11.77275');

INSERT INTO marca (id, nome, ativo, dt_cadastro)
VALUES (2, 'Marca Teste', 'S', '2020-07-30 12:13:36.323064');

INSERT INTO marca (id, nome, ativo, dt_cadastro)
VALUES (12, 'Baby', 'N', '2020-05-21 00:00:00');

INSERT INTO marca (id, nome, ativo, dt_cadastro)
VALUES (13, 'Outdoors', 'N', '2020-06-26 00:00:00');

INSERT INTO marca (id, nome, ativo, dt_cadastro)
VALUES (14, 'Computers', 'S', '2019-12-24 00:00:00');

INSERT INTO marca (id, nome, ativo, dt_cadastro)
VALUES (15, 'Computers', 'S', '2020-08-14 00:00:00');

INSERT INTO marca (id, nome, ativo, dt_cadastro)
VALUES (16, 'Kids', 'S', '2020-01-31 00:00:00');

INSERT INTO marca (id, nome, ativo, dt_cadastro)
VALUES (17, 'rafael', 'S', '2020-09-29 11:53:42.919092');

--
-- Data for table public.pagar (OID = 29525) (LIMIT 0,91)
--
INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (7, 31, 98502766, 'Carvalho - Batista', '2019-12-27 00:00:00', '2020-09-10', 81553, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (8, 32, 12202142, 'Oliveira e Associados', '2019-11-17 00:00:00', '2020-09-10', 8354, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (9, 37, 64323176, 'Braga, Franco and Batista', '2020-04-04 00:00:00', '2020-09-10', 4126, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (10, 41, 49769407, 'Batista S.A.', '2020-04-17 00:00:00', '2020-09-10', 36417, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (11, 37, 54042369, 'Melo - Costa', '2020-01-27 00:00:00', '2020-09-09', 71221, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (12, 29, 68311854, 'Batista - Moreira', '2020-08-18 00:00:00', '2020-09-10', 62910, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (13, 31, 23716266, 'Oliveira Comércio', '2019-09-29 00:00:00', '2020-09-10', 48187, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (14, 41, 12265769, 'Barros, Batista and Santos', '2019-12-29 00:00:00', '2020-09-10', 45172, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (15, 39, 22729900, 'Carvalho - Santos', '2020-06-22 00:00:00', '2020-09-10', 94895, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (16, 40, 59951659, 'Carvalho, Nogueira and Martins', '2020-05-22 00:00:00', '2020-09-09', 22950, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (17, 26, 44607398, 'Macedo - Carvalho', '2020-05-07 00:00:00', '2020-09-10', 42139, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (18, 41, 68867459, 'Reis - Braga', '2020-08-19 00:00:00', '2020-09-10', 15467, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (19, 26, 71839607, 'Carvalho e Associados', '2020-06-04 00:00:00', '2020-09-10', 95820, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (20, 41, 67394462, 'Souza LTDA', '2020-01-17 00:00:00', '2020-09-09', 20607, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (21, 38, 81239137, 'Franco - Costa', '2020-05-24 00:00:00', '2020-09-10', 22011, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (22, 29, 9114690, 'Franco, Nogueira and Barros', '2019-09-23 00:00:00', '2020-09-10', 11490, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (23, 25, 15686154, 'Moreira LTDA', '2020-02-28 00:00:00', '2020-09-10', 61530, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (24, 33, 23585531, 'Moraes - Batista', '2019-09-13 00:00:00', '2020-09-10', 50516, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (25, 33, 75099991, 'Nogueira - Carvalho', '2019-12-19 00:00:00', '2020-09-10', 21932, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (26, 40, 39615098, 'Nogueira e Associados', '2020-02-15 00:00:00', '2020-09-10', 2690, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (27, 37, 1708108, 'Carvalho - Braga', '2019-12-26 00:00:00', '2020-09-10', 47941, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (28, 32, 72318874, 'Nogueira, Reis and Xavier', '2019-09-28 00:00:00', '2020-09-10', 41171, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (29, 34, 96179490, 'Braga e Associados', '2020-07-04 00:00:00', '2020-09-10', 30603, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (30, 25, 81114384, 'Xavier, Macedo and Carvalho', '2020-08-28 00:00:00', '2020-09-10', 8820, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (31, 26, 89126120, 'Albuquerque LTDA', '2020-05-08 00:00:00', '2020-09-09', 36663, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (32, 26, 44979486, 'Souza e Associados', '2020-01-27 00:00:00', '2020-09-10', 12679, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (33, 41, 94674451, 'Melo Comércio', '2020-02-15 00:00:00', '2020-09-10', 61533, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (34, 32, 15504380, 'Carvalho Comércio', '2019-09-15 00:00:00', '2020-09-09', 43977, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (35, 39, 62171164, 'Melo S.A.', '2019-11-21 00:00:00', '2020-09-10', 99413, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (36, 38, 82222940, 'Xavier e Associados', '2020-07-11 00:00:00', '2020-09-09', 58794, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (37, 40, 70827162, 'Macedo, Moreira and Macedo', '2020-01-21 00:00:00', '2020-09-09', 29906, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (38, 37, 88635133, 'Pereira, Pereira and Franco', '2019-12-28 00:00:00', '2020-09-09', 94219, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (39, 36, 56498513, 'Franco Comércio', '2019-11-11 00:00:00', '2020-09-10', 9859, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (40, 28, 78559077, 'Macedo Comércio', '2020-04-14 00:00:00', '2020-09-10', 36596, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (41, 41, 11731411, 'Souza - Batista', '2020-06-20 00:00:00', '2020-09-10', 81294, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (42, 27, 87249088, 'Santos S.A.', '2020-07-25 00:00:00', '2020-09-10', 64986, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (43, 37, 20530636, 'Santos S.A.', '2020-06-27 00:00:00', '2020-09-10', 77469, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (44, 39, 11466956, 'Costa Comércio', '2019-10-07 00:00:00', '2020-09-10', 69109, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (45, 40, 6609022, 'Pereira S.A.', '2020-01-15 00:00:00', '2020-09-10', 18190, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (46, 40, 32231619, 'Batista - Pereira', '2019-12-18 00:00:00', '2020-09-10', 66250, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (47, 34, 40123556, 'Carvalho - Batista', '2019-10-24 00:00:00', '2020-09-10', 27991, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (48, 40, 10936146, 'Melo, Nogueira and Carvalho', '2019-10-08 00:00:00', '2020-09-10', 9705, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (49, 41, 14260581, 'Costa LTDA', '2019-11-21 00:00:00', '2020-09-10', 99076, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (50, 39, 23254627, 'Silva e Associados', '2020-08-31 00:00:00', '2020-09-09', 45815, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (51, 40, 2922741, 'Oliveira Comércio', '2019-09-30 00:00:00', '2020-09-09', 50223, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (52, 40, 93173440, 'Carvalho - Franco', '2020-01-21 00:00:00', '2020-09-10', 42555, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (53, 35, 22733540, 'Albuquerque - Franco', '2020-04-20 00:00:00', '2020-09-10', 82183, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (54, 33, 52170186, 'Oliveira S.A.', '2020-08-30 00:00:00', '2020-09-10', 38748, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (55, 30, 65470980, 'Barros, Macedo and Martins', '2020-02-01 00:00:00', '2020-09-10', 55105, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (56, 30, 21151553, 'Carvalho, Pereira and Carvalho', '2020-07-30 00:00:00', '2020-09-10', 22302, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (57, 32, 11324995, 'Carvalho, Franco and Martins', '2020-01-05 00:00:00', '2020-09-10', 41202, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (58, 28, 49052048, 'Franco, Braga and Melo', '2020-04-20 00:00:00', '2020-09-10', 93422, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (59, 29, 269244, 'Batista, Melo and Saraiva', '2020-06-18 00:00:00', '2020-09-10', 63463, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (60, 35, 43555392, 'Braga - Macedo', '2020-02-10 00:00:00', '2020-09-09', 43802, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (61, 32, 42209063, 'Batista Comércio', '2020-09-06 00:00:00', '2020-09-10', 77619, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (62, 38, 77944660, 'Carvalho, Barros and Macedo', '2019-11-25 00:00:00', '2020-09-09', 62656, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (63, 36, 51344847, 'Nogueira, Santos and Moreira', '2020-06-27 00:00:00', '2020-09-10', 92655, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (64, 40, 92894354, 'Xavier, Braga and Martins', '2020-01-30 00:00:00', '2020-09-10', 42305, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (65, 37, 72072706, 'Macedo, Xavier and Nogueira', '2020-02-14 00:00:00', '2020-09-10', 41123, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (66, 32, 37355108, 'Braga, Costa and Melo', '2019-12-13 00:00:00', '2020-09-10', 70497, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (67, 26, 74619755, 'Reis, Santos and Batista', '2020-02-19 00:00:00', '2020-09-10', 67333, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (68, 35, 60523081, 'Moraes, Silva and Nogueira', '2019-10-09 00:00:00', '2020-09-09', 13410, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (69, 32, 24527907, 'Silva e Associados', '2020-08-17 00:00:00', '2020-09-10', 5929, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (70, 33, 36663788, 'Xavier, Nogueira and Moreira', '2019-11-14 00:00:00', '2020-09-10', 10788, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (75, 38, 88439822, 'Melo - Barros', '2019-09-15 00:00:00', '2020-09-09', 63892, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (80, 26, 26558298, 'Saraiva, Carvalho and Reis', '2020-01-14 00:00:00', '2020-09-10', 38160, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (85, 27, 94511822, 'Batista Comércio', '2020-07-17 00:00:00', '2020-09-09', 85639, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (71, 39, 55053391, 'Carvalho - Nogueira', '2020-01-15 00:00:00', '2020-09-10', 27237, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (76, 26, 13653184, 'Souza e Associados', '2020-03-30 00:00:00', '2020-09-10', 98364, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (81, 37, 96378101, 'Martins - Carvalho', '2020-04-24 00:00:00', '2020-09-10', 84598, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (86, 41, 5265550, 'Xavier, Saraiva and Nogueira', '2020-06-26 00:00:00', '2020-09-10', 8844, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (72, 25, 35384985, 'Pereira - Macedo', '2019-09-27 00:00:00', '2020-09-10', 15604, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (77, 34, 25687797, 'Barros e Associados', '2020-09-10 00:00:00', '2020-09-10', 24425, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (82, 30, 45425297, 'Melo - Pereira', '2020-01-27 00:00:00', '2020-09-10', 25840, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (87, 32, 64341847, 'Moraes - Batista', '2020-08-11 00:00:00', '2020-09-09', 56256, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (73, 40, 87847069, 'Batista, Reis and Reis', '2020-08-30 00:00:00', '2020-09-10', 7830, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (78, 38, 20078171, 'Carvalho - Santos', '2020-05-25 00:00:00', '2020-09-10', 84110, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (83, 30, 3616757, 'Macedo S.A.', '2020-03-02 00:00:00', '2020-09-10', 96782, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (74, 28, 63179724, 'Carvalho Comércio', '2019-10-08 00:00:00', '2020-09-09', 43066, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (79, 31, 67761316, 'Xavier Comércio', '2019-10-12 00:00:00', '2020-09-10', 18516, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (84, 36, 42572692, 'Xavier Comércio', '2020-02-20 00:00:00', '2020-09-09', 2040, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (88, 32, 39889030, 'Carvalho - Barros', '2020-07-30 00:00:00', '2020-09-10', 6320, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (89, 37, 22497817, 'Xavier - Pereira', '2020-06-23 00:00:00', '2020-09-10', 96924, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (90, 25, 16899154, 'Albuquerque e Associados', '2020-05-29 00:00:00', '2020-09-10', 68902, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (91, 40, 67085073, 'Carvalho - Pereira', '2020-06-08 00:00:00', '2020-09-09', 44052, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (92, 41, 74251341, 'Nogueira e Associados', '2020-01-14 00:00:00', '2020-09-10', 67938, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (93, 38, 36130602, 'Xavier, Carvalho and Albuquerque', '2020-02-20 00:00:00', '2020-09-10', 40569, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (94, 26, 41913430, 'Albuquerque S.A.', '2019-09-18 00:00:00', '2020-09-10', 4462, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (95, 31, 48313101, 'Martins e Associados', '2020-06-04 00:00:00', '2020-09-10', 73123, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (96, 40, 64797159, 'Oliveira e Associados', '2020-01-22 00:00:00', '2020-09-10', 64613, NULL, 'N', NULL);

INSERT INTO pagar (id, fk_conta_gerencial, documento, descricao, dt_cadastro, dt_lancamento, id_global, obs, cancelado, motivo_cancelamento)
VALUES (97, 27, 15698348, 'Souza Comércio', '2020-01-03 00:00:00', '2020-09-10', 44515, NULL, 'N', NULL);

--
-- Data for table public.pagar_parcela (OID = 29544) (LIMIT 0,353)
--
INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (7, 7, 788.00, '2020-09-10', NULL, NULL, NULL, NULL, 4089, '7', NULL, NULL, NULL, 'N', '2020-04-23 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (8, 9, 744.00, '2020-09-10', NULL, NULL, NULL, NULL, 892, '1', NULL, NULL, NULL, 'N', '2019-11-07 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (11, 8, 358.00, '2020-09-10', NULL, NULL, NULL, NULL, 5242, '8', NULL, NULL, NULL, 'N', '2020-09-09 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (20, 23, 267.00, '2020-09-10', NULL, NULL, NULL, NULL, 4119, '5', NULL, NULL, NULL, 'N', '2020-03-24 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (21, 16, 172.00, '2020-09-10', NULL, NULL, NULL, NULL, 7719, '9', NULL, NULL, NULL, 'N', '2020-05-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (22, 7, 438.00, '2020-09-10', NULL, NULL, NULL, NULL, 713, '0', NULL, NULL, NULL, 'N', '2020-01-13 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (23, 26, 554.00, '2020-09-10', NULL, NULL, NULL, NULL, 7470, '5', NULL, NULL, NULL, 'N', '2020-09-03 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (24, 56, 425.00, '2020-09-10', NULL, NULL, NULL, NULL, 2936, '9', NULL, NULL, NULL, 'N', '2020-08-21 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (25, 58, 851.00, '2020-09-10', NULL, NULL, NULL, NULL, 1107, '1', NULL, NULL, NULL, 'N', '2020-04-24 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (26, 93, 650.00, '2020-09-10', NULL, NULL, NULL, NULL, 5489, '3', NULL, NULL, NULL, 'N', '2019-11-27 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (27, 44, 247.00, '2020-09-10', NULL, NULL, NULL, NULL, 5162, '9', NULL, NULL, NULL, 'N', '2020-01-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (28, 42, 544.00, '2020-09-10', NULL, NULL, NULL, NULL, 5677, '7', NULL, NULL, NULL, 'N', '2020-08-28 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (29, 63, 432.00, '2020-09-10', NULL, NULL, NULL, NULL, 2634, '6', NULL, NULL, NULL, 'N', '2020-07-18 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (30, 11, 940.00, '2020-09-09', NULL, NULL, NULL, NULL, 1887, '2', NULL, NULL, NULL, 'N', '2020-02-22 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (31, 14, 389.00, '2020-09-10', NULL, NULL, NULL, NULL, 5448, '6', NULL, NULL, NULL, 'N', '2019-09-18 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (32, 52, 675.00, '2020-09-10', NULL, NULL, NULL, NULL, 2110, '3', NULL, NULL, NULL, 'N', '2019-12-13 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (33, 78, 249.00, '2020-09-09', NULL, NULL, NULL, NULL, 5063, '8', NULL, NULL, NULL, 'N', '2019-10-27 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (34, 29, 767.00, '2020-09-10', NULL, NULL, NULL, NULL, 7723, '2', NULL, NULL, NULL, 'N', '2019-11-03 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (35, 91, 938.00, '2020-09-10', NULL, NULL, NULL, NULL, 4918, '1', NULL, NULL, NULL, 'N', '2020-04-22 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (36, 22, 393.00, '2020-09-09', NULL, NULL, NULL, NULL, 5198, '7', NULL, NULL, NULL, 'N', '2020-08-11 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (37, 33, 370.00, '2020-09-10', NULL, NULL, NULL, NULL, 7069, '8', NULL, NULL, NULL, 'N', '2020-02-21 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (38, 91, 952.00, '2020-09-10', NULL, NULL, NULL, NULL, 7795, '0', NULL, NULL, NULL, 'N', '2020-05-28 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (39, 29, 219.00, '2020-09-10', NULL, NULL, NULL, NULL, 1331, '7', NULL, NULL, NULL, 'N', '2020-05-08 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (40, 48, 581.00, '2020-09-10', NULL, NULL, NULL, NULL, 6934, '2', NULL, NULL, NULL, 'N', '2020-08-10 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (41, 31, 268.00, '2020-09-10', NULL, NULL, NULL, NULL, 4231, '8', NULL, NULL, NULL, 'N', '2019-12-11 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (42, 28, 119.00, '2020-09-10', NULL, NULL, NULL, NULL, 5486, '1', NULL, NULL, NULL, 'N', '2020-05-08 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (43, 19, 972.00, '2020-09-10', NULL, NULL, NULL, NULL, 5550, '8', NULL, NULL, NULL, 'N', '2019-11-29 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (44, 24, 81.00, '2020-09-10', NULL, NULL, NULL, NULL, 5697, '3', NULL, NULL, NULL, 'N', '2020-05-25 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (45, 19, 803.00, '2020-09-10', NULL, NULL, NULL, NULL, 513, '1', NULL, NULL, NULL, 'N', '2019-12-03 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (46, 35, 838.00, '2020-09-10', NULL, NULL, NULL, NULL, 2438, '9', NULL, NULL, NULL, 'N', '2020-02-03 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (47, 51, 80.00, '2020-09-09', NULL, NULL, NULL, NULL, 3777, '8', NULL, NULL, NULL, 'N', '2020-02-19 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (48, 46, 800.00, '2020-09-10', NULL, NULL, NULL, NULL, 8825, '7', NULL, NULL, NULL, 'N', '2020-05-26 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (49, 25, 495.00, '2020-09-10', NULL, NULL, NULL, NULL, 7330, '5', NULL, NULL, NULL, 'N', '2020-02-24 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (50, 36, 527.00, '2020-09-10', NULL, NULL, NULL, NULL, 6209, '5', NULL, NULL, NULL, 'N', '2019-11-18 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (51, 33, 969.00, '2020-09-10', NULL, NULL, NULL, NULL, 244, '8', NULL, NULL, NULL, 'N', '2020-04-29 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (52, 29, 26.00, '2020-09-10', NULL, NULL, NULL, NULL, 2987, '1', NULL, NULL, NULL, 'N', '2020-02-07 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (53, 37, 623.00, '2020-09-10', NULL, NULL, NULL, NULL, 2871, '4', NULL, NULL, NULL, 'N', '2020-02-16 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (54, 8, 850.00, '2020-09-10', NULL, NULL, NULL, NULL, 6793, '0', NULL, NULL, NULL, 'N', '2020-08-03 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (55, 70, 596.00, '2020-09-10', NULL, NULL, NULL, NULL, 7635, '2', NULL, NULL, NULL, 'N', '2019-09-28 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (56, 36, 107.00, '2020-09-10', NULL, NULL, NULL, NULL, 7264, '4', NULL, NULL, NULL, 'N', '2019-12-07 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (57, 13, 623.00, '2020-09-10', NULL, NULL, NULL, NULL, 7069, '7', NULL, NULL, NULL, 'N', '2019-10-27 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (58, 54, 105.00, '2020-09-10', NULL, NULL, NULL, NULL, 3620, '3', NULL, NULL, NULL, 'N', '2020-03-12 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (59, 71, 854.00, '2020-09-10', NULL, NULL, NULL, NULL, 683, '8', NULL, NULL, NULL, 'N', '2019-10-14 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (60, 67, 598.00, '2020-09-10', NULL, NULL, NULL, NULL, 6761, '4', NULL, NULL, NULL, 'N', '2020-06-05 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (61, 11, 1.00, '2020-09-10', NULL, NULL, NULL, NULL, 3378, '0', NULL, NULL, NULL, 'N', '2020-02-26 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (62, 94, 167.00, '2020-09-10', NULL, NULL, NULL, NULL, 5303, '5', NULL, NULL, NULL, 'N', '2020-09-04 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (63, 78, 570.00, '2020-09-10', NULL, NULL, NULL, NULL, 5085, '6', NULL, NULL, NULL, 'N', '2020-06-16 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (64, 76, 574.00, '2020-09-10', NULL, NULL, NULL, NULL, 3358, '3', NULL, NULL, NULL, 'N', '2020-08-29 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (65, 78, 9.00, '2020-09-10', NULL, NULL, NULL, NULL, 2493, '2', NULL, NULL, NULL, 'N', '2019-10-02 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (66, 95, 935.00, '2020-09-10', NULL, NULL, NULL, NULL, 6495, '1', NULL, NULL, NULL, 'N', '2020-04-11 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (67, 83, 624.00, '2020-09-10', NULL, NULL, NULL, NULL, 449, '3', NULL, NULL, NULL, 'N', '2019-10-02 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (68, 17, 22.00, '2020-09-10', NULL, NULL, NULL, NULL, 4974, '0', NULL, NULL, NULL, 'N', '2019-10-30 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (69, 19, 140.00, '2020-09-10', NULL, NULL, NULL, NULL, 9242, '3', NULL, NULL, NULL, 'N', '2019-12-27 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (70, 64, 528.00, '2020-09-10', NULL, NULL, NULL, NULL, 5864, '0', NULL, NULL, NULL, 'N', '2019-09-30 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (71, 15, 909.00, '2020-09-10', NULL, NULL, NULL, NULL, 9743, '5', NULL, NULL, NULL, 'N', '2020-04-15 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (72, 55, 984.00, '2020-09-10', NULL, NULL, NULL, NULL, 6315, '1', NULL, NULL, NULL, 'N', '2020-04-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (73, 63, 715.00, '2020-09-10', NULL, NULL, NULL, NULL, 3264, '9', NULL, NULL, NULL, 'N', '2020-08-11 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (74, 34, 989.00, '2020-09-10', NULL, NULL, NULL, NULL, 7077, '4', NULL, NULL, NULL, 'N', '2020-01-13 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (75, 57, 873.00, '2020-09-10', NULL, NULL, NULL, NULL, 9296, '3', NULL, NULL, NULL, 'N', '2020-07-23 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (76, 64, 869.00, '2020-09-10', NULL, NULL, NULL, NULL, 2058, '3', NULL, NULL, NULL, 'N', '2020-05-14 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (77, 74, 502.00, '2020-09-10', NULL, NULL, NULL, NULL, 4760, '7', NULL, NULL, NULL, 'N', '2020-06-06 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (78, 23, 214.00, '2020-09-10', NULL, NULL, NULL, NULL, 5069, '6', NULL, NULL, NULL, 'N', '2020-04-04 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (79, 10, 484.00, '2020-09-10', NULL, NULL, NULL, NULL, 6220, '4', NULL, NULL, NULL, 'N', '2019-10-09 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (80, 66, 216.00, '2020-09-10', NULL, NULL, NULL, NULL, 3436, '7', NULL, NULL, NULL, 'N', '2019-12-02 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (81, 78, 714.00, '2020-09-10', NULL, NULL, NULL, NULL, 2704, '7', NULL, NULL, NULL, 'N', '2019-11-30 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (82, 19, 107.00, '2020-09-10', NULL, NULL, NULL, NULL, 6935, '2', NULL, NULL, NULL, 'N', '2020-09-06 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (83, 83, 438.00, '2020-09-10', NULL, NULL, NULL, NULL, 6649, '3', NULL, NULL, NULL, 'N', '2020-07-12 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (84, 79, 724.00, '2020-09-10', NULL, NULL, NULL, NULL, 4466, '8', NULL, NULL, NULL, 'N', '2020-05-30 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (85, 50, 929.00, '2020-09-10', NULL, NULL, NULL, NULL, 4676, '5', NULL, NULL, NULL, 'N', '2020-01-21 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (86, 59, 515.00, '2020-09-10', NULL, NULL, NULL, NULL, 4044, '2', NULL, NULL, NULL, 'N', '2020-07-25 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (87, 8, 728.00, '2020-09-10', NULL, NULL, NULL, NULL, 1695, '7', NULL, NULL, NULL, 'N', '2019-11-11 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (88, 22, 108.00, '2020-09-10', NULL, NULL, NULL, NULL, 2449, '3', NULL, NULL, NULL, 'N', '2020-04-18 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (89, 35, 46.00, '2020-09-10', NULL, NULL, NULL, NULL, 7112, '0', NULL, NULL, NULL, 'N', '2020-03-31 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (94, 66, 295.00, '2020-09-10', NULL, NULL, NULL, NULL, 3042, '1', NULL, NULL, NULL, 'N', '2020-01-06 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (99, 96, 439.00, '2020-09-10', NULL, NULL, NULL, NULL, 9617, '9', NULL, NULL, NULL, 'N', '2020-06-20 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (100, 25, 679.00, '2020-09-10', NULL, NULL, NULL, NULL, 6770, '1', NULL, NULL, NULL, 'N', '2019-11-28 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (101, 83, 82.00, '2020-09-10', NULL, NULL, NULL, NULL, 8568, '0', NULL, NULL, NULL, 'N', '2019-12-08 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (106, 55, 339.00, '2020-09-10', NULL, NULL, NULL, NULL, 5883, '9', NULL, NULL, NULL, 'N', '2019-11-07 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (111, 73, 123.00, '2020-09-10', NULL, NULL, NULL, NULL, 816, '6', NULL, NULL, NULL, 'N', '2020-03-07 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (116, 36, 58.00, '2020-09-10', NULL, NULL, NULL, NULL, 589, '2', NULL, NULL, NULL, 'N', '2020-02-14 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (121, 41, 638.00, '2020-09-10', NULL, NULL, NULL, NULL, 8088, '9', NULL, NULL, NULL, 'N', '2020-05-09 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (126, 10, 204.00, '2020-09-10', NULL, NULL, NULL, NULL, 758, '4', NULL, NULL, NULL, 'N', '2020-07-02 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (133, 11, 663.00, '2020-09-10', NULL, NULL, NULL, NULL, 2185, '9', NULL, NULL, NULL, 'N', '2020-03-11 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (138, 96, 250.00, '2020-09-10', NULL, NULL, NULL, NULL, 3606, '9', NULL, NULL, NULL, 'N', '2020-03-18 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (143, 78, 99.00, '2020-09-10', NULL, NULL, NULL, NULL, 1136, '8', NULL, NULL, NULL, 'N', '2020-02-11 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (148, 90, 739.00, '2020-09-10', NULL, NULL, NULL, NULL, 2305, '5', NULL, NULL, NULL, 'N', '2019-09-28 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (153, 76, 971.00, '2020-09-10', NULL, NULL, NULL, NULL, 1869, '2', NULL, NULL, NULL, 'N', '2020-04-15 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (158, 23, 915.00, '2020-09-10', NULL, NULL, NULL, NULL, 8275, '2', NULL, NULL, NULL, 'N', '2020-04-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (161, 10, 162.00, '2020-09-10', NULL, NULL, NULL, NULL, 3680, '2', NULL, NULL, NULL, 'N', '2020-05-02 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (166, 22, 987.00, '2020-09-10', NULL, NULL, NULL, NULL, 982, '4', NULL, NULL, NULL, 'N', '2019-09-28 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (171, 53, 833.00, '2020-09-10', NULL, NULL, NULL, NULL, 5614, '4', NULL, NULL, NULL, 'N', '2019-11-21 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (176, 29, 420.00, '2020-09-10', NULL, NULL, NULL, NULL, 4676, '2', NULL, NULL, NULL, 'N', '2019-10-16 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (181, 67, 22.00, '2020-09-10', NULL, NULL, NULL, NULL, 5524, '0', NULL, NULL, NULL, 'N', '2019-12-28 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (186, 90, 37.00, '2020-09-10', NULL, NULL, NULL, NULL, 1248, '5', NULL, NULL, NULL, 'N', '2019-09-22 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (193, 97, 769.00, '2020-09-10', NULL, NULL, NULL, NULL, 5017, '6', NULL, NULL, NULL, 'N', '2020-06-06 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (198, 51, 826.00, '2020-09-10', NULL, NULL, NULL, NULL, 8654, '5', NULL, NULL, NULL, 'N', '2019-10-05 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (203, 65, 408.00, '2020-09-10', NULL, NULL, NULL, NULL, 5625, '7', NULL, NULL, NULL, 'N', '2019-11-04 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (208, 93, 823.00, '2020-09-10', NULL, NULL, NULL, NULL, 254, '7', NULL, NULL, NULL, 'N', '2020-07-08 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (213, 52, 42.00, '2020-09-10', NULL, NULL, NULL, NULL, 2695, '0', NULL, NULL, NULL, 'N', '2020-01-20 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (218, 49, 693.00, '2020-09-10', NULL, NULL, NULL, NULL, 4452, '6', NULL, NULL, NULL, 'N', '2020-05-24 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (221, 78, 385.00, '2020-09-10', NULL, NULL, NULL, NULL, 388, '3', NULL, NULL, NULL, 'N', '2020-01-07 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (226, 52, 976.00, '2020-09-10', NULL, NULL, NULL, NULL, 6677, '7', NULL, NULL, NULL, 'N', '2020-03-15 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (231, 30, 53.00, '2020-09-10', NULL, NULL, NULL, NULL, 96, '5', NULL, NULL, NULL, 'N', '2019-09-24 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (236, 48, 235.00, '2020-09-10', NULL, NULL, NULL, NULL, 6624, '6', NULL, NULL, NULL, 'N', '2019-11-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (241, 59, 260.00, '2020-09-10', NULL, NULL, NULL, NULL, 3164, '2', NULL, NULL, NULL, 'N', '2020-03-31 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (246, 63, 794.00, '2020-09-10', NULL, NULL, NULL, NULL, 1530, '7', NULL, NULL, NULL, 'N', '2020-04-28 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (253, 8, 546.00, '2020-09-10', NULL, NULL, NULL, NULL, 4361, '4', NULL, NULL, NULL, 'N', '2020-01-13 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (258, 89, 314.00, '2020-09-10', NULL, NULL, NULL, NULL, 3634, '9', NULL, NULL, NULL, 'N', '2020-05-04 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (263, 23, 895.00, '2020-09-10', NULL, NULL, NULL, NULL, 1252, '9', NULL, NULL, NULL, 'N', '2019-10-16 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (268, 32, 818.00, '2020-09-10', NULL, NULL, NULL, NULL, 2304, '6', NULL, NULL, NULL, 'N', '2020-03-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (273, 25, 901.00, '2020-09-10', NULL, NULL, NULL, NULL, 3191, '5', NULL, NULL, NULL, 'N', '2020-07-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (278, 19, 504.00, '2020-09-10', NULL, NULL, NULL, NULL, 2554, '7', NULL, NULL, NULL, 'N', '2020-01-19 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (281, 32, 194.00, '2020-09-10', NULL, NULL, NULL, NULL, 9944, '2', NULL, NULL, NULL, 'N', '2020-03-13 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (286, 36, 481.00, '2020-09-10', NULL, NULL, NULL, NULL, 7116, '7', NULL, NULL, NULL, 'N', '2019-10-20 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (291, 84, 679.00, '2020-09-10', NULL, NULL, NULL, NULL, 6787, '6', NULL, NULL, NULL, 'N', '2019-12-15 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (296, 80, 64.00, '2020-09-10', NULL, NULL, NULL, NULL, 8062, '7', NULL, NULL, NULL, 'N', '2020-08-06 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (301, 43, 846.00, '2020-09-10', NULL, NULL, NULL, NULL, 1310, '7', NULL, NULL, NULL, 'N', '2020-01-30 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (306, 27, 148.00, '2020-09-09', NULL, NULL, NULL, NULL, 5641, '7', NULL, NULL, NULL, 'N', '2020-01-18 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (313, 39, 481.00, '2020-09-10', NULL, NULL, NULL, NULL, 300, '7', NULL, NULL, NULL, 'N', '2020-07-13 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (318, 33, 34.00, '2020-09-10', NULL, NULL, NULL, NULL, 4337, '1', NULL, NULL, NULL, 'N', '2020-06-24 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (323, 19, 640.00, '2020-09-09', NULL, NULL, NULL, NULL, 3594, '9', NULL, NULL, NULL, 'N', '2020-06-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (328, 51, 877.00, '2020-09-10', NULL, NULL, NULL, NULL, 2099, '8', NULL, NULL, NULL, 'N', '2020-07-10 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (333, 52, 413.00, '2020-09-10', NULL, NULL, NULL, NULL, 9512, '1', NULL, NULL, NULL, 'N', '2020-05-11 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (338, 71, 965.00, '2020-09-10', NULL, NULL, NULL, NULL, 6835, '5', NULL, NULL, NULL, 'N', '2019-09-19 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (341, 7, 359.00, '2020-09-10', NULL, NULL, NULL, NULL, 6323, '1', NULL, NULL, NULL, 'N', '2020-09-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (346, 93, 18.00, '2020-09-10', NULL, NULL, NULL, NULL, 9966, '8', NULL, NULL, NULL, 'N', '2020-01-12 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (351, 36, 885.00, '2020-09-10', NULL, NULL, NULL, NULL, 3315, '5', NULL, NULL, NULL, 'N', '2020-01-04 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (356, 14, 411.00, '2020-09-10', NULL, NULL, NULL, NULL, 4414, '0', NULL, NULL, NULL, 'N', '2019-12-10 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (360, 68, 580.00, '2020-09-10', NULL, NULL, NULL, NULL, 1261, '6', NULL, NULL, NULL, 'N', '2020-03-28 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (365, 54, 642.00, '2020-09-10', NULL, NULL, NULL, NULL, 3185, '7', NULL, NULL, NULL, 'N', '2020-02-23 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (90, 26, 750.00, '2020-09-09', NULL, NULL, NULL, NULL, 7028, '8', NULL, NULL, NULL, 'N', '2020-05-26 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (95, 15, 37.00, '2020-09-10', NULL, NULL, NULL, NULL, 175, '5', NULL, NULL, NULL, 'N', '2020-07-10 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (105, 19, 707.00, '2020-09-09', NULL, NULL, NULL, NULL, 38, '1', NULL, NULL, NULL, 'N', '2020-03-30 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (110, 47, 138.00, '2020-09-10', NULL, NULL, NULL, NULL, 6997, '4', NULL, NULL, NULL, 'N', '2020-08-26 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (115, 81, 594.00, '2020-09-10', NULL, NULL, NULL, NULL, 7920, '7', NULL, NULL, NULL, 'N', '2020-06-08 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (120, 16, 797.00, '2020-09-10', NULL, NULL, NULL, NULL, 328, '5', NULL, NULL, NULL, 'N', '2020-09-07 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (125, 22, 356.00, '2020-09-10', NULL, NULL, NULL, NULL, 6188, '9', NULL, NULL, NULL, 'N', '2019-09-20 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (134, 91, 412.00, '2020-09-10', NULL, NULL, NULL, NULL, 7040, '7', NULL, NULL, NULL, 'N', '2020-05-07 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (139, 74, 827.00, '2020-09-10', NULL, NULL, NULL, NULL, 6728, '9', NULL, NULL, NULL, 'N', '2019-10-16 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (144, 55, 269.00, '2020-09-10', NULL, NULL, NULL, NULL, 8460, '7', NULL, NULL, NULL, 'N', '2020-01-22 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (149, 14, 697.00, '2020-09-09', NULL, NULL, NULL, NULL, 5483, '4', NULL, NULL, NULL, 'N', '2020-08-27 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (154, 31, 374.00, '2020-09-10', NULL, NULL, NULL, NULL, 5591, '5', NULL, NULL, NULL, 'N', '2020-08-13 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (159, 16, 787.00, '2020-09-09', NULL, NULL, NULL, NULL, 507, '5', NULL, NULL, NULL, 'N', '2020-02-04 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (160, 71, 989.00, '2020-09-10', NULL, NULL, NULL, NULL, 7977, '8', NULL, NULL, NULL, 'N', '2020-06-07 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (165, 60, 904.00, '2020-09-10', NULL, NULL, NULL, NULL, 1717, '7', NULL, NULL, NULL, 'N', '2020-05-14 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (170, 80, 236.00, '2020-09-09', NULL, NULL, NULL, NULL, 145, '9', NULL, NULL, NULL, 'N', '2020-07-02 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (175, 64, 504.00, '2020-09-10', NULL, NULL, NULL, NULL, 8997, '1', NULL, NULL, NULL, 'N', '2020-08-11 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (180, 17, 714.00, '2020-09-10', NULL, NULL, NULL, NULL, 5688, '2', NULL, NULL, NULL, 'N', '2019-10-27 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (185, 46, 699.00, '2020-09-10', NULL, NULL, NULL, NULL, 2557, '3', NULL, NULL, NULL, 'N', '2020-05-16 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (194, 57, 843.00, '2020-09-10', NULL, NULL, NULL, NULL, 972, '7', NULL, NULL, NULL, 'N', '2020-03-05 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (199, 60, 674.00, '2020-09-10', NULL, NULL, NULL, NULL, 9192, '1', NULL, NULL, NULL, 'N', '2020-01-07 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (204, 41, 189.00, '2020-09-10', NULL, NULL, NULL, NULL, 6195, '6', NULL, NULL, NULL, 'N', '2019-09-18 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (209, 10, 832.00, '2020-09-10', NULL, NULL, NULL, NULL, 7990, '1', NULL, NULL, NULL, 'N', '2020-06-11 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (214, 54, 500.00, '2020-09-10', NULL, NULL, NULL, NULL, 4761, '7', NULL, NULL, NULL, 'N', '2020-05-26 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (219, 38, 782.00, '2020-09-09', NULL, NULL, NULL, NULL, 5368, '9', NULL, NULL, NULL, 'N', '2020-07-09 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (220, 94, 902.00, '2020-09-09', NULL, NULL, NULL, NULL, 999, '4', NULL, NULL, NULL, 'N', '2019-11-19 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (224, 7, 923.00, '2020-09-10', NULL, NULL, NULL, NULL, 3018, '0', NULL, NULL, NULL, 'N', '2020-06-03 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (229, 72, 860.00, '2020-09-10', NULL, NULL, NULL, NULL, 8698, '3', NULL, NULL, NULL, 'N', '2020-05-15 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (234, 32, 595.00, '2020-09-10', NULL, NULL, NULL, NULL, 4055, '3', NULL, NULL, NULL, 'N', '2020-06-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (239, 90, 356.00, '2020-09-10', NULL, NULL, NULL, NULL, 2913, '1', NULL, NULL, NULL, 'N', '2019-10-16 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (244, 12, 360.00, '2020-09-10', NULL, NULL, NULL, NULL, 7708, '5', NULL, NULL, NULL, 'N', '2020-02-22 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (249, 74, 125.00, '2020-09-10', NULL, NULL, NULL, NULL, 5884, '8', NULL, NULL, NULL, 'N', '2020-01-09 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (250, 62, 598.00, '2020-09-10', NULL, NULL, NULL, NULL, 8970, '4', NULL, NULL, NULL, 'N', '2020-03-10 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (255, 37, 445.00, '2020-09-10', NULL, NULL, NULL, NULL, 1320, '0', NULL, NULL, NULL, 'N', '2020-05-31 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (260, 48, 945.00, '2020-09-10', NULL, NULL, NULL, NULL, 2534, '9', NULL, NULL, NULL, 'N', '2020-04-09 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (265, 11, 810.00, '2020-09-10', NULL, NULL, NULL, NULL, 1661, '8', NULL, NULL, NULL, 'N', '2020-04-29 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (270, 46, 742.00, '2020-09-10', NULL, NULL, NULL, NULL, 5568, '7', NULL, NULL, NULL, 'N', '2020-03-04 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (275, 67, 465.00, '2020-09-10', NULL, NULL, NULL, NULL, 8076, '3', NULL, NULL, NULL, 'N', '2020-07-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (284, 59, 297.00, '2020-09-10', NULL, NULL, NULL, NULL, 2065, '9', NULL, NULL, NULL, 'N', '2020-01-28 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (289, 83, 936.00, '2020-09-10', NULL, NULL, NULL, NULL, 5757, '1', NULL, NULL, NULL, 'N', '2020-03-09 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (294, 7, 890.00, '2020-09-10', NULL, NULL, NULL, NULL, 403, '7', NULL, NULL, NULL, 'N', '2019-10-20 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (299, 22, 551.00, '2020-09-10', NULL, NULL, NULL, NULL, 3033, '8', NULL, NULL, NULL, 'N', '2020-07-21 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (304, 32, 370.00, '2020-09-10', NULL, NULL, NULL, NULL, 360, '3', NULL, NULL, NULL, 'N', '2020-05-31 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (309, 57, 654.00, '2020-09-10', NULL, NULL, NULL, NULL, 6505, '2', NULL, NULL, NULL, 'N', '2020-03-05 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (310, 84, 290.00, '2020-09-10', NULL, NULL, NULL, NULL, 9030, '9', NULL, NULL, NULL, 'N', '2019-09-27 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (315, 94, 724.00, '2020-09-10', NULL, NULL, NULL, NULL, 8970, '2', NULL, NULL, NULL, 'N', '2020-08-03 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (320, 16, 539.00, '2020-09-10', NULL, NULL, NULL, NULL, 8247, '1', NULL, NULL, NULL, 'N', '2020-07-17 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (325, 37, 798.00, '2020-09-10', NULL, NULL, NULL, NULL, 9910, '9', NULL, NULL, NULL, 'N', '2020-09-06 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (330, 75, 104.00, '2020-09-10', NULL, NULL, NULL, NULL, 9363, '7', NULL, NULL, NULL, 'N', '2019-12-11 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (335, 11, 953.00, '2020-09-10', NULL, NULL, NULL, NULL, 4605, '3', NULL, NULL, NULL, 'N', '2020-08-28 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (344, 30, 680.00, '2020-09-10', NULL, NULL, NULL, NULL, 126, '5', NULL, NULL, NULL, 'N', '2019-11-05 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (349, 23, 408.00, '2020-09-10', NULL, NULL, NULL, NULL, 5462, '9', NULL, NULL, NULL, 'N', '2020-05-29 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (354, 45, 89.00, '2020-09-10', NULL, NULL, NULL, NULL, 5092, '9', NULL, NULL, NULL, 'N', '2019-10-21 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (359, 82, 475.00, '2020-09-09', NULL, NULL, NULL, NULL, 9066, '3', NULL, NULL, NULL, 'N', '2019-11-10 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (364, 72, 857.00, '2020-09-10', NULL, NULL, NULL, NULL, 5262, '7', NULL, NULL, NULL, 'N', '2020-04-24 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (369, 52, 249.00, '2020-09-10', NULL, NULL, NULL, NULL, 19, '1', NULL, NULL, NULL, 'N', '2019-10-28 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (91, 88, 528.00, '2020-09-10', NULL, NULL, NULL, NULL, 9316, '7', NULL, NULL, NULL, 'N', '2019-12-20 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (96, 41, 137.00, '2020-09-10', NULL, NULL, NULL, NULL, 2371, '0', NULL, NULL, NULL, 'N', '2020-06-04 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (104, 30, 922.00, '2020-09-09', NULL, NULL, NULL, NULL, 8180, '6', NULL, NULL, NULL, 'N', '2020-07-04 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (109, 35, 11.00, '2020-09-10', NULL, NULL, NULL, NULL, 7788, '8', NULL, NULL, NULL, 'N', '2020-08-15 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (114, 33, 48.00, '2020-09-10', NULL, NULL, NULL, NULL, 1452, '3', NULL, NULL, NULL, 'N', '2020-04-15 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (119, 13, 982.00, '2020-09-09', NULL, NULL, NULL, NULL, 13, '0', NULL, NULL, NULL, 'N', '2020-04-04 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (124, 8, 155.00, '2020-09-10', NULL, NULL, NULL, NULL, 6610, '9', NULL, NULL, NULL, 'N', '2019-10-29 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (129, 74, 660.00, '2020-09-10', NULL, NULL, NULL, NULL, 8146, '4', NULL, NULL, NULL, 'N', '2020-07-27 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (130, 59, 679.00, '2020-09-10', NULL, NULL, NULL, NULL, 9530, '9', NULL, NULL, NULL, 'N', '2019-10-15 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (135, 47, 783.00, '2020-09-10', NULL, NULL, NULL, NULL, 4656, '0', NULL, NULL, NULL, 'N', '2020-08-31 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (140, 9, 681.00, '2020-09-10', NULL, NULL, NULL, NULL, 9803, '3', NULL, NULL, NULL, 'N', '2020-06-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (145, 23, 72.00, '2020-09-09', NULL, NULL, NULL, NULL, 2998, '9', NULL, NULL, NULL, 'N', '2020-03-25 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (150, 10, 26.00, '2020-09-10', NULL, NULL, NULL, NULL, 3203, '3', NULL, NULL, NULL, 'N', '2019-09-20 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (155, 66, 625.00, '2020-09-10', NULL, NULL, NULL, NULL, 4872, '3', NULL, NULL, NULL, 'N', '2020-01-26 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (164, 65, 572.00, '2020-09-10', NULL, NULL, NULL, NULL, 193, '4', NULL, NULL, NULL, 'N', '2020-08-12 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (169, 66, 902.00, '2020-09-10', NULL, NULL, NULL, NULL, 6746, '6', NULL, NULL, NULL, 'N', '2019-09-25 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (174, 58, 73.00, '2020-09-10', NULL, NULL, NULL, NULL, 7653, '5', NULL, NULL, NULL, 'N', '2020-01-11 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (179, 40, 239.00, '2020-09-10', NULL, NULL, NULL, NULL, 1614, '9', NULL, NULL, NULL, 'N', '2020-07-10 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (184, 29, 228.00, '2020-09-09', NULL, NULL, NULL, NULL, 8571, '5', NULL, NULL, NULL, 'N', '2019-09-21 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (189, 26, 127.00, '2020-09-10', NULL, NULL, NULL, NULL, 596, '7', NULL, NULL, NULL, 'N', '2020-03-05 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (190, 71, 866.00, '2020-09-10', NULL, NULL, NULL, NULL, 9012, '0', NULL, NULL, NULL, 'N', '2020-08-15 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (195, 73, 963.00, '2020-09-09', NULL, NULL, NULL, NULL, 9372, '8', NULL, NULL, NULL, 'N', '2020-04-14 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (200, 62, 519.00, '2020-09-10', NULL, NULL, NULL, NULL, 837, '1', NULL, NULL, NULL, 'N', '2020-03-21 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (205, 55, 864.00, '2020-09-10', NULL, NULL, NULL, NULL, 8367, '0', NULL, NULL, NULL, 'N', '2019-10-05 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (210, 58, 713.00, '2020-09-09', NULL, NULL, NULL, NULL, 9237, '1', NULL, NULL, NULL, 'N', '2019-09-27 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (215, 35, 149.00, '2020-09-10', NULL, NULL, NULL, NULL, 3293, '6', NULL, NULL, NULL, 'N', '2020-07-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (225, 70, 540.00, '2020-09-10', NULL, NULL, NULL, NULL, 5781, '6', NULL, NULL, NULL, 'N', '2020-05-27 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (230, 30, 876.00, '2020-09-10', NULL, NULL, NULL, NULL, 3744, '4', NULL, NULL, NULL, 'N', '2019-11-23 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (235, 80, 965.00, '2020-09-09', NULL, NULL, NULL, NULL, 1123, '0', NULL, NULL, NULL, 'N', '2019-11-19 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (240, 7, 264.00, '2020-09-10', NULL, NULL, NULL, NULL, 3192, '5', NULL, NULL, NULL, 'N', '2020-06-25 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (245, 88, 36.00, '2020-09-10', NULL, NULL, NULL, NULL, 4191, '5', NULL, NULL, NULL, 'N', '2019-10-16 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (254, 81, 995.00, '2020-09-10', NULL, NULL, NULL, NULL, 8592, '3', NULL, NULL, NULL, 'N', '2019-10-30 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (259, 65, 775.00, '2020-09-10', NULL, NULL, NULL, NULL, 4151, '2', NULL, NULL, NULL, 'N', '2019-12-31 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (264, 63, 457.00, '2020-09-10', NULL, NULL, NULL, NULL, 2097, '5', NULL, NULL, NULL, 'N', '2019-10-10 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (269, 94, 785.00, '2020-09-09', NULL, NULL, NULL, NULL, 8031, '3', NULL, NULL, NULL, 'N', '2020-08-12 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (274, 27, 878.00, '2020-09-09', NULL, NULL, NULL, NULL, 8663, '7', NULL, NULL, NULL, 'N', '2020-02-27 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (279, 28, 920.00, '2020-09-10', NULL, NULL, NULL, NULL, 7426, '2', NULL, NULL, NULL, 'N', '2020-03-06 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (280, 64, 217.00, '2020-09-10', NULL, NULL, NULL, NULL, 7349, '2', NULL, NULL, NULL, 'N', '2019-11-19 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (285, 40, 203.00, '2020-09-10', NULL, NULL, NULL, NULL, 1491, '6', NULL, NULL, NULL, 'N', '2020-01-22 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (290, 15, 918.00, '2020-09-10', NULL, NULL, NULL, NULL, 4419, '4', NULL, NULL, NULL, 'N', '2020-08-07 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (295, 10, 764.00, '2020-09-10', NULL, NULL, NULL, NULL, 8266, '6', NULL, NULL, NULL, 'N', '2019-11-24 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (300, 95, 606.00, '2020-09-10', NULL, NULL, NULL, NULL, 911, '6', NULL, NULL, NULL, 'N', '2020-07-09 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (305, 7, 174.00, '2020-09-10', NULL, NULL, NULL, NULL, 7462, '4', NULL, NULL, NULL, 'N', '2020-08-25 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (314, 9, 969.00, '2020-09-09', NULL, NULL, NULL, NULL, 8698, '1', NULL, NULL, NULL, 'N', '2020-02-14 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (319, 44, 367.00, '2020-09-10', NULL, NULL, NULL, NULL, 5714, '6', NULL, NULL, NULL, 'N', '2019-09-12 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (324, 13, 842.00, '2020-09-10', NULL, NULL, NULL, NULL, 288, '9', NULL, NULL, NULL, 'N', '2020-08-07 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (329, 78, 202.00, '2020-09-10', NULL, NULL, NULL, NULL, 2250, '3', NULL, NULL, NULL, 'N', '2019-10-20 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (334, 53, 699.00, '2020-09-10', NULL, NULL, NULL, NULL, 9234, '8', NULL, NULL, NULL, 'N', '2019-12-19 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (339, 64, 150.00, '2020-09-10', NULL, NULL, NULL, NULL, 5209, '2', NULL, NULL, NULL, 'N', '2020-02-09 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (340, 9, 529.00, '2020-09-10', NULL, NULL, NULL, NULL, 3545, '6', NULL, NULL, NULL, 'N', '2019-09-28 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (345, 49, 242.00, '2020-09-10', NULL, NULL, NULL, NULL, 4898, '8', NULL, NULL, NULL, 'N', '2020-02-08 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (350, 45, 424.00, '2020-09-10', NULL, NULL, NULL, NULL, 7216, '8', NULL, NULL, NULL, 'N', '2019-10-30 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (355, 12, 775.00, '2020-09-10', NULL, NULL, NULL, NULL, 5682, '4', NULL, NULL, NULL, 'N', '2019-11-09 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (361, 58, 681.00, '2020-09-10', NULL, NULL, NULL, NULL, 8553, '9', NULL, NULL, NULL, 'N', '2019-11-21 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (366, 36, 178.00, '2020-09-10', NULL, NULL, NULL, NULL, 7145, '8', NULL, NULL, NULL, 'N', '2019-10-30 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (92, 51, 811.00, '2020-09-10', NULL, NULL, NULL, NULL, 7719, '3', NULL, NULL, NULL, 'N', '2019-11-06 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (97, 16, 161.00, '2020-09-10', NULL, NULL, NULL, NULL, 491, '5', NULL, NULL, NULL, 'N', '2020-03-11 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (103, 37, 270.00, '2020-09-10', NULL, NULL, NULL, NULL, 1188, '5', NULL, NULL, NULL, 'N', '2020-01-18 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (108, 60, 109.00, '2020-09-10', NULL, NULL, NULL, NULL, 3219, '8', NULL, NULL, NULL, 'N', '2020-08-13 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (113, 35, 785.00, '2020-09-10', NULL, NULL, NULL, NULL, 9839, '7', NULL, NULL, NULL, 'N', '2019-12-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (118, 44, 853.00, '2020-09-10', NULL, NULL, NULL, NULL, 3833, '3', NULL, NULL, NULL, 'N', '2020-08-23 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (123, 57, 115.00, '2020-09-10', NULL, NULL, NULL, NULL, 2710, '7', NULL, NULL, NULL, 'N', '2020-05-06 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (128, 56, 969.00, '2020-09-10', NULL, NULL, NULL, NULL, 5682, '3', NULL, NULL, NULL, 'N', '2020-04-02 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (131, 8, 201.00, '2020-09-10', NULL, NULL, NULL, NULL, 2133, '5', NULL, NULL, NULL, 'N', '2020-06-03 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (136, 27, 512.00, '2020-09-10', NULL, NULL, NULL, NULL, 9515, '0', NULL, NULL, NULL, 'N', '2019-12-09 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (141, 91, 640.00, '2020-09-10', NULL, NULL, NULL, NULL, 2677, '8', NULL, NULL, NULL, 'N', '2019-09-13 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (146, 96, 208.00, '2020-09-10', NULL, NULL, NULL, NULL, 2948, '1', NULL, NULL, NULL, 'N', '2020-07-15 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (151, 65, 728.00, '2020-09-10', NULL, NULL, NULL, NULL, 920, '4', NULL, NULL, NULL, 'N', '2019-11-12 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (156, 23, 126.00, '2020-09-09', NULL, NULL, NULL, NULL, 8502, '1', NULL, NULL, NULL, 'N', '2019-12-02 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (163, 97, 551.00, '2020-09-10', NULL, NULL, NULL, NULL, 919, '3', NULL, NULL, NULL, 'N', '2019-10-28 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (168, 52, 195.00, '2020-09-10', NULL, NULL, NULL, NULL, 794, '1', NULL, NULL, NULL, 'N', '2020-01-11 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (173, 65, 627.00, '2020-09-10', NULL, NULL, NULL, NULL, 2238, '8', NULL, NULL, NULL, 'N', '2020-04-24 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (178, 59, 761.00, '2020-09-10', NULL, NULL, NULL, NULL, 5994, '5', NULL, NULL, NULL, 'N', '2020-08-24 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (183, 60, 890.00, '2020-09-10', NULL, NULL, NULL, NULL, 8065, '0', NULL, NULL, NULL, 'N', '2020-06-07 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (188, 9, 643.00, '2020-09-10', NULL, NULL, NULL, NULL, 5941, '6', NULL, NULL, NULL, 'N', '2020-01-02 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (191, 79, 460.00, '2020-09-10', NULL, NULL, NULL, NULL, 8799, '5', NULL, NULL, NULL, 'N', '2019-09-15 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (196, 26, 386.00, '2020-09-10', NULL, NULL, NULL, NULL, 3112, '4', NULL, NULL, NULL, 'N', '2020-06-12 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (201, 41, 420.00, '2020-09-10', NULL, NULL, NULL, NULL, 3231, '5', NULL, NULL, NULL, 'N', '2020-03-10 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (206, 25, 163.00, '2020-09-10', NULL, NULL, NULL, NULL, 5707, '3', NULL, NULL, NULL, 'N', '2020-03-09 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (211, 17, 848.00, '2020-09-10', NULL, NULL, NULL, NULL, 7063, '0', NULL, NULL, NULL, 'N', '2019-09-25 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (216, 65, 342.00, '2020-09-10', NULL, NULL, NULL, NULL, 9816, '7', NULL, NULL, NULL, 'N', '2020-04-29 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (223, 60, 545.00, '2020-09-10', NULL, NULL, NULL, NULL, 2875, '2', NULL, NULL, NULL, 'N', '2020-01-20 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (228, 23, 703.00, '2020-09-10', NULL, NULL, NULL, NULL, 7647, '9', NULL, NULL, NULL, 'N', '2019-10-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (233, 54, 306.00, '2020-09-10', NULL, NULL, NULL, NULL, 3131, '9', NULL, NULL, NULL, 'N', '2020-04-16 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (238, 97, 389.00, '2020-09-10', NULL, NULL, NULL, NULL, 6107, '2', NULL, NULL, NULL, 'N', '2020-06-25 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (243, 54, 816.00, '2020-09-09', NULL, NULL, NULL, NULL, 9937, '3', NULL, NULL, NULL, 'N', '2019-11-20 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (248, 37, 694.00, '2020-09-10', NULL, NULL, NULL, NULL, 6535, '5', NULL, NULL, NULL, 'N', '2020-06-13 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (251, 83, 563.00, '2020-09-10', NULL, NULL, NULL, NULL, 8236, '2', NULL, NULL, NULL, 'N', '2020-06-15 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (256, 68, 20.00, '2020-09-09', NULL, NULL, NULL, NULL, 3874, '0', NULL, NULL, NULL, 'N', '2020-08-25 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (261, 94, 366.00, '2020-09-10', NULL, NULL, NULL, NULL, 1658, '8', NULL, NULL, NULL, 'N', '2020-05-02 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (266, 61, 117.00, '2020-09-10', NULL, NULL, NULL, NULL, 3929, '9', NULL, NULL, NULL, 'N', '2020-04-23 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (271, 42, 651.00, '2020-09-10', NULL, NULL, NULL, NULL, 3610, '6', NULL, NULL, NULL, 'N', '2020-02-23 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (276, 56, 383.00, '2020-09-10', NULL, NULL, NULL, NULL, 2432, '9', NULL, NULL, NULL, 'N', '2020-04-28 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (283, 63, 46.00, '2020-09-10', NULL, NULL, NULL, NULL, 5725, '2', NULL, NULL, NULL, 'N', '2020-04-05 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (288, 85, 65.00, '2020-09-10', NULL, NULL, NULL, NULL, 7746, '3', NULL, NULL, NULL, 'N', '2020-05-18 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (293, 26, 429.00, '2020-09-10', NULL, NULL, NULL, NULL, 174, '6', NULL, NULL, NULL, 'N', '2019-11-14 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (298, 72, 153.00, '2020-09-10', NULL, NULL, NULL, NULL, 1068, '5', NULL, NULL, NULL, 'N', '2019-11-18 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (303, 16, 223.00, '2020-09-10', NULL, NULL, NULL, NULL, 8136, '8', NULL, NULL, NULL, 'N', '2019-12-12 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (308, 84, 490.00, '2020-09-10', NULL, NULL, NULL, NULL, 1554, '4', NULL, NULL, NULL, 'N', '2020-05-03 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (311, 74, 780.00, '2020-09-10', NULL, NULL, NULL, NULL, 1932, '7', NULL, NULL, NULL, 'N', '2020-01-30 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (316, 25, 883.00, '2020-09-10', NULL, NULL, NULL, NULL, 968, '9', NULL, NULL, NULL, 'N', '2020-01-29 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (321, 88, 184.00, '2020-09-10', NULL, NULL, NULL, NULL, 1922, '1', NULL, NULL, NULL, 'N', '2020-07-21 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (326, 29, 479.00, '2020-09-10', NULL, NULL, NULL, NULL, 298, '9', NULL, NULL, NULL, 'N', '2020-01-07 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (331, 55, 863.00, '2020-09-10', NULL, NULL, NULL, NULL, 5082, '1', NULL, NULL, NULL, 'N', '2020-03-29 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (336, 32, 445.00, '2020-09-09', NULL, NULL, NULL, NULL, 4208, '5', NULL, NULL, NULL, 'N', '2020-08-28 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (343, 16, 365.00, '2020-09-09', NULL, NULL, NULL, NULL, 9041, '0', NULL, NULL, NULL, 'N', '2019-10-03 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (348, 77, 648.00, '2020-09-10', NULL, NULL, NULL, NULL, 6477, '6', NULL, NULL, NULL, 'N', '2020-06-03 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (353, 56, 853.00, '2020-09-10', NULL, NULL, NULL, NULL, 6714, '6', NULL, NULL, NULL, 'N', '2019-10-10 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (358, 25, 252.00, '2020-09-10', NULL, NULL, NULL, NULL, 1036, '2', NULL, NULL, NULL, 'N', '2020-07-05 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (363, 61, 338.00, '2020-09-10', NULL, NULL, NULL, NULL, 2291, '8', NULL, NULL, NULL, 'N', '2020-03-02 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (368, 82, 294.00, '2020-09-10', NULL, NULL, NULL, NULL, 2646, '7', NULL, NULL, NULL, 'N', '2020-02-06 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (93, 70, 783.00, '2020-09-10', NULL, NULL, NULL, NULL, 9409, '4', NULL, NULL, NULL, 'N', '2020-08-25 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (98, 95, 80.00, '2020-09-09', NULL, NULL, NULL, NULL, 4262, '7', NULL, NULL, NULL, 'N', '2019-11-20 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (102, 39, 502.00, '2020-09-10', NULL, NULL, NULL, NULL, 7987, '6', NULL, NULL, NULL, 'N', '2020-08-17 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (107, 8, 682.00, '2020-09-10', NULL, NULL, NULL, NULL, 3927, '9', NULL, NULL, NULL, 'N', '2020-03-27 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (112, 49, 857.00, '2020-09-10', NULL, NULL, NULL, NULL, 6720, '7', NULL, NULL, NULL, 'N', '2020-09-05 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (117, 89, 283.00, '2020-09-10', NULL, NULL, NULL, NULL, 6217, '5', NULL, NULL, NULL, 'N', '2020-07-11 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (122, 92, 649.00, '2020-09-10', NULL, NULL, NULL, NULL, 6325, '3', NULL, NULL, NULL, 'N', '2020-06-18 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (127, 53, 663.00, '2020-09-10', NULL, NULL, NULL, NULL, 3510, '9', NULL, NULL, NULL, 'N', '2019-09-12 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (132, 15, 931.00, '2020-09-10', NULL, NULL, NULL, NULL, 7101, '0', NULL, NULL, NULL, 'N', '2019-10-13 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (137, 59, 460.00, '2020-09-10', NULL, NULL, NULL, NULL, 2833, '8', NULL, NULL, NULL, 'N', '2020-03-09 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (142, 93, 904.00, '2020-09-10', NULL, NULL, NULL, NULL, 7705, '0', NULL, NULL, NULL, 'N', '2020-06-26 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (147, 27, 161.00, '2020-09-10', NULL, NULL, NULL, NULL, 7603, '4', NULL, NULL, NULL, 'N', '2020-07-11 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (152, 30, 120.00, '2020-09-10', NULL, NULL, NULL, NULL, 8463, '1', NULL, NULL, NULL, 'N', '2019-12-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (157, 55, 610.00, '2020-09-10', NULL, NULL, NULL, NULL, 9603, '8', NULL, NULL, NULL, 'N', '2019-09-23 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (162, 63, 270.00, '2020-09-10', NULL, NULL, NULL, NULL, 8075, '0', NULL, NULL, NULL, 'N', '2019-12-09 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (167, 9, 573.00, '2020-09-10', NULL, NULL, NULL, NULL, 5297, '1', NULL, NULL, NULL, 'N', '2020-08-10 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (172, 52, 245.00, '2020-09-10', NULL, NULL, NULL, NULL, 3647, '6', NULL, NULL, NULL, 'N', '2020-02-14 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (177, 52, 64.00, '2020-09-09', NULL, NULL, NULL, NULL, 7593, '7', NULL, NULL, NULL, 'N', '2020-05-03 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (182, 61, 843.00, '2020-09-10', NULL, NULL, NULL, NULL, 3090, '4', NULL, NULL, NULL, 'N', '2020-04-29 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (187, 57, 403.00, '2020-09-10', NULL, NULL, NULL, NULL, 7766, '6', NULL, NULL, NULL, 'N', '2020-03-29 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (192, 50, 31.00, '2020-09-09', NULL, NULL, NULL, NULL, 7112, '1', NULL, NULL, NULL, 'N', '2020-02-28 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (197, 27, 693.00, '2020-09-10', NULL, NULL, NULL, NULL, 4509, '3', NULL, NULL, NULL, 'N', '2020-09-09 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (202, 19, 691.00, '2020-09-10', NULL, NULL, NULL, NULL, 9924, '1', NULL, NULL, NULL, 'N', '2019-11-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (207, 63, 355.00, '2020-09-10', NULL, NULL, NULL, NULL, 9316, '8', NULL, NULL, NULL, 'N', '2020-02-14 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (212, 14, 410.00, '2020-09-10', NULL, NULL, NULL, NULL, 234, '4', NULL, NULL, NULL, 'N', '2020-01-03 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (217, 74, 114.00, '2020-09-10', NULL, NULL, NULL, NULL, 4966, '6', NULL, NULL, NULL, 'N', '2020-01-22 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (222, 48, 448.00, '2020-09-10', NULL, NULL, NULL, NULL, 3759, '00', NULL, NULL, NULL, 'N', '2020-02-23 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (227, 35, 706.00, '2020-09-10', NULL, NULL, NULL, NULL, 2510, '3', NULL, NULL, NULL, 'N', '2019-09-30 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (232, 32, 492.00, '2020-09-10', NULL, NULL, NULL, NULL, 9211, '7', NULL, NULL, NULL, 'N', '2019-10-22 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (237, 29, 350.00, '2020-09-10', NULL, NULL, NULL, NULL, 9268, '0', NULL, NULL, NULL, 'N', '2019-10-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (242, 94, 757.00, '2020-09-10', NULL, NULL, NULL, NULL, 1603, '4', NULL, NULL, NULL, 'N', '2020-06-20 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (247, 41, 975.00, '2020-09-10', NULL, NULL, NULL, NULL, 3124, '8', NULL, NULL, NULL, 'N', '2019-10-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (252, 17, 728.00, '2020-09-10', NULL, NULL, NULL, NULL, 4341, '1', NULL, NULL, NULL, 'N', '2020-04-19 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (257, 29, 352.00, '2020-09-10', NULL, NULL, NULL, NULL, 1099, '8', NULL, NULL, NULL, 'N', '2020-07-22 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (262, 8, 151.00, '2020-09-10', NULL, NULL, NULL, NULL, 4234, '4', NULL, NULL, NULL, 'N', '2020-05-09 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (267, 56, 887.00, '2020-09-10', NULL, NULL, NULL, NULL, 3462, '7', NULL, NULL, NULL, 'N', '2020-05-01 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (272, 94, 909.00, '2020-09-10', NULL, NULL, NULL, NULL, 5427, '1', NULL, NULL, NULL, 'N', '2020-06-09 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (277, 62, 652.00, '2020-09-10', NULL, NULL, NULL, NULL, 3055, '1', NULL, NULL, NULL, 'N', '2019-10-25 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (282, 97, 195.00, '2020-09-10', NULL, NULL, NULL, NULL, 3860, '8', NULL, NULL, NULL, 'N', '2020-08-17 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (287, 44, 933.00, '2020-09-10', NULL, NULL, NULL, NULL, 4643, '4', NULL, NULL, NULL, 'N', '2020-07-02 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (292, 65, 195.00, '2020-09-10', NULL, NULL, NULL, NULL, 5949, '5', NULL, NULL, NULL, 'N', '2020-07-06 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (297, 28, 757.00, '2020-09-10', NULL, NULL, NULL, NULL, 8205, '8', NULL, NULL, NULL, 'N', '2020-03-06 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (302, 70, 961.00, '2020-09-10', NULL, NULL, NULL, NULL, 4360, '4', NULL, NULL, NULL, 'N', '2020-01-15 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (307, 50, 664.00, '2020-09-10', NULL, NULL, NULL, NULL, 1200, '1', NULL, NULL, NULL, 'N', '2019-12-11 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (312, 79, 21.00, '2020-09-10', NULL, NULL, NULL, NULL, 8769, '3', NULL, NULL, NULL, 'N', '2020-04-28 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (317, 81, 20.00, '2020-09-10', NULL, NULL, NULL, NULL, 9862, '1', NULL, NULL, NULL, 'N', '2020-08-22 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (322, 15, 47.00, '2020-09-10', NULL, NULL, NULL, NULL, 6327, '8', NULL, NULL, NULL, 'N', '2020-06-15 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (327, 89, 590.00, '2020-09-10', NULL, NULL, NULL, NULL, 1349, '6', NULL, NULL, NULL, 'N', '2020-01-25 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (332, 91, 825.00, '2020-09-10', NULL, NULL, NULL, NULL, 6852, '9', NULL, NULL, NULL, 'N', '2019-11-27 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (337, 35, 184.00, '2020-09-09', NULL, NULL, NULL, NULL, 5331, '4', NULL, NULL, NULL, 'N', '2020-02-27 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (342, 17, 568.00, '2020-09-10', NULL, NULL, NULL, NULL, 7371, '8', NULL, NULL, NULL, 'N', '2020-01-18 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (347, 83, 838.00, '2020-09-10', NULL, NULL, NULL, NULL, 3918, '5', NULL, NULL, NULL, 'N', '2019-10-21 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (352, 53, 411.00, '2020-09-10', NULL, NULL, NULL, NULL, 5571, '3', NULL, NULL, NULL, 'N', '2020-08-18 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (357, 63, 124.00, '2020-09-10', NULL, NULL, NULL, NULL, 9824, '1', NULL, NULL, NULL, 'N', '2020-08-18 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (362, 48, 628.00, '2020-09-10', NULL, NULL, NULL, NULL, 3483, '7', NULL, NULL, NULL, 'N', '2020-02-06 00:00:00');

INSERT INTO pagar_parcela (id, fk_pagar, vl_parcela, dt_vencimento, dt_pagamento, vl_pago, juros, desconto, id_global, duplicata, dt_bom_para, id_baixa, juros_diario, dpc, dt_cadastro)
VALUES (367, 86, 71.00, '2020-09-10', NULL, NULL, NULL, NULL, 4897, '2', NULL, NULL, NULL, 'N', '2020-08-25 00:00:00');

--
-- Data for table public.permissao (OID = 29554) (LIMIT 0,3)
--
INSERT INTO permissao (id, nome, descricao, dt_cadastro, ativo)
VALUES (2, 'Clientes', 'Cadastro de Clientes', '2020-12-28 13:56:51.065', 'S');

INSERT INTO permissao (id, nome, descricao, dt_cadastro, ativo)
VALUES (3, 'Fornecedores', 'Cadastro de Fornecedores', '2020-12-28 13:57:19.8', 'S');

INSERT INTO permissao (id, nome, descricao, dt_cadastro, ativo)
VALUES (4, 'Usuários', 'Cadastro de Usuários', '2020-12-28 13:57:39.514', 'S');

--
-- Data for table public.plano_conta (OID = 29595) (LIMIT 0,22)
--
INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (11, 'a vista3', 'N', 'S', 'N', '2020-08-07 19:33:49.651536');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (19, 'Xavier - Batista', 'N', 'S', 'S', '2020-09-09 19:52:35.499696');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (20, 'Nogueira - Macedo', 'N', 'N', 'S', '2020-09-09 19:53:01.617054');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (21, 'Oliveira - Carvalho', 'N', 'N', 'N', '2020-09-09 19:59:28.427112');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (22, 'Pereira, Souza and Santos', 'N', 'N', 'N', '2020-09-09 20:00:04.57687');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (23, 'Albuquerque - Oliveira', 'S', 'N', 'N', '2020-09-09 20:52:37.256851');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (24, 'Carvalho - Carvalho', 'S', 'S', 'N', '2020-09-09 20:52:45.680539');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (25, 'Martins LTDA', 'N', 'S', 'N', '2020-09-09 20:53:05.460083');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (26, 'Albuquerque Comércio', 'N', 'S', 'N', '2020-09-09 20:53:12.597727');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (27, 'Braga, Albuquerque and Albuquerque', 'S', 'N', 'S', '2020-09-09 21:20:37.12658');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (28, 'Braga LTDA', 'N', 'N', 'N', '2020-09-09 21:21:12.53144');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (29, 'Reis, Carvalho and Macedo', 'S', 'S', 'N', '2020-09-09 21:22:46.297164');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (30, 'Martins - Franco', 'S', 'N', 'S', '2020-09-09 21:23:04.442113');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (31, 'Macedo, Braga and Nogueira', 'S', 'N', 'N', '2020-09-10 18:39:42.541242');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (32, 'Saraiva - Moraes', 'N', 'N', 'N', '2020-09-10 18:40:01.689259');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (33, 'Santos, Oliveira and Moraes', 'N', 'S', 'N', '2020-09-10 18:40:35.07618');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (34, 'Xavier - Silva', 'N', 'S', 'N', '2020-09-10 18:42:29.779637');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (35, 'Costa LTDA', 'N', 'N', 'S', '2020-09-10 18:43:18.833705');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (36, 'Martins e Associados', 'S', 'S', 'S', '2020-09-10 18:43:25.75314');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (37, 'Franco - Xavier', 'N', 'S', 'S', '2020-09-10 18:44:07.036966');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (38, 'Batista Comércio', 'S', 'N', 'N', '2020-09-10 18:44:10.465837');

INSERT INTO plano_conta (id, nome, tipo, padrao_api, ativo, dt_cadastro)
VALUES (39, 'Melo - Souza', 'S', 'N', 'S', '2020-09-10 18:44:12.490574');

--
-- Data for table public.plano_conta_categoria (OID = 29604) (LIMIT 0,4)
--
INSERT INTO plano_conta_categoria (id, fk_plano, nome, padrao_api, ativo, dt_cadastro)
VALUES (15, 11, '36', 'S', 'S', '2020-08-24 12:13:38.458964');

INSERT INTO plano_conta_categoria (id, fk_plano, nome, padrao_api, ativo, dt_cadastro)
VALUES (39, 20, 'Moreira, Martins and Batista', 'N', 'N', '2019-11-05 00:00:00');

INSERT INTO plano_conta_categoria (id, fk_plano, nome, padrao_api, ativo, dt_cadastro)
VALUES (42, 11, 'Braga, Melo and Costa', 'S', 'N', '2020-06-09 00:00:00');

INSERT INTO plano_conta_categoria (id, fk_plano, nome, padrao_api, ativo, dt_cadastro)
VALUES (43, 20, 'Carvalho - Costa', 'S', 'S', '2020-02-24 00:00:00');

--
-- Data for table public.produto (OID = 29613) (LIMIT 0,5)
--
INSERT INTO produto (id, fk_grupo, fk_subgrupo, fk_marca, nome, nome_reduzido, referencia, fk_unidade, codigo_ncm, ippt, tipo_produto, codigo_genero, peso_liquido, peso_bruto, converter_kg, utilizado, especificacao, baixar_estoque, balanca, balanca_tecla, servico, kit, ativo, fk_fornecedor, cest, codigo_anp, ncm_excessao, dt_cadastro)
VALUES (5, 467, NULL, NULL, 'APILOJA', 'APILOJA', NULL, 'Ava', NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'N', NULL, 'N', 'N', NULL, 'N', 'N', 'S', NULL, NULL, NULL, NULL, '2020-09-03 17:57:53.543208');

INSERT INTO produto (id, fk_grupo, fk_subgrupo, fk_marca, nome, nome_reduzido, referencia, fk_unidade, codigo_ncm, ippt, tipo_produto, codigo_genero, peso_liquido, peso_bruto, converter_kg, utilizado, especificacao, baixar_estoque, balanca, balanca_tecla, servico, kit, ativo, fk_fornecedor, cest, codigo_anp, ncm_excessao, dt_cadastro)
VALUES (6, 467, NULL, NULL, 'BISCOITO', 'BISCOITO', NULL, 'Ava', NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'N', NULL, 'N', 'N', NULL, 'N', 'N', 'S', NULL, NULL, NULL, NULL, '2020-09-03 00:00:00');

INSERT INTO produto (id, fk_grupo, fk_subgrupo, fk_marca, nome, nome_reduzido, referencia, fk_unidade, codigo_ncm, ippt, tipo_produto, codigo_genero, peso_liquido, peso_bruto, converter_kg, utilizado, especificacao, baixar_estoque, balanca, balanca_tecla, servico, kit, ativo, fk_fornecedor, cest, codigo_anp, ncm_excessao, dt_cadastro)
VALUES (7, 467, NULL, NULL, 'BOLA', 'BOLA', NULL, 'Ava', NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'N', NULL, 'N', 'N', NULL, 'N', 'N', 'S', NULL, NULL, NULL, NULL, '2020-09-03 00:00:00');

INSERT INTO produto (id, fk_grupo, fk_subgrupo, fk_marca, nome, nome_reduzido, referencia, fk_unidade, codigo_ncm, ippt, tipo_produto, codigo_genero, peso_liquido, peso_bruto, converter_kg, utilizado, especificacao, baixar_estoque, balanca, balanca_tecla, servico, kit, ativo, fk_fornecedor, cest, codigo_anp, ncm_excessao, dt_cadastro)
VALUES (8, 467, NULL, NULL, 'IMPRESSORA', 'IMPRESSORA', NULL, 'Ava', NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'N', NULL, 'N', 'N', NULL, 'N', 'N', 'S', NULL, NULL, NULL, NULL, '2020-09-03 00:00:00');

INSERT INTO produto (id, fk_grupo, fk_subgrupo, fk_marca, nome, nome_reduzido, referencia, fk_unidade, codigo_ncm, ippt, tipo_produto, codigo_genero, peso_liquido, peso_bruto, converter_kg, utilizado, especificacao, baixar_estoque, balanca, balanca_tecla, servico, kit, ativo, fk_fornecedor, cest, codigo_anp, ncm_excessao, dt_cadastro)
VALUES (9, 467, NULL, NULL, 'CAMISA', 'CAMISA', NULL, 'Ava', NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'N', NULL, 'N', 'N', NULL, 'N', 'N', 'S', NULL, NULL, NULL, NULL, '2020-09-03 00:00:00');

--
-- Data for table public.produto_grade (OID = 29634) (LIMIT 0,3)
--
INSERT INTO produto_grade (id, fk_filial, fk_produto, fk_grade, quantidade, quantidade_minima, quantidade_maxima, dt_cadastro)
VALUES (1, 1, 5, 'ROSA', 15.000, 0.000, 0.000, '2020-09-03 00:00:00');

INSERT INTO produto_grade (id, fk_filial, fk_produto, fk_grade, quantidade, quantidade_minima, quantidade_maxima, dt_cadastro)
VALUES (6, 1, 5, 'AZUL', 13.000, 0.000, 0.000, '2020-09-03 00:00:00');

INSERT INTO produto_grade (id, fk_filial, fk_produto, fk_grade, quantidade, quantidade_minima, quantidade_maxima, dt_cadastro)
VALUES (9, 1, 6, 'AZUL', 13.000, 0.000, 0.000, '2020-09-03 00:00:00');

--
-- Data for table public.produto_tabela (OID = 29659) (LIMIT 0,2)
--
INSERT INTO produto_tabela (id, nome, ativo, dt_cadastro, padrao_api)
VALUES (1, 'produtoTeste', 'S', '2020-09-16 11:03:01.223299', 'S');

INSERT INTO produto_tabela (id, nome, ativo, dt_cadastro, padrao_api)
VALUES (2, 'asadsasa', 'D', '2020-10-01 17:19:17.181802', 'S');

--
-- Data for table public.unidade (OID = 29677) (LIMIT 0,4)
--
INSERT INTO unidade (id, sigla, nome, fracionado, dt_cadastro, ativo)
VALUES (7, 'sigla3', 'Unidade Teste', 'N', '2020-08-03 12:34:54.875408', 'S');

INSERT INTO unidade (id, sigla, nome, fracionado, dt_cadastro, ativo)
VALUES (10, 'bet', 'aaa', 'N', '2020-08-25 00:00:00', 'S');

INSERT INTO unidade (id, sigla, nome, fracionado, dt_cadastro, ativo)
VALUES (34, 'juma', 'homem anta', 'D', '2020-08-26 00:00:00', 'D');

INSERT INTO unidade (id, sigla, nome, fracionado, dt_cadastro, ativo)
VALUES (25, 'Ava', 'homem macaco', 'N', '2020-08-26 00:00:00', 'S');

--
-- Data for table public.usuario (OID = 29687) (LIMIT 0,1)
--
INSERT INTO usuario (id, fkpessoa, fk_perfil, login, senha_acesso, senha_liberacao, ativo, dt_cadastro)
VALUES (3, 1, 7, 'API', '95f8e7d89f2e08e56effd3fa44ee3691', NULL, 'S', '2020-12-01 12:48:13.851945');

--
-- Data for table public.usuario_filial (OID = 29697) (LIMIT 0,1)
--
INSERT INTO usuario_filial (id, fk_filial, fk_usuario, dt_cadastro)
VALUES (1, 1, 3, '2020-12-18 16:32:34.348');

--
-- Data for table public.usuario_permissao (OID = 29703) (LIMIT 0,2)
--
INSERT INTO usuario_permissao (id, fk_usuario, fk_permissao, dt_cadastro, permissao_api, acesso, inclusao, alteracao, exclusao, impressao, fk_filial)
VALUES (1, 3, 2, '2020-12-28 13:58:45.122', 'N', 'S', 'S', 'S', 'S', 'S', 1);

INSERT INTO usuario_permissao (id, fk_usuario, fk_permissao, dt_cadastro, permissao_api, acesso, inclusao, alteracao, exclusao, impressao, fk_filial)
VALUES (2, 3, 4, '2020-12-28 13:59:33.459', 'N', 'S', 'S', 'S', 'S', 'S', 1);

--
-- Data for table public.estadocivil (OID = 38000) (LIMIT 0,5)
--
INSERT INTO estadocivil (id, nome, ativo)
VALUES (1, 'Casado', 'S');

INSERT INTO estadocivil (id, nome, ativo)
VALUES (2, 'Separado judicialmente', 'S');

INSERT INTO estadocivil (id, nome, ativo)
VALUES (3, 'Divorciado', 'S');

INSERT INTO estadocivil (id, nome, ativo)
VALUES (4, 'Viúvo', 'S');

INSERT INTO estadocivil (id, nome, ativo)
VALUES (5, 'Solteiro', 'S');

--
-- Data for table public.pessoa (OID = 38014) (LIMIT 0,2)
--
INSERT INTO pessoa (id, nome, fantasia_social, cpf_cnpj, rg_ie, ativo, tipo_pessoa, dt_cadastrado, alteracao, nascimento_constituicao, sexo, pai, mae, estado_civil, conjuge, profissao, especial, bloqueado, limite_credito, tipo_contribuinte, consumidor_rural, consumidor_final, cliente, fornecedor, funcionario, empresa, transportadora, fornecedor_representante, codigo)
VALUES (2, 'Teste', NULL, NULL, NULL, 'S', 'F', '2020-12-11 08:55:34.458', '2020-12-11 08:55:34.459', NULL, 'M', NULL, NULL, NULL, NULL, NULL, 'N', 'N', 0.00, '0', 'N', 'N', 'S', 'N', 'N', 'N', 'N', NULL, NULL);

INSERT INTO pessoa (id, nome, fantasia_social, cpf_cnpj, rg_ie, ativo, tipo_pessoa, dt_cadastrado, alteracao, nascimento_constituicao, sexo, pai, mae, estado_civil, conjuge, profissao, especial, bloqueado, limite_credito, tipo_contribuinte, consumidor_rural, consumidor_final, cliente, fornecedor, funcionario, empresa, transportadora, fornecedor_representante, codigo)
VALUES (1, 'API ', 'dasda', '77539923768', NULL, 'N', 'F', '2020-12-14 17:16:35.307', '2020-12-14 17:16:35.307', NULL, 'M', NULL, NULL, NULL, NULL, NULL, 'N', 'N', 0.00, '0', 'N', 'N', 'S', 'N', 'N', 'N', 'N', NULL, '123456');

--
-- Data for table public.estado (OID = 46286) (LIMIT 0,26)
--
INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (3, 1, 'ALAGOAS', 'AL', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (4, 1, 'AMAPÁ', 'AP', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (5, 1, 'CEARÁ', 'CE', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (6, 1, 'AMAZONAS', 'AM', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (7, 1, 'DISTRITO FEDERAL', 'DF', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (8, 1, 'BAHIA', 'BA', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (9, 1, 'MATO GROSSO DO SUL', 'MS', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (10, 1, 'MATO GROSSO', 'MT', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (11, 1, 'MARANHÃO', 'MA', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (12, 1, 'GOIÁS', 'GO', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (13, 1, 'ESPÍRITO SANTO', 'ES', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (14, 1, 'MINAS GERAIS', 'MG', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (15, 1, 'SANTA CATARINA', 'SC', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (16, 1, 'PARANÁ', 'PR', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (17, 1, 'RONDÔNIA', 'RO', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (18, 1, 'RORAIMA', 'RR', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (19, 1, 'RIO GRANDE DO NORTE', 'RN', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (20, 1, 'PARÁ', 'PA', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (21, 1, 'RIO GRANDE DO SUL', 'RS', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (22, 1, 'PARAÍBA', 'PB', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (23, 1, 'PIAUÍ', 'PI', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (24, 1, 'PERNAMBUCO', 'PE', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (25, 1, 'RIO DE JANEIRO', 'RJ', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (26, 1, 'TOCANTINS', 'TO', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (27, 1, 'SÃO PAULO', 'SP', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO estado (id, fk_pais, nome, sigla, perc_part_dest, icms, fundo_pobreza, perc_part_emit, icms_inter, perc_marckup)
VALUES (28, 1, 'SERGIPE', 'SE', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Data for table public.cidade (OID = 46301) (LIMIT 0,500)
--
INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (14, 'Cabixi', 'RO', 1100031);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (15, 'Cacoal', 'RO', 1100049);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (18, 'Corumbiara', 'RO', 1100072);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (20, 'Espigão D''Oeste', 'RO', 1100098);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (22, 'Jaru', 'RO', 1100114);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (23, 'Ji-Paraná', 'RO', 1100122);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (25, 'Nova Brasilândia D''Oeste', 'RO', 1100148);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (27, 'Pimenta Bueno', 'RO', 1100189);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (29, 'Presidente Médici', 'RO', 1100254);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (31, 'Rolim de Moura', 'RO', 1100288);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (32, 'Santa Luzia D''Oeste', 'RO', 1100296);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (34, 'São Miguel do Guaporé', 'RO', 1100320);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (36, 'Alvorada D''Oeste', 'RO', 1100346);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (37, 'Alto Alegre dos Parecis', 'RO', 1100379);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (39, 'Buritis', 'RO', 1100452);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (42, 'Campo Novo de Rondônia', 'RO', 1100700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (44, 'Castanheiras', 'RO', 1100908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (45, 'Chupinguaia', 'RO', 1100924);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (49, 'Ministro Andreazza', 'RO', 1101203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (51, 'Monte Negro', 'RO', 1101401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (53, 'Parecis', 'RO', 1101450);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (55, 'Primavera de Rondônia', 'RO', 1101476);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (56, 'São Felipe D''Oeste', 'RO', 1101484);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (57, 'São Francisco do Guaporé', 'RO', 1101492);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (58, 'Seringueiras', 'RO', 1101500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (59, 'Teixeirópolis', 'RO', 1101559);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (60, 'Theobroma', 'RO', 1101609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (63, 'Vale do Paraíso', 'RO', 1101807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (88, 'Anamã', 'AM', 1300086);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (89, 'Anori', 'AM', 1300102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (91, 'Atalaia do Norte', 'AM', 1300201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (92, 'Autazes', 'AM', 1300300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (93, 'Barcelos', 'AM', 1300409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (97, 'Boa Vista do Ramos', 'AM', 1300680);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (98, 'Boca do Acre', 'AM', 1300706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (99, 'Borba', 'AM', 1300805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (101, 'Canutama', 'AM', 1300904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (103, 'Careiro', 'AM', 1301100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (104, 'Careiro da Várzea', 'AM', 1301159);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (109, 'Fonte Boa', 'AM', 1301605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (110, 'Guajará', 'AM', 1301654);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (113, 'Iranduba', 'AM', 1301852);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (114, 'Itacoatiara', 'AM', 1301902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (116, 'Itapiranga', 'AM', 1302009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (117, 'Japurá', 'AM', 1302108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (118, 'Juruá', 'AM', 1302207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (124, 'Manicoré', 'AM', 1302702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (128, 'Nova Olinda do Norte', 'AM', 1303106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (131, 'Parintins', 'AM', 1303403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (132, 'Pauini', 'AM', 1303502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (133, 'Presidente Figueiredo', 'AM', 1303536);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (134, 'Rio Preto da Eva', 'AM', 1303569);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (137, 'São Gabriel da Cachoeira', 'AM', 1303809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (138, 'São Paulo de Olivença', 'AM', 1303908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (140, 'Silves', 'AM', 1304005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (144, 'Tonantins', 'AM', 1304237);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (146, 'Urucará', 'AM', 1304302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (148, 'Amajari', 'RR', 1400027);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (151, 'Bonfim', 'RR', 1400159);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (153, 'Caracaraí', 'RR', 1400209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (155, 'Iracema', 'RR', 1400282);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (158, 'Pacaraima', 'RR', 1400456);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (159, 'Rorainópolis', 'RR', 1400472);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (160, 'São João da Baliza', 'RR', 1400506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (162, 'Uiramutã', 'RR', 1400704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (163, 'Abaetetuba', 'PA', 1500107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (166, 'Afuá', 'PA', 1500305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (167, 'Água Azul do Norte', 'PA', 1500347);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (168, 'Alenquer', 'PA', 1500404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (172, 'Ananindeua', 'PA', 1500800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (174, 'Augusto Corrêa', 'PA', 1500909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (175, 'Aurora do Pará', 'PA', 1500958);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (178, 'Baião', 'PA', 1501204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (182, 'Belterra', 'PA', 1501451);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (186, 'Bragança', 'PA', 1501709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (187, 'Brasil Novo', 'PA', 1501725);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (190, 'Breves', 'PA', 1501808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (193, 'Cachoeira do Arari', 'PA', 1502004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (194, 'Cametá', 'PA', 1502103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (199, 'Chaves', 'PA', 1502509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (200, 'Colares', 'PA', 1502608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (202, 'Concórdia do Pará', 'PA', 1502756);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (204, 'Curionópolis', 'PA', 1502772);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (205, 'Curralinho', 'PA', 1502806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (206, 'Curuá', 'PA', 1502855);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (207, 'Curuçá', 'PA', 1502905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (212, 'Garrafão do Norte', 'PA', 1503077);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (214, 'Gurupá', 'PA', 1503101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (215, 'Igarapé-Açu', 'PA', 1503200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (216, 'Igarapé-Miri', 'PA', 1503309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (218, 'Ipixuna do Pará', 'PA', 1503457);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (220, 'Itaituba', 'PA', 1503606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (223, 'Jacundá', 'PA', 1503804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (224, 'Juruti', 'PA', 1503903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (225, 'Limoeiro do Ajuru', 'PA', 1504000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (227, 'Magalhães Barata', 'PA', 1504109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (229, 'Maracanã', 'PA', 1504307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (231, 'Marituba', 'PA', 1504422);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (236, 'Mojuí dos Campos', 'PA', 1504752);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (239, 'Nova Esperança do Piriá', 'PA', 1504950);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (240, 'Nova Ipixuna', 'PA', 1504976);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (241, 'Nova Timboteua', 'PA', 1505007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (242, 'Novo Progresso', 'PA', 1505031);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (243, 'Novo Repartimento', 'PA', 1505064);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (244, 'Óbidos', 'PA', 1505106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (245, 'Oeiras do Pará', 'PA', 1505205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (247, 'Ourém', 'PA', 1505403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (248, 'Ourilândia do Norte', 'PA', 1505437);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (249, 'Pacajá', 'PA', 1505486);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (251, 'Paragominas', 'PA', 1505502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (252, 'Parauapebas', 'PA', 1505536);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (253, 'Pau D''Arco', 'PA', 1505551);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (256, 'Placas', 'PA', 1505650);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (258, 'Portel', 'PA', 1505809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (260, 'Prainha', 'PA', 1506005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (262, 'Quatipuru', 'PA', 1506112);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (264, 'Rio Maria', 'PA', 1506161);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (266, 'Rurópolis', 'PA', 1506195);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (267, 'Salinópolis', 'PA', 1506203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (268, 'Salvaterra', 'PA', 1506302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (270, 'Santa Cruz do Arari', 'PA', 1506401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (273, 'Santa Maria das Barreiras', 'PA', 1506583);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (274, 'Santa Maria do Pará', 'PA', 1506609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (277, 'Santarém Novo', 'PA', 1506906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (279, 'São Caetano de Odivelas', 'PA', 1507102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (280, 'São Domingos do Araguaia', 'PA', 1507151);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (283, 'São Francisco do Pará', 'PA', 1507409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (284, 'São Geraldo do Araguaia', 'PA', 1507458);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (288, 'São Miguel do Guamá', 'PA', 1507607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (289, 'São Sebastião da Boa Vista', 'PA', 1507706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (291, 'Senador José Porfírio', 'PA', 1507805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (293, 'Tailândia', 'PA', 1507953);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (294, 'Terra Alta', 'PA', 1507961);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (295, 'Terra Santa', 'PA', 1507979);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (301, 'Ulianópolis', 'PA', 1508126);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (304, 'Viseu', 'PA', 1508308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (305, 'Vitória do Xingu', 'PA', 1508357);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (306, 'Xinguara', 'PA', 1508407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (307, 'Serra do Navio', 'AP', 1600055);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (308, 'Amapá', 'AP', 1600105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (310, 'Calçoene', 'AP', 1600204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (311, 'Cutias', 'AP', 1600212);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (315, 'Macapá', 'AP', 1600303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (317, 'Oiapoque', 'AP', 1600501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (318, 'Porto Grande', 'AP', 1600535);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (322, 'Vitória do Jari', 'AP', 1600808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (323, 'Abreulândia', 'TO', 1700251);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (324, 'Aguiarnópolis', 'TO', 1700301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (325, 'Aliança do Tocantins', 'TO', 1700350);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (326, 'Almas', 'TO', 1700400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (327, 'Alvorada', 'TO', 1700707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (328, 'Ananás', 'TO', 1701002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (331, 'Aragominas', 'TO', 1701309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (333, 'Araguaçu', 'TO', 1702000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (336, 'Araguatins', 'TO', 1702208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (340, 'Aurora do Tocantins', 'TO', 1702703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (342, 'Babaçulândia', 'TO', 1703008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (345, 'Barrolândia', 'TO', 1703107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (347, 'Bom Jesus do Tocantins', 'TO', 1703305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (348, 'Brasilândia do Tocantins', 'TO', 1703602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (352, 'Campos Lindos', 'TO', 1703842);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (353, 'Cariri do Tocantins', 'TO', 1703867);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (354, 'Carmolândia', 'TO', 1703883);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (356, 'Caseara', 'TO', 1703909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (358, 'Chapada de Areia', 'TO', 1704600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (359, 'Chapada da Natividade', 'TO', 1705102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (360, 'Colinas do Tocantins', 'TO', 1705508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (363, 'Couto Magalhães', 'TO', 1706001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (364, 'Cristalândia', 'TO', 1706100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (365, 'Crixás do Tocantins', 'TO', 1706258);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (366, 'Darcinópolis', 'TO', 1706506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (367, 'Dianópolis', 'TO', 1707009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (370, 'Dueré', 'TO', 1707306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (371, 'Esperantina', 'TO', 1707405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (372, 'Fátima', 'TO', 1707553);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (374, 'Filadélfia', 'TO', 1707702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (375, 'Formoso do Araguaia', 'TO', 1708205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (376, 'Fortaleza do Tabocão', 'TO', 1708254);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (377, 'Goianorte', 'TO', 1708304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (381, 'Ipueiras', 'TO', 1709807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (382, 'Itacajá', 'TO', 1710508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (383, 'Itaguatins', 'TO', 1710706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (384, 'Itapiratins', 'TO', 1710904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (385, 'Itaporã do Tocantins', 'TO', 1711100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (387, 'Juarina', 'TO', 1711803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (389, 'Lagoa do Tocantins', 'TO', 1711951);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (394, 'Marianópolis do Tocantins', 'TO', 1712504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (398, 'Miranorte', 'TO', 1713304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (400, 'Monte Santo do Tocantins', 'TO', 1713700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (401, 'Palmeiras do Tocantins', 'TO', 1713809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (407, 'Novo Acordo', 'TO', 1715101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (409, 'Novo Jardim', 'TO', 1715259);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (410, 'Oliveira de Fátima', 'TO', 1715507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (411, 'Palmeirante', 'TO', 1715705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (413, 'Paraíso do Tocantins', 'TO', 1716109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (414, 'Paranã', 'TO', 1716208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (417, 'Peixe', 'TO', 1716604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (419, 'Colméia', 'TO', 1716703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (422, 'Pium', 'TO', 1717503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (424, 'Ponte Alta do Tocantins', 'TO', 1717909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (427, 'Praia Norte', 'TO', 1718303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (428, 'Presidente Kennedy', 'TO', 1718402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (430, 'Recursolândia', 'TO', 1718501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (433, 'Rio dos Bois', 'TO', 1718709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (434, 'Rio Sono', 'TO', 1718758);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (438, 'Santa Maria do Tocantins', 'TO', 1718881);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (439, 'Santa Rita do Tocantins', 'TO', 1718899);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (441, 'Santa Tereza do Tocantins', 'TO', 1719004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (442, 'Santa Terezinha do Tocantins', 'TO', 1720002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (443, 'São Bento do Tocantins', 'TO', 1720101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (447, 'São Sebastião do Tocantins', 'TO', 1720309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (448, 'São Valério', 'TO', 1720499);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (449, 'Silvanópolis', 'TO', 1720655);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (451, 'Sucupira', 'TO', 1720853);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (455, 'Palmas', 'TO', 1721000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (457, 'Tocantinópolis', 'TO', 1721208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (458, 'Tupirama', 'TO', 1721257);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (461, 'Xambioá', 'TO', 1722107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (462, 'Açailândia', 'MA', 2100055);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (464, 'Água Doce do Maranhão', 'MA', 2100154);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (465, 'Alcântara', 'MA', 2100204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (466, 'Aldeias Altas', 'MA', 2100303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (467, 'Altamira do Maranhão', 'MA', 2100402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (472, 'Amarante do Maranhão', 'MA', 2100600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (476, 'Araguanã', 'MA', 2100873);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (481, 'Bacabal', 'MA', 2101202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (482, 'Bacabeira', 'MA', 2101251);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (483, 'Bacuri', 'MA', 2101301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (484, 'Bacurituba', 'MA', 2101350);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (486, 'Barão de Grajaú', 'MA', 2101509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (487, 'Barra do Corda', 'MA', 2101608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (489, 'Belágua', 'MA', 2101731);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (491, 'Benedito Leite', 'MA', 2101806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (492, 'Bequimão', 'MA', 2101905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (498, 'Brejo', 'MA', 2102101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (499, 'Brejo de Areia', 'MA', 2102150);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (503, 'Buritirana', 'MA', 2102358);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (505, 'Cajapió', 'MA', 2102408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (506, 'Cajari', 'MA', 2102507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (508, 'Cândido Mendes', 'MA', 2102606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (511, 'Carolina', 'MA', 2102804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (514, 'Cedral', 'MA', 2103109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (515, 'Central do Maranhão', 'MA', 2103125);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (517, 'Centro Novo do Maranhão', 'MA', 2103174);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (518, 'Chapadinha', 'MA', 2103208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (519, 'Cidelândia', 'MA', 2103257);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (520, 'Codó', 'MA', 2103307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (524, 'Coroatá', 'MA', 2103604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (526, 'Davinópolis', 'MA', 2103752);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (527, 'Dom Pedro', 'MA', 2103802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (529, 'Esperantinópolis', 'MA', 2104008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (533, 'Formosa da Serra Negra', 'MA', 2104099);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (535, 'Fortuna', 'MA', 2104206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (536, 'Godofredo Viana', 'MA', 2104305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (538, 'Governador Archer', 'MA', 2104503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (540, 'Governador Eugênio Barros', 'MA', 2104602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (541, 'Governador Luiz Rocha', 'MA', 2104628);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (545, 'Grajaú', 'MA', 2104800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (547, 'Humberto de Campos', 'MA', 2105005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (552, 'Itaipava do Grajaú', 'MA', 2105351);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (554, 'Itinga do Maranhão', 'MA', 2105427);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (556, 'Jenipapo dos Vieiras', 'MA', 2105476);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (559, 'Junco do Maranhão', 'MA', 2105658);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (561, 'Lago do Junco', 'MA', 2105807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (564, 'Lago dos Rodrigues', 'MA', 2105948);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (566, 'Lajeado Novo', 'MA', 2105989);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (570, 'Magalhães de Almeida', 'MA', 2106300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (573, 'Maranhãozinho', 'MA', 2106375);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (575, 'Matinha', 'MA', 2106508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (576, 'Matões', 'MA', 2106607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (577, 'Matões do Norte', 'MA', 2106631);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (578, 'Milagres do Maranhão', 'MA', 2106672);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (579, 'Mirador', 'MA', 2106706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (583, 'Montes Altos', 'MA', 2107001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (587, 'Nova Iorque', 'MA', 2107308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (588, 'Nova Olinda do Maranhão', 'MA', 2107357);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (590, 'Olinda Nova do Maranhão', 'MA', 2107456);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (591, 'Paço do Lumiar', 'MA', 2107506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (592, 'Palmeirândia', 'MA', 2107605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (593, 'Paraibano', 'MA', 2107704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (598, 'Paulo Ramos', 'MA', 2108108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (600, 'Pedro do Rosário', 'MA', 2108256);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (602, 'Peri Mirim', 'MA', 2108405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (603, 'Peritoró', 'MA', 2108454);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (604, 'Pindaré-Mirim', 'MA', 2108504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (605, 'Pinheiro', 'MA', 2108603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (607, 'Pirapemas', 'MA', 2108801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (608, 'Poção de Pedras', 'MA', 2108900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (609, 'Porto Franco', 'MA', 2109007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (612, 'Presidente Juscelino', 'MA', 2109205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (614, 'Presidente Sarney', 'MA', 2109270);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (615, 'Presidente Vargas', 'MA', 2109304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (618, 'Riachão', 'MA', 2109502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (620, 'Rosário', 'MA', 2109601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (624, 'Santa Inês', 'MA', 2109908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (625, 'Santa Luzia', 'MA', 2110005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (628, 'Santa Rita', 'MA', 2110203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (633, 'São Bento', 'MA', 2110500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (635, 'São Domingos do Azeitão', 'MA', 2110658);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (636, 'São Domingos do Maranhão', 'MA', 2110708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (637, 'São Félix de Balsas', 'MA', 2110807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (639, 'São Francisco do Maranhão', 'MA', 2110906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (640, 'São João Batista', 'MA', 2111003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (641, 'São João do Carú', 'MA', 2111029);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (642, 'São João do Paraíso', 'MA', 2111052);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (647, 'São Luís', 'MA', 2111300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (648, 'São Luís Gonzaga do Maranhão', 'MA', 2111409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (649, 'São Mateus do Maranhão', 'MA', 2111508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (650, 'São Pedro da Água Branca', 'MA', 2111532);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (651, 'São Pedro dos Crentes', 'MA', 2111573);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (653, 'São Raimundo do Doca Bezerra', 'MA', 2111631);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (654, 'São Roberto', 'MA', 2111672);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (656, 'Satubinha', 'MA', 2111722);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (658, 'Senador La Rocque', 'MA', 2111763);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (660, 'Sítio Novo', 'MA', 2111805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (662, 'Sucupira do Riachão', 'MA', 2111953);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (665, 'Timon', 'MA', 2112209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (667, 'Tufilândia', 'MA', 2112274);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (668, 'Tuntum', 'MA', 2112308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (669, 'Turiaçu', 'MA', 2112407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (670, 'Turilândia', 'MA', 2112456);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (671, 'Tutóia', 'MA', 2112506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (673, 'Vargem Grande', 'MA', 2112704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (675, 'Vila Nova dos Martírios', 'MA', 2112852);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (676, 'Vitória do Mearim', 'MA', 2112902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (677, 'Vitorino Freire', 'MA', 2113009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (682, 'Alagoinha do Piauí', 'PI', 2200251);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (684, 'Alto Longá', 'PI', 2200301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (685, 'Altos', 'PI', 2200400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (686, 'Alvorada do Gurguéia', 'PI', 2200459);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (687, 'Amarante', 'PI', 2200509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (689, 'Anísio de Abreu', 'PI', 2200707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (693, 'Arraial', 'PI', 2201002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (694, 'Assunção do Piauí', 'PI', 2201051);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (695, 'Avelino Lopes', 'PI', 2201101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (696, 'Baixa Grande do Ribeiro', 'PI', 2201150);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (697, 'Barra D''Alcântara', 'PI', 2201176);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (700, 'Barro Duro', 'PI', 2201408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (702, 'Bela Vista do Piauí', 'PI', 2201556);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (705, 'Bertolínia', 'PI', 2201705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (706, 'Betânia do Piauí', 'PI', 2201739);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (707, 'Boa Hora', 'PI', 2201770);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (710, 'Bom Princípio do Piauí', 'PI', 2201919);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (712, 'Boqueirão do Piauí', 'PI', 2201945);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (714, 'Brejo do Piauí', 'PI', 2201988);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (717, 'Cabeceiras do Piauí', 'PI', 2202059);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (718, 'Cajazeiras do Piauí', 'PI', 2202075);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (719, 'Cajueiro da Praia', 'PI', 2202083);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (721, 'Campinas do Piauí', 'PI', 2202109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (722, 'Campo Alegre do Fidalgo', 'PI', 2202117);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (723, 'Campo Grande do Piauí', 'PI', 2202133);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (725, 'Campo Maior', 'PI', 2202208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (726, 'Canavieira', 'PI', 2202251);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (729, 'Capitão Gervásio Oliveira', 'PI', 2202455);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (731, 'Caraúbas do Piauí', 'PI', 2202539);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (733, 'Castelo do Piauí', 'PI', 2202604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (735, 'Cocal', 'PI', 2202703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (737, 'Cocal dos Alves', 'PI', 2202729);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (738, 'Coivaras', 'PI', 2202737);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (739, 'Colônia do Gurguéia', 'PI', 2202752);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (740, 'Colônia do Piauí', 'PI', 2202778);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (742, 'Coronel José Dias', 'PI', 2202851);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (743, 'Corrente', 'PI', 2202901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (744, 'Cristalândia do Piauí', 'PI', 2203008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (746, 'Curimatá', 'PI', 2203206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (753, 'Domingos Mourão', 'PI', 2203420);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (754, 'Dom Inocêncio', 'PI', 2203453);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (757, 'Esperantina', 'PI', 2203701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (758, 'Fartura do Piauí', 'PI', 2203750);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (759, 'Flores do Piauí', 'PI', 2203800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (761, 'Floriano', 'PI', 2203909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (765, 'Francisco Santos', 'PI', 2204204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (766, 'Fronteiras', 'PI', 2204303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (767, 'Geminiano', 'PI', 2204352);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (771, 'Hugo Napoleão', 'PI', 2204600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (772, 'Ilha Grande', 'PI', 2204659);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (773, 'Inhuma', 'PI', 2204709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (776, 'Itainópolis', 'PI', 2205003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (778, 'Jacobina do Piauí', 'PI', 2205151);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (780, 'Jardim do Mulato', 'PI', 2205250);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (783, 'João Costa', 'PI', 2205359);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (784, 'Joaquim Pires', 'PI', 2205409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (786, 'José de Freitas', 'PI', 2205508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (789, 'Jurema', 'PI', 2205532);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (792, 'Lagoa do Barro do Piauí', 'PI', 2205565);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (793, 'Lagoa de São Francisco', 'PI', 2205573);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (794, 'Lagoa do Piauí', 'PI', 2205581);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (797, 'Luís Correia', 'PI', 2205706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (798, 'Luzilândia', 'PI', 2205805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (799, 'Madeiro', 'PI', 2205854);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (800, 'Manoel Emídio', 'PI', 2205904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (802, 'Marcos Parente', 'PI', 2206001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (803, 'Massapê do Piauí', 'PI', 2206050);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (804, 'Matias Olímpio', 'PI', 2206100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (806, 'Miguel Leão', 'PI', 2206308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (808, 'Monsenhor Gil', 'PI', 2206407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (809, 'Monsenhor Hipólito', 'PI', 2206506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (810, 'Monte Alegre do Piauí', 'PI', 2206605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (812, 'Morro do Chapéu do Piauí', 'PI', 2206670);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (813, 'Murici dos Portelas', 'PI', 2206696);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (815, 'Nazária', 'PI', 2206720);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (820, 'Oeiras', 'PI', 2207009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (821, 'Olho D''Água do Piauí', 'PI', 2207108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (823, 'Paes Landim', 'PI', 2207306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (825, 'Palmeira do Piauí', 'PI', 2207405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (826, 'Palmeirais', 'PI', 2207504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (830, 'Passagem Franca do Piauí', 'PI', 2207751);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (832, 'Pau D''Arco do Piauí', 'PI', 2207793);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (833, 'Paulistana', 'PI', 2207801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (836, 'Pedro Laurentino', 'PI', 2207934);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (837, 'Nova Santa Rita', 'PI', 2207959);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (838, 'Picos', 'PI', 2208007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (850, 'Ribeira do Piauí', 'PI', 2208874);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (856, 'Santa Luz', 'PI', 2209302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (857, 'Santana do Piauí', 'PI', 2209351);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (858, 'Santa Rosa do Piauí', 'PI', 2209377);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (859, 'Santo Antônio de Lisboa', 'PI', 2209401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (860, 'Santo Antônio dos Milagres', 'PI', 2209450);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (861, 'Santo Inácio do Piauí', 'PI', 2209500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (864, 'São Francisco de Assis do Piauí', 'PI', 2209658);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (865, 'São Francisco do Piauí', 'PI', 2209708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (868, 'São João da Canabrava', 'PI', 2209856);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (871, 'São João da Varjota', 'PI', 2209955);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (874, 'São José do Divino', 'PI', 2210052);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (875, 'São José do Peixe', 'PI', 2210102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (876, 'São José do Piauí', 'PI', 2210201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (879, 'São Luis do Piauí', 'PI', 2210375);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (881, 'São Miguel do Fidalgo', 'PI', 2210391);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (882, 'São Miguel do Tapuio', 'PI', 2210409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (883, 'São Pedro do Piauí', 'PI', 2210508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (885, 'Sebastião Barros', 'PI', 2210623);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (887, 'Sigefredo Pacheco', 'PI', 2210656);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (890, 'Socorro do Piauí', 'PI', 2210904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (892, 'Tamboril do Piauí', 'PI', 2210953);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (894, 'Teresina', 'PI', 2211001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (895, 'União', 'PI', 2211100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (899, 'Várzea Grande', 'PI', 2211407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (900, 'Vera Mendes', 'PI', 2211506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (904, 'Acarape', 'CE', 2300150);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (905, 'Acaraú', 'CE', 2300200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (907, 'Aiuaba', 'CE', 2300408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (908, 'Alcântaras', 'CE', 2300507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (913, 'Apuiarés', 'CE', 2300903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (915, 'Aracati', 'CE', 2301109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (917, 'Ararendá', 'CE', 2301257);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (920, 'Arneiroz', 'CE', 2301505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (922, 'Aurora', 'CE', 2301703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (926, 'Barreira', 'CE', 2301950);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (930, 'Beberibe', 'CE', 2302206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (931, 'Bela Cruz', 'CE', 2302305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (934, 'Camocim', 'CE', 2302602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (935, 'Campos Sales', 'CE', 2302701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (938, 'Caridade', 'CE', 2303006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (939, 'Cariré', 'CE', 2303105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (941, 'Cariús', 'CE', 2303303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (943, 'Cascavel', 'CE', 2303501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (945, 'Catunda', 'CE', 2303659);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (946, 'Caucaia', 'CE', 2303709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (947, 'Cedro', 'CE', 2303808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (948, 'Chaval', 'CE', 2303907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (951, 'Coreaú', 'CE', 2304004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (952, 'Crateús', 'CE', 2304103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (953, 'Crato', 'CE', 2304202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (954, 'Croatá', 'CE', 2304236);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (956, 'Deputado Irapuan Pinheiro', 'CE', 2304269);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (960, 'Forquilha', 'CE', 2304350);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (962, 'Fortim', 'CE', 2304459);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (963, 'Frecheirinha', 'CE', 2304509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (965, 'Graça', 'CE', 2304657);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (967, 'Granjeiro', 'CE', 2304806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (968, 'Groaíras', 'CE', 2304905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (971, 'Guaramiranga', 'CE', 2305100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (975, 'Ibiapina', 'CE', 2305308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (978, 'Icó', 'CE', 2305407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (979, 'Iguatu', 'CE', 2305506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (981, 'Ipaporanga', 'CE', 2305654);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (983, 'Ipu', 'CE', 2305803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (985, 'Iracema', 'CE', 2306009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (988, 'Itaitinga', 'CE', 2306256);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (993, 'Itatira', 'CE', 2306603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (994, 'Jaguaretama', 'CE', 2306702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (996, 'Jaguaribe', 'CE', 2306900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (998, 'Jardim', 'CE', 2307106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1001, 'Juazeiro do Norte', 'CE', 2307304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1002, 'Jucás', 'CE', 2307403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1003, 'Lavras da Mangabeira', 'CE', 2307502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1005, 'Madalena', 'CE', 2307635);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1007, 'Maranguape', 'CE', 2307700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1009, 'Martinópole', 'CE', 2307908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1010, 'Massapê', 'CE', 2308005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1012, 'Meruoca', 'CE', 2308203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1015, 'Miraíma', 'CE', 2308377);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1017, 'Mombaça', 'CE', 2308500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1019, 'Morada Nova', 'CE', 2308708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1020, 'Moraújo', 'CE', 2308807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1023, 'Mulungu', 'CE', 2309102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1024, 'Nova Olinda', 'CE', 2309201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1027, 'Ocara', 'CE', 2309458);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1028, 'Orós', 'CE', 2309508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1031, 'Pacoti', 'CE', 2309805);

--
-- Data for table public.cidade (OID = 46301) (LIMIT 500,500)
--
INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1033, 'Palhano', 'CE', 2310001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1034, 'Palmácia', 'CE', 2310100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1035, 'Paracuru', 'CE', 2310209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1036, 'Paraipaba', 'CE', 2310258);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1037, 'Parambu', 'CE', 2310308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1038, 'Paramoti', 'CE', 2310407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1040, 'Penaforte', 'CE', 2310605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1041, 'Pentecoste', 'CE', 2310704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1044, 'Piquet Carneiro', 'CE', 2310902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1046, 'Poranga', 'CE', 2311009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1047, 'Porteiras', 'CE', 2311108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1048, 'Potengi', 'CE', 2311207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1049, 'Potiretama', 'CE', 2311231);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1050, 'Quiterianópolis', 'CE', 2311264);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1052, 'Quixelô', 'CE', 2311355);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1054, 'Quixeré', 'CE', 2311504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1056, 'Reriutaba', 'CE', 2311702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1057, 'Russas', 'CE', 2311801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1058, 'Saboeiro', 'CE', 2311900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1060, 'Santana do Acaraú', 'CE', 2312007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1062, 'Santa Quitéria', 'CE', 2312205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1065, 'São João do Jaguaribe', 'CE', 2312502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1066, 'São Luís do Curu', 'CE', 2312601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1067, 'Senador Pompeu', 'CE', 2312700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1069, 'Sobral', 'CE', 2312908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1070, 'Solonópole', 'CE', 2313005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1071, 'Tabuleiro do Norte', 'CE', 2313104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1073, 'Tarrafas', 'CE', 2313252);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1076, 'Tianguá', 'CE', 2313401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1077, 'Trairi', 'CE', 2313500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1078, 'Tururu', 'CE', 2313559);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1080, 'Umari', 'CE', 2313708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1082, 'Uruburetama', 'CE', 2313807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1084, 'Varjota', 'CE', 2313955);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1087, 'Acari', 'RN', 2400109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1088, 'Açu', 'RN', 2400208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1089, 'Afonso Bezerra', 'RN', 2400307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1090, 'Água Nova', 'RN', 2400406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1093, 'Alto do Rodrigues', 'RN', 2400703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1094, 'Angicos', 'RN', 2400802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1096, 'Apodi', 'RN', 2401008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1098, 'Arês', 'RN', 2401206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1100, 'Baía Formosa', 'RN', 2401404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1101, 'Baraúna', 'RN', 2401453);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1104, 'Bodó', 'RN', 2401651);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1105, 'Bom Jesus', 'RN', 2401701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1106, 'Brejinho', 'RN', 2401800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1107, 'Caiçara do Norte', 'RN', 2401859);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1108, 'Caiçara do Rio do Vento', 'RN', 2401909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1111, 'Canguaretama', 'RN', 2402204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1112, 'Caraúbas', 'RN', 2402303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1113, 'Carnaúba dos Dantas', 'RN', 2402402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1114, 'Carnaubais', 'RN', 2402501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1116, 'Cerro Corá', 'RN', 2402709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1117, 'Coronel Ezequiel', 'RN', 2402808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1118, 'Coronel João Pessoa', 'RN', 2402907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1120, 'Currais Novos', 'RN', 2403103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1121, 'Doutor Severiano', 'RN', 2403202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1122, 'Parnamirim', 'RN', 2403251);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1125, 'Espírito Santo', 'RN', 2403509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1126, 'Extremoz', 'RN', 2403608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1127, 'Felipe Guerra', 'RN', 2403707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1128, 'Fernando Pedroza', 'RN', 2403756);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1130, 'Francisco Dantas', 'RN', 2403905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1131, 'Frutuoso Gomes', 'RN', 2404002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1133, 'Goianinha', 'RN', 2404200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1134, 'Governador Dix-Sept Rosado', 'RN', 2404309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1135, 'Grossos', 'RN', 2404408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1137, 'Ielmo Marinho', 'RN', 2404606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1141, 'Itaú', 'RN', 2404903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1144, 'Janduís', 'RN', 2405207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1145, 'Januário Cicco', 'RN', 2405306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1146, 'Japi', 'RN', 2405405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1147, 'Jardim de Angicos', 'RN', 2405504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1149, 'Jardim do Seridó', 'RN', 2405702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1150, 'João Câmara', 'RN', 2405801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1155, 'Lagoa D''Anta', 'RN', 2406205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1157, 'Lagoa de Velhos', 'RN', 2406403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1161, 'Lajes Pintadas', 'RN', 2406809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1163, 'Luís Gomes', 'RN', 2407005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1165, 'Macau', 'RN', 2407203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1168, 'Martins', 'RN', 2407401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1170, 'Messias Targino', 'RN', 2407609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1179, 'Ouro Branco', 'RN', 2408508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1181, 'Paraú', 'RN', 2408706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1183, 'Parelhas', 'RN', 2408904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1186, 'Passagem', 'RN', 2409209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1187, 'Patu', 'RN', 2409308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1188, 'Santa Maria', 'RN', 2409332);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1189, 'Pau dos Ferros', 'RN', 2409407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1190, 'Pedra Grande', 'RN', 2409506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1191, 'Pedra Preta', 'RN', 2409605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1194, 'Pendências', 'RN', 2409902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1195, 'Pilões', 'RN', 2410009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1199, 'Presidente Juscelino', 'RN', 2410306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1204, 'Riacho de Santana', 'RN', 2410801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1205, 'Riachuelo', 'RN', 2410900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1207, 'Tibau', 'RN', 2411056);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1208, 'Ruy Barbosa', 'RN', 2411106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1211, 'Santana do Seridó', 'RN', 2411429);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1213, 'São Bento do Norte', 'RN', 2411601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1214, 'São Bento do Trairí', 'RN', 2411700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1217, 'São Gonçalo do Amarante', 'RN', 2412005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1218, 'São João do Sabugi', 'RN', 2412104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1220, 'São José do Campestre', 'RN', 2412302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1221, 'São José do Seridó', 'RN', 2412401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1223, 'São Miguel do Gostoso', 'RN', 2412559);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1224, 'São Paulo do Potengi', 'RN', 2412609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1225, 'São Pedro', 'RN', 2412708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1226, 'São Rafael', 'RN', 2412807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1228, 'São Vicente', 'RN', 2413003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1229, 'Senador Elói de Souza', 'RN', 2413102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1230, 'Senador Georgino Avelino', 'RN', 2413201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1231, 'Serra de São Bento', 'RN', 2413300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1232, 'Serra do Mel', 'RN', 2413359);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1235, 'Serrinha dos Pintos', 'RN', 2413557);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1236, 'Severiano Melo', 'RN', 2413607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1240, 'Tangará', 'RN', 2414001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1243, 'Tibau do Sul', 'RN', 2414209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1244, 'Timbaúba dos Batistas', 'RN', 2414308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1245, 'Touros', 'RN', 2414407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1246, 'Triunfo Potiguar', 'RN', 2414456);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1247, 'Umarizal', 'RN', 2414506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1251, 'Vera Cruz', 'RN', 2414803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1252, 'Viçosa', 'RN', 2414902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1255, 'Aguiar', 'PB', 2500205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1257, 'Alagoa Nova', 'PB', 2500403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1258, 'Alagoinha', 'PB', 2500502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1259, 'Alcantil', 'PB', 2500536);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1261, 'Alhandra', 'PB', 2500601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1262, 'São João do Rio do Peixe', 'PB', 2500700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1265, 'Araçagi', 'PB', 2500809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1266, 'Arara', 'PB', 2500908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1267, 'Araruna', 'PB', 2501005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1269, 'Areia de Baraúnas', 'PB', 2501153);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1270, 'Areial', 'PB', 2501203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1271, 'Aroeiras', 'PB', 2501302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1272, 'Assunção', 'PB', 2501351);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1276, 'Barra de Santana', 'PB', 2501575);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1278, 'Barra de São Miguel', 'PB', 2501708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1279, 'Bayeux', 'PB', 2501807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1281, 'Belém do Brejo do Cruz', 'PB', 2502003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1283, 'Boa Ventura', 'PB', 2502102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1284, 'Boa Vista', 'PB', 2502151);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1285, 'Bom Jesus', 'PB', 2502201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1286, 'Bom Sucesso', 'PB', 2502300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1287, 'Bonito de Santa Fé', 'PB', 2502409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1290, 'Borborema', 'PB', 2502706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1292, 'Brejo dos Santos', 'PB', 2502904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1293, 'Caaporã', 'PB', 2503001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1298, 'Cacimba de Dentro', 'PB', 2503506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1300, 'Caiçara', 'PB', 2503605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1301, 'Cajazeiras', 'PB', 2503704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1302, 'Cajazeirinhas', 'PB', 2503753);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1304, 'Camalaú', 'PB', 2503902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1306, 'Capim', 'PB', 2504033);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1309, 'Casserengue', 'PB', 2504157);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1310, 'Catingueira', 'PB', 2504207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1311, 'Catolé do Rocha', 'PB', 2504306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1312, 'Caturité', 'PB', 2504355);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1315, 'Conde', 'PB', 2504603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1317, 'Coremas', 'PB', 2504801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1318, 'Coxixola', 'PB', 2504850);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1320, 'Cubati', 'PB', 2505006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1321, 'Cuité', 'PB', 2505105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1322, 'Cuitegi', 'PB', 2505204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1324, 'Curral de Cima', 'PB', 2505279);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1325, 'Curral Velho', 'PB', 2505303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1326, 'Damião', 'PB', 2505352);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1327, 'Desterro', 'PB', 2505402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1329, 'Diamante', 'PB', 2505600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1331, 'Duas Estradas', 'PB', 2505808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1333, 'Esperança', 'PB', 2506004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1335, 'Frei Martinho', 'PB', 2506202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1336, 'Gado Bravo', 'PB', 2506251);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1337, 'Guarabira', 'PB', 2506301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1339, 'Gurjão', 'PB', 2506509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1342, 'Ingá', 'PB', 2506806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1343, 'Itabaiana', 'PB', 2506905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1344, 'Itaporanga', 'PB', 2507002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1346, 'Itatuba', 'PB', 2507200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1350, 'Juarez Távora', 'PB', 2507606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1354, 'Juru', 'PB', 2508000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1356, 'Lagoa de Dentro', 'PB', 2508208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1357, 'Lagoa Seca', 'PB', 2508307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1358, 'Lastro', 'PB', 2508406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1360, 'Logradouro', 'PB', 2508554);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1361, 'Lucena', 'PB', 2508604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1363, 'Malta', 'PB', 2508802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1364, 'Mamanguape', 'PB', 2508901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1366, 'Marcação', 'PB', 2509057);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1367, 'Mari', 'PB', 2509107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1373, 'Maturéia', 'PB', 2509396);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1375, 'Montadas', 'PB', 2509503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1377, 'Monteiro', 'PB', 2509701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1378, 'Mulungu', 'PB', 2509800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1380, 'Nazarezinho', 'PB', 2510006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1383, 'Nova Palmeira', 'PB', 2510303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1384, 'Olho D''Água', 'PB', 2510402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1385, 'Olivedos', 'PB', 2510501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1389, 'Patos', 'PB', 2510808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1392, 'Pedra Lavrada', 'PB', 2511103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1393, 'Pedras de Fogo', 'PB', 2511202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1396, 'Pilar', 'PB', 2511509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1398, 'Pilõezinhos', 'PB', 2511707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1399, 'Pirpirituba', 'PB', 2511806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1400, 'Pitimbu', 'PB', 2511905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1401, 'Pocinhos', 'PB', 2512002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1402, 'Poço Dantas', 'PB', 2512036);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1404, 'Pombal', 'PB', 2512101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1407, 'Puxinanã', 'PB', 2512408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1408, 'Queimadas', 'PB', 2512507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1409, 'Quixabá', 'PB', 2512606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1411, 'Pedro Régis', 'PB', 2512721);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1412, 'Riachão', 'PB', 2512747);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1413, 'Riachão do Bacamarte', 'PB', 2512754);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1415, 'Riacho de Santo Antônio', 'PB', 2512788);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1416, 'Riacho dos Cavalos', 'PB', 2512804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1417, 'Rio Tinto', 'PB', 2512903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1423, 'Santa Inês', 'PB', 2513356);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1429, 'Santa Teresinha', 'PB', 2513802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1430, 'Santo André', 'PB', 2513851);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1431, 'São Bento', 'PB', 2513901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1433, 'São Domingos do Cariri', 'PB', 2513943);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1434, 'São Domingos', 'PB', 2513968);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1435, 'São Francisco', 'PB', 2513984);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1437, 'São João do Tigre', 'PB', 2514107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1439, 'São José de Caiana', 'PB', 2514305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1440, 'São José de Espinharas', 'PB', 2514404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1443, 'São José de Princesa', 'PB', 2514552);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1444, 'São José do Bonfim', 'PB', 2514602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1448, 'São Mamede', 'PB', 2514909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1451, 'São Sebastião do Umbuzeiro', 'PB', 2515203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1452, 'Sapé', 'PB', 2515302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1454, 'Serra Branca', 'PB', 2515500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1455, 'Serra da Raiz', 'PB', 2515609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1456, 'Serra Grande', 'PB', 2515708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1457, 'Serra Redonda', 'PB', 2515807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1458, 'Serraria', 'PB', 2515906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1460, 'Sobrado', 'PB', 2515971);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1462, 'Soledade', 'PB', 2516102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1467, 'Taperoá', 'PB', 2516508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1468, 'Tavares', 'PB', 2516607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1469, 'Teixeira', 'PB', 2516706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1471, 'Triunfo', 'PB', 2516805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1472, 'Uiraúna', 'PB', 2516904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1475, 'Vieirópolis', 'PB', 2517209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1477, 'Abreu e Lima', 'PE', 2600054);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1480, 'Agrestina', 'PE', 2600302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1483, 'Alagoinha', 'PE', 2600609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1484, 'Aliança', 'PE', 2600708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1485, 'Altinho', 'PE', 2600807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1486, 'Amaraji', 'PE', 2600906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1490, 'Arcoverde', 'PE', 2601201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1491, 'Barra de Guabiraba', 'PE', 2601300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1495, 'Belo Jardim', 'PE', 2601706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1496, 'Betânia', 'PE', 2601805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1497, 'Bezerros', 'PE', 2601904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1500, 'Bom Jardim', 'PE', 2602209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1502, 'Brejão', 'PE', 2602407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1506, 'Buíque', 'PE', 2602803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1508, 'Cabrobó', 'PE', 2603009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1512, 'Calumbi', 'PE', 2603405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1515, 'Camutanga', 'PE', 2603603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1516, 'Canhotinho', 'PE', 2603702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1517, 'Capoeiras', 'PE', 2603801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1518, 'Carnaíba', 'PE', 2603900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1520, 'Carpina', 'PE', 2604007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1521, 'Caruaru', 'PE', 2604106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1522, 'Casinhas', 'PE', 2604155);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1524, 'Cedro', 'PE', 2604304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1525, 'Chã de Alegria', 'PE', 2604403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1527, 'Condado', 'PE', 2604601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1529, 'Cortês', 'PE', 2604809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1530, 'Cumaru', 'PE', 2604908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1531, 'Cupira', 'PE', 2605004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1534, 'Escada', 'PE', 2605202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1536, 'Feira Nova', 'PE', 2605400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1537, 'Fernando de Noronha', 'PE', 2605459);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1539, 'Flores', 'PE', 2605608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1545, 'Goiana', 'PE', 2606200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1546, 'Granito', 'PE', 2606309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1548, 'Iati', 'PE', 2606507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1551, 'Igarassu', 'PE', 2606804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1552, 'Iguaraci', 'PE', 2606903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1554, 'Ingazeira', 'PE', 2607109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1556, 'Ipubi', 'PE', 2607307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1557, 'Itacuruba', 'PE', 2607406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1559, 'Ilha de Itamaracá', 'PE', 2607604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1562, 'Itapissuma', 'PE', 2607752);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1563, 'Itaquitinga', 'PE', 2607802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1566, 'Jataúba', 'PE', 2608008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1570, 'Jucati', 'PE', 2608255);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1571, 'Jupi', 'PE', 2608305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1575, 'Lagoa do Ouro', 'PE', 2608602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1580, 'Macaparana', 'PE', 2609006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1581, 'Machados', 'PE', 2609105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1582, 'Manari', 'PE', 2609154);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1583, 'Maraial', 'PE', 2609204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1584, 'Mirandiba', 'PE', 2609303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1585, 'Moreno', 'PE', 2609402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1587, 'Olinda', 'PE', 2609600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1590, 'Ouricuri', 'PE', 2609907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1591, 'Palmares', 'PE', 2610004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1592, 'Palmeirina', 'PE', 2610103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1594, 'Paranatama', 'PE', 2610301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1595, 'Parnamirim', 'PE', 2610400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1596, 'Passira', 'PE', 2610509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1598, 'Paulista', 'PE', 2610707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1600, 'Pesqueira', 'PE', 2610905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1602, 'Petrolina', 'PE', 2611101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1603, 'Poção', 'PE', 2611200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1604, 'Pombos', 'PE', 2611309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1606, 'Quipapá', 'PE', 2611507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1608, 'Recife', 'PE', 2611606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1609, 'Riacho das Almas', 'PE', 2611705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1612, 'Sairé', 'PE', 2612000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1613, 'Salgadinho', 'PE', 2612109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1616, 'Sanharó', 'PE', 2612406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1618, 'Santa Cruz da Baixa Verde', 'PE', 2612471);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1619, 'Santa Cruz do Capibaribe', 'PE', 2612505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1621, 'Santa Maria da Boa Vista', 'PE', 2612604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1622, 'Santa Maria do Cambucá', 'PE', 2612703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1626, 'São Caitano', 'PE', 2613107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1627, 'São João', 'PE', 2613206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1629, 'São José da Coroa Grande', 'PE', 2613404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1631, 'São José do Egito', 'PE', 2613602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1632, 'São Lourenço da Mata', 'PE', 2613701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1633, 'São Vicente Ferrer', 'PE', 2613800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1635, 'Serrita', 'PE', 2614006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1637, 'Sirinhaém', 'PE', 2614204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1638, 'Moreilândia', 'PE', 2614303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1640, 'Surubim', 'PE', 2614501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1643, 'Tacaratu', 'PE', 2614808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1646, 'Terezinha', 'PE', 2615102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1647, 'Terra Nova', 'PE', 2615201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1649, 'Toritama', 'PE', 2615409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1651, 'Trindade', 'PE', 2615607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1652, 'Triunfo', 'PE', 2615706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1653, 'Tupanatinga', 'PE', 2615805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1655, 'Venturosa', 'PE', 2616001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1656, 'Verdejante', 'PE', 2616100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1657, 'Vertente do Lério', 'PE', 2616183);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1659, 'Vicência', 'PE', 2616308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1662, 'Água Branca', 'AL', 2700102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1664, 'Arapiraca', 'AL', 2700300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1666, 'Barra de Santo Antônio', 'AL', 2700508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1667, 'Barra de São Miguel', 'AL', 2700607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1668, 'Batalha', 'AL', 2700706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1669, 'Belém', 'AL', 2700805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1670, 'Belo Monte', 'AL', 2700904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1675, 'Campestre', 'AL', 2701357);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1678, 'Canapi', 'AL', 2701605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1679, 'Capela', 'AL', 2701704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1681, 'Chã Preta', 'AL', 2701902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1685, 'Coruripe', 'AL', 2702306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1688, 'Dois Riachos', 'AL', 2702504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1691, 'Feliz Deserto', 'AL', 2702702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1696, 'Igreja Nova', 'AL', 2703205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1697, 'Inhapi', 'AL', 2703304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1702, 'Jequiá da Praia', 'AL', 2703759);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1703, 'Joaquim Gomes', 'AL', 2703809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1704, 'Jundiá', 'AL', 2703908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1707, 'Limoeiro de Anadia', 'AL', 2704203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1708, 'Maceió', 'AL', 2704302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1711, 'Maravilha', 'AL', 2704609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1712, 'Marechal Deodoro', 'AL', 2704708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1714, 'Mar Vermelho', 'AL', 2704906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1715, 'Mata Grande', 'AL', 2705002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1716, 'Matriz de Camaragibe', 'AL', 2705101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1717, 'Messias', 'AL', 2705200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1718, 'Minador do Negrão', 'AL', 2705309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1720, 'Murici', 'AL', 2705507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1721, 'Novo Lino', 'AL', 2705606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1722, 'Olho D''Água das Flores', 'AL', 2705705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1724, 'Olho D''Água Grande', 'AL', 2705903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1725, 'Olivença', 'AL', 2706000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1728, 'Palmeira dos Índios', 'AL', 2706307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1730, 'Pariconha', 'AL', 2706422);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1733, 'Paulo Jacinto', 'AL', 2706604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1734, 'Penedo', 'AL', 2706703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1736, 'Pilar', 'AL', 2706901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1739, 'Poço das Trincheiras', 'AL', 2707206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1741, 'Porto de Pedras', 'AL', 2707404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1744, 'Rio Largo', 'AL', 2707701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1747, 'Santana do Ipanema', 'AL', 2708006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1750, 'São José da Laje', 'AL', 2708303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1754, 'São Miguel dos Milagres', 'AL', 2708709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1756, 'Satuba', 'AL', 2708907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1757, 'Senador Rui Palmeira', 'AL', 2708956);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1759, 'Taquarana', 'AL', 2709103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1763, 'Viçosa', 'AL', 2709400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1765, 'Aquidabã', 'SE', 2800209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1766, 'Aracaju', 'SE', 2800308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1767, 'Arauá', 'SE', 2800407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1772, 'Campo do Brito', 'SE', 2801009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1774, 'Canindé de São Francisco', 'SE', 2801207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1775, 'Capela', 'SE', 2801306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1781, 'Divina Pastora', 'SE', 2802007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1782, 'Estância', 'SE', 2802106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1783, 'Feira Nova', 'SE', 2802205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1784, 'Frei Paulo', 'SE', 2802304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1786, 'General Maynard', 'SE', 2802502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1787, 'Gracho Cardoso', 'SE', 2802601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1788, 'Ilha das Flores', 'SE', 2802700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1790, 'Itabaiana', 'SE', 2802908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1795, 'Japoatã', 'SE', 2803401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1798, 'Macambira', 'SE', 2803708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1799, 'Malhada dos Bois', 'SE', 2803807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1801, 'Maruim', 'SE', 2804003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1805, 'Neópolis', 'SE', 2804409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1807, 'Nossa Senhora da Glória', 'SE', 2804508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1808, 'Nossa Senhora das Dores', 'SE', 2804607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1811, 'Pacatuba', 'SE', 2804904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1812, 'Pedra Mole', 'SE', 2805000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1813, 'Pedrinhas', 'SE', 2805109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1814, 'Pinhão', 'SE', 2805208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1817, 'Poço Verde', 'SE', 2805505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1824, 'Salgado', 'SE', 2806206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1826, 'Santana do São Francisco', 'SE', 2806404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1829, 'São Cristóvão', 'SE', 2806701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1831, 'São Francisco', 'SE', 2806909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1833, 'Simão Dias', 'SE', 2807105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1834, 'Siriri', 'SE', 2807204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1836, 'Tobias Barreto', 'SE', 2807402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1837, 'Tomar do Geru', 'SE', 2807501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1840, 'Abaré', 'BA', 2900207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1841, 'Acajutiba', 'BA', 2900306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1842, 'Adustina', 'BA', 2900355);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1843, 'Água Fria', 'BA', 2900405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1844, 'Érico Cardoso', 'BA', 2900504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1845, 'Aiquara', 'BA', 2900603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1847, 'Alcobaça', 'BA', 2900801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1848, 'Almadina', 'BA', 2900900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1852, 'Anagé', 'BA', 2901205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1854, 'Andorinha', 'BA', 2901353);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1860, 'Aporá', 'BA', 2901908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1861, 'Apuarema', 'BA', 2901957);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1865, 'Aramari', 'BA', 2902203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1869, 'Baianópolis', 'BA', 2902500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1873, 'Barra da Estiva', 'BA', 2902807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1875, 'Barra do Mendes', 'BA', 2903003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1876, 'Barra do Rocha', 'BA', 2903102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1879, 'Barrocas', 'BA', 2903276);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1881, 'Belmonte', 'BA', 2903409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1883, 'Biritinga', 'BA', 2903607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1884, 'Boa Nova', 'BA', 2903706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1887, 'Bom Jesus da Serra', 'BA', 2903953);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1891, 'Botuporã', 'BA', 2904209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1892, 'Brejões', 'BA', 2904308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1894, 'Brotas de Macaúbas', 'BA', 2904506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1895, 'Brumado', 'BA', 2904605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1896, 'Buerarema', 'BA', 2904704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1897, 'Buritirama', 'BA', 2904753);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1899, 'Cabaceiras do Paraguaçu', 'BA', 2904852);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1905, 'Cafarnaum', 'BA', 2905305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1908, 'Camacan', 'BA', 2905602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1909, 'Camaçari', 'BA', 2905701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1910, 'Camamu', 'BA', 2905800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1913, 'Canápolis', 'BA', 2906105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1916, 'Candeal', 'BA', 2906402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1917, 'Candeias', 'BA', 2906501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1919, 'Cândido Sales', 'BA', 2906709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1921, 'Canudos', 'BA', 2906824);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1923, 'Capim Grosso', 'BA', 2906873);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1924, 'Caraíbas', 'BA', 2906899);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1927, 'Carinhanha', 'BA', 2907103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1930, 'Catolândia', 'BA', 2907400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1931, 'Catu', 'BA', 2907509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1933, 'Central', 'BA', 2907608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1934, 'Chorrochó', 'BA', 2907707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1935, 'Cícero Dantas', 'BA', 2907806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1937, 'Coaraci', 'BA', 2908002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1940, 'Conceição do Almeida', 'BA', 2908309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1945, 'Contendas do Sincorá', 'BA', 2908804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1947, 'Cordeiros', 'BA', 2909000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1948, 'Coribe', 'BA', 2909109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1949, 'Coronel João Sá', 'BA', 2909208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1950, 'Correntina', 'BA', 2909307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1951, 'Cotegipe', 'BA', 2909406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1952, 'Cravolândia', 'BA', 2909505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1956, 'Curaçá', 'BA', 2909901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1957, 'Dário Meira', 'BA', 2910008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1958, 'Dias D''Ávila', 'BA', 2910057);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1959, 'Dom Basílio', 'BA', 2910107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1962, 'Encruzilhada', 'BA', 2910404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1964, 'Esplanada', 'BA', 2910602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1965, 'Euclides da Cunha', 'BA', 2910701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1967, 'Fátima', 'BA', 2910750);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1970, 'Filadélfia', 'BA', 2910859);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1971, 'Firmino Alves', 'BA', 2910909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1972, 'Floresta Azul', 'BA', 2911006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1975, 'Gavião', 'BA', 2911253);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1979, 'Governador Mangabeira', 'BA', 2911600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1980, 'Guajeru', 'BA', 2911659);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1981, 'Guanambi', 'BA', 2911709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1982, 'Guaratinga', 'BA', 2911808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1984, 'Iaçu', 'BA', 2911907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1985, 'Ibiassucê', 'BA', 2912004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1986, 'Ibicaraí', 'BA', 2912103);

--
-- Data for table public.cidade (OID = 46301) (LIMIT 1000,500)
--
INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1990, 'Ibipitanga', 'BA', 2912509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1993, 'Ibirapuã', 'BA', 2912806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1994, 'Ibirataia', 'BA', 2912905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1996, 'Ibititá', 'BA', 2913101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (1999, 'Igaporã', 'BA', 2913408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2002, 'Ilhéus', 'BA', 2913606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2003, 'Inhambupe', 'BA', 2913705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2005, 'Ipiaú', 'BA', 2913903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2011, 'Irará', 'BA', 2914505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2015, 'Itabuna', 'BA', 2914802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2017, 'Itaeté', 'BA', 2915007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2018, 'Itagi', 'BA', 2915106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2020, 'Itagimirim', 'BA', 2915304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2023, 'Itajuípe', 'BA', 2915502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2025, 'Itamari', 'BA', 2915700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2030, 'Itapé', 'BA', 2916203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2031, 'Itapebi', 'BA', 2916302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2033, 'Itapicuru', 'BA', 2916500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2035, 'Itaquara', 'BA', 2916708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2036, 'Itarantim', 'BA', 2916807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2038, 'Itiruçu', 'BA', 2916906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2040, 'Itororó', 'BA', 2917102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2041, 'Ituaçu', 'BA', 2917201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2042, 'Ituberá', 'BA', 2917300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2046, 'Jacobina', 'BA', 2917508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2047, 'Jaguaquara', 'BA', 2917607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2048, 'Jaguarari', 'BA', 2917706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2049, 'Jaguaripe', 'BA', 2917805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2050, 'Jandaíra', 'BA', 2917904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2053, 'Jiquiriçá', 'BA', 2918209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2054, 'Jitaúna', 'BA', 2918308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2055, 'João Dourado', 'BA', 2918357);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2057, 'Jucuruçu', 'BA', 2918456);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2061, 'Lafaiete Coutinho', 'BA', 2918704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2062, 'Lagoa Real', 'BA', 2918753);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2063, 'Laje', 'BA', 2918803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2064, 'Lajedão', 'BA', 2918902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2066, 'Lajedo do Tabocal', 'BA', 2919058);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2069, 'Lauro de Freitas', 'BA', 2919207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2071, 'Licínio de Almeida', 'BA', 2919405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2073, 'Luís Eduardo Magalhães', 'BA', 2919553);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2074, 'Macajuba', 'BA', 2919603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2079, 'Maetinga', 'BA', 2919959);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2081, 'Mairi', 'BA', 2920106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2082, 'Malhada', 'BA', 2920205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2083, 'Malhada de Pedras', 'BA', 2920304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2085, 'Mansidão', 'BA', 2920452);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2087, 'Maragogipe', 'BA', 2920601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2088, 'Maraú', 'BA', 2920700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2090, 'Mascote', 'BA', 2920908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2091, 'Mata de São João', 'BA', 2921005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2094, 'Miguel Calmon', 'BA', 2921203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2095, 'Milagres', 'BA', 2921302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2096, 'Mirangaba', 'BA', 2921401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2097, 'Mirante', 'BA', 2921450);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2100, 'Morro do Chapéu', 'BA', 2921708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2101, 'Mortugaba', 'BA', 2921807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2102, 'Mucugê', 'BA', 2921906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2103, 'Mucuri', 'BA', 2922003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2104, 'Mulungu do Morro', 'BA', 2922052);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2105, 'Mundo Novo', 'BA', 2922102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2107, 'Muquém de São Francisco', 'BA', 2922250);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2108, 'Muritiba', 'BA', 2922300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2109, 'Mutuípe', 'BA', 2922409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2111, 'Nilo Peçanha', 'BA', 2922607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2114, 'Nova Fátima', 'BA', 2922730);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2116, 'Nova Itarana', 'BA', 2922805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2117, 'Nova Redenção', 'BA', 2922854);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2121, 'Novo Triunfo', 'BA', 2923050);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2122, 'Olindina', 'BA', 2923100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2125, 'Ourolândia', 'BA', 2923357);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2126, 'Palmas de Monte Alto', 'BA', 2923407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2127, 'Palmeiras', 'BA', 2923506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2128, 'Paramirim', 'BA', 2923605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2130, 'Paripiranga', 'BA', 2923803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2131, 'Pau Brasil', 'BA', 2923902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2134, 'Pedrão', 'BA', 2924108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2135, 'Pedro Alexandre', 'BA', 2924207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2136, 'Piatã', 'BA', 2924306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2139, 'Pindobaçu', 'BA', 2924603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2140, 'Pintadas', 'BA', 2924652);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2142, 'Piripá', 'BA', 2924702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2144, 'Planaltino', 'BA', 2924900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2147, 'Pojuca', 'BA', 2925204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2149, 'Porto Seguro', 'BA', 2925303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2154, 'Presidente Tancredo Neves', 'BA', 2925758);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2157, 'Quixabeira', 'BA', 2925931);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2158, 'Rafael Jambeiro', 'BA', 2925956);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2159, 'Remanso', 'BA', 2926004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2161, 'Riachão das Neves', 'BA', 2926202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2162, 'Riachão do Jacuípe', 'BA', 2926301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2163, 'Riacho de Santana', 'BA', 2926400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2165, 'Ribeira do Pombal', 'BA', 2926608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2166, 'Ribeirão do Largo', 'BA', 2926657);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2168, 'Rio do Antônio', 'BA', 2926806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2169, 'Rio do Pires', 'BA', 2926905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2171, 'Rodelas', 'BA', 2927101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2173, 'Salinas da Margarida', 'BA', 2927309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2174, 'Salvador', 'BA', 2927408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2176, 'Santa Brígida', 'BA', 2927606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2177, 'Santa Cruz Cabrália', 'BA', 2927705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2178, 'Santa Cruz da Vitória', 'BA', 2927804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2181, 'Santa Luzia', 'BA', 2928059);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2184, 'Santanópolis', 'BA', 2928307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2185, 'Santa Rita de Cássia', 'BA', 2928406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2186, 'Santa Teresinha', 'BA', 2928505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2188, 'Santo Antônio de Jesus', 'BA', 2928703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2189, 'Santo Estêvão', 'BA', 2928802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2190, 'São Desidério', 'BA', 2928901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2194, 'São Felipe', 'BA', 2929107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2199, 'São José do Jacuípe', 'BA', 2929370);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2201, 'São Sebastião do Passé', 'BA', 2929503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2204, 'Saubara', 'BA', 2929750);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2205, 'Saúde', 'BA', 2929800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2206, 'Seabra', 'BA', 2929909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2207, 'Sebastião Laranjeiras', 'BA', 2930006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2209, 'Serra do Ramalho', 'BA', 2930154);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2212, 'Serra Preta', 'BA', 2930402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2214, 'Serrolândia', 'BA', 2930600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2216, 'Sítio do Mato', 'BA', 2930758);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2217, 'Sítio do Quinto', 'BA', 2930766);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2218, 'Sobradinho', 'BA', 2930774);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2221, 'Tanhaçu', 'BA', 2931004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2222, 'Tanque Novo', 'BA', 2931053);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2227, 'Teodoro Sampaio', 'BA', 2931400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2229, 'Teolândia', 'BA', 2931608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2230, 'Terra Nova', 'BA', 2931707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2231, 'Tremedal', 'BA', 2931806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2233, 'Uauá', 'BA', 2932002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2239, 'Una', 'BA', 2932507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2241, 'Uruçuca', 'BA', 2932705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2244, 'Valente', 'BA', 2933000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2245, 'Várzea da Roça', 'BA', 2933059);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2248, 'Varzedo', 'BA', 2933174);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2252, 'Wagner', 'BA', 2933406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2253, 'Wanderley', 'BA', 2933455);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2255, 'Xique-Xique', 'BA', 2933604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2256, 'Abadia dos Dourados', 'MG', 3100104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2259, 'Acaiaca', 'MG', 3100401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2262, 'Água Comprida', 'MG', 3100708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2263, 'Aguanil', 'MG', 3100807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2265, 'Águas Vermelhas', 'MG', 3101003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2268, 'Alagoa', 'MG', 3101300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2270, 'Além Paraíba', 'MG', 3101508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2271, 'Alfenas', 'MG', 3101607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2273, 'Almenara', 'MG', 3101706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2274, 'Alpercata', 'MG', 3101805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2276, 'Alterosa', 'MG', 3102001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2277, 'Alto Caparaó', 'MG', 3102050);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2279, 'Alvarenga', 'MG', 3102209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2281, 'Alvorada de Minas', 'MG', 3102407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2282, 'Amparo do Serra', 'MG', 3102506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2284, 'Cachoeira de Pajeú', 'MG', 3102704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2286, 'Angelândia', 'MG', 3102852);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2287, 'Antônio Carlos', 'MG', 3102902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2288, 'Antônio Dias', 'MG', 3103009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2289, 'Antônio Prado de Minas', 'MG', 3103108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2292, 'Araçuaí', 'MG', 3103405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2294, 'Arantina', 'MG', 3103603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2295, 'Araponga', 'MG', 3103702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2297, 'Arapuá', 'MG', 3103801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2300, 'Arceburgo', 'MG', 3104106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2303, 'Argirita', 'MG', 3104403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2305, 'Arinos', 'MG', 3104502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2307, 'Ataléia', 'MG', 3104700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2308, 'Augusto de Lima', 'MG', 3104809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2309, 'Baependi', 'MG', 3104908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2310, 'Baldim', 'MG', 3105004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2312, 'Bandeira', 'MG', 3105202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2313, 'Bandeira do Sul', 'MG', 3105301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2314, 'Barão de Cocais', 'MG', 3105400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2316, 'Barbacena', 'MG', 3105608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2317, 'Barra Longa', 'MG', 3105707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2320, 'Belmiro Braga', 'MG', 3106101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2321, 'Belo Horizonte', 'MG', 3106200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2322, 'Belo Oriente', 'MG', 3106309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2323, 'Belo Vale', 'MG', 3106408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2324, 'Berilo', 'MG', 3106507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2325, 'Bertópolis', 'MG', 3106606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2326, 'Berizal', 'MG', 3106655);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2330, 'Biquinhas', 'MG', 3107000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2332, 'Bocaina de Minas', 'MG', 3107208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2333, 'Bocaiúva', 'MG', 3107307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2334, 'Bom Despacho', 'MG', 3107406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2337, 'Bom Jesus do Amparo', 'MG', 3107703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2339, 'Bom Repouso', 'MG', 3107901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2341, 'Bonfim', 'MG', 3108107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2342, 'Bonfinópolis de Minas', 'MG', 3108206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2345, 'Botelhos', 'MG', 3108404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2349, 'Brás Pires', 'MG', 3108701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2350, 'Braúnas', 'MG', 3108800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2357, 'Buritizeiro', 'MG', 3109402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2360, 'Cachoeira da Prata', 'MG', 3109600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2364, 'Caeté', 'MG', 3110004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2365, 'Caiana', 'MG', 3110103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2367, 'Caldas', 'MG', 3110301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2368, 'Camacho', 'MG', 3110400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2372, 'Campanário', 'MG', 3110806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2374, 'Campestre', 'MG', 3111002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2375, 'Campina Verde', 'MG', 3111101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2376, 'Campo Azul', 'MG', 3111150);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2380, 'Campos Altos', 'MG', 3111507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2381, 'Campos Gerais', 'MG', 3111606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2382, 'Canaã', 'MG', 3111705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2384, 'Cana Verde', 'MG', 3111903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2387, 'Caparaó', 'MG', 3112109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2389, 'Capelinha', 'MG', 3112307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2390, 'Capetinga', 'MG', 3112406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2392, 'Capinópolis', 'MG', 3112604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2397, 'Caraí', 'MG', 3113008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2398, 'Caranaíba', 'MG', 3113107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2401, 'Caratinga', 'MG', 3113404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2403, 'Careaçu', 'MG', 3113602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2406, 'Carmo da Cachoeira', 'MG', 3113909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2407, 'Carmo da Mata', 'MG', 3114006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2408, 'Carmo de Minas', 'MG', 3114105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2409, 'Carmo do Cajuru', 'MG', 3114204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2411, 'Carmo do Rio Claro', 'MG', 3114402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2414, 'Carrancas', 'MG', 3114600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2415, 'Carvalhópolis', 'MG', 3114709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2418, 'Cascalho Rico', 'MG', 3115003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2419, 'Cássia', 'MG', 3115102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2422, 'Catas Altas', 'MG', 3115359);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2423, 'Catas Altas da Noruega', 'MG', 3115409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2426, 'Caxambu', 'MG', 3115508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2428, 'Central de Minas', 'MG', 3115706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2430, 'Chácara', 'MG', 3115904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2432, 'Chapada do Norte', 'MG', 3116100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2439, 'Coimbra', 'MG', 3116704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2440, 'Coluna', 'MG', 3116803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2441, 'Comendador Gomes', 'MG', 3116902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2444, 'Conceição das Pedras', 'MG', 3117207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2445, 'Conceição das Alagoas', 'MG', 3117306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2446, 'Conceição de Ipanema', 'MG', 3117405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2447, 'Conceição do Mato Dentro', 'MG', 3117504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2449, 'Conceição do Rio Verde', 'MG', 3117702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2451, 'Cônego Marinho', 'MG', 3117836);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2453, 'Congonhal', 'MG', 3117900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2454, 'Congonhas', 'MG', 3118007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2455, 'Congonhas do Norte', 'MG', 3118106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2456, 'Conquista', 'MG', 3118205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2458, 'Conselheiro Pena', 'MG', 3118403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2463, 'Cordisburgo', 'MG', 3118908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2464, 'Cordislândia', 'MG', 3119005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2468, 'Coronel Fabriciano', 'MG', 3119401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2470, 'Coronel Pacheco', 'MG', 3119609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2471, 'Coronel Xavier Chaves', 'MG', 3119708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2473, 'Córrego do Bom Jesus', 'MG', 3119906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2474, 'Córrego Fundo', 'MG', 3119955);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2475, 'Córrego Novo', 'MG', 3120003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2477, 'Crisólita', 'MG', 3120151);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2479, 'Cristália', 'MG', 3120300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2480, 'Cristiano Otoni', 'MG', 3120409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2481, 'Cristina', 'MG', 3120508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2482, 'Crucilândia', 'MG', 3120607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2484, 'Cruzília', 'MG', 3120805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2486, 'Curral de Dentro', 'MG', 3120870);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2488, 'Datas', 'MG', 3121001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2492, 'Descoberto', 'MG', 3121308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2494, 'Desterro do Melo', 'MG', 3121506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2498, 'Divinésia', 'MG', 3121902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2499, 'Divino', 'MG', 3122009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2502, 'Divinópolis', 'MG', 3122306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2503, 'Divisa Alegre', 'MG', 3122355);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2506, 'Dom Bosco', 'MG', 3122470);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2508, 'Dom Joaquim', 'MG', 3122603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2509, 'Dom Silvério', 'MG', 3122702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2510, 'Dom Viçoso', 'MG', 3122801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2511, 'Dona Eusébia', 'MG', 3122900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2512, 'Dores de Campos', 'MG', 3123007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2513, 'Dores de Guanhães', 'MG', 3123106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2514, 'Dores do Indaiá', 'MG', 3123205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2515, 'Dores do Turvo', 'MG', 3123304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2516, 'Doresópolis', 'MG', 3123403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2519, 'Elói Mendes', 'MG', 3123601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2521, 'Engenheiro Navarro', 'MG', 3123809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2523, 'Entre Rios de Minas', 'MG', 3123908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2524, 'Ervália', 'MG', 3124005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2528, 'Espírito Santo do Dourado', 'MG', 3124401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2529, 'Estiva', 'MG', 3124500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2530, 'Estrela Dalva', 'MG', 3124609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2534, 'Ewbank da Câmara', 'MG', 3125002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2536, 'Fama', 'MG', 3125200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2537, 'Faria Lemos', 'MG', 3125309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2538, 'Felício dos Santos', 'MG', 3125408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2539, 'São Gonçalo do Rio Preto', 'MG', 3125507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2542, 'Fernandes Tourinho', 'MG', 3125804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2543, 'Ferros', 'MG', 3125903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2544, 'Fervedouro', 'MG', 3125952);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2546, 'Formiga', 'MG', 3126109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2549, 'Fortuna de Minas', 'MG', 3126406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2551, 'Francisco Dumont', 'MG', 3126604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2552, 'Francisco Sá', 'MG', 3126703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2554, 'Frei Gaspar', 'MG', 3126802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2556, 'Frei Lagonegro', 'MG', 3126950);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2557, 'Fronteira', 'MG', 3127008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2560, 'Frutal', 'MG', 3127107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2563, 'Gameleiras', 'MG', 3127339);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2565, 'Goiabeira', 'MG', 3127370);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2566, 'Goianá', 'MG', 3127388);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2568, 'Gonzaga', 'MG', 3127503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2569, 'Gouveia', 'MG', 3127602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2571, 'Grão Mogol', 'MG', 3127800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2574, 'Guapé', 'MG', 3128105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2576, 'Guaraciama', 'MG', 3128253);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2577, 'Guaranésia', 'MG', 3128303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2580, 'Guarda-Mor', 'MG', 3128600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2582, 'Guidoval', 'MG', 3128808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2586, 'Heliodora', 'MG', 3129202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2588, 'Ibertioga', 'MG', 3129400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2590, 'Ibiaí', 'MG', 3129608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2591, 'Ibiracatu', 'MG', 3129657);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2595, 'Ibituruna', 'MG', 3130002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2596, 'Icaraí de Minas', 'MG', 3130051);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2597, 'Igarapé', 'MG', 3130101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2598, 'Igaratinga', 'MG', 3130200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2599, 'Iguatama', 'MG', 3130309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2601, 'Ilicínea', 'MG', 3130507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2602, 'Imbé de Minas', 'MG', 3130556);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2603, 'Inconfidentes', 'MG', 3130606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2604, 'Indaiabira', 'MG', 3130655);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2607, 'Inhapim', 'MG', 3130903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2608, 'Inhaúma', 'MG', 3131000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2609, 'Inimutaba', 'MG', 3131109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2613, 'Ipiaçu', 'MG', 3131406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2615, 'Iraí de Minas', 'MG', 3131604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2616, 'Itabira', 'MG', 3131703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2617, 'Itabirinha', 'MG', 3131802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2618, 'Itabirito', 'MG', 3131901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2619, 'Itacambira', 'MG', 3132008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2620, 'Itacarambi', 'MG', 3132107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2621, 'Itaguara', 'MG', 3132206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2622, 'Itaipé', 'MG', 3132305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2624, 'Itamarandiba', 'MG', 3132503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2625, 'Itamarati de Minas', 'MG', 3132602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2627, 'Itambé do Mato Dentro', 'MG', 3132800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2630, 'Itanhandu', 'MG', 3133105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2634, 'Itapecerica', 'MG', 3133501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2636, 'Itatiaiuçu', 'MG', 3133709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2637, 'Itaú de Minas', 'MG', 3133758);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2638, 'Itaúna', 'MG', 3133808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2639, 'Itaverava', 'MG', 3133907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2641, 'Itueta', 'MG', 3134103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2642, 'Ituiutaba', 'MG', 3134202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2643, 'Itumirim', 'MG', 3134301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2644, 'Iturama', 'MG', 3134400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2645, 'Itutinga', 'MG', 3134509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2648, 'Jacuí', 'MG', 3134806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2651, 'Jaíba', 'MG', 3135050);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2652, 'Jampruca', 'MG', 3135076);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2655, 'Japaraíba', 'MG', 3135308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2656, 'Japonvar', 'MG', 3135357);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2659, 'Jequeri', 'MG', 3135506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2662, 'Jequitinhonha', 'MG', 3135803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2663, 'Jesuânia', 'MG', 3135902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2664, 'Joaíma', 'MG', 3136009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2665, 'Joanésia', 'MG', 3136108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2666, 'João Monlevade', 'MG', 3136207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2674, 'Juatuba', 'MG', 3136652);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2676, 'Juramento', 'MG', 3136801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2679, 'Ladainha', 'MG', 3137007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2680, 'Lagamar', 'MG', 3137106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2681, 'Lagoa da Prata', 'MG', 3137205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2682, 'Lagoa dos Patos', 'MG', 3137304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2683, 'Lagoa Dourada', 'MG', 3137403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2685, 'Lagoa Grande', 'MG', 3137536);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2686, 'Lagoa Santa', 'MG', 3137601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2687, 'Lajinha', 'MG', 3137700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2689, 'Lamim', 'MG', 3137908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2691, 'Lassance', 'MG', 3138104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2694, 'Leme do Prado', 'MG', 3138351);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2695, 'Leopoldina', 'MG', 3138401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2696, 'Liberdade', 'MG', 3138500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2697, 'Lima Duarte', 'MG', 3138609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2698, 'Limeira do Oeste', 'MG', 3138625);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2699, 'Lontra', 'MG', 3138658);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2700, 'Luisburgo', 'MG', 3138674);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2701, 'Luislândia', 'MG', 3138682);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2706, 'Madre de Deus de Minas', 'MG', 3139102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2707, 'Malacacheta', 'MG', 3139201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2708, 'Mamonas', 'MG', 3139250);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2709, 'Manga', 'MG', 3139300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2714, 'Mar de Espanha', 'MG', 3139805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2717, 'Marilac', 'MG', 3140100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2721, 'Marmelópolis', 'MG', 3140407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2723, 'Martins Soares', 'MG', 3140530);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2725, 'Materlândia', 'MG', 3140605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2727, 'Matias Barbosa', 'MG', 3140803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2728, 'Matias Cardoso', 'MG', 3140852);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2729, 'Matipó', 'MG', 3140902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2730, 'Mato Verde', 'MG', 3141009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2732, 'Matutina', 'MG', 3141207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2733, 'Medeiros', 'MG', 3141306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2736, 'Mercês', 'MG', 3141603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2737, 'Mesquita', 'MG', 3141702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2740, 'Mirabela', 'MG', 3142007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2743, 'Miravânia', 'MG', 3142254);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2744, 'Moeda', 'MG', 3142304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2745, 'Moema', 'MG', 3142403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2746, 'Monjolos', 'MG', 3142502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2747, 'Monsenhor Paulo', 'MG', 3142601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2748, 'Montalvânia', 'MG', 3142700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2750, 'Monte Azul', 'MG', 3142908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2753, 'Monte Formoso', 'MG', 3143153);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2754, 'Monte Santo de Minas', 'MG', 3143203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2755, 'Montes Claros', 'MG', 3143302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2756, 'Monte Sião', 'MG', 3143401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2760, 'Morro do Pilar', 'MG', 3143708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2761, 'Munhoz', 'MG', 3143807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2762, 'Muriaé', 'MG', 3143906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2765, 'Nacip Raydan', 'MG', 3144201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2766, 'Nanuque', 'MG', 3144300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2768, 'Natalândia', 'MG', 3144375);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2769, 'Natércia', 'MG', 3144409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2771, 'Nepomuceno', 'MG', 3144607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2774, 'Nova Era', 'MG', 3144706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2776, 'Nova Módica', 'MG', 3144904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2778, 'Nova Porteirinha', 'MG', 3145059);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2779, 'Nova Resende', 'MG', 3145109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2782, 'Novo Oriente de Minas', 'MG', 3145356);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2783, 'Novorizonte', 'MG', 3145372);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2784, 'Olaria', 'MG', 3145406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2785, 'Olhos-D''Água', 'MG', 3145455);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2788, 'Oliveira Fortes', 'MG', 3145703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2789, 'Onça de Pitangui', 'MG', 3145802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2792, 'Ouro Branco', 'MG', 3145901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2797, 'Padre Paraíso', 'MG', 3146305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2799, 'Pains', 'MG', 3146503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2800, 'Pai Pedro', 'MG', 3146552);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2801, 'Paiva', 'MG', 3146602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2805, 'Paracatu', 'MG', 3147006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2808, 'Paraisópolis', 'MG', 3147303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2810, 'Passabém', 'MG', 3147501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2811, 'Passa Quatro', 'MG', 3147600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2812, 'Passa Tempo', 'MG', 3147709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2813, 'Passa-Vinte', 'MG', 3147808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2815, 'Patis', 'MG', 3147956);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2816, 'Patos de Minas', 'MG', 3148004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2817, 'Patrocínio', 'MG', 3148103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2818, 'Patrocínio do Muriaé', 'MG', 3148202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2819, 'Paula Cândido', 'MG', 3148301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2822, 'Peçanha', 'MG', 3148608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2823, 'Pedra Azul', 'MG', 3148707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2824, 'Pedra Bonita', 'MG', 3148756);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2826, 'Pedra do Indaiá', 'MG', 3148905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2829, 'Pedras de Maria da Cruz', 'MG', 3149150);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2831, 'Pedro Leopoldo', 'MG', 3149309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2832, 'Pedro Teixeira', 'MG', 3149408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2833, 'Pequeri', 'MG', 3149507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2836, 'Perdizes', 'MG', 3149804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2837, 'Perdões', 'MG', 3149903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2838, 'Periquito', 'MG', 3149952);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2841, 'Piedade de Caratinga', 'MG', 3150158);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2843, 'Piedade do Rio Grande', 'MG', 3150307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2846, 'Pingo-D''Água', 'MG', 3150539);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2847, 'Pintópolis', 'MG', 3150570);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2848, 'Piracema', 'MG', 3150604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2851, 'Piranguçu', 'MG', 3150901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2852, 'Piranguinho', 'MG', 3151008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2854, 'Pirapora', 'MG', 3151206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2856, 'Pitangui', 'MG', 3151404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2861, 'Pocrane', 'MG', 3151909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2866, 'Porteirinha', 'MG', 3152204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2868, 'Poté', 'MG', 3152402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2869, 'Pouso Alegre', 'MG', 3152501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2870, 'Pouso Alto', 'MG', 3152600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2874, 'Pratinha', 'MG', 3153004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2876, 'Presidente Juscelino', 'MG', 3153202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2877, 'Presidente Kubitschek', 'MG', 3153301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2878, 'Presidente Olegário', 'MG', 3153400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2879, 'Alto Jequitibá', 'MG', 3153509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2880, 'Prudente de Morais', 'MG', 3153608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2881, 'Quartel Geral', 'MG', 3153707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2883, 'Raposos', 'MG', 3153905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2887, 'Resende Costa', 'MG', 3154200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2889, 'Ressaquinha', 'MG', 3154408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2890, 'Riachinho', 'MG', 3154457);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2895, 'Rio Casca', 'MG', 3154903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2896, 'Rio Doce', 'MG', 3155009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2897, 'Rio do Prado', 'MG', 3155108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2900, 'Rio Novo', 'MG', 3155405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2902, 'Rio Pardo de Minas', 'MG', 3155603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2904, 'Rio Pomba', 'MG', 3155801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2905, 'Rio Preto', 'MG', 3155900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2909, 'Rodeiro', 'MG', 3156304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2912, 'Rubelita', 'MG', 3156502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2914, 'Sabará', 'MG', 3156700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2915, 'Sabinópolis', 'MG', 3156809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2916, 'Sacramento', 'MG', 3156908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2917, 'Salinas', 'MG', 3157005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2920, 'Santa Bárbara do Leste', 'MG', 3157252);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2921, 'Santa Bárbara do Monte Verde', 'MG', 3157278);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2923, 'Santa Cruz de Minas', 'MG', 3157336);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2926, 'Santa Efigênia de Minas', 'MG', 3157500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2927, 'Santa Fé de Minas', 'MG', 3157609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2935, 'Santana da Vargem', 'MG', 3158300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2938, 'Santana do Deserto', 'MG', 3158607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2939, 'Santana do Garambéu', 'MG', 3158706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2940, 'Santana do Jacaré', 'MG', 3158805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2941, 'Santana do Manhuaçu', 'MG', 3158904);

--
-- Data for table public.cidade (OID = 46301) (LIMIT 1500,500)
--
INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2944, 'Santana dos Montes', 'MG', 3159100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2947, 'Santa Rita de Minas', 'MG', 3159357);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2949, 'Santa Rita do Itueto', 'MG', 3159506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2950, 'Santa Rita do Sapucaí', 'MG', 3159605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2951, 'Santa Rosa da Serra', 'MG', 3159704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2952, 'Santa Vitória', 'MG', 3159803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2953, 'Santo Antônio do Amparo', 'MG', 3159902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2954, 'Santo Antônio do Aventureiro', 'MG', 3160009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2957, 'Santo Antônio do Jacinto', 'MG', 3160306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2959, 'Santo Antônio do Retiro', 'MG', 3160454);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2960, 'Santo Antônio do Rio Abaixo', 'MG', 3160504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2961, 'Santo Hipólito', 'MG', 3160603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2964, 'São Brás do Suaçuí', 'MG', 3160900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2966, 'São Domingos do Prata', 'MG', 3161007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2969, 'São Francisco de Paula', 'MG', 3161205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2970, 'São Francisco de Sales', 'MG', 3161304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2971, 'São Francisco do Glória', 'MG', 3161403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2972, 'São Geraldo', 'MG', 3161502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2976, 'São Gonçalo do Pará', 'MG', 3161809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2978, 'São Gonçalo do Sapucaí', 'MG', 3162005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2979, 'São Gotardo', 'MG', 3162104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2987, 'São João do Manteninha', 'MG', 3162575);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2989, 'São João do Pacuí', 'MG', 3162658);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2993, 'São Joaquim de Bicas', 'MG', 3162922);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2996, 'São José da Safira', 'MG', 3163003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (2997, 'São José da Varginha', 'MG', 3163102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3000, 'São José do Goiabal', 'MG', 3163409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3001, 'São José do Jacuri', 'MG', 3163508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3003, 'São Lourenço', 'MG', 3163706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3005, 'São Pedro da União', 'MG', 3163904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3009, 'São Roque de Minas', 'MG', 3164308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3011, 'São Sebastião da Vargem Alegre', 'MG', 3164431);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3012, 'São Sebastião do Anta', 'MG', 3164472);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3016, 'São Sebastião do Rio Preto', 'MG', 3164803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3018, 'São Tiago', 'MG', 3165008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3019, 'São Tomás de Aquino', 'MG', 3165107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3021, 'São Vicente de Minas', 'MG', 3165305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3022, 'Sapucaí-Mirim', 'MG', 3165404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3023, 'Sardoá', 'MG', 3165503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3024, 'Sarzedo', 'MG', 3165537);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3026, 'Sem-Peixe', 'MG', 3165560);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3028, 'Senador Cortes', 'MG', 3165602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3029, 'Senador Firmino', 'MG', 3165701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3034, 'Senhora dos Remédios', 'MG', 3166204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3035, 'Sericita', 'MG', 3166303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3038, 'Serra da Saudade', 'MG', 3166600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3039, 'Serra dos Aimorés', 'MG', 3166709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3042, 'Serranópolis de Minas', 'MG', 3166956);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3044, 'Serro', 'MG', 3167103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3045, 'Sete Lagoas', 'MG', 3167202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3049, 'Simonésia', 'MG', 3167608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3051, 'Soledade de Minas', 'MG', 3167806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3052, 'Tabuleiro', 'MG', 3167905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3054, 'Taparuba', 'MG', 3168051);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3056, 'Tapiraí', 'MG', 3168200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3057, 'Taquaraçu de Minas', 'MG', 3168309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3058, 'Tarumirim', 'MG', 3168408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3059, 'Teixeiras', 'MG', 3168507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3061, 'Timóteo', 'MG', 3168705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3062, 'Tiradentes', 'MG', 3168804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3063, 'Tiros', 'MG', 3168903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3066, 'Toledo', 'MG', 3169109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3067, 'Tombos', 'MG', 3169208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3068, 'Três Corações', 'MG', 3169307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3074, 'Turvolândia', 'MG', 3169802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3078, 'Uberaba', 'MG', 3170107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3080, 'Umburatiba', 'MG', 3170305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3081, 'Unaí', 'MG', 3170404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3083, 'Uruana de Minas', 'MG', 3170479);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3086, 'Vargem Alegre', 'MG', 3170578);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3088, 'Vargem Grande do Rio Pardo', 'MG', 3170651);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3093, 'Vazante', 'MG', 3171006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3094, 'Verdelândia', 'MG', 3171030);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3095, 'Veredinha', 'MG', 3171071);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3097, 'Vermelho Novo', 'MG', 3171154);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3099, 'Viçosa', 'MG', 3171303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3101, 'Mathias Lobato', 'MG', 3171501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3104, 'Virginópolis', 'MG', 3171808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3107, 'Volta Grande', 'MG', 3172103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3108, 'Wenceslau Braz', 'MG', 3172202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3110, 'Águia Branca', 'ES', 3200136);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3111, 'Água Doce do Norte', 'ES', 3200169);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3112, 'Alegre', 'ES', 3200201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3113, 'Alfredo Chaves', 'ES', 3200300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3115, 'Anchieta', 'ES', 3200409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3116, 'Apiacá', 'ES', 3200508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3117, 'Aracruz', 'ES', 3200607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3118, 'Atilio Vivacqua', 'ES', 3200706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3120, 'Barra de São Francisco', 'ES', 3200904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3122, 'Bom Jesus do Norte', 'ES', 3201100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3123, 'Brejetuba', 'ES', 3201159);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3125, 'Cariacica', 'ES', 3201308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3127, 'Colatina', 'ES', 3201506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3128, 'Conceição da Barra', 'ES', 3201605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3131, 'Domingos Martins', 'ES', 3201902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3137, 'Guarapari', 'ES', 3202405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3138, 'Ibatiba', 'ES', 3202454);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3142, 'Irupi', 'ES', 3202652);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3144, 'Itapemirim', 'ES', 3202801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3145, 'Itarana', 'ES', 3202900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3146, 'Iúna', 'ES', 3203007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3148, 'Jerônimo Monteiro', 'ES', 3203106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3150, 'Laranja da Terra', 'ES', 3203163);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3152, 'Mantenópolis', 'ES', 3203304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3153, 'Marataízes', 'ES', 3203320);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3159, 'Muniz Freire', 'ES', 3203700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3160, 'Muqui', 'ES', 3203809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3163, 'Pedro Canário', 'ES', 3204054);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3165, 'Piúma', 'ES', 3204203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3166, 'Ponto Belo', 'ES', 3204252);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3167, 'Presidente Kennedy', 'ES', 3204302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3170, 'Santa Leopoldina', 'ES', 3204500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3172, 'Santa Teresa', 'ES', 3204609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3173, 'São Domingos do Norte', 'ES', 3204658);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3174, 'São Gabriel da Palha', 'ES', 3204708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3175, 'São José do Calçado', 'ES', 3204807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3176, 'São Mateus', 'ES', 3204906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3177, 'São Roque do Canaã', 'ES', 3204955);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3178, 'Serra', 'ES', 3205002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3180, 'Vargem Alta', 'ES', 3205036);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3183, 'Vila Pavão', 'ES', 3205150);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3189, 'Araruama', 'RJ', 3300209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3190, 'Areal', 'RJ', 3300225);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3194, 'Barra Mansa', 'RJ', 3300407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3198, 'Cabo Frio', 'RJ', 3300704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3199, 'Cachoeiras de Macacu', 'RJ', 3300803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3200, 'Cambuci', 'RJ', 3300902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3201, 'Carapebus', 'RJ', 3300936);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3205, 'Cardoso Moreira', 'RJ', 3301157);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3212, 'Engenheiro Paulo de Frontin', 'RJ', 3301801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3214, 'Iguaba Grande', 'RJ', 3301876);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3218, 'Itaocara', 'RJ', 3302106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3220, 'Itatiaia', 'RJ', 3302254);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3222, 'Laje do Muriaé', 'RJ', 3302304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3227, 'Maricá', 'RJ', 3302700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3228, 'Mendes', 'RJ', 3302809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3229, 'Mesquita', 'RJ', 3302858);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3231, 'Miracema', 'RJ', 3303005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3232, 'Natividade', 'RJ', 3303104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3233, 'Nilópolis', 'RJ', 3303203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3236, 'Nova Iguaçu', 'RJ', 3303500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3237, 'Paracambi', 'RJ', 3303609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3241, 'Petrópolis', 'RJ', 3303906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3242, 'Pinheiral', 'RJ', 3303955);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3244, 'Porciúncula', 'RJ', 3304102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3245, 'Porto Real', 'RJ', 3304110);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3246, 'Quatis', 'RJ', 3304128);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3249, 'Resende', 'RJ', 3304201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3250, 'Rio Bonito', 'RJ', 3304300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3252, 'Rio das Flores', 'RJ', 3304508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3257, 'São Francisco de Itabapoana', 'RJ', 3304755);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3259, 'São Gonçalo', 'RJ', 3304904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3261, 'São João de Meriti', 'RJ', 3305109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3262, 'São José de Ubá', 'RJ', 3305133);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3263, 'São José do Vale do Rio Preto', 'RJ', 3305158);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3264, 'São Pedro da Aldeia', 'RJ', 3305208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3266, 'Sapucaia', 'RJ', 3305406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3267, 'Saquarema', 'RJ', 3305505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3268, 'Seropédica', 'RJ', 3305554);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3270, 'Sumidouro', 'RJ', 3305703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3272, 'Teresópolis', 'RJ', 3305802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3273, 'Trajano de Moraes', 'RJ', 3305901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3274, 'Três Rios', 'RJ', 3306008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3276, 'Varre-Sai', 'RJ', 3306156);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3277, 'Vassouras', 'RJ', 3306206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3278, 'Volta Redonda', 'RJ', 3306305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3281, 'Aguaí', 'SP', 3500303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3282, 'Águas da Prata', 'SP', 3500402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3283, 'Águas de Lindóia', 'SP', 3500501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3285, 'Águas de São Pedro', 'SP', 3500600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3286, 'Agudos', 'SP', 3500709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3287, 'Alambari', 'SP', 3500758);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3289, 'Altair', 'SP', 3500907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3291, 'Alto Alegre', 'SP', 3501103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3294, 'Álvares Machado', 'SP', 3501301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3299, 'Américo de Campos', 'SP', 3501806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3300, 'Amparo', 'SP', 3501905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3302, 'Andradina', 'SP', 3502101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3304, 'Anhembi', 'SP', 3502309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3305, 'Anhumas', 'SP', 3502408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3306, 'Aparecida', 'SP', 3502507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3308, 'Apiaí', 'SP', 3502705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3310, 'Araçatuba', 'SP', 3502804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3312, 'Aramina', 'SP', 3503000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3313, 'Arandu', 'SP', 3503109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3315, 'Araraquara', 'SP', 3503208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3316, 'Araras', 'SP', 3503307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3318, 'Arealva', 'SP', 3503406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3320, 'Areiópolis', 'SP', 3503604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3323, 'Arujá', 'SP', 3503901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3327, 'Auriflama', 'SP', 3504206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3329, 'Avanhandava', 'SP', 3504404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3334, 'Bananal', 'SP', 3504909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3338, 'Barra Bonita', 'SP', 3505302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3341, 'Barretos', 'SP', 3505500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3344, 'Bastos', 'SP', 3505807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3345, 'Batatais', 'SP', 3505906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3352, 'Birigui', 'SP', 3506508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3354, 'Boa Esperança do Sul', 'SP', 3506706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3356, 'Bofete', 'SP', 3506904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3358, 'Bom Jesus dos Perdões', 'SP', 3507100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3359, 'Bom Sucesso de Itararé', 'SP', 3507159);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3360, 'Borá', 'SP', 3507209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3361, 'Boracéia', 'SP', 3507308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3363, 'Borebi', 'SP', 3507456);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3365, 'Bragança Paulista', 'SP', 3507605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3367, 'Brejo Alegre', 'SP', 3507753);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3373, 'Cabrália Paulista', 'SP', 3508306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3374, 'Cabreúva', 'SP', 3508405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3375, 'Caçapava', 'SP', 3508504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3382, 'Cajamar', 'SP', 3509205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3383, 'Cajati', 'SP', 3509254);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3384, 'Cajobi', 'SP', 3509304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3387, 'Campinas', 'SP', 3509502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3389, 'Campos do Jordão', 'SP', 3509700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3391, 'Cananéia', 'SP', 3509908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3392, 'Canas', 'SP', 3509957);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3395, 'Canitar', 'SP', 3510153);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3396, 'Capão Bonito', 'SP', 3510203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3398, 'Capivari', 'SP', 3510401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3399, 'Caraguatatuba', 'SP', 3510500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3400, 'Carapicuíba', 'SP', 3510609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3401, 'Cardoso', 'SP', 3510708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3402, 'Casa Branca', 'SP', 3510807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3409, 'Cerquilho', 'SP', 3511508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3410, 'Cesário Lange', 'SP', 3511607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3411, 'Charqueada', 'SP', 3511706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3413, 'Colina', 'SP', 3512001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3420, 'Corumbataí', 'SP', 3512704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3421, 'Cosmópolis', 'SP', 3512803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3424, 'Cravinhos', 'SP', 3513108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3427, 'Cruzeiro', 'SP', 3513405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3431, 'Diadema', 'SP', 3513801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3432, 'Dirce Reis', 'SP', 3513850);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3433, 'Divinolândia', 'SP', 3513900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3434, 'Dobrada', 'SP', 3514007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3436, 'Dolcinópolis', 'SP', 3514205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3440, 'Dumont', 'SP', 3514601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3442, 'Eldorado', 'SP', 3514809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3443, 'Elias Fausto', 'SP', 3514908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3446, 'Embu das Artes', 'SP', 3515004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3447, 'Embu-Guaçu', 'SP', 3515103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3448, 'Emilianópolis', 'SP', 3515129);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3451, 'Espírito Santo do Turvo', 'SP', 3515194);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3453, 'Estrela do Norte', 'SP', 3515301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3455, 'Fartura', 'SP', 3515400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3459, 'Ferraz de Vasconcelos', 'SP', 3515707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3460, 'Flora Rica', 'SP', 3515806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3469, 'Garça', 'SP', 3516705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3470, 'Gastão Vidigal', 'SP', 3516804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3473, 'Getulina', 'SP', 3517000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3475, 'Guaiçara', 'SP', 3517208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3477, 'Guaíra', 'SP', 3517406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3479, 'Guapiara', 'SP', 3517604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3481, 'Guaraçaí', 'SP', 3517802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3484, 'Guarantã', 'SP', 3518107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3485, 'Guararapes', 'SP', 3518206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3487, 'Guaratinguetá', 'SP', 3518404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3491, 'Guarulhos', 'SP', 3518800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3497, 'Iacanga', 'SP', 3519105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3498, 'Iacri', 'SP', 3519204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3499, 'Iaras', 'SP', 3519253);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3505, 'Icém', 'SP', 3519808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3507, 'Igaraçu do Tietê', 'SP', 3520004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3509, 'Igaratá', 'SP', 3520202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3510, 'Iguape', 'SP', 3520301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3513, 'Ilha Solteira', 'SP', 3520442);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3514, 'Indaiatuba', 'SP', 3520509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3515, 'Indiana', 'SP', 3520608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3518, 'Ipaussu', 'SP', 3520905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3521, 'Ipiguá', 'SP', 3521150);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3522, 'Iporanga', 'SP', 3521200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3524, 'Iracemápolis', 'SP', 3521408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3525, 'Irapuã', 'SP', 3521507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3529, 'Itajobi', 'SP', 3521903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3531, 'Itanhaém', 'SP', 3522109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3532, 'Itaóca', 'SP', 3522158);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3536, 'Itapevi', 'SP', 3522505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3537, 'Itapira', 'SP', 3522604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3538, 'Itapirapuã Paulista', 'SP', 3522653);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3539, 'Itápolis', 'SP', 3522703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3541, 'Itapuí', 'SP', 3522901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3542, 'Itapura', 'SP', 3523008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3546, 'Itatiba', 'SP', 3523404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3547, 'Itatinga', 'SP', 3523503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3548, 'Itirapina', 'SP', 3523602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3549, 'Itirapuã', 'SP', 3523701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3555, 'Jaboticabal', 'SP', 3524303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3557, 'Jaci', 'SP', 3524501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3558, 'Jacupiranga', 'SP', 3524600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3559, 'Jaguariúna', 'SP', 3524709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3563, 'Jardinópolis', 'SP', 3525102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3564, 'Jarinu', 'SP', 3525201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3568, 'João Ramalho', 'SP', 3525607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3569, 'José Bonifácio', 'SP', 3525706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3572, 'Jundiaí', 'SP', 3525904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3573, 'Junqueirópolis', 'SP', 3526001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3574, 'Juquiá', 'SP', 3526100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3575, 'Juquitiba', 'SP', 3526209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3576, 'Lagoinha', 'SP', 3526308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3579, 'Lavrinhas', 'SP', 3526605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3580, 'Leme', 'SP', 3526704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3582, 'Limeira', 'SP', 3526902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3584, 'Lins', 'SP', 3527108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3587, 'Louveira', 'SP', 3527306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3588, 'Lucélia', 'SP', 3527405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3589, 'Lucianópolis', 'SP', 3527504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3590, 'Luís Antônio', 'SP', 3527603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3592, 'Lupércio', 'SP', 3527801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3593, 'Lutécia', 'SP', 3527900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3594, 'Macatuba', 'SP', 3528007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3598, 'Mairinque', 'SP', 3528403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3599, 'Mairiporã', 'SP', 3528502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3600, 'Manduri', 'SP', 3528601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3602, 'Maracaí', 'SP', 3528809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3605, 'Marília', 'SP', 3529005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3607, 'Martinópolis', 'SP', 3529203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3610, 'Mendonça', 'SP', 3529500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3617, 'Mirandópolis', 'SP', 3530102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3618, 'Mirante do Paranapanema', 'SP', 3530201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3619, 'Mirassol', 'SP', 3530300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3621, 'Mococa', 'SP', 3530508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3624, 'Moji Mirim', 'SP', 3530805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3626, 'Monções', 'SP', 3531001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3627, 'Mongaguá', 'SP', 3531100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3629, 'Monte Alto', 'SP', 3531308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3630, 'Monte Aprazível', 'SP', 3531407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3634, 'Monte Mor', 'SP', 3531803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3635, 'Morro Agudo', 'SP', 3531902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3638, 'Murutinga do Sul', 'SP', 3532108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3639, 'Nantes', 'SP', 3532157);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3640, 'Narandiba', 'SP', 3532207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3641, 'Natividade da Serra', 'SP', 3532306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3642, 'Nazaré Paulista', 'SP', 3532405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3645, 'Nipoã', 'SP', 3532702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3646, 'Nova Aliança', 'SP', 3532801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3648, 'Nova Canaã Paulista', 'SP', 3532843);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3650, 'Nova Europa', 'SP', 3532900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3652, 'Nova Guataporanga', 'SP', 3533106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3657, 'Novo Horizonte', 'SP', 3533502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3658, 'Nuporanga', 'SP', 3533601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3662, 'Onda Verde', 'SP', 3534005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3664, 'Orindiúva', 'SP', 3534203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3665, 'Orlândia', 'SP', 3534302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3668, 'Osvaldo Cruz', 'SP', 3534609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3669, 'Ourinhos', 'SP', 3534708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3670, 'Ouroeste', 'SP', 3534757);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3672, 'Pacaembu', 'SP', 3534906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3674, 'Palmares Paulista', 'SP', 3535101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3677, 'Panorama', 'SP', 3535408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3678, 'Paraguaçu Paulista', 'SP', 3535507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3679, 'Paraibuna', 'SP', 3535606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3680, 'Paraíso', 'SP', 3535705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3682, 'Paranapuã', 'SP', 3535903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3684, 'Pardinho', 'SP', 3536109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3685, 'Pariquera-Açu', 'SP', 3536208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3688, 'Paulicéia', 'SP', 3536406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3691, 'Paulo de Faria', 'SP', 3536604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3693, 'Pedra Bela', 'SP', 3536802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3694, 'Pedranópolis', 'SP', 3536901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3696, 'Pedreira', 'SP', 3537107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3698, 'Pedro de Toledo', 'SP', 3537206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3701, 'Pereiras', 'SP', 3537503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3702, 'Peruíbe', 'SP', 3537602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3704, 'Piedade', 'SP', 3537800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3709, 'Piquerobi', 'SP', 3538303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3713, 'Piraju', 'SP', 3538808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3715, 'Pirangi', 'SP', 3539004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3718, 'Pirassununga', 'SP', 3539301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3722, 'Platina', 'SP', 3539707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3727, 'Pontal', 'SP', 3540200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3728, 'Pontalinda', 'SP', 3540259);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3730, 'Populina', 'SP', 3540408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3732, 'Porto Feliz', 'SP', 3540606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3735, 'Potirendaba', 'SP', 3540804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3736, 'Pracinha', 'SP', 3540853);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3737, 'Pradópolis', 'SP', 3540903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3738, 'Praia Grande', 'SP', 3541000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3741, 'Presidente Bernardes', 'SP', 3541208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3743, 'Presidente Prudente', 'SP', 3541406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3745, 'Promissão', 'SP', 3541604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3748, 'Queiroz', 'SP', 3541802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3752, 'Rancharia', 'SP', 3542206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3754, 'Regente Feijó', 'SP', 3542404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3758, 'Ribeira', 'SP', 3542800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3762, 'Ribeirão do Sul', 'SP', 3543204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3763, 'Ribeirão dos Índios', 'SP', 3543238);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3764, 'Ribeirão Grande', 'SP', 3543253);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3765, 'Ribeirão Pires', 'SP', 3543303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3767, 'Riversul', 'SP', 3543501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3770, 'Rinópolis', 'SP', 3543808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3771, 'Rio Claro', 'SP', 3543907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3779, 'Sabino', 'SP', 3544608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3782, 'Sales Oliveira', 'SP', 3544905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3783, 'Salesópolis', 'SP', 3545001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3784, 'Salmourão', 'SP', 3545100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3785, 'Saltinho', 'SP', 3545159);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3786, 'Salto', 'SP', 3545209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3787, 'Salto de Pirapora', 'SP', 3545308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3789, 'Sandovalina', 'SP', 3545506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3791, 'Santa Albertina', 'SP', 3545704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3792, 'Santa Bárbara D''Oeste', 'SP', 3545803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3793, 'Santa Branca', 'SP', 3546009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3794, 'Santa Clara D''Oeste', 'SP', 3546108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3797, 'Santa Cruz das Palmeiras', 'SP', 3546306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3798, 'Santa Cruz do Rio Pardo', 'SP', 3546405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3799, 'Santa Ernestina', 'SP', 3546504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3803, 'Santa Lúcia', 'SP', 3546900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3805, 'Santa Mercedes', 'SP', 3547106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3806, 'Santana da Ponte Pensa', 'SP', 3547205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3807, 'Santana de Parnaíba', 'SP', 3547304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3809, 'Santa Rita do Passa Quatro', 'SP', 3547502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3812, 'Santo Anastácio', 'SP', 3547700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3814, 'Santo Antônio da Alegria', 'SP', 3547908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3817, 'Santo Antônio do Jardim', 'SP', 3548104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3819, 'Santo Expedito', 'SP', 3548302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3821, 'Santos', 'SP', 3548500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3823, 'São Bernardo do Campo', 'SP', 3548708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3825, 'São Carlos', 'SP', 3548906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3826, 'São Francisco', 'SP', 3549003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3831, 'São Joaquim da Barra', 'SP', 3549409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3833, 'São José do Barreiro', 'SP', 3549607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3834, 'São José do Rio Pardo', 'SP', 3549706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3836, 'São José dos Campos', 'SP', 3549904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3837, 'São Lourenço da Serra', 'SP', 3549953);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3841, 'São Paulo', 'SP', 3550308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3847, 'São Simão', 'SP', 3550902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3848, 'São Vicente', 'SP', 3551009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3849, 'Sarapuí', 'SP', 3551108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3850, 'Sarutaiá', 'SP', 3551207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3851, 'Sebastianópolis do Sul', 'SP', 3551306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3852, 'Serra Azul', 'SP', 3551405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3855, 'Sertãozinho', 'SP', 3551702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3857, 'Severínia', 'SP', 3551900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3859, 'Socorro', 'SP', 3552106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3864, 'Suzanápolis', 'SP', 3552551);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3865, 'Tabapuã', 'SP', 3552601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3866, 'Tabatinga', 'SP', 3552700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3868, 'Taciba', 'SP', 3552908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3872, 'Tambaú', 'SP', 3553302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3877, 'Taquaritinga', 'SP', 3553708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3878, 'Taquarituba', 'SP', 3553807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3880, 'Tarabai', 'SP', 3553906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3882, 'Tatuí', 'SP', 3554003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3884, 'Tejupá', 'SP', 3554201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3886, 'Terra Roxa', 'SP', 3554409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3888, 'Timburi', 'SP', 3554607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3890, 'Torrinha', 'SP', 3554706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3891, 'Trabiju', 'SP', 3554755);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3892, 'Tremembé', 'SP', 3554805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3894, 'Tuiuti', 'SP', 3554953);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3897, 'Turiúba', 'SP', 3555208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3898, 'Turmalina', 'SP', 3555307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3900, 'Ubatuba', 'SP', 3555406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3903, 'União Paulista', 'SP', 3555703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3905, 'Uru', 'SP', 3555901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3908, 'Valinhos', 'SP', 3556206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3909, 'Valparaíso', 'SP', 3556305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3910, 'Vargem', 'SP', 3556354);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3911, 'Vargem Grande do Sul', 'SP', 3556404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3912, 'Vargem Grande Paulista', 'SP', 3556453);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3916, 'Viradouro', 'SP', 3556800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3917, 'Vista Alegre do Alto', 'SP', 3556909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3918, 'Vitória Brasil', 'SP', 3556958);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3920, 'Votuporanga', 'SP', 3557105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3921, 'Zacarias', 'SP', 3557154);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3925, 'Adrianópolis', 'PR', 4100202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3926, 'Agudos do Sul', 'PR', 4100301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3927, 'Almirante Tamandaré', 'PR', 4100400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3928, 'Altamira do Paraná', 'PR', 4100459);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3931, 'Alto Piquiri', 'PR', 4100707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3935, 'Anahy', 'PR', 4101051);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3937, 'Ângulo', 'PR', 4101150);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3938, 'Antonina', 'PR', 4101200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3940, 'Apucarana', 'PR', 4101408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3941, 'Arapongas', 'PR', 4101507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3943, 'Arapuã', 'PR', 4101655);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3946, 'Ariranha do Ivaí', 'PR', 4101853);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3950, 'Atalaia', 'PR', 4102208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3952, 'Bandeirantes', 'PR', 4102406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3953, 'Barbosa Ferraz', 'PR', 4102505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3955, 'Barra do Jacaré', 'PR', 4102703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3956, 'Bela Vista da Caroba', 'PR', 4102752);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3957, 'Bela Vista do Paraíso', 'PR', 4102802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3958, 'Bituruna', 'PR', 4102901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3960, 'Boa Esperança do Iguaçu', 'PR', 4103024);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3963, 'Bocaiúva do Sul', 'PR', 4103107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3967, 'Borrazópolis', 'PR', 4103305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3968, 'Braganey', 'PR', 4103354);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3970, 'Cafeara', 'PR', 4103404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3972, 'Cafezal do Sul', 'PR', 4103479);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3974, 'Cambará', 'PR', 4103602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3976, 'Cambira', 'PR', 4103800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3984, 'Campo Mourão', 'PR', 4104303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3987, 'Cantagalo', 'PR', 4104451);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3988, 'Capanema', 'PR', 4104501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3990, 'Carambeí', 'PR', 4104659);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3992, 'Cascavel', 'PR', 4104808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3995, 'Centenário do Sul', 'PR', 4105102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (3997, 'Céu Azul', 'PR', 4105300);

--
-- Data for table public.cidade (OID = 46301) (LIMIT 2000,500)
--
INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4003, 'Colorado', 'PR', 4105904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4004, 'Congonhinhas', 'PR', 4106001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4005, 'Conselheiro Mairinck', 'PR', 4106100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4007, 'Corbélia', 'PR', 4106308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4009, 'Coronel Domingos Soares', 'PR', 4106456);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4011, 'Corumbataí do Sul', 'PR', 4106555);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4012, 'Cruzeiro do Iguaçu', 'PR', 4106571);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4013, 'Cruzeiro do Oeste', 'PR', 4106605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4016, 'Cruzmaltina', 'PR', 4106852);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4017, 'Curitiba', 'PR', 4106902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4018, 'Curiúva', 'PR', 4107009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4019, 'Diamante do Norte', 'PR', 4107108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4024, 'Doutor Camargo', 'PR', 4107306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4025, 'Enéas Marques', 'PR', 4107405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4026, 'Engenheiro Beltrão', 'PR', 4107504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4027, 'Esperança Nova', 'PR', 4107520);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4028, 'Entre Rios do Oeste', 'PR', 4107538);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4033, 'Fênix', 'PR', 4107702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4034, 'Fernandes Pinheiro', 'PR', 4107736);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4036, 'Floraí', 'PR', 4107801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4037, 'Flor da Serra do Sul', 'PR', 4107850);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4040, 'Flórida', 'PR', 4108106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4041, 'Formosa do Oeste', 'PR', 4108205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4042, 'Foz do Iguaçu', 'PR', 4108304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4043, 'Francisco Alves', 'PR', 4108320);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4045, 'Foz do Jordão', 'PR', 4108452);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4046, 'General Carneiro', 'PR', 4108502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4050, 'Grandes Rios', 'PR', 4108700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4051, 'Guaíra', 'PR', 4108809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4056, 'Guaraci', 'PR', 4109203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4058, 'Guarapuava', 'PR', 4109401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4061, 'Honório Serpa', 'PR', 4109658);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4064, 'Ibiporã', 'PR', 4109807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4068, 'Imbaú', 'PR', 4110078);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4070, 'Inácio Martins', 'PR', 4110201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4072, 'Indianópolis', 'PR', 4110409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4074, 'Iporã', 'PR', 4110607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4075, 'Iracema do Oeste', 'PR', 4110656);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4077, 'Iretama', 'PR', 4110805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4078, 'Itaguajé', 'PR', 4110904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4081, 'Itambé', 'PR', 4111100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4083, 'Itaperuçu', 'PR', 4111258);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4084, 'Itaúna do Sul', 'PR', 4111308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4085, 'Ivaí', 'PR', 4111407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4086, 'Ivaiporã', 'PR', 4111506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4091, 'Jaguapitã', 'PR', 4111902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4092, 'Jaguariaíva', 'PR', 4112009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4095, 'Japira', 'PR', 4112306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4096, 'Japurá', 'PR', 4112405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4099, 'Jataizinho', 'PR', 4112702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4107, 'Laranjal', 'PR', 4113254);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4108, 'Laranjeiras do Sul', 'PR', 4113304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4111, 'Lindoeste', 'PR', 4113452);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4112, 'Loanda', 'PR', 4113502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4114, 'Londrina', 'PR', 4113700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4115, 'Luiziana', 'PR', 4113734);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4118, 'Mallet', 'PR', 4113908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4120, 'Mandaguaçu', 'PR', 4114104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4121, 'Mandaguari', 'PR', 4114203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4124, 'Mangueirinha', 'PR', 4114401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4125, 'Manoel Ribas', 'PR', 4114500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4126, 'Marechal Cândido Rondon', 'PR', 4114609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4128, 'Marialva', 'PR', 4114807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4132, 'Maringá', 'PR', 4115200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4136, 'Marquinho', 'PR', 4115457);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4137, 'Marumbi', 'PR', 4115507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4138, 'Matelândia', 'PR', 4115606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4142, 'Medianeira', 'PR', 4115804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4143, 'Mercedes', 'PR', 4115853);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4144, 'Mirador', 'PR', 4115903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4145, 'Miraselva', 'PR', 4116000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4146, 'Missal', 'PR', 4116059);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4147, 'Moreira Sales', 'PR', 4116109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4149, 'Munhoz de Melo', 'PR', 4116307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4150, 'Nossa Senhora das Graças', 'PR', 4116406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4153, 'Nova Aurora', 'PR', 4116703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4155, 'Nova Esperança', 'PR', 4116901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4156, 'Nova Esperança do Sudoeste', 'PR', 4116950);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4158, 'Nova Laranjeiras', 'PR', 4117057);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4159, 'Nova Londrina', 'PR', 4117107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4160, 'Nova Olímpia', 'PR', 4117206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4161, 'Nova Santa Bárbara', 'PR', 4117214);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4162, 'Nova Santa Rosa', 'PR', 4117222);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4163, 'Nova Prata do Iguaçu', 'PR', 4117255);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4164, 'Nova Tebas', 'PR', 4117271);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4165, 'Novo Itacolomi', 'PR', 4117297);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4166, 'Ortigueira', 'PR', 4117305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4167, 'Ourizona', 'PR', 4117404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4168, 'Ouro Verde do Oeste', 'PR', 4117453);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4170, 'Palmas', 'PR', 4117602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4171, 'Palmeira', 'PR', 4117701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4172, 'Palmital', 'PR', 4117800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4175, 'Paranacity', 'PR', 4118105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4176, 'Paranaguá', 'PR', 4118204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4180, 'Pato Branco', 'PR', 4118501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4181, 'Paula Freitas', 'PR', 4118600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4184, 'Perobal', 'PR', 4118857);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4185, 'Pérola', 'PR', 4118907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4186, 'Pérola D''Oeste', 'PR', 4119004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4187, 'Piên', 'PR', 4119103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4188, 'Pinhais', 'PR', 4119152);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4189, 'Pinhalão', 'PR', 4119202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4190, 'Pinhal de São Bento', 'PR', 4119251);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4193, 'Piraquara', 'PR', 4119509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4196, 'Planaltina do Paraná', 'PR', 4119707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4197, 'Planalto', 'PR', 4119806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4199, 'Pontal do Paraná', 'PR', 4119954);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4200, 'Porecatu', 'PR', 4120002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4201, 'Porto Amazonas', 'PR', 4120101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4203, 'Porto Rico', 'PR', 4120200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4207, 'Presidente Castelo Branco', 'PR', 4120408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4208, 'Primeiro de Maio', 'PR', 4120507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4211, 'Quatiguá', 'PR', 4120705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4213, 'Quatro Pontes', 'PR', 4120853);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4216, 'Quinta do Sol', 'PR', 4121109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4217, 'Quitandinha', 'PR', 4121208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4223, 'Renascença', 'PR', 4121604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4224, 'Reserva', 'PR', 4121703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4228, 'Rio Azul', 'PR', 4122008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4229, 'Rio Bom', 'PR', 4122107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4231, 'Rio Branco do Ivaí', 'PR', 4122172);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4233, 'Rio Negro', 'PR', 4122305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4236, 'Rondon', 'PR', 4122602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4237, 'Rosário do Ivaí', 'PR', 4122651);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4239, 'Salgado Filho', 'PR', 4122800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4240, 'Salto do Itararé', 'PR', 4122909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4241, 'Salto do Lontra', 'PR', 4123006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4244, 'Santa Cruz de Monte Castelo', 'PR', 4123303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4246, 'Santa Helena', 'PR', 4123501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4250, 'Santa Lúcia', 'PR', 4123824);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4251, 'Santa Maria do Oeste', 'PR', 4123857);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4255, 'Santa Tereza do Oeste', 'PR', 4124020);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4257, 'Santo Antônio da Platina', 'PR', 4124103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4259, 'Santo Antônio do Paraíso', 'PR', 4124301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4260, 'Santo Antônio do Sudoeste', 'PR', 4124400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4265, 'São João do Caiuá', 'PR', 4124905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4268, 'São Jorge D''Oeste', 'PR', 4125209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4272, 'São José das Palmeiras', 'PR', 4125456);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4273, 'São José dos Pinhais', 'PR', 4125506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4276, 'São Miguel do Iguaçu', 'PR', 4125704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4280, 'São Sebastião da Amoreira', 'PR', 4126009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4287, 'Sertaneja', 'PR', 4126405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4289, 'Siqueira Campos', 'PR', 4126603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4290, 'Sulina', 'PR', 4126652);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4291, 'Tamarana', 'PR', 4126678);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4293, 'Tapejara', 'PR', 4126801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4294, 'Tapira', 'PR', 4126900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4295, 'Teixeira Soares', 'PR', 4127007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4299, 'Terra Roxa', 'PR', 4127403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4301, 'Tijucas do Sul', 'PR', 4127601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4302, 'Toledo', 'PR', 4127700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4303, 'Tomazina', 'PR', 4127809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4309, 'Ubiratã', 'PR', 4128005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4312, 'Uniflor', 'PR', 4128302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4314, 'Wenceslau Braz', 'PR', 4128500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4315, 'Ventania', 'PR', 4128534);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4319, 'Doutor Ulysses', 'PR', 4128633);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4321, 'Vitorino', 'PR', 4128708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4323, 'Abdon Batista', 'SC', 4200051);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4324, 'Abelardo Luz', 'SC', 4200101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4325, 'Agrolândia', 'SC', 4200200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4331, 'Alfredo Wagner', 'SC', 4200705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4332, 'Alto Bela Vista', 'SC', 4200754);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4334, 'Angelina', 'SC', 4200903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4338, 'Apiúna', 'SC', 4201257);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4342, 'Armazém', 'SC', 4201505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4345, 'Ascurra', 'SC', 4201703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4346, 'Atalanta', 'SC', 4201802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4347, 'Aurora', 'SC', 4201901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4350, 'Balneário Barra do Sul', 'SC', 4202057);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4351, 'Balneário Gaivota', 'SC', 4202073);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4355, 'Bela Vista do Toldo', 'SC', 4202131);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4356, 'Belmonte', 'SC', 4202156);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4360, 'Bocaina do Sul', 'SC', 4202438);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4362, 'Bom Jardim da Serra', 'SC', 4202503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4363, 'Bom Jesus', 'SC', 4202537);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4366, 'Botuverá', 'SC', 4202701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4368, 'Braço do Trombudo', 'SC', 4202859);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4369, 'Brunópolis', 'SC', 4202875);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4370, 'Brusque', 'SC', 4202909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4373, 'Calmon', 'SC', 4203154);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4377, 'Campo Belo do Sul', 'SC', 4203402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4380, 'Canelinha', 'SC', 4203709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4381, 'Canoinhas', 'SC', 4203808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4384, 'Catanduvas', 'SC', 4204004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4386, 'Celso Ramos', 'SC', 4204152);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4387, 'Cerro Negro', 'SC', 4204178);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4389, 'Chapecó', 'SC', 4204202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4390, 'Cocal do Sul', 'SC', 4204251);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4392, 'Cordilheira Alta', 'SC', 4204350);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4395, 'Corupá', 'SC', 4204509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4397, 'Criciúma', 'SC', 4204608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4400, 'Curitibanos', 'SC', 4204806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4401, 'Descanso', 'SC', 4204905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4402, 'Dionísio Cerqueira', 'SC', 4205001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4404, 'Doutor Pedrinho', 'SC', 4205159);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4405, 'Entre Rios', 'SC', 4205175);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4406, 'Ermo', 'SC', 4205191);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4412, 'Forquilhinha', 'SC', 4205456);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4414, 'Frei Rogério', 'SC', 4205555);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4415, 'Galvão', 'SC', 4205605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4419, 'Governador Celso Ramos', 'SC', 4206009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4420, 'Grão Pará', 'SC', 4206108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4421, 'Gravatal', 'SC', 4206207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4423, 'Guaraciaba', 'SC', 4206405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4428, 'Ibiam', 'SC', 4206751);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4429, 'Ibicaré', 'SC', 4206801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4430, 'Ibirama', 'SC', 4206900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4432, 'Ilhota', 'SC', 4207106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4436, 'Indaial', 'SC', 4207502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4438, 'Ipira', 'SC', 4207601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4439, 'Iporã do Oeste', 'SC', 4207650);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4441, 'Ipumirim', 'SC', 4207700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4442, 'Iraceminha', 'SC', 4207759);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4443, 'Irani', 'SC', 4207809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4446, 'Itá', 'SC', 4208005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4447, 'Itaiópolis', 'SC', 4208104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4448, 'Itajaí', 'SC', 4208203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4450, 'Itapiranga', 'SC', 4208401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4453, 'Jaborá', 'SC', 4208609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4455, 'Jaguaruna', 'SC', 4208807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4457, 'Jardinópolis', 'SC', 4208955);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4461, 'Jupiá', 'SC', 4209177);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4462, 'Lacerdópolis', 'SC', 4209201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4463, 'Lages', 'SC', 4209300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4467, 'Lauro Muller', 'SC', 4209607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4468, 'Lebon Régis', 'SC', 4209706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4471, 'Lontras', 'SC', 4209904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4472, 'Luiz Alves', 'SC', 4210001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4473, 'Luzerna', 'SC', 4210035);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4478, 'Maracajá', 'SC', 4210407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4479, 'Maravilha', 'SC', 4210506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4480, 'Marema', 'SC', 4210555);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4482, 'Matos Costa', 'SC', 4210704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4483, 'Meleiro', 'SC', 4210803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4486, 'Mondaí', 'SC', 4211009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4491, 'Navegantes', 'SC', 4211306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4494, 'Nova Trento', 'SC', 4211504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4495, 'Nova Veneza', 'SC', 4211603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4496, 'Novo Horizonte', 'SC', 4211652);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4498, 'Otacílio Costa', 'SC', 4211751);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4500, 'Ouro Verde', 'SC', 4211850);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4505, 'Palmeira', 'SC', 4212056);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4507, 'Papanduva', 'SC', 4212205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4508, 'Paraíso', 'SC', 4212239);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4509, 'Passo de Torres', 'SC', 4212254);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4512, 'Pedras Grandes', 'SC', 4212403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4514, 'Peritiba', 'SC', 4212601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4517, 'Balneário Piçarras', 'SC', 4212809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4520, 'Piratuba', 'SC', 4213104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4522, 'Pomerode', 'SC', 4213203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4523, 'Ponte Alta', 'SC', 4213302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4525, 'Ponte Serrada', 'SC', 4213401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4526, 'Porto Belo', 'SC', 4213500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4529, 'Praia Grande', 'SC', 4213807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4530, 'Presidente Castello Branco', 'SC', 4213906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4531, 'Presidente Getúlio', 'SC', 4214003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4532, 'Presidente Nereu', 'SC', 4214102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4533, 'Princesa', 'SC', 4214151);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4534, 'Quilombo', 'SC', 4214201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4536, 'Rio das Antas', 'SC', 4214409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4540, 'Rio do Sul', 'SC', 4214805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4541, 'Rio Fortuna', 'SC', 4214904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4546, 'Romelândia', 'SC', 4215208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4547, 'Salete', 'SC', 4215307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4548, 'Saltinho', 'SC', 4215356);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4549, 'Salto Veloso', 'SC', 4215406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4553, 'Santa Rosa de Lima', 'SC', 4215604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4554, 'Santa Rosa do Sul', 'SC', 4215653);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4555, 'Santa Terezinha', 'SC', 4215679);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4556, 'Santa Terezinha do Progresso', 'SC', 4215687);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4558, 'Santo Amaro da Imperatriz', 'SC', 4215703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4560, 'São Bento do Sul', 'SC', 4215802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4562, 'São Carlos', 'SC', 4216008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4563, 'São Cristovão do Sul', 'SC', 4216057);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4564, 'São Domingos', 'SC', 4216107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4566, 'São João do Oeste', 'SC', 4216255);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4567, 'São João Batista', 'SC', 4216305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4571, 'São José', 'SC', 4216602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4579, 'São Pedro de Alcântara', 'SC', 4217253);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4580, 'Saudades', 'SC', 4217303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4583, 'Serra Alta', 'SC', 4217550);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4585, 'Sombrio', 'SC', 4217709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4587, 'Taió', 'SC', 4217808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4588, 'Tangará', 'SC', 4217907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4589, 'Tigrinhos', 'SC', 4217956);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4590, 'Tijucas', 'SC', 4218004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4593, 'Timbó Grande', 'SC', 4218251);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4595, 'Treviso', 'SC', 4218350);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4597, 'Treze Tílias', 'SC', 4218509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4598, 'Trombudo Central', 'SC', 4218608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4599, 'Tubarão', 'SC', 4218707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4600, 'Tunápolis', 'SC', 4218756);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4602, 'União do Oeste', 'SC', 4218855);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4604, 'Urupema', 'SC', 4218954);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4605, 'Urussanga', 'SC', 4219002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4606, 'Vargeão', 'SC', 4219101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4608, 'Vargem Bonita', 'SC', 4219176);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4612, 'Witmarsum', 'SC', 4219408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4614, 'Xavantina', 'SC', 4219606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4615, 'Xaxim', 'SC', 4219705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4616, 'Zortéa', 'SC', 4219853);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4619, 'Água Santa', 'RS', 4300059);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4620, 'Agudo', 'RS', 4300109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4621, 'Ajuricaba', 'RS', 4300208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4622, 'Alecrim', 'RS', 4300307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4624, 'Alegria', 'RS', 4300455);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4628, 'Alto Feliz', 'RS', 4300570);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4630, 'Amaral Ferrador', 'RS', 4300638);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4633, 'Anta Gorda', 'RS', 4300703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4635, 'Arambaré', 'RS', 4300851);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4638, 'Arroio do Meio', 'RS', 4301008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4639, 'Arroio do Sal', 'RS', 4301057);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4640, 'Arroio do Padre', 'RS', 4301073);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4641, 'Arroio dos Ratos', 'RS', 4301107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4643, 'Arroio Grande', 'RS', 4301305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4644, 'Arvorezinha', 'RS', 4301404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4645, 'Augusto Pestana', 'RS', 4301503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4647, 'Bagé', 'RS', 4301602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4648, 'Balneário Pinhal', 'RS', 4301636);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4651, 'Barão do Triunfo', 'RS', 4301750);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4653, 'Barra do Guarita', 'RS', 4301859);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4654, 'Barra do Quaraí', 'RS', 4301875);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4655, 'Barra do Ribeiro', 'RS', 4301909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4658, 'Barros Cassal', 'RS', 4302006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4660, 'Bento Gonçalves', 'RS', 4302105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4661, 'Boa Vista das Missões', 'RS', 4302154);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4663, 'Boa Vista do Cadeado', 'RS', 4302220);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4668, 'Bom Progresso', 'RS', 4302378);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4670, 'Boqueirão do Leão', 'RS', 4302451);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4671, 'Bossoroca', 'RS', 4302501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4674, 'Brochier', 'RS', 4302659);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4676, 'Caçapava do Sul', 'RS', 4302808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4677, 'Cacequi', 'RS', 4302907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4679, 'Cachoeirinha', 'RS', 4303103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4684, 'Camargo', 'RS', 4303558);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4685, 'Cambará do Sul', 'RS', 4303608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4689, 'Campo Bom', 'RS', 4303905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4690, 'Campo Novo', 'RS', 4304002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4692, 'Candelária', 'RS', 4304200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4696, 'Canguçu', 'RS', 4304507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4697, 'Canoas', 'RS', 4304606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4698, 'Canudos do Vale', 'RS', 4304614);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4699, 'Capão Bonito do Sul', 'RS', 4304622);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4700, 'Capão da Canoa', 'RS', 4304630);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4704, 'Capela de Santana', 'RS', 4304689);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4705, 'Capitão', 'RS', 4304697);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4707, 'Caraá', 'RS', 4304713);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4708, 'Carlos Barbosa', 'RS', 4304804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4712, 'Catuípe', 'RS', 4305009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4714, 'Centenário', 'RS', 4305116);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4718, 'Cerro Grande do Sul', 'RS', 4305173);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4719, 'Cerro Largo', 'RS', 4305207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4721, 'Charqueadas', 'RS', 4305355);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4722, 'Charrua', 'RS', 4305371);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4723, 'Chiapetta', 'RS', 4305405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4724, 'Chuí', 'RS', 4305439);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4726, 'Cidreira', 'RS', 4305454);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4728, 'Colinas', 'RS', 4305587);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4729, 'Colorado', 'RS', 4305603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4730, 'Condor', 'RS', 4305702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4731, 'Constantina', 'RS', 4305801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4733, 'Coqueiros do Sul', 'RS', 4305850);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4735, 'Coronel Bicaco', 'RS', 4305900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4738, 'Coxilha', 'RS', 4305975);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4741, 'Cristal do Sul', 'RS', 4306072);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4742, 'Cruz Alta', 'RS', 4306106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4746, 'Derrubadas', 'RS', 4306320);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4748, 'Dilermando de Aguiar', 'RS', 4306379);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4749, 'Dois Irmãos', 'RS', 4306403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4751, 'Dois Lajeados', 'RS', 4306452);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4756, 'Doutor Maurício Cardoso', 'RS', 4306734);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4757, 'Doutor Ricardo', 'RS', 4306759);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4758, 'Eldorado do Sul', 'RS', 4306767);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4759, 'Encantado', 'RS', 4306809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4763, 'Entre Rios do Sul', 'RS', 4306957);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4765, 'Erechim', 'RS', 4307005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4767, 'Herval', 'RS', 4307104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4769, 'Erval Seco', 'RS', 4307302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4770, 'Esmeralda', 'RS', 4307401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4773, 'Estação', 'RS', 4307559);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4774, 'Estância Velha', 'RS', 4307609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4775, 'Esteio', 'RS', 4307708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4776, 'Estrela', 'RS', 4307807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4777, 'Estrela Velha', 'RS', 4307815);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4778, 'Eugênio de Castro', 'RS', 4307831);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4782, 'Faxinalzinho', 'RS', 4308052);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4784, 'Feliz', 'RS', 4308102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4785, 'Flores da Cunha', 'RS', 4308201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4788, 'Formigueiro', 'RS', 4308409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4789, 'Forquetinha', 'RS', 4308433);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4791, 'Frederico Westphalen', 'RS', 4308508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4792, 'Garibaldi', 'RS', 4308607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4794, 'Gaurama', 'RS', 4308706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4796, 'Gentil', 'RS', 4308854);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4798, 'Giruá', 'RS', 4309001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4799, 'Glorinha', 'RS', 4309050);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4801, 'Gramado dos Loureiros', 'RS', 4309126);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4802, 'Gramado Xavier', 'RS', 4309159);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4803, 'Gravataí', 'RS', 4309209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4808, 'Harmonia', 'RS', 4309555);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4809, 'Herveiras', 'RS', 4309571);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4813, 'Ibarama', 'RS', 4309753);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4814, 'Ibiaçá', 'RS', 4309803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4817, 'Ibirubá', 'RS', 4310009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4819, 'Ijuí', 'RS', 4310207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4821, 'Imbé', 'RS', 4310330);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4825, 'Ipê', 'RS', 4310439);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4831, 'Itaqui', 'RS', 4310603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4833, 'Itatiba do Sul', 'RS', 4310702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4834, 'Ivorá', 'RS', 4310751);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4835, 'Ivoti', 'RS', 4310801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4838, 'Jacutinga', 'RS', 4310900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4842, 'Jari', 'RS', 4311130);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4844, 'Júlio de Castilhos', 'RS', 4311205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4845, 'Lagoa Bonita do Sul', 'RS', 4311239);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4847, 'Lagoa dos Três Cantos', 'RS', 4311270);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4849, 'Lajeado', 'RS', 4311403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4850, 'Lajeado do Bugre', 'RS', 4311429);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4852, 'Liberato Salzano', 'RS', 4311601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4853, 'Lindolfo Collor', 'RS', 4311627);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4854, 'Linha Nova', 'RS', 4311643);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4857, 'Mampituba', 'RS', 4311734);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4858, 'Manoel Viana', 'RS', 4311759);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4859, 'Maquiné', 'RS', 4311775);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4860, 'Maratá', 'RS', 4311791);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4863, 'Mariana Pimentel', 'RS', 4311981);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4866, 'Mata', 'RS', 4312104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4868, 'Mato Leitão', 'RS', 4312153);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4869, 'Mato Queimado', 'RS', 4312179);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4870, 'Maximiliano de Almeida', 'RS', 4312203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4873, 'Montauri', 'RS', 4312351);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4876, 'Montenegro', 'RS', 4312401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4878, 'Morrinhos do Sul', 'RS', 4312443);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4879, 'Morro Redondo', 'RS', 4312450);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4881, 'Mostardas', 'RS', 4312500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4883, 'Muitos Capões', 'RS', 4312617);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4885, 'Não-Me-Toque', 'RS', 4312658);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4886, 'Nicolau Vergueiro', 'RS', 4312674);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4887, 'Nonoai', 'RS', 4312708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4889, 'Nova Araçá', 'RS', 4312807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4890, 'Nova Bassano', 'RS', 4312906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4896, 'Nova Pádua', 'RS', 4313086);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4898, 'Nova Petrópolis', 'RS', 4313201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4899, 'Nova Prata', 'RS', 4313300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4900, 'Nova Ramada', 'RS', 4313334);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4901, 'Nova Roma do Sul', 'RS', 4313359);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4903, 'Novo Cabrais', 'RS', 4313391);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4904, 'Novo Hamburgo', 'RS', 4313409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4907, 'Novo Xingu', 'RS', 4313466);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4909, 'Osório', 'RS', 4313508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4910, 'Paim Filho', 'RS', 4313607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4915, 'Pantano Grande', 'RS', 4313953);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4916, 'Paraí', 'RS', 4314001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4917, 'Paraíso do Sul', 'RS', 4314027);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4918, 'Pareci Novo', 'RS', 4314035);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4920, 'Passa Sete', 'RS', 4314068);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4921, 'Passo do Sobrado', 'RS', 4314076);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4922, 'Passo Fundo', 'RS', 4314100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4923, 'Paulo Bento', 'RS', 4314134);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4925, 'Pedras Altas', 'RS', 4314175);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4928, 'Pelotas', 'RS', 4314407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4929, 'Picada Café', 'RS', 4314423);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4930, 'Pinhal', 'RS', 4314456);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4933, 'Pinheirinho do Vale', 'RS', 4314498);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4936, 'Pirapó', 'RS', 4314555);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4939, 'Poço das Antas', 'RS', 4314753);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4940, 'Pontão', 'RS', 4314779);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4944, 'Porto Lucena', 'RS', 4315008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4946, 'Porto Vera Cruz', 'RS', 4315073);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4949, 'Presidente Lucena', 'RS', 4315149);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4950, 'Progresso', 'RS', 4315156);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4952, 'Putinga', 'RS', 4315206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4954, 'Quatro Irmãos', 'RS', 4315313);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4956, 'Quinze de Novembro', 'RS', 4315354);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4961, 'Rio Grande', 'RS', 4315602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4962, 'Rio Pardo', 'RS', 4315701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4963, 'Riozinho', 'RS', 4315750);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4965, 'Rodeio Bonito', 'RS', 4315909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4966, 'Rolador', 'RS', 4315958);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4967, 'Rolante', 'RS', 4316006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4970, 'Roque Gonzales', 'RS', 4316303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4972, 'Sagrada Família', 'RS', 4316428);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4974, 'Salto do Jacuí', 'RS', 4316451);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4975, 'Salvador das Missões', 'RS', 4316477);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4977, 'Sananduva', 'RS', 4316600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4980, 'Santa Clara do Sul', 'RS', 4316758);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4983, 'Santa Maria do Herval', 'RS', 4316956);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4985, 'Santana da Boa Vista', 'RS', 4317004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4988, 'Santa Tereza', 'RS', 4317251);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4989, 'Santa Vitória do Palmar', 'RS', 4317301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4990, 'Santiago', 'RS', 4317400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4992, 'Santo Antônio do Palma', 'RS', 4317558);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4993, 'Santo Antônio da Patrulha', 'RS', 4317608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4994, 'Santo Antônio das Missões', 'RS', 4317707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4995, 'Santo Antônio do Planalto', 'RS', 4317756);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (4996, 'Santo Augusto', 'RS', 4317806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5000, 'São Domingos do Sul', 'RS', 4318051);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5001, 'São Francisco de Assis', 'RS', 4318101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5002, 'São Francisco de Paula', 'RS', 4318200);

--
-- Data for table public.cidade (OID = 46301) (LIMIT 2500,500)
--
INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5004, 'São Jerônimo', 'RS', 4318408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5006, 'São João do Polêsine', 'RS', 4318432);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5007, 'São Jorge', 'RS', 4318440);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5009, 'São José do Herval', 'RS', 4318465);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5015, 'São José dos Ausentes', 'RS', 4318622);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5017, 'São Lourenço do Sul', 'RS', 4318804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5020, 'São Martinho', 'RS', 4319109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5022, 'São Miguel das Missões', 'RS', 4319158);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5023, 'São Nicolau', 'RS', 4319208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5024, 'São Paulo das Missões', 'RS', 4319307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5027, 'São Pedro do Butiá', 'RS', 4319372);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5028, 'São Pedro do Sul', 'RS', 4319406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5031, 'São Valentim', 'RS', 4319703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5033, 'São Valério do Sul', 'RS', 4319737);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5036, 'Sapiranga', 'RS', 4319901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5037, 'Sapucaia do Sul', 'RS', 4320008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5039, 'Seberi', 'RS', 4320206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5044, 'Sentinela do Sul', 'RS', 4320354);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5045, 'Serafina Corrêa', 'RS', 4320404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5046, 'Sério', 'RS', 4320453);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5049, 'Sete de Setembro', 'RS', 4320578);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5050, 'Severiano de Almeida', 'RS', 4320602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5051, 'Silveira Martins', 'RS', 4320651);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5052, 'Sinimbu', 'RS', 4320677);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5053, 'Sobradinho', 'RS', 4320701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5054, 'Soledade', 'RS', 4320800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5058, 'Tapes', 'RS', 4321105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5062, 'Tavares', 'RS', 4321352);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5063, 'Tenente Portela', 'RS', 4321402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5065, 'Teutônia', 'RS', 4321451);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5066, 'Tio Hugo', 'RS', 4321469);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5067, 'Tiradentes do Sul', 'RS', 4321477);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5068, 'Toropi', 'RS', 4321493);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5069, 'Torres', 'RS', 4321501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5070, 'Tramandaí', 'RS', 4321600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5071, 'Travesseiro', 'RS', 4321626);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5072, 'Três Arroios', 'RS', 4321634);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5073, 'Três Cachoeiras', 'RS', 4321667);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5075, 'Três de Maio', 'RS', 4321808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5076, 'Três Forquilhas', 'RS', 4321832);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5077, 'Três Palmeiras', 'RS', 4321857);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5078, 'Três Passos', 'RS', 4321907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5083, 'Tupanci do Sul', 'RS', 4322186);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5084, 'Tupanciretã', 'RS', 4322202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5085, 'Tupandi', 'RS', 4322251);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5088, 'Ubiretama', 'RS', 4322343);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5090, 'Unistalda', 'RS', 4322376);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5091, 'Uruguaiana', 'RS', 4322400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5093, 'Vale Verde', 'RS', 4322525);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5095, 'Vale Real', 'RS', 4322541);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5097, 'Venâncio Aires', 'RS', 4322608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5098, 'Vera Cruz', 'RS', 4322707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5100, 'Vespasiano Correa', 'RS', 4322855);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5102, 'Viamão', 'RS', 4323002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5105, 'Vila Flores', 'RS', 4323309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5106, 'Vila Lângaro', 'RS', 4323358);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5107, 'Vila Maria', 'RS', 4323408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5109, 'Vista Alegre', 'RS', 4323507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5110, 'Vista Alegre do Prata', 'RS', 4323606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5111, 'Vista Gaúcha', 'RS', 4323705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5116, 'Alcinópolis', 'MS', 5000252);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5119, 'Anaurilândia', 'MS', 5000807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5120, 'Angélica', 'MS', 5000856);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5123, 'Aquidauana', 'MS', 5001102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5125, 'Bandeirantes', 'MS', 5001508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5127, 'Batayporã', 'MS', 5002001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5128, 'Bela Vista', 'MS', 5002100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5130, 'Bonito', 'MS', 5002209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5133, 'Camapuã', 'MS', 5002605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5136, 'Cassilândia', 'MS', 5002902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5137, 'Chapadão do Sul', 'MS', 5002951);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5138, 'Corguinho', 'MS', 5003108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5141, 'Costa Rica', 'MS', 5003256);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5143, 'Deodápolis', 'MS', 5003454);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5145, 'Douradina', 'MS', 5003504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5146, 'Dourados', 'MS', 5003702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5149, 'Figueirão', 'MS', 5003900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5153, 'Inocência', 'MS', 5004403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5154, 'Itaporã', 'MS', 5004502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5156, 'Ivinhema', 'MS', 5004700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5158, 'Jaraguari', 'MS', 5004908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5160, 'Jateí', 'MS', 5005103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5162, 'Ladário', 'MS', 5005202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5169, 'Nova Alvorada do Sul', 'MS', 5006002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5171, 'Novo Horizonte do Sul', 'MS', 5006259);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5172, 'Paraíso das Águas', 'MS', 5006275);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5173, 'Paranaíba', 'MS', 5006309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5174, 'Paranhos', 'MS', 5006358);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5176, 'Ponta Porã', 'MS', 5006606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5178, 'Ribas do Rio Pardo', 'MS', 5007109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5179, 'Rio Brilhante', 'MS', 5007208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5180, 'Rio Negro', 'MS', 5007307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5183, 'Santa Rita do Pardo', 'MS', 5007554);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5184, 'São Gabriel do Oeste', 'MS', 5007695);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5187, 'Sidrolândia', 'MS', 5007901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5189, 'Tacuru', 'MS', 5007950);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5195, 'Água Boa', 'MT', 5100201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5198, 'Alto Boa Vista', 'MT', 5100359);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5200, 'Alto Paraguai', 'MT', 5100508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5201, 'Alto Taquari', 'MT', 5100607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5202, 'Apiacás', 'MT', 5100805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5203, 'Araguaiana', 'MT', 5101001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5204, 'Araguainha', 'MT', 5101209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5205, 'Araputanga', 'MT', 5101258);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5206, 'Arenápolis', 'MT', 5101308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5207, 'Aripuanã', 'MT', 5101407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5209, 'Barra do Bugres', 'MT', 5101704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5210, 'Barra do Garças', 'MT', 5101803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5212, 'Brasnorte', 'MT', 5101902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5217, 'Campos de Júlio', 'MT', 5102686);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5218, 'Canabrava do Norte', 'MT', 5102694);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5219, 'Canarana', 'MT', 5102702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5220, 'Carlinda', 'MT', 5102793);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5225, 'Colíder', 'MT', 5103205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5230, 'Cotriguaçu', 'MT', 5103379);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5233, 'Denise', 'MT', 5103452);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5234, 'Diamantino', 'MT', 5103502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5236, 'Feliz Natal', 'MT', 5103700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5241, 'Guarantã do Norte', 'MT', 5104104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5242, 'Guiratinga', 'MT', 5104203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5245, 'Itanhangá', 'MT', 5104542);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5247, 'Itiquira', 'MT', 5104609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5248, 'Jaciara', 'MT', 5104807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5251, 'Juara', 'MT', 5105101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5252, 'Juína', 'MT', 5105150);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5253, 'Juruena', 'MT', 5105176);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5255, 'Lambari D''Oeste', 'MT', 5105234);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5258, 'Vila Bela da Santíssima Trindade', 'MT', 5105507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5259, 'Marcelândia', 'MT', 5105580);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5260, 'Matupá', 'MT', 5105606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5261, 'Mirassol D''Oeste', 'MT', 5105622);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5266, 'Nova Nazaré', 'MT', 5106174);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5267, 'Nova Lacerda', 'MT', 5106182);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5269, 'Nova Brasilândia', 'MT', 5106208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5271, 'Nova Mutum', 'MT', 5106224);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5272, 'Nova Olímpia', 'MT', 5106232);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5273, 'Nova Ubiratã', 'MT', 5106240);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5274, 'Nova Xavantina', 'MT', 5106257);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5275, 'Novo Mundo', 'MT', 5106265);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5278, 'Paranaíta', 'MT', 5106299);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5280, 'Novo Santo Antônio', 'MT', 5106315);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5281, 'Pedra Preta', 'MT', 5106372);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5282, 'Peixoto de Azevedo', 'MT', 5106422);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5284, 'Poconé', 'MT', 5106505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5287, 'Pontes e Lacerda', 'MT', 5106752);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5289, 'Porto dos Gaúchos', 'MT', 5106802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5291, 'Porto Estrela', 'MT', 5106851);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5292, 'Poxoréo', 'MT', 5107008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5294, 'Querência', 'MT', 5107065);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5295, 'São José dos Quatro Marcos', 'MT', 5107107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5297, 'Ribeirão Cascalheira', 'MT', 5107180);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5300, 'Santa Carmem', 'MT', 5107248);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5301, 'Santo Afonso', 'MT', 5107263);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5303, 'São José do Rio Claro', 'MT', 5107305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5304, 'São José do Xingu', 'MT', 5107354);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5305, 'São Pedro da Cipa', 'MT', 5107404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5307, 'Rondonópolis', 'MT', 5107602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5309, 'Santa Cruz do Xingu', 'MT', 5107743);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5313, 'Santo Antônio do Leste', 'MT', 5107792);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5314, 'Santo Antônio do Leverger', 'MT', 5107800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5316, 'Sapezal', 'MT', 5107875);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5317, 'Serra Nova Dourada', 'MT', 5107883);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5318, 'Sinop', 'MT', 5107909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5319, 'Sorriso', 'MT', 5107925);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5320, 'Tabaporã', 'MT', 5107941);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5321, 'Tangará da Serra', 'MT', 5107958);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5324, 'Tesouro', 'MT', 5108105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5328, 'Várzea Grande', 'MT', 5108402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5329, 'Vera', 'MT', 5108501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5330, 'Vila Rica', 'MT', 5108600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5339, 'Água Fria de Goiás', 'GO', 5200175);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5341, 'Águas Lindas de Goiás', 'GO', 5200258);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5342, 'Alexânia', 'GO', 5200308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5344, 'Alto Horizonte', 'GO', 5200555);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5345, 'Alto Paraíso de Goiás', 'GO', 5200605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5349, 'Amorinópolis', 'GO', 5200902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5350, 'Anápolis', 'GO', 5201108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5352, 'Anicuns', 'GO', 5201306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5355, 'Aporé', 'GO', 5201504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5358, 'Aragoiânia', 'GO', 5201801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5359, 'Araguapaz', 'GO', 5202155);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5360, 'Arenópolis', 'GO', 5202353);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5362, 'Aurilândia', 'GO', 5202601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5364, 'Baliza', 'GO', 5203104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5366, 'Bela Vista de Goiás', 'GO', 5203302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5367, 'Bom Jardim de Goiás', 'GO', 5203401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5368, 'Bom Jesus de Goiás', 'GO', 5203500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5370, 'Bonópolis', 'GO', 5203575);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5371, 'Brazabrantes', 'GO', 5203609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5376, 'Cabeceiras', 'GO', 5204003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5378, 'Cachoeira de Goiás', 'GO', 5204201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5380, 'Caçu', 'GO', 5204300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5385, 'Campinaçu', 'GO', 5204656);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5389, 'Campos Belos', 'GO', 5204904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5390, 'Campos Verdes', 'GO', 5204953);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5391, 'Carmo do Rio Verde', 'GO', 5205000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5393, 'Catalão', 'GO', 5205109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5395, 'Cavalcante', 'GO', 5205307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5396, 'Ceres', 'GO', 5205406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5399, 'Cidade Ocidental', 'GO', 5205497);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5403, 'Corumbá de Goiás', 'GO', 5205802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5406, 'Cristianópolis', 'GO', 5206305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5408, 'Cromínia', 'GO', 5206503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5409, 'Cumari', 'GO', 5206602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5410, 'Damianópolis', 'GO', 5206701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5411, 'Damolândia', 'GO', 5206800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5413, 'Diorama', 'GO', 5207105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5414, 'Doverlândia', 'GO', 5207253);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5415, 'Edealina', 'GO', 5207352);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5419, 'Fazenda Nova', 'GO', 5207600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5420, 'Firminópolis', 'GO', 5207808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5424, 'Gameleira de Goiás', 'GO', 5208152);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5428, 'Goianésia', 'GO', 5208608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5430, 'Goianira', 'GO', 5208806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5432, 'Goiatuba', 'GO', 5209101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5433, 'Gouvelândia', 'GO', 5209150);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5434, 'Guapó', 'GO', 5209200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5435, 'Guaraíta', 'GO', 5209291);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5436, 'Guarani de Goiás', 'GO', 5209408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5438, 'Heitoraí', 'GO', 5209606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5441, 'Iaciara', 'GO', 5209903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5443, 'Indiara', 'GO', 5209952);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5444, 'Inhumas', 'GO', 5210000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5448, 'Israelândia', 'GO', 5210307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5451, 'Itaguaru', 'GO', 5210604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5452, 'Itajá', 'GO', 5210802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5453, 'Itapaci', 'GO', 5210901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5454, 'Itapirapuã', 'GO', 5211008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5455, 'Itapuranga', 'GO', 5211206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5456, 'Itarumã', 'GO', 5211305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5458, 'Itumbiara', 'GO', 5211503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5460, 'Jandaia', 'GO', 5211701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5461, 'Jaraguá', 'GO', 5211800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5463, 'Jaupaci', 'GO', 5212006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5465, 'Joviânia', 'GO', 5212105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5468, 'Leopoldo de Bulhões', 'GO', 5212303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5476, 'Mimoso de Goiás', 'GO', 5213053);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5480, 'Monte Alegre de Goiás', 'GO', 5213509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5485, 'Morro Agudo de Goiás', 'GO', 5213855);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5486, 'Mossâmedes', 'GO', 5213905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5487, 'Mozarlândia', 'GO', 5214002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5488, 'Mundo Novo', 'GO', 5214051);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5489, 'Mutunópolis', 'GO', 5214101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5490, 'Nazário', 'GO', 5214408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5491, 'Nerópolis', 'GO', 5214507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5492, 'Niquelândia', 'GO', 5214606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5494, 'Nova Aurora', 'GO', 5214804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5500, 'Novo Brasil', 'GO', 5215207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5501, 'Novo Gama', 'GO', 5215231);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5503, 'Orizona', 'GO', 5215306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5505, 'Ouvidor', 'GO', 5215504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5508, 'Palmeiras de Goiás', 'GO', 5215702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5511, 'Panamá', 'GO', 5216007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5512, 'Paranaiguara', 'GO', 5216304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5517, 'Piracanjuba', 'GO', 5217104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5520, 'Pires do Rio', 'GO', 5217401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5521, 'Planaltina', 'GO', 5217609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5522, 'Pontalina', 'GO', 5217708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5523, 'Porangatu', 'GO', 5218003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5525, 'Portelândia', 'GO', 5218102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5528, 'Quirinópolis', 'GO', 5218508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5530, 'Rianápolis', 'GO', 5218706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5534, 'Sanclerlândia', 'GO', 5219001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5535, 'Santa Bárbara de Goiás', 'GO', 5219100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5536, 'Santa Cruz de Goiás', 'GO', 5219209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5537, 'Santa Fé de Goiás', 'GO', 5219258);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5538, 'Santa Helena de Goiás', 'GO', 5219308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5541, 'Santa Rita do Novo Destino', 'GO', 5219456);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5542, 'Santa Rosa de Goiás', 'GO', 5219506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5543, 'Santa Tereza de Goiás', 'GO', 5219605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5548, 'São Domingos', 'GO', 5219803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5549, 'São Francisco de Goiás', 'GO', 5219902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5550, 'São João D''Aliança', 'GO', 5220009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5551, 'São João da Paraúna', 'GO', 5220058);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5555, 'São Miguel do Passa Quatro', 'GO', 5220264);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5557, 'São Simão', 'GO', 5220405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5559, 'Serranópolis', 'GO', 5220504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5561, 'Simolândia', 'GO', 5220686);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5562, 'Sítio D''Abadia', 'GO', 5220702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5564, 'Teresina de Goiás', 'GO', 5221080);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5565, 'Terezópolis de Goiás', 'GO', 5221197);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5566, 'Três Ranchos', 'GO', 5221304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5568, 'Trombas', 'GO', 5221452);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5570, 'Turvelândia', 'GO', 5221551);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5571, 'Uirapuru', 'GO', 5221577);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5573, 'Uruana', 'GO', 5221700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5575, 'Valparaíso de Goiás', 'GO', 5221858);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5578, 'Vicentinópolis', 'GO', 5222054);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5580, 'Vila Propício', 'GO', 5222302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5582, 'Alta Floresta D''Oeste', 'RO', 1100015);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5583, 'Ariquemes', 'RO', 1100023);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5586, 'Cerejeiras', 'RO', 1100056);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5587, 'Colorado do Oeste', 'RO', 1100064);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5589, 'Costa Marques', 'RO', 1100080);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5591, 'Guajará-Mirim', 'RO', 1100106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5594, 'Machadinho D''Oeste', 'RO', 1100130);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5596, 'Ouro Preto do Oeste', 'RO', 1100155);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5598, 'Porto Velho', 'RO', 1100205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5600, 'Rio Crespo', 'RO', 1100262);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5603, 'Vilhena', 'RO', 1100304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5605, 'Nova Mamoré', 'RO', 1100338);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5608, 'Alto Paraíso', 'RO', 1100403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5610, 'Novo Horizonte do Oeste', 'RO', 1100502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5611, 'Cacaulândia', 'RO', 1100601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5613, 'Candeias do Jamari', 'RO', 1100809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5616, 'Cujubim', 'RO', 1100940);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5617, 'Governador Jorge Teixeira', 'RO', 1101005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5618, 'Itapuã do Oeste', 'RO', 1101104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5620, 'Mirante da Serra', 'RO', 1101302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5622, 'Nova União', 'RO', 1101435);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5624, 'Pimenteiras do Oeste', 'RO', 1101468);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5631, 'Urupá', 'RO', 1101708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5632, 'Vale do Anari', 'RO', 1101757);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5634, 'Acrelândia', 'AC', 1200013);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5635, 'Assis Brasil', 'AC', 1200054);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5636, 'Brasiléia', 'AC', 1200104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5637, 'Bujari', 'AC', 1200138);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5638, 'Capixaba', 'AC', 1200179);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5639, 'Cruzeiro do Sul', 'AC', 1200203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5640, 'Epitaciolândia', 'AC', 1200252);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5641, 'Feijó', 'AC', 1200302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5642, 'Jordão', 'AC', 1200328);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5643, 'Mâncio Lima', 'AC', 1200336);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5644, 'Manoel Urbano', 'AC', 1200344);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5645, 'Marechal Thaumaturgo', 'AC', 1200351);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5646, 'Plácido de Castro', 'AC', 1200385);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5647, 'Porto Walter', 'AC', 1200393);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5648, 'Rio Branco', 'AC', 1200401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5649, 'Rodrigues Alves', 'AC', 1200427);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5650, 'Santa Rosa do Purus', 'AC', 1200435);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5651, 'Senador Guiomard', 'AC', 1200450);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5652, 'Sena Madureira', 'AC', 1200500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5653, 'Tarauacá', 'AC', 1200609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5654, 'Xapuri', 'AC', 1200708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5655, 'Porto Acre', 'AC', 1200807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5656, 'Alvarães', 'AM', 1300029);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5657, 'Amaturá', 'AM', 1300060);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5660, 'Apuí', 'AM', 1300144);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5664, 'Barreirinha', 'AM', 1300508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5665, 'Benjamin Constant', 'AM', 1300607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5666, 'Beruri', 'AM', 1300631);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5670, 'Caapiranga', 'AM', 1300839);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5672, 'Carauari', 'AM', 1301001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5675, 'Coari', 'AM', 1301209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5676, 'Codajás', 'AM', 1301308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5677, 'Eirunepé', 'AM', 1301407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5678, 'Envira', 'AM', 1301506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5681, 'Humaitá', 'AM', 1301704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5682, 'Ipixuna', 'AM', 1301803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5685, 'Itamarati', 'AM', 1301951);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5689, 'Jutaí', 'AM', 1302306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5690, 'Lábrea', 'AM', 1302405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5691, 'Manacapuru', 'AM', 1302504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5692, 'Manaquiri', 'AM', 1302553);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5693, 'Manaus', 'AM', 1302603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5695, 'Maraã', 'AM', 1302801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5696, 'Maués', 'AM', 1302900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5697, 'Nhamundá', 'AM', 1303007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5699, 'Novo Airão', 'AM', 1303205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5700, 'Novo Aripuanã', 'AM', 1303304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5705, 'Santa Isabel do Rio Negro', 'AM', 1303601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5706, 'Santo Antônio do Içá', 'AM', 1303700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5709, 'São Sebastião do Uatumã', 'AM', 1303957);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5711, 'Tabatinga', 'AM', 1304062);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5712, 'Tapauá', 'AM', 1304104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5713, 'Tefé', 'AM', 1304203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5715, 'Uarini', 'AM', 1304260);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5717, 'Urucurituba', 'AM', 1304401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5719, 'Alto Alegre', 'RR', 1400050);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5720, 'Boa Vista', 'RR', 1400100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5722, 'Cantá', 'RR', 1400175);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5724, 'Caroebe', 'RR', 1400233);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5726, 'Mucajaí', 'RR', 1400308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5727, 'Normandia', 'RR', 1400407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5731, 'São Luiz', 'RR', 1400605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5734, 'Abel Figueiredo', 'PA', 1500131);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5735, 'Acará', 'PA', 1500206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5739, 'Almeirim', 'PA', 1500503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5740, 'Altamira', 'PA', 1500602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5741, 'Anajás', 'PA', 1500701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5743, 'Anapu', 'PA', 1500859);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5746, 'Aveiro', 'PA', 1501006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5747, 'Bagre', 'PA', 1501105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5749, 'Bannach', 'PA', 1501253);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5750, 'Barcarena', 'PA', 1501303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5751, 'Belém', 'PA', 1501402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5753, 'Benevides', 'PA', 1501501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5754, 'Bom Jesus do Tocantins', 'PA', 1501576);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5755, 'Bonito', 'PA', 1501600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5758, 'Brejo Grande do Araguaia', 'PA', 1501758);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5759, 'Breu Branco', 'PA', 1501782);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5761, 'Bujaru', 'PA', 1501907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5762, 'Cachoeira do Piriá', 'PA', 1501956);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5765, 'Canaã dos Carajás', 'PA', 1502152);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5766, 'Capanema', 'PA', 1502202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5767, 'Capitão Poço', 'PA', 1502301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5768, 'Castanhal', 'PA', 1502400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5771, 'Conceição do Araguaia', 'PA', 1502707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5773, 'Cumaru do Norte', 'PA', 1502764);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5778, 'Dom Eliseu', 'PA', 1502939);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5779, 'Eldorado dos Carajás', 'PA', 1502954);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5780, 'Faro', 'PA', 1503002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5781, 'Floresta do Araguaia', 'PA', 1503044);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5783, 'Goianésia do Pará', 'PA', 1503093);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5787, 'Inhangapi', 'PA', 1503408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5789, 'Irituia', 'PA', 1503507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5791, 'Itupiranga', 'PA', 1503705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5792, 'Jacareacanga', 'PA', 1503754);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5796, 'Mãe do Rio', 'PA', 1504059);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5798, 'Marabá', 'PA', 1504208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5800, 'Marapanim', 'PA', 1504406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5802, 'Medicilândia', 'PA', 1504455);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5803, 'Melgaço', 'PA', 1504505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5804, 'Mocajuba', 'PA', 1504604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5805, 'Moju', 'PA', 1504703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5807, 'Monte Alegre', 'PA', 1504802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5808, 'Muaná', 'PA', 1504901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5816, 'Oriximiná', 'PA', 1505304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5820, 'Palestina do Pará', 'PA', 1505494);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5824, 'Peixe-Boi', 'PA', 1505601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5825, 'Piçarra', 'PA', 1505635);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5827, 'Ponta de Pedras', 'PA', 1505700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5829, 'Porto de Moz', 'PA', 1505908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5831, 'Primavera', 'PA', 1506104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5833, 'Redenção', 'PA', 1506138);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5835, 'Rondon do Pará', 'PA', 1506187);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5839, 'Santa Bárbara do Pará', 'PA', 1506351);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5841, 'Santa Isabel do Pará', 'PA', 1506500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5842, 'Santa Luzia do Pará', 'PA', 1506559);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5845, 'Santana do Araguaia', 'PA', 1506708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5846, 'Santarém', 'PA', 1506807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5848, 'Santo Antônio do Tauá', 'PA', 1507003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5851, 'São Domingos do Capim', 'PA', 1507201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5852, 'São Félix do Xingu', 'PA', 1507300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5855, 'São João da Ponta', 'PA', 1507466);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5856, 'São João de Pirabas', 'PA', 1507474);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5857, 'São João do Araguaia', 'PA', 1507508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5860, 'Sapucaia', 'PA', 1507755);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5862, 'Soure', 'PA', 1507904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5866, 'Tomé-Açu', 'PA', 1508001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5867, 'Tracuateua', 'PA', 1508035);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5868, 'Trairão', 'PA', 1508050);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5869, 'Tucumã', 'PA', 1508084);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5870, 'Tucuruí', 'PA', 1508100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5872, 'Uruará', 'PA', 1508159);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5873, 'Vigia', 'PA', 1508209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5879, 'Pedra Branca do Amapari', 'AP', 1600154);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5882, 'Ferreira Gomes', 'AP', 1600238);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5883, 'Itaubal', 'AP', 1600253);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5884, 'Laranjal do Jari', 'AP', 1600279);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5886, 'Mazagão', 'AP', 1600402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5889, 'Pracuúba', 'AP', 1600550);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5890, 'Santana', 'AP', 1600600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5891, 'Tartarugalzinho', 'AP', 1600709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5899, 'Angico', 'TO', 1701051);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5900, 'Aparecida do Rio Negro', 'TO', 1701101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5902, 'Araguacema', 'TO', 1701903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5904, 'Araguaína', 'TO', 1702109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5905, 'Araguanã', 'TO', 1702158);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5907, 'Arapoema', 'TO', 1702307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5908, 'Arraias', 'TO', 1702406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5909, 'Augustinópolis', 'TO', 1702554);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5911, 'Axixá do Tocantins', 'TO', 1702901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5913, 'Bandeirantes do Tocantins', 'TO', 1703057);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5914, 'Barra do Ouro', 'TO', 1703073);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5916, 'Bernardo Sayão', 'TO', 1703206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5919, 'Brejinho de Nazaré', 'TO', 1703701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5920, 'Buriti do Tocantins', 'TO', 1703800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5921, 'Cachoeirinha', 'TO', 1703826);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5925, 'Carrasco Bonito', 'TO', 1703891);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5927, 'Centenário', 'TO', 1704105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5931, 'Combinado', 'TO', 1705557);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5932, 'Conceição do Tocantins', 'TO', 1705607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5938, 'Divinópolis do Tocantins', 'TO', 1707108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5939, 'Dois Irmãos do Tocantins', 'TO', 1707207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5943, 'Figueirópolis', 'TO', 1707652);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5948, 'Goiatins', 'TO', 1709005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5949, 'Guaraí', 'TO', 1709302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5950, 'Gurupi', 'TO', 1709500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5956, 'Jaú do Tocantins', 'TO', 1711506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5958, 'Lagoa da Confusão', 'TO', 1711902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5960, 'Lajeado', 'TO', 1712009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5961, 'Lavandeira', 'TO', 1712157);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5962, 'Lizarda', 'TO', 1712405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5963, 'Luzinópolis', 'TO', 1712454);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5965, 'Mateiros', 'TO', 1712702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5966, 'Maurilândia do Tocantins', 'TO', 1712801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5967, 'Miracema do Tocantins', 'TO', 1713205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5969, 'Monte do Carmo', 'TO', 1713601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5972, 'Muricilândia', 'TO', 1713957);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5973, 'Natividade', 'TO', 1714203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5974, 'Nazaré', 'TO', 1714302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5975, 'Nova Olinda', 'TO', 1714880);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5976, 'Nova Rosalândia', 'TO', 1715002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5978, 'Novo Alegre', 'TO', 1715150);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5982, 'Palmeirópolis', 'TO', 1715754);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5985, 'Pau D''Arco', 'TO', 1716307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5986, 'Pedro Afonso', 'TO', 1716505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5988, 'Pequizeiro', 'TO', 1716653);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5990, 'Pindorama do Tocantins', 'TO', 1717008);

--
-- Data for table public.cidade (OID = 46301) (LIMIT 3000,500)
--
INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5991, 'Piraquê', 'TO', 1717206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5993, 'Ponte Alta do Bom Jesus', 'TO', 1717800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5995, 'Porto Alegre do Tocantins', 'TO', 1718006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5996, 'Porto Nacional', 'TO', 1718204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (5999, 'Pugmil', 'TO', 1718451);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6001, 'Riachinho', 'TO', 1718550);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6002, 'Rio da Conceição', 'TO', 1718659);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6005, 'Sampaio', 'TO', 1718808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6006, 'Sandolândia', 'TO', 1718840);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6007, 'Santa Fé do Araguaia', 'TO', 1718865);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6010, 'Santa Rosa do Tocantins', 'TO', 1718907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6014, 'São Félix do Tocantins', 'TO', 1720150);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6015, 'São Miguel do Tocantins', 'TO', 1720200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6016, 'São Salvador do Tocantins', 'TO', 1720259);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6020, 'Sítio Novo do Tocantins', 'TO', 1720804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6022, 'Taguatinga', 'TO', 1720903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6023, 'Taipas do Tocantins', 'TO', 1720937);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6024, 'Talismã', 'TO', 1720978);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6026, 'Tocantínia', 'TO', 1721109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6029, 'Tupiratins', 'TO', 1721307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6030, 'Wanderlândia', 'TO', 1722081);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6033, 'Afonso Cunha', 'MA', 2100105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6038, 'Alto Alegre do Maranhão', 'MA', 2100436);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6039, 'Alto Alegre do Pindaré', 'MA', 2100477);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6040, 'Alto Parnaíba', 'MA', 2100501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6041, 'Amapá do Maranhão', 'MA', 2100550);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6043, 'Anajatuba', 'MA', 2100709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6044, 'Anapurus', 'MA', 2100808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6045, 'Apicum-Açu', 'MA', 2100832);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6047, 'Araioses', 'MA', 2100907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6048, 'Arame', 'MA', 2100956);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6049, 'Arari', 'MA', 2101004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6050, 'Axixá', 'MA', 2101103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6055, 'Balsas', 'MA', 2101400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6058, 'Barreirinhas', 'MA', 2101707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6060, 'Bela Vista do Maranhão', 'MA', 2101772);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6063, 'Bernardo do Mearim', 'MA', 2101939);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6064, 'Boa Vista do Gurupi', 'MA', 2101970);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6065, 'Bom Jardim', 'MA', 2102002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6066, 'Bom Jesus das Selvas', 'MA', 2102036);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6067, 'Bom Lugar', 'MA', 2102077);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6070, 'Buriti', 'MA', 2102200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6071, 'Buriti Bravo', 'MA', 2102309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6072, 'Buriticupu', 'MA', 2102325);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6074, 'Cachoeira Grande', 'MA', 2102374);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6077, 'Campestre do Maranhão', 'MA', 2102556);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6079, 'Cantanhede', 'MA', 2102705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6080, 'Capinzal do Norte', 'MA', 2102754);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6082, 'Carutapera', 'MA', 2102903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6083, 'Caxias', 'MA', 2103000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6086, 'Centro do Guilherme', 'MA', 2103158);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6091, 'Coelho Neto', 'MA', 2103406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6092, 'Colinas', 'MA', 2103505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6093, 'Conceição do Lago-Açu', 'MA', 2103554);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6095, 'Cururupu', 'MA', 2103703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6098, 'Duque Bacelar', 'MA', 2103901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6100, 'Estreito', 'MA', 2104057);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6101, 'Feira Nova do Maranhão', 'MA', 2104073);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6102, 'Fernando Falcão', 'MA', 2104081);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6104, 'Fortaleza dos Nogueiras', 'MA', 2104107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6107, 'Gonçalves Dias', 'MA', 2104404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6109, 'Governador Edison Lobão', 'MA', 2104552);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6112, 'Governador Newton Bello', 'MA', 2104651);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6113, 'Governador Nunes Freire', 'MA', 2104677);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6114, 'Graça Aranha', 'MA', 2104701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6116, 'Guimarães', 'MA', 2104909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6118, 'Icatu', 'MA', 2105104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6119, 'Igarapé do Meio', 'MA', 2105153);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6120, 'Igarapé Grande', 'MA', 2105203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6121, 'Imperatriz', 'MA', 2105302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6123, 'Itapecuru Mirim', 'MA', 2105401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6125, 'Jatobá', 'MA', 2105450);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6127, 'João Lisboa', 'MA', 2105500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6128, 'Joselândia', 'MA', 2105609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6130, 'Lago da Pedra', 'MA', 2105708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6132, 'Lago Verde', 'MA', 2105906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6133, 'Lagoa do Mato', 'MA', 2105922);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6135, 'Lagoa Grande do Maranhão', 'MA', 2105963);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6137, 'Lima Campos', 'MA', 2106003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6138, 'Loreto', 'MA', 2106102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6139, 'Luís Domingues', 'MA', 2106201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6141, 'Maracaçumé', 'MA', 2106326);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6142, 'Marajá do Sena', 'MA', 2106359);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6144, 'Mata Roma', 'MA', 2106409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6150, 'Miranda do Norte', 'MA', 2106755);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6151, 'Mirinzal', 'MA', 2106805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6152, 'Monção', 'MA', 2106904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6154, 'Morros', 'MA', 2107100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6155, 'Nina Rodrigues', 'MA', 2107209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6156, 'Nova Colinas', 'MA', 2107258);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6159, 'Olho D''Água das Cunhãs', 'MA', 2107407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6164, 'Parnarama', 'MA', 2107803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6165, 'Passagem Franca', 'MA', 2107902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6166, 'Pastos Bons', 'MA', 2108009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6167, 'Paulino Neves', 'MA', 2108058);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6169, 'Pedreiras', 'MA', 2108207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6171, 'Penalva', 'MA', 2108306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6176, 'Pio XII', 'MA', 2108702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6180, 'Porto Rico do Maranhão', 'MA', 2109056);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6181, 'Presidente Dutra', 'MA', 2109106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6183, 'Presidente Médici', 'MA', 2109239);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6186, 'Primeira Cruz', 'MA', 2109403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6187, 'Raposa', 'MA', 2109452);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6189, 'Ribamar Fiquene', 'MA', 2109551);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6191, 'Sambaíba', 'MA', 2109700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6192, 'Santa Filomena do Maranhão', 'MA', 2109759);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6193, 'Santa Helena', 'MA', 2109809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6196, 'Santa Luzia do Paruá', 'MA', 2110039);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6197, 'Santa Quitéria do Maranhão', 'MA', 2110104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6199, 'Santana do Maranhão', 'MA', 2110237);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6200, 'Santo Amaro do Maranhão', 'MA', 2110278);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6201, 'Santo Antônio dos Lopes', 'MA', 2110302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6202, 'São Benedito do Rio Preto', 'MA', 2110401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6204, 'São Bernardo', 'MA', 2110609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6208, 'São Francisco do Brejão', 'MA', 2110856);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6213, 'São João do Soter', 'MA', 2111078);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6214, 'São João dos Patos', 'MA', 2111102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6215, 'São José de Ribamar', 'MA', 2111201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6216, 'São José dos Basílios', 'MA', 2111250);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6222, 'São Raimundo das Mangabeiras', 'MA', 2111607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6225, 'São Vicente Ferrer', 'MA', 2111706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6227, 'Senador Alexandre Costa', 'MA', 2111748);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6229, 'Serrano do Maranhão', 'MA', 2111789);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6231, 'Sucupira do Norte', 'MA', 2111904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6233, 'Tasso Fragoso', 'MA', 2112001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6234, 'Timbiras', 'MA', 2112100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6236, 'Trizidela do Vale', 'MA', 2112233);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6242, 'Urbano Santos', 'MA', 2112605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6244, 'Viana', 'MA', 2112803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6248, 'Zé Doca', 'MA', 2114007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6249, 'Acauã', 'PI', 2200053);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6250, 'Agricolândia', 'PI', 2200103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6251, 'Água Branca', 'PI', 2200202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6253, 'Alegrete do Piauí', 'PI', 2200277);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6258, 'Angical do Piauí', 'PI', 2200608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6260, 'Antônio Almeida', 'PI', 2200806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6261, 'Aroazes', 'PI', 2200905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6262, 'Aroeiras do Itaim', 'PI', 2200954);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6268, 'Barras', 'PI', 2201200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6269, 'Barreiras do Piauí', 'PI', 2201309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6271, 'Batalha', 'PI', 2201507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6273, 'Belém do Piauí', 'PI', 2201572);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6274, 'Beneditinos', 'PI', 2201606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6278, 'Bocaina', 'PI', 2201804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6279, 'Bom Jesus', 'PI', 2201903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6281, 'Bonfim do Piauí', 'PI', 2201929);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6283, 'Brasileira', 'PI', 2201960);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6285, 'Buriti dos Lopes', 'PI', 2202000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6286, 'Buriti dos Montes', 'PI', 2202026);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6290, 'Caldeirão Grande do Piauí', 'PI', 2202091);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6294, 'Campo Largo do Piauí', 'PI', 2202174);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6297, 'Canto do Buriti', 'PI', 2202307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6298, 'Capitão de Campos', 'PI', 2202406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6300, 'Caracol', 'PI', 2202505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6302, 'Caridade do Piauí', 'PI', 2202554);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6304, 'Caxingó', 'PI', 2202653);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6306, 'Cocal de Telha', 'PI', 2202711);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6311, 'Conceição do Canindé', 'PI', 2202802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6315, 'Cristino Castro', 'PI', 2203107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6317, 'Currais', 'PI', 2203230);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6318, 'Curralinhos', 'PI', 2203255);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6319, 'Curral Novo do Piauí', 'PI', 2203271);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6320, 'Demerval Lobão', 'PI', 2203305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6321, 'Dirceu Arcoverde', 'PI', 2203354);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6322, 'Dom Expedito Lopes', 'PI', 2203404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6325, 'Elesbão Veloso', 'PI', 2203503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6326, 'Eliseu Martins', 'PI', 2203602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6330, 'Floresta do Piauí', 'PI', 2203859);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6332, 'Francinópolis', 'PI', 2204006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6333, 'Francisco Ayres', 'PI', 2204105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6334, 'Francisco Macedo', 'PI', 2204154);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6338, 'Gilbués', 'PI', 2204402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6339, 'Guadalupe', 'PI', 2204501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6340, 'Guaribas', 'PI', 2204550);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6344, 'Ipiranga do Piauí', 'PI', 2204808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6345, 'Isaías Coelho', 'PI', 2204907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6347, 'Itaueira', 'PI', 2205102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6349, 'Jaicós', 'PI', 2205201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6351, 'Jatobá do Piauí', 'PI', 2205276);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6352, 'Jerumenha', 'PI', 2205300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6355, 'Joca Marques', 'PI', 2205458);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6357, 'Juazeiro do Piauí', 'PI', 2205516);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6358, 'Júlio Borges', 'PI', 2205524);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6360, 'Lagoinha do Piauí', 'PI', 2205540);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6361, 'Lagoa Alegre', 'PI', 2205557);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6365, 'Lagoa do Sítio', 'PI', 2205599);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6366, 'Landri Sales', 'PI', 2205607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6371, 'Marcolândia', 'PI', 2205953);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6375, 'Miguel Alves', 'PI', 2206209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6377, 'Milton Brandão', 'PI', 2206357);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6381, 'Morro Cabeça no Tempo', 'PI', 2206654);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6384, 'Nazaré do Piauí', 'PI', 2206704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6386, 'Nossa Senhora de Nazaré', 'PI', 2206753);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6387, 'Nossa Senhora dos Remédios', 'PI', 2206803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6388, 'Novo Oriente do Piauí', 'PI', 2206902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6389, 'Novo Santo Antônio', 'PI', 2206951);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6392, 'Padre Marcos', 'PI', 2207207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6394, 'Pajeú do Piauí', 'PI', 2207355);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6397, 'Paquetá', 'PI', 2207553);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6398, 'Parnaguá', 'PI', 2207603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6399, 'Parnaíba', 'PI', 2207702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6401, 'Patos do Piauí', 'PI', 2207777);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6404, 'Pavussu', 'PI', 2207850);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6405, 'Pedro II', 'PI', 2207900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6409, 'Pimenteiras', 'PI', 2208106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6410, 'Pio IX', 'PI', 2208205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6411, 'Piracuruca', 'PI', 2208304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6412, 'Piripiri', 'PI', 2208403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6413, 'Porto', 'PI', 2208502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6414, 'Porto Alegre do Piauí', 'PI', 2208551);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6415, 'Prata do Piauí', 'PI', 2208601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6416, 'Queimada Nova', 'PI', 2208650);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6417, 'Redenção do Gurguéia', 'PI', 2208700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6418, 'Regeneração', 'PI', 2208809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6419, 'Riacho Frio', 'PI', 2208858);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6421, 'Ribeiro Gonçalves', 'PI', 2208908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6422, 'Rio Grande do Piauí', 'PI', 2209005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6423, 'Santa Cruz do Piauí', 'PI', 2209104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6424, 'Santa Cruz dos Milagres', 'PI', 2209153);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6425, 'Santa Filomena', 'PI', 2209203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6432, 'São Braz do Piauí', 'PI', 2209559);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6433, 'São Félix do Piauí', 'PI', 2209609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6436, 'São Gonçalo do Gurguéia', 'PI', 2209757);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6437, 'São Gonçalo do Piauí', 'PI', 2209807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6439, 'São João da Fronteira', 'PI', 2209872);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6440, 'São João da Serra', 'PI', 2209906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6442, 'São João do Arraial', 'PI', 2209971);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6443, 'São João do Piauí', 'PI', 2210003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6447, 'São Julião', 'PI', 2210300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6448, 'São Lourenço do Piauí', 'PI', 2210359);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6450, 'São Miguel da Baixa Grande', 'PI', 2210383);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6454, 'São Raimundo Nonato', 'PI', 2210607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6456, 'Sebastião Leal', 'PI', 2210631);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6458, 'Simões', 'PI', 2210706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6459, 'Simplício Mendes', 'PI', 2210805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6461, 'Sussuapara', 'PI', 2210938);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6463, 'Tanque do Piauí', 'PI', 2210979);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6466, 'Uruçuí', 'PI', 2211209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6467, 'Valença do Piauí', 'PI', 2211308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6468, 'Várzea Branca', 'PI', 2211357);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6471, 'Vila Nova do Piauí', 'PI', 2211605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6472, 'Wall Ferraz', 'PI', 2211704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6473, 'Abaiara', 'CE', 2300101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6476, 'Acopiara', 'CE', 2300309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6479, 'Altaneira', 'CE', 2300606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6480, 'Alto Santo', 'CE', 2300705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6481, 'Amontada', 'CE', 2300754);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6482, 'Antonina do Norte', 'CE', 2300804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6484, 'Aquiraz', 'CE', 2301000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6486, 'Aracoiaba', 'CE', 2301208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6488, 'Araripe', 'CE', 2301307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6489, 'Aratuba', 'CE', 2301406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6491, 'Assaré', 'CE', 2301604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6493, 'Baixio', 'CE', 2301802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6494, 'Banabuiú', 'CE', 2301851);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6495, 'Barbalha', 'CE', 2301901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6497, 'Barro', 'CE', 2302008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6498, 'Barroquinha', 'CE', 2302057);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6499, 'Baturité', 'CE', 2302107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6502, 'Boa Viagem', 'CE', 2302404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6503, 'Brejo Santo', 'CE', 2302503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6506, 'Canindé', 'CE', 2302800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6507, 'Capistrano', 'CE', 2302909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6510, 'Caririaçu', 'CE', 2303204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6512, 'Carnaubal', 'CE', 2303402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6514, 'Catarina', 'CE', 2303600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6519, 'Choró', 'CE', 2303931);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6520, 'Chorozinho', 'CE', 2303956);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6525, 'Cruz', 'CE', 2304251);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6527, 'Ererê', 'CE', 2304277);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6528, 'Eusébio', 'CE', 2304285);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6529, 'Farias Brito', 'CE', 2304301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6531, 'Fortaleza', 'CE', 2304400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6534, 'General Sampaio', 'CE', 2304608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6536, 'Granja', 'CE', 2304707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6539, 'Guaiúba', 'CE', 2304954);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6540, 'Guaraciaba do Norte', 'CE', 2305001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6542, 'Hidrolândia', 'CE', 2305209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6543, 'Horizonte', 'CE', 2305233);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6544, 'Ibaretama', 'CE', 2305266);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6546, 'Ibicuitinga', 'CE', 2305332);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6547, 'Icapuí', 'CE', 2305357);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6550, 'Independência', 'CE', 2305605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6552, 'Ipaumirim', 'CE', 2305704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6554, 'Ipueiras', 'CE', 2305902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6556, 'Irauçuba', 'CE', 2306108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6557, 'Itaiçaba', 'CE', 2306207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6559, 'Itapagé', 'CE', 2306306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6560, 'Itapipoca', 'CE', 2306405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6561, 'Itapiúna', 'CE', 2306504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6562, 'Itarema', 'CE', 2306553);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6565, 'Jaguaribara', 'CE', 2306801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6567, 'Jaguaruana', 'CE', 2307007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6569, 'Jati', 'CE', 2307205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6570, 'Jijoca de Jericoacoara', 'CE', 2307254);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6574, 'Limoeiro do Norte', 'CE', 2307601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6576, 'Maracanaú', 'CE', 2307650);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6578, 'Marco', 'CE', 2307809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6581, 'Mauriti', 'CE', 2308104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6583, 'Milagres', 'CE', 2308302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6584, 'Milhã', 'CE', 2308351);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6586, 'Missão Velha', 'CE', 2308401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6588, 'Monsenhor Tabosa', 'CE', 2308609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6591, 'Morrinhos', 'CE', 2308906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6592, 'Mucambo', 'CE', 2309003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6595, 'Nova Russas', 'CE', 2309300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6596, 'Novo Oriente', 'CE', 2309409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6599, 'Pacajus', 'CE', 2309607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6600, 'Pacatuba', 'CE', 2309706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6602, 'Pacujá', 'CE', 2309904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6609, 'Pedra Branca', 'CE', 2310506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6612, 'Pereiro', 'CE', 2310803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6613, 'Pindoretama', 'CE', 2310852);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6615, 'Pires Ferreira', 'CE', 2310951);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6621, 'Quixadá', 'CE', 2311306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6623, 'Quixeramobim', 'CE', 2311405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6625, 'Redenção', 'CE', 2311603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6629, 'Salitre', 'CE', 2311959);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6631, 'Santana do Cariri', 'CE', 2312106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6633, 'São Benedito', 'CE', 2312304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6634, 'São Gonçalo do Amarante', 'CE', 2312403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6638, 'Senador Sá', 'CE', 2312809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6642, 'Tamboril', 'CE', 2313203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6644, 'Tauá', 'CE', 2313302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6645, 'Tejuçuoca', 'CE', 2313351);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6649, 'Ubajara', 'CE', 2313609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6651, 'Umirim', 'CE', 2313757);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6653, 'Uruoca', 'CE', 2313906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6655, 'Várzea Alegre', 'CE', 2314003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6656, 'Viçosa do Ceará', 'CE', 2314102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6661, 'Alexandria', 'RN', 2400505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6662, 'Almino Afonso', 'RN', 2400604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6665, 'Antônio Martins', 'RN', 2400901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6667, 'Areia Branca', 'RN', 2401107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6669, 'Augusto Severo', 'RN', 2401305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6672, 'Barcelona', 'RN', 2401503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6673, 'Bento Fernandes', 'RN', 2401602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6679, 'Caicó', 'RN', 2402006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6680, 'Campo Redondo', 'RN', 2402105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6685, 'Ceará-Mirim', 'RN', 2402600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6689, 'Cruzeta', 'RN', 2403004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6693, 'Encanto', 'RN', 2403301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6694, 'Equador', 'RN', 2403400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6699, 'Florânia', 'RN', 2403806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6702, 'Galinhos', 'RN', 2404101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6706, 'Guamaré', 'RN', 2404507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6708, 'Ipanguaçu', 'RN', 2404705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6709, 'Ipueira', 'RN', 2404804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6710, 'Itajá', 'RN', 2404853);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6712, 'Jaçanã', 'RN', 2405009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6713, 'Jandaíra', 'RN', 2405108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6718, 'Jardim de Piranhas', 'RN', 2405603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6721, 'João Dias', 'RN', 2405900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6722, 'José da Penha', 'RN', 2406007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6723, 'Jucurutu', 'RN', 2406106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6724, 'Jundiá', 'RN', 2406155);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6726, 'Lagoa de Pedras', 'RN', 2406304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6728, 'Lagoa Nova', 'RN', 2406502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6729, 'Lagoa Salgada', 'RN', 2406601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6730, 'Lajes', 'RN', 2406700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6732, 'Lucrécia', 'RN', 2406908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6734, 'Macaíba', 'RN', 2407104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6736, 'Major Sales', 'RN', 2407252);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6737, 'Marcelino Vieira', 'RN', 2407302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6739, 'Maxaranguape', 'RN', 2407500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6741, 'Montanhas', 'RN', 2407708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6742, 'Monte Alegre', 'RN', 2407807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6743, 'Monte das Gameleiras', 'RN', 2407906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6744, 'Mossoró', 'RN', 2408003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6745, 'Natal', 'RN', 2408102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6746, 'Nísia Floresta', 'RN', 2408201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6747, 'Nova Cruz', 'RN', 2408300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6748, 'Olho-D''Água do Borges', 'RN', 2408409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6750, 'Paraná', 'RN', 2408607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6752, 'Parazinho', 'RN', 2408805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6754, 'Rio do Fogo', 'RN', 2408953);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6755, 'Passa e Fica', 'RN', 2409100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6762, 'Pedro Avelino', 'RN', 2409704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6763, 'Pedro Velho', 'RN', 2409803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6766, 'Poço Branco', 'RN', 2410108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6767, 'Portalegre', 'RN', 2410207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6768, 'Porto do Mangue', 'RN', 2410256);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6770, 'Pureza', 'RN', 2410405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6771, 'Rafael Fernandes', 'RN', 2410504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6772, 'Rafael Godeiro', 'RN', 2410603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6773, 'Riacho da Cruz', 'RN', 2410702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6776, 'Rodolfo Fernandes', 'RN', 2411007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6779, 'Santa Cruz', 'RN', 2411205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6780, 'Santana do Matos', 'RN', 2411403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6782, 'Santo Antônio', 'RN', 2411502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6785, 'São Fernando', 'RN', 2411809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6786, 'São Francisco do Oeste', 'RN', 2411908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6789, 'São José de Mipibu', 'RN', 2412203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6792, 'São Miguel', 'RN', 2412500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6797, 'São Tomé', 'RN', 2412906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6803, 'Serra Negra do Norte', 'RN', 2413409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6804, 'Serrinha', 'RN', 2413508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6807, 'Sítio Novo', 'RN', 2413706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6808, 'Taboleiro Grande', 'RN', 2413805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6809, 'Taipu', 'RN', 2413904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6811, 'Tenente Ananias', 'RN', 2414100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6812, 'Tenente Laurentino Cruz', 'RN', 2414159);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6818, 'Upanema', 'RN', 2414605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6819, 'Várzea', 'RN', 2414704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6820, 'Venha-Ver', 'RN', 2414753);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6823, 'Vila Flor', 'RN', 2415008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6824, 'Água Branca', 'PB', 2500106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6826, 'Alagoa Grande', 'PB', 2500304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6830, 'Algodão de Jandaíra', 'PB', 2500577);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6833, 'Amparo', 'PB', 2500734);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6834, 'Aparecida', 'PB', 2500775);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6838, 'Areia', 'PB', 2501104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6843, 'Baía da Traição', 'PB', 2501401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6844, 'Bananeiras', 'PB', 2501500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6845, 'Baraúna', 'PB', 2501534);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6847, 'Barra de Santa Rosa', 'PB', 2501609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6850, 'Belém', 'PB', 2501906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6852, 'Bernardino Batista', 'PB', 2502052);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6858, 'Boqueirão', 'PB', 2502508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6859, 'Igaracy', 'PB', 2502607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6861, 'Brejo do Cruz', 'PB', 2502805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6864, 'Cabaceiras', 'PB', 2503100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6865, 'Cabedelo', 'PB', 2503209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6866, 'Cachoeira dos Índios', 'PB', 2503308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6867, 'Cacimba de Areia', 'PB', 2503407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6869, 'Cacimbas', 'PB', 2503555);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6873, 'Caldas Brandão', 'PB', 2503803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6875, 'Campina Grande', 'PB', 2504009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6877, 'Caraúbas', 'PB', 2504074);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6878, 'Carrapateira', 'PB', 2504108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6883, 'Conceição', 'PB', 2504405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6884, 'Condado', 'PB', 2504504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6886, 'Congo', 'PB', 2504702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6889, 'Cruz do Espírito Santo', 'PB', 2504900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6893, 'Cuité de Mamanguape', 'PB', 2505238);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6898, 'Vista Serrana', 'PB', 2505501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6900, 'Dona Inês', 'PB', 2505709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6902, 'Emas', 'PB', 2505907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6904, 'Fagundes', 'PB', 2506103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6908, 'Gurinhém', 'PB', 2506400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6910, 'Ibiara', 'PB', 2506608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6911, 'Imaculada', 'PB', 2506707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6915, 'Itapororoca', 'PB', 2507101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6917, 'Jacaraú', 'PB', 2507309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6918, 'Jericó', 'PB', 2507408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6919, 'João Pessoa', 'PB', 2507507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6921, 'Juazeirinho', 'PB', 2507705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6922, 'Junco do Seridó', 'PB', 2507804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6923, 'Juripiranga', 'PB', 2507903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6925, 'Lagoa', 'PB', 2508109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6929, 'Livramento', 'PB', 2508505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6932, 'Mãe D''Água', 'PB', 2508703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6935, 'Manaíra', 'PB', 2509008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6938, 'Marizópolis', 'PB', 2509156);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6939, 'Massaranduba', 'PB', 2509206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6940, 'Mataraca', 'PB', 2509305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6941, 'Matinhas', 'PB', 2509339);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6942, 'Mato Grosso', 'PB', 2509370);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6944, 'Mogeiro', 'PB', 2509404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6946, 'Monte Horebe', 'PB', 2509602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6949, 'Natuba', 'PB', 2509909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6951, 'Nova Floresta', 'PB', 2510105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6952, 'Nova Olinda', 'PB', 2510204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6956, 'Ouro Velho', 'PB', 2510600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6957, 'Parari', 'PB', 2510659);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6958, 'Passagem', 'PB', 2510709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6960, 'Paulista', 'PB', 2510907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6961, 'Pedra Branca', 'PB', 2511004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6964, 'Piancó', 'PB', 2511301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6965, 'Picuí', 'PB', 2511400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6967, 'Pilões', 'PB', 2511608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6973, 'Poço de José de Moura', 'PB', 2512077);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6975, 'Prata', 'PB', 2512200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6976, 'Princesa Isabel', 'PB', 2512309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6980, 'Remígio', 'PB', 2512705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6984, 'Riachão do Poço', 'PB', 2512762);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6988, 'Salgadinho', 'PB', 2513000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6989, 'Salgado de São Félix', 'PB', 2513109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6990, 'Santa Cecília', 'PB', 2513158);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6991, 'Santa Cruz', 'PB', 2513208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6992, 'Santa Helena', 'PB', 2513307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6994, 'Santa Luzia', 'PB', 2513406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6995, 'Santana de Mangueira', 'PB', 2513505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6996, 'Santana dos Garrotes', 'PB', 2513604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6997, 'Joca Claudino', 'PB', 2513653);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (6998, 'Santa Rita', 'PB', 2513703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7002, 'São Bentinho', 'PB', 2513927);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7006, 'São João do Cariri', 'PB', 2514008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7008, 'São José da Lagoa Tapada', 'PB', 2514206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7011, 'São José dos Ramos', 'PB', 2514453);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7012, 'São José de Piranhas', 'PB', 2514503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7015, 'São José do Brejo do Cruz', 'PB', 2514651);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7016, 'São José do Sabugi', 'PB', 2514701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7017, 'São José dos Cordeiros', 'PB', 2514800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7019, 'São Miguel de Taipu', 'PB', 2515005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7020, 'São Sebastião de Lagoa de Roça', 'PB', 2515104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7023, 'São Vicente do Seridó', 'PB', 2515401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7029, 'Sertãozinho', 'PB', 2515930);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7031, 'Solânea', 'PB', 2516003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7033, 'Sossêgo', 'PB', 2516151);

--
-- Data for table public.cidade (OID = 46301) (LIMIT 3500,500)
--
INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7034, 'Sousa', 'PB', 2516201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7035, 'Sumé', 'PB', 2516300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7036, 'Tacima', 'PB', 2516409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7040, 'Tenório', 'PB', 2516755);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7043, 'Umbuzeiro', 'PB', 2517001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7044, 'Várzea', 'PB', 2517100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7046, 'Zabelê', 'PB', 2517407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7048, 'Afogados da Ingazeira', 'PE', 2600104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7049, 'Afrânio', 'PE', 2600203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7051, 'Água Preta', 'PE', 2600401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7052, 'Águas Belas', 'PE', 2600500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7057, 'Angelim', 'PE', 2601003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7058, 'Araçoiaba', 'PE', 2601052);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7059, 'Araripina', 'PE', 2601102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7062, 'Barreiros', 'PE', 2601409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7063, 'Belém de Maria', 'PE', 2601508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7064, 'Belém do São Francisco', 'PE', 2601607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7068, 'Bodocó', 'PE', 2602001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7069, 'Bom Conselho', 'PE', 2602100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7071, 'Bonito', 'PE', 2602308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7073, 'Brejinho', 'PE', 2602506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7074, 'Brejo da Madre de Deus', 'PE', 2602605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7075, 'Buenos Aires', 'PE', 2602704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7077, 'Cabo de Santo Agostinho', 'PE', 2602902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7079, 'Cachoeirinha', 'PE', 2603108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7080, 'Caetés', 'PE', 2603207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7081, 'Calçado', 'PE', 2603306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7083, 'Camaragibe', 'PE', 2603454);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7084, 'Camocim de São Félix', 'PE', 2603504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7089, 'Carnaubeira da Penha', 'PE', 2603926);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7093, 'Catende', 'PE', 2604205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7096, 'Chã Grande', 'PE', 2604502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7098, 'Correntes', 'PE', 2604700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7102, 'Custódia', 'PE', 2605103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7103, 'Dormentes', 'PE', 2605152);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7105, 'Exu', 'PE', 2605301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7108, 'Ferreiros', 'PE', 2605509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7110, 'Floresta', 'PE', 2605707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7111, 'Frei Miguelinho', 'PE', 2605806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7112, 'Gameleira', 'PE', 2605905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7113, 'Garanhuns', 'PE', 2606002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7114, 'Glória do Goitá', 'PE', 2606101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7117, 'Gravatá', 'PE', 2606408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7119, 'Ibimirim', 'PE', 2606606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7120, 'Ibirajuba', 'PE', 2606705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7123, 'Inajá', 'PE', 2607000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7125, 'Ipojuca', 'PE', 2607208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7128, 'Itaíba', 'PE', 2607505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7130, 'Itambé', 'PE', 2607653);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7131, 'Itapetim', 'PE', 2607703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7134, 'Jaboatão dos Guararapes', 'PE', 2607901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7135, 'Jaqueira', 'PE', 2607950);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7137, 'Jatobá', 'PE', 2608057);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7138, 'João Alfredo', 'PE', 2608107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7139, 'Joaquim Nabuco', 'PE', 2608206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7142, 'Jurema', 'PE', 2608404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7143, 'Lagoa do Carro', 'PE', 2608453);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7144, 'Lagoa de Itaenga', 'PE', 2608503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7146, 'Lagoa dos Gatos', 'PE', 2608701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7147, 'Lagoa Grande', 'PE', 2608750);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7148, 'Lajedo', 'PE', 2608800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7149, 'Limoeiro', 'PE', 2608909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7156, 'Nazaré da Mata', 'PE', 2609501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7158, 'Orobó', 'PE', 2609709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7159, 'Orocó', 'PE', 2609808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7163, 'Panelas', 'PE', 2610202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7167, 'Paudalho', 'PE', 2610608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7169, 'Pedra', 'PE', 2610806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7171, 'Petrolândia', 'PE', 2611002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7175, 'Primavera', 'PE', 2611408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7177, 'Quixaba', 'PE', 2611533);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7180, 'Ribeirão', 'PE', 2611804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7181, 'Rio Formoso', 'PE', 2611903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7184, 'Salgueiro', 'PE', 2612208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7185, 'Saloá', 'PE', 2612307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7187, 'Santa Cruz', 'PE', 2612455);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7190, 'Santa Filomena', 'PE', 2612554);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7193, 'Santa Terezinha', 'PE', 2612802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7194, 'São Benedito do Sul', 'PE', 2612901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7195, 'São Bento do Una', 'PE', 2613008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7198, 'São Joaquim do Monte', 'PE', 2613305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7200, 'São José do Belmonte', 'PE', 2613503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7204, 'Serra Talhada', 'PE', 2613909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7206, 'Sertânia', 'PE', 2614105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7209, 'Solidão', 'PE', 2614402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7211, 'Tabira', 'PE', 2614600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7212, 'Tacaimbó', 'PE', 2614709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7214, 'Tamandaré', 'PE', 2614857);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7215, 'Taquaritinga do Norte', 'PE', 2615003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7218, 'Timbaúba', 'PE', 2615300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7220, 'Tracunhaém', 'PE', 2615508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7224, 'Tuparetama', 'PE', 2615904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7228, 'Vertentes', 'PE', 2616209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7230, 'Vitória de Santo Antão', 'PE', 2616407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7231, 'Xexéu', 'PE', 2616506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7233, 'Anadia', 'AL', 2700201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7235, 'Atalaia', 'AL', 2700409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7241, 'Boca da Mata', 'AL', 2701001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7242, 'Branquinha', 'AL', 2701100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7243, 'Cacimbinhas', 'AL', 2701209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7244, 'Cajueiro', 'AL', 2701308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7246, 'Campo Alegre', 'AL', 2701407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7247, 'Campo Grande', 'AL', 2701506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7250, 'Carneiros', 'AL', 2701803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7252, 'Coité do Nóia', 'AL', 2702009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7253, 'Colônia Leopoldina', 'AL', 2702108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7254, 'Coqueiro Seco', 'AL', 2702207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7256, 'Craíbas', 'AL', 2702355);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7257, 'Delmiro Gouveia', 'AL', 2702405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7259, 'Estrela de Alagoas', 'AL', 2702553);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7260, 'Feira Grande', 'AL', 2702603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7262, 'Flexeiras', 'AL', 2702801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7263, 'Girau do Ponciano', 'AL', 2702900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7264, 'Ibateguara', 'AL', 2703007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7265, 'Igaci', 'AL', 2703106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7268, 'Jacaré dos Homens', 'AL', 2703403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7269, 'Jacuípe', 'AL', 2703502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7270, 'Japaratinga', 'AL', 2703601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7271, 'Jaramataia', 'AL', 2703700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7275, 'Junqueiro', 'AL', 2704005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7276, 'Lagoa da Canoa', 'AL', 2704104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7279, 'Major Isidoro', 'AL', 2704401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7280, 'Maragogi', 'AL', 2704500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7283, 'Maribondo', 'AL', 2704807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7289, 'Monteirópolis', 'AL', 2705408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7293, 'Olho D''Água do Casado', 'AL', 2705804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7296, 'Ouro Branco', 'AL', 2706109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7297, 'Palestina', 'AL', 2706208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7299, 'Pão de Açúcar', 'AL', 2706406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7301, 'Paripueira', 'AL', 2706448);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7302, 'Passo de Camaragibe', 'AL', 2706505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7305, 'Piaçabuçu', 'AL', 2706802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7307, 'Pindoba', 'AL', 2707008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7308, 'Piranhas', 'AL', 2707107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7310, 'Porto Calvo', 'AL', 2707305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7312, 'Porto Real do Colégio', 'AL', 2707503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7313, 'Quebrangulo', 'AL', 2707602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7315, 'Roteiro', 'AL', 2707800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7316, 'Santa Luzia do Norte', 'AL', 2707909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7318, 'Santana do Mundaú', 'AL', 2708105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7319, 'São Brás', 'AL', 2708204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7321, 'São José da Tapera', 'AL', 2708402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7322, 'São Luís do Quitunde', 'AL', 2708501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7323, 'São Miguel dos Campos', 'AL', 2708600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7325, 'São Sebastião', 'AL', 2708808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7328, 'Tanque D''Arca', 'AL', 2709004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7330, 'Teotônio Vilela', 'AL', 2709152);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7331, 'Traipu', 'AL', 2709202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7332, 'União dos Palmares', 'AL', 2709301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7334, 'Amparo de São Francisco', 'SE', 2800100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7338, 'Areia Branca', 'SE', 2800506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7339, 'Barra dos Coqueiros', 'SE', 2800605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7340, 'Boquim', 'SE', 2800670);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7341, 'Brejo Grande', 'SE', 2800704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7343, 'Canhoba', 'SE', 2801108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7346, 'Carira', 'SE', 2801405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7347, 'Carmópolis', 'SE', 2801504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7348, 'Cedro de São João', 'SE', 2801603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7349, 'Cristinápolis', 'SE', 2801702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7350, 'Cumbe', 'SE', 2801900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7355, 'Gararu', 'SE', 2802403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7359, 'Indiaroba', 'SE', 2802809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7361, 'Itabaianinha', 'SE', 2803005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7362, 'Itabi', 'SE', 2803104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7363, 'Itaporanga D''Ajuda', 'SE', 2803203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7364, 'Japaratuba', 'SE', 2803302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7366, 'Lagarto', 'SE', 2803500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7367, 'Laranjeiras', 'SE', 2803609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7370, 'Malhador', 'SE', 2803906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7372, 'Moita Bonita', 'SE', 2804102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7373, 'Monte Alegre de Sergipe', 'SE', 2804201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7374, 'Muribeca', 'SE', 2804300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7376, 'Nossa Senhora Aparecida', 'SE', 2804458);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7379, 'Nossa Senhora de Lourdes', 'SE', 2804706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7380, 'Nossa Senhora do Socorro', 'SE', 2804805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7385, 'Pirambu', 'SE', 2805307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7386, 'Poço Redondo', 'SE', 2805406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7388, 'Porto da Folha', 'SE', 2805604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7389, 'Propriá', 'SE', 2805703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7390, 'Riachão do Dantas', 'SE', 2805802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7391, 'Riachuelo', 'SE', 2805901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7392, 'Ribeirópolis', 'SE', 2806008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7393, 'Rosário do Catete', 'SE', 2806107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7395, 'Santa Luzia do Itanhy', 'SE', 2806305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7397, 'Santa Rosa de Lima', 'SE', 2806503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7398, 'Santo Amaro das Brotas', 'SE', 2806602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7400, 'São Domingos', 'SE', 2806800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7402, 'São Miguel do Aleixo', 'SE', 2807006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7405, 'Telha', 'SE', 2807303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7408, 'Umbaúba', 'SE', 2807600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7409, 'Abaíra', 'BA', 2900108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7416, 'Alagoinhas', 'BA', 2900702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7419, 'Amargosa', 'BA', 2901007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7420, 'Amélia Rodrigues', 'BA', 2901106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7421, 'América Dourada', 'BA', 2901155);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7423, 'Andaraí', 'BA', 2901304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7425, 'Angical', 'BA', 2901403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7426, 'Anguera', 'BA', 2901502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7427, 'Antas', 'BA', 2901601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7428, 'Antônio Cardoso', 'BA', 2901700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7429, 'Antônio Gonçalves', 'BA', 2901809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7432, 'Aracatu', 'BA', 2902005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7433, 'Araças', 'BA', 2902054);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7434, 'Araci', 'BA', 2902104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7436, 'Arataca', 'BA', 2902252);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7437, 'Aratuípe', 'BA', 2902302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7438, 'Aurelino Leal', 'BA', 2902401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7440, 'Baixa Grande', 'BA', 2902609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7441, 'Banzaê', 'BA', 2902658);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7442, 'Barra', 'BA', 2902708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7444, 'Barra do Choça', 'BA', 2902906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7447, 'Barreiras', 'BA', 2903201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7448, 'Barro Alto', 'BA', 2903235);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7450, 'Barro Preto', 'BA', 2903300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7452, 'Belo Campo', 'BA', 2903508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7455, 'Boa Vista do Tupim', 'BA', 2903805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7456, 'Bom Jesus da Lapa', 'BA', 2903904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7458, 'Boninal', 'BA', 2904001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7459, 'Bonito', 'BA', 2904050);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7460, 'Boquira', 'BA', 2904100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7463, 'Brejolândia', 'BA', 2904407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7468, 'Caatiba', 'BA', 2904803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7470, 'Cachoeira', 'BA', 2904902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7471, 'Caculé', 'BA', 2905008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7472, 'Caém', 'BA', 2905107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7473, 'Caetanos', 'BA', 2905156);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7474, 'Caetité', 'BA', 2905206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7476, 'Cairu', 'BA', 2905404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7477, 'Caldeirão Grande', 'BA', 2905503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7481, 'Campo Alegre de Lourdes', 'BA', 2905909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7482, 'Campo Formoso', 'BA', 2906006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7484, 'Canarana', 'BA', 2906204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7485, 'Canavieiras', 'BA', 2906303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7488, 'Candiba', 'BA', 2906600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7490, 'Cansanção', 'BA', 2906808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7492, 'Capela do Alto Alegre', 'BA', 2906857);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7495, 'Caravelas', 'BA', 2906907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7496, 'Cardeal da Silva', 'BA', 2907004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7498, 'Casa Nova', 'BA', 2907202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7499, 'Castro Alves', 'BA', 2907301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7502, 'Caturama', 'BA', 2907558);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7506, 'Cipó', 'BA', 2907905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7508, 'Cocos', 'BA', 2908101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7509, 'Conceição da Feira', 'BA', 2908200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7511, 'Conceição do Coité', 'BA', 2908408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7512, 'Conceição do Jacuípe', 'BA', 2908507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7513, 'Conde', 'BA', 2908606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7514, 'Condeúba', 'BA', 2908705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7516, 'Coração de Maria', 'BA', 2908903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7523, 'Crisópolis', 'BA', 2909604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7524, 'Cristópolis', 'BA', 2909703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7525, 'Cruz das Almas', 'BA', 2909802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7530, 'Dom Macedo Costa', 'BA', 2910206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7531, 'Elísio Medrado', 'BA', 2910305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7533, 'Entre Rios', 'BA', 2910503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7536, 'Eunápolis', 'BA', 2910727);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7538, 'Feira da Mata', 'BA', 2910776);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7539, 'Feira de Santana', 'BA', 2910800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7543, 'Formosa do Rio Preto', 'BA', 2911105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7544, 'Gandu', 'BA', 2911204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7546, 'Gentio do Ouro', 'BA', 2911303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7547, 'Glória', 'BA', 2911402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7548, 'Gongogi', 'BA', 2911501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7553, 'Heliópolis', 'BA', 2911857);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7557, 'Ibicoara', 'BA', 2912202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7558, 'Ibicuí', 'BA', 2912301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7559, 'Ibipeba', 'BA', 2912400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7561, 'Ibiquera', 'BA', 2912608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7562, 'Ibirapitanga', 'BA', 2912707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7565, 'Ibitiara', 'BA', 2913002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7567, 'Ibotirama', 'BA', 2913200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7568, 'Ichu', 'BA', 2913309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7570, 'Igrapiúna', 'BA', 2913457);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7571, 'Iguaí', 'BA', 2913507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7574, 'Ipecaetá', 'BA', 2913804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7576, 'Ipirá', 'BA', 2914000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7577, 'Ipupiara', 'BA', 2914109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7578, 'Irajuba', 'BA', 2914208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7579, 'Iramaia', 'BA', 2914307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7580, 'Iraquara', 'BA', 2914406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7582, 'Irecê', 'BA', 2914604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7583, 'Itabela', 'BA', 2914653);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7584, 'Itaberaba', 'BA', 2914703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7586, 'Itacaré', 'BA', 2914901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7589, 'Itagibá', 'BA', 2915205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7591, 'Itaguaçu da Bahia', 'BA', 2915353);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7592, 'Itaju do Colônia', 'BA', 2915403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7594, 'Itamaraju', 'BA', 2915601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7596, 'Itambé', 'BA', 2915809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7597, 'Itanagra', 'BA', 2915908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7598, 'Itanhém', 'BA', 2916005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7599, 'Itaparica', 'BA', 2916104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7602, 'Itapetinga', 'BA', 2916401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7604, 'Itapitanga', 'BA', 2916609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7607, 'Itatim', 'BA', 2916856);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7609, 'Itiúba', 'BA', 2917003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7613, 'Iuiú', 'BA', 2917334);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7614, 'Jaborandi', 'BA', 2917359);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7615, 'Jacaraci', 'BA', 2917409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7621, 'Jequié', 'BA', 2918001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7622, 'Jeremoabo', 'BA', 2918100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7626, 'Juazeiro', 'BA', 2918407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7628, 'Jussara', 'BA', 2918506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7629, 'Jussari', 'BA', 2918555);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7630, 'Jussiape', 'BA', 2918605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7635, 'Lajedinho', 'BA', 2919009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7637, 'Lamarão', 'BA', 2919108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7638, 'Lapão', 'BA', 2919157);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7640, 'Lençóis', 'BA', 2919306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7642, 'Livramento de Nossa Senhora', 'BA', 2919504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7645, 'Macarani', 'BA', 2919702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7646, 'Macaúbas', 'BA', 2919801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7647, 'Macururé', 'BA', 2919900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7648, 'Madre de Deus', 'BA', 2919926);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7650, 'Maiquinique', 'BA', 2920007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7654, 'Manoel Vitorino', 'BA', 2920403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7656, 'Maracás', 'BA', 2920502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7659, 'Marcionílio Souza', 'BA', 2920809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7662, 'Matina', 'BA', 2921054);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7663, 'Medeiros Neto', 'BA', 2921104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7668, 'Monte Santo', 'BA', 2921500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7669, 'Morpará', 'BA', 2921609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7676, 'Muniz Ferreira', 'BA', 2922201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7680, 'Nazaré', 'BA', 2922508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7682, 'Nordestina', 'BA', 2922656);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7683, 'Nova Canaã', 'BA', 2922706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7685, 'Nova Ibiá', 'BA', 2922755);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7688, 'Nova Soure', 'BA', 2922904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7689, 'Nova Viçosa', 'BA', 2923001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7690, 'Novo Horizonte', 'BA', 2923035);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7693, 'Oliveira dos Brejinhos', 'BA', 2923209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7694, 'Ouriçangas', 'BA', 2923308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7699, 'Paratinga', 'BA', 2923704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7702, 'Paulo Afonso', 'BA', 2924009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7703, 'Pé de Serra', 'BA', 2924058);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7707, 'Pilão Arcado', 'BA', 2924405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7708, 'Pindaí', 'BA', 2924504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7711, 'Piraí do Norte', 'BA', 2924678);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7713, 'Piritiba', 'BA', 2924801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7715, 'Planalto', 'BA', 2925006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7716, 'Poções', 'BA', 2925105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7718, 'Ponto Novo', 'BA', 2925253);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7720, 'Potiraguá', 'BA', 2925402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7721, 'Prado', 'BA', 2925501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7722, 'Presidente Dutra', 'BA', 2925600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7723, 'Presidente Jânio Quadros', 'BA', 2925709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7725, 'Queimadas', 'BA', 2925808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7726, 'Quijingue', 'BA', 2925907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7730, 'Retirolândia', 'BA', 2926103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7734, 'Ribeira do Amparo', 'BA', 2926509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7737, 'Rio de Contas', 'BA', 2926707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7740, 'Rio Real', 'BA', 2927002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7742, 'Ruy Barbosa', 'BA', 2927200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7745, 'Santa Bárbara', 'BA', 2927507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7749, 'Santa Inês', 'BA', 2927903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7750, 'Santaluz', 'BA', 2928000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7752, 'Santa Maria da Vitória', 'BA', 2928109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7753, 'Santana', 'BA', 2928208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7757, 'Santo Amaro', 'BA', 2928604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7761, 'São Domingos', 'BA', 2928950);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7762, 'São Félix', 'BA', 2929008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7763, 'São Félix do Coribe', 'BA', 2929057);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7765, 'São Francisco do Conde', 'BA', 2929206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7766, 'São Gabriel', 'BA', 2929255);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7767, 'São Gonçalo dos Campos', 'BA', 2929305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7768, 'São José da Vitória', 'BA', 2929354);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7770, 'São Miguel das Matas', 'BA', 2929404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7772, 'Sapeaçu', 'BA', 2929602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7773, 'Sátiro Dias', 'BA', 2929701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7778, 'Senhor do Bonfim', 'BA', 2930105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7780, 'Sento Sé', 'BA', 2930204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7781, 'Serra Dourada', 'BA', 2930303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7783, 'Serrinha', 'BA', 2930501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7785, 'Simões Filho', 'BA', 2930709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7789, 'Souto Soares', 'BA', 2930808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7790, 'Tabocas do Brejo Velho', 'BA', 2930907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7793, 'Tanquinho', 'BA', 2931103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7794, 'Taperoá', 'BA', 2931202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7795, 'Tapiramutá', 'BA', 2931301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7796, 'Teixeira de Freitas', 'BA', 2931350);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7798, 'Teofilândia', 'BA', 2931509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7802, 'Tucano', 'BA', 2931905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7804, 'Ubaíra', 'BA', 2932101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7805, 'Ubaitaba', 'BA', 2932200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7806, 'Ubatã', 'BA', 2932309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7807, 'Uibaí', 'BA', 2932408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7808, 'Umburanas', 'BA', 2932457);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7810, 'Urandi', 'BA', 2932606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7812, 'Utinga', 'BA', 2932804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7813, 'Valença', 'BA', 2932903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7816, 'Várzea do Poço', 'BA', 2933109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7817, 'Várzea Nova', 'BA', 2933158);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7819, 'Vera Cruz', 'BA', 2933208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7820, 'Vereda', 'BA', 2933257);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7821, 'Vitória da Conquista', 'BA', 2933307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7824, 'Wenceslau Guimarães', 'BA', 2933505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7827, 'Abaeté', 'MG', 3100203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7828, 'Abre Campo', 'MG', 3100302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7830, 'Açucena', 'MG', 3100500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7831, 'Água Boa', 'MG', 3100609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7834, 'Águas Formosas', 'MG', 3100906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7836, 'Aimorés', 'MG', 3101102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7837, 'Aiuruoca', 'MG', 3101201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7839, 'Albertina', 'MG', 3101409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7842, 'Alfredo Vasconcelos', 'MG', 3101631);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7845, 'Alpinópolis', 'MG', 3101904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7848, 'Alto Rio Doce', 'MG', 3102100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7850, 'Alvinópolis', 'MG', 3102308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7853, 'Andradas', 'MG', 3102605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7855, 'Andrelândia', 'MG', 3102803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7860, 'Araçaí', 'MG', 3103207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7861, 'Aracitaba', 'MG', 3103306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7863, 'Araguari', 'MG', 3103504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7866, 'Araporã', 'MG', 3103751);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7868, 'Araújos', 'MG', 3103900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7869, 'Araxá', 'MG', 3104007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7871, 'Arcos', 'MG', 3104205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7872, 'Areado', 'MG', 3104304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7874, 'Aricanduva', 'MG', 3104452);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7876, 'Astolfo Dutra', 'MG', 3104601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7881, 'Bambuí', 'MG', 3105103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7885, 'Barão de Monte Alto', 'MG', 3105509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7888, 'Barroso', 'MG', 3105905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7889, 'Bela Vista de Minas', 'MG', 3106002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7897, 'Betim', 'MG', 3106705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7898, 'Bias Fortes', 'MG', 3106804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7899, 'Bicas', 'MG', 3106903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7901, 'Boa Esperança', 'MG', 3107109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7905, 'Bom Jardim de Minas', 'MG', 3107505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7906, 'Bom Jesus da Penha', 'MG', 3107604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7908, 'Bom Jesus do Galho', 'MG', 3107802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7910, 'Bom Sucesso', 'MG', 3108008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7913, 'Bonito de Minas', 'MG', 3108255);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7914, 'Borda da Mata', 'MG', 3108305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7916, 'Botumirim', 'MG', 3108503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7917, 'Brasilândia de Minas', 'MG', 3108552);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7918, 'Brasília de Minas', 'MG', 3108602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7921, 'Brazópolis', 'MG', 3108909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7922, 'Brumadinho', 'MG', 3109006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7923, 'Bueno Brandão', 'MG', 3109105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7924, 'Buenópolis', 'MG', 3109204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7925, 'Bugre', 'MG', 3109253);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7926, 'Buritis', 'MG', 3109303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7928, 'Cabeceira Grande', 'MG', 3109451);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7929, 'Cabo Verde', 'MG', 3109501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7931, 'Cachoeira de Minas', 'MG', 3109709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7932, 'Cachoeira Dourada', 'MG', 3109808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7933, 'Caetanópolis', 'MG', 3109907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7936, 'Cajuri', 'MG', 3110202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7939, 'Camanducaia', 'MG', 3110509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7940, 'Cambuí', 'MG', 3110608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7941, 'Cambuquira', 'MG', 3110707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7943, 'Campanha', 'MG', 3110905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7947, 'Campo Belo', 'MG', 3111200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7948, 'Campo do Meio', 'MG', 3111309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7949, 'Campo Florido', 'MG', 3111408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7953, 'Canápolis', 'MG', 3111804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7955, 'Candeias', 'MG', 3112000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7956, 'Cantagalo', 'MG', 3112059);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7958, 'Capela Nova', 'MG', 3112208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7961, 'Capim Branco', 'MG', 3112505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7963, 'Capitão Andrade', 'MG', 3112653);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7964, 'Capitão Enéas', 'MG', 3112703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7965, 'Capitólio', 'MG', 3112802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7966, 'Caputira', 'MG', 3112901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7969, 'Carandaí', 'MG', 3113206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7970, 'Carangola', 'MG', 3113305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7972, 'Carbonita', 'MG', 3113503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7974, 'Carlos Chagas', 'MG', 3113701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7975, 'Carmésia', 'MG', 3113800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7980, 'Carmo do Paranaíba', 'MG', 3114303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7982, 'Carmópolis de Minas', 'MG', 3114501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7983, 'Carneirinho', 'MG', 3114550);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7986, 'Carvalhos', 'MG', 3114808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7987, 'Casa Grande', 'MG', 3114907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7990, 'Conceição da Barra de Minas', 'MG', 3115201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7991, 'Cataguases', 'MG', 3115300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7994, 'Catuji', 'MG', 3115458);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7995, 'Catuti', 'MG', 3115474);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7997, 'Cedro do Abaeté', 'MG', 3115607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (7999, 'Centralina', 'MG', 3115805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8001, 'Chalé', 'MG', 3116001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8003, 'Chapada Gaúcha', 'MG', 3116159);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8004, 'Chiador', 'MG', 3116209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8005, 'Cipotânea', 'MG', 3116308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8006, 'Claraval', 'MG', 3116407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8007, 'Claro dos Poções', 'MG', 3116506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8008, 'Cláudio', 'MG', 3116605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8012, 'Comercinho', 'MG', 3117009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8013, 'Conceição da Aparecida', 'MG', 3117108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8018, 'Conceição do Pará', 'MG', 3117603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8020, 'Conceição dos Ouros', 'MG', 3117801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8022, 'Confins', 'MG', 3117876);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8027, 'Conselheiro Lafaiete', 'MG', 3118304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8029, 'Consolação', 'MG', 3118502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8030, 'Contagem', 'MG', 3118601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8031, 'Coqueiral', 'MG', 3118700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8032, 'Coração de Jesus', 'MG', 3118809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8035, 'Corinto', 'MG', 3119104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8036, 'Coroaci', 'MG', 3119203);

--
-- Data for table public.cidade (OID = 46301) (LIMIT 4000,500)
--
INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8037, 'Coromandel', 'MG', 3119302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8039, 'Coronel Murta', 'MG', 3119500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8042, 'Córrego Danta', 'MG', 3119807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8046, 'Couto de Magalhães de Minas', 'MG', 3120102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8048, 'Cristais', 'MG', 3120201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8053, 'Cruzeiro da Fortaleza', 'MG', 3120706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8055, 'Cuparaque', 'MG', 3120839);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8057, 'Curvelo', 'MG', 3120904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8059, 'Delfim Moreira', 'MG', 3121100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8060, 'Delfinópolis', 'MG', 3121209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8061, 'Delta', 'MG', 3121258);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8063, 'Desterro de Entre Rios', 'MG', 3121407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8065, 'Diamantina', 'MG', 3121605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8066, 'Diogo de Vasconcelos', 'MG', 3121704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8067, 'Dionísio', 'MG', 3121803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8070, 'Divino das Laranjeiras', 'MG', 3122108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8071, 'Divinolândia de Minas', 'MG', 3122207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8074, 'Divisa Nova', 'MG', 3122405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8075, 'Divisópolis', 'MG', 3122454);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8077, 'Dom Cavati', 'MG', 3122504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8087, 'Douradoquara', 'MG', 3123502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8088, 'Durandé', 'MG', 3123528);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8090, 'Engenheiro Caldas', 'MG', 3123700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8092, 'Entre Folhas', 'MG', 3123858);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8095, 'Esmeraldas', 'MG', 3124104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8096, 'Espera Feliz', 'MG', 3124203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8097, 'Espinosa', 'MG', 3124302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8101, 'Estrela do Indaiá', 'MG', 3124708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8102, 'Estrela do Sul', 'MG', 3124807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8103, 'Eugenópolis', 'MG', 3124906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8105, 'Extrema', 'MG', 3125101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8110, 'Felisburgo', 'MG', 3125606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8111, 'Felixlândia', 'MG', 3125705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8115, 'Florestal', 'MG', 3126000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8117, 'Formoso', 'MG', 3126208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8118, 'Fortaleza de Minas', 'MG', 3126307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8120, 'Francisco Badaró', 'MG', 3126505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8123, 'Franciscópolis', 'MG', 3126752);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8125, 'Frei Inocêncio', 'MG', 3126901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8128, 'Fronteira dos Vales', 'MG', 3127057);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8129, 'Fruta de Leite', 'MG', 3127073);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8131, 'Funilândia', 'MG', 3127206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8132, 'Galiléia', 'MG', 3127305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8134, 'Glaucilândia', 'MG', 3127354);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8137, 'Gonçalves', 'MG', 3127404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8140, 'Governador Valadares', 'MG', 3127701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8142, 'Grupiara', 'MG', 3127909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8143, 'Guanhães', 'MG', 3128006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8145, 'Guaraciaba', 'MG', 3128204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8148, 'Guarani', 'MG', 3128402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8149, 'Guarará', 'MG', 3128501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8151, 'Guaxupé', 'MG', 3128709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8153, 'Guimarânia', 'MG', 3128907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8154, 'Guiricema', 'MG', 3129004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8155, 'Gurinhatã', 'MG', 3129103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8157, 'Iapu', 'MG', 3129301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8159, 'Ibiá', 'MG', 3129509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8162, 'Ibiraci', 'MG', 3129707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8163, 'Ibirité', 'MG', 3129806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8164, 'Ibitiúra de Minas', 'MG', 3129905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8170, 'Ijaci', 'MG', 3130408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8175, 'Indianópolis', 'MG', 3130705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8176, 'Ingaí', 'MG', 3130804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8180, 'Ipaba', 'MG', 3131158);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8181, 'Ipanema', 'MG', 3131208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8182, 'Ipatinga', 'MG', 3131307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8184, 'Ipuiúna', 'MG', 3131505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8193, 'Itajubá', 'MG', 3132404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8196, 'Itambacuri', 'MG', 3132701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8198, 'Itamogi', 'MG', 3132909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8199, 'Itamonte', 'MG', 3133006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8201, 'Itanhomi', 'MG', 3133204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8202, 'Itaobim', 'MG', 3133303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8203, 'Itapagipe', 'MG', 3133402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8205, 'Itapeva', 'MG', 3133600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8210, 'Itinga', 'MG', 3134004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8216, 'Jaboticatubas', 'MG', 3134608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8217, 'Jacinto', 'MG', 3134707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8219, 'Jacutinga', 'MG', 3134905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8220, 'Jaguaraçu', 'MG', 3135001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8223, 'Janaúba', 'MG', 3135100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8224, 'Januária', 'MG', 3135209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8227, 'Jeceaba', 'MG', 3135407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8228, 'Jenipapo de Minas', 'MG', 3135456);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8230, 'Jequitaí', 'MG', 3135605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8231, 'Jequitibá', 'MG', 3135704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8237, 'João Pinheiro', 'MG', 3136306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8238, 'Joaquim Felício', 'MG', 3136405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8239, 'Jordânia', 'MG', 3136504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8240, 'José Gonçalves de Minas', 'MG', 3136520);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8241, 'José Raydan', 'MG', 3136553);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8242, 'Josenópolis', 'MG', 3136579);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8243, 'Nova União', 'MG', 3136603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8245, 'Juiz de Fora', 'MG', 3136702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8247, 'Juruaia', 'MG', 3136900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8248, 'Juvenília', 'MG', 3136959);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8254, 'Lagoa Formosa', 'MG', 3137502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8258, 'Lambari', 'MG', 3137809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8260, 'Laranjal', 'MG', 3138005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8262, 'Lavras', 'MG', 3138203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8263, 'Leandro Ferreira', 'MG', 3138302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8272, 'Luminárias', 'MG', 3138708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8273, 'Luz', 'MG', 3138807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8274, 'Machacalis', 'MG', 3138906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8275, 'Machado', 'MG', 3139003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8280, 'Manhuaçu', 'MG', 3139409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8281, 'Manhumirim', 'MG', 3139508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8282, 'Mantena', 'MG', 3139607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8283, 'Maravilhas', 'MG', 3139706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8285, 'Maria da Fé', 'MG', 3139904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8286, 'Mariana', 'MG', 3140001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8288, 'Mário Campos', 'MG', 3140159);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8289, 'Maripá de Minas', 'MG', 3140209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8290, 'Marliéria', 'MG', 3140308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8292, 'Martinho Campos', 'MG', 3140506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8294, 'Mata Verde', 'MG', 3140555);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8296, 'Mateus Leme', 'MG', 3140704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8301, 'Matozinhos', 'MG', 3141108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8304, 'Medina', 'MG', 3141405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8305, 'Mendes Pimentel', 'MG', 3141504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8308, 'Minas Novas', 'MG', 3141801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8309, 'Minduri', 'MG', 3141900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8311, 'Miradouro', 'MG', 3142106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8312, 'Miraí', 'MG', 3142205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8319, 'Monte Alegre de Minas', 'MG', 3142809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8321, 'Monte Belo', 'MG', 3143005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8322, 'Monte Carmelo', 'MG', 3143104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8327, 'Montezuma', 'MG', 3143450);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8328, 'Morada Nova de Minas', 'MG', 3143500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8329, 'Morro da Garça', 'MG', 3143609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8333, 'Mutum', 'MG', 3144003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8334, 'Muzambinho', 'MG', 3144102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8337, 'Naque', 'MG', 3144359);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8340, 'Nazareno', 'MG', 3144508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8342, 'Ninheira', 'MG', 3144656);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8343, 'Nova Belém', 'MG', 3144672);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8345, 'Nova Lima', 'MG', 3144805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8347, 'Nova Ponte', 'MG', 3145000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8350, 'Nova Serrana', 'MG', 3145208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8351, 'Novo Cruzeiro', 'MG', 3145307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8356, 'Olímpio Noronha', 'MG', 3145505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8357, 'Oliveira', 'MG', 3145604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8360, 'Oratórios', 'MG', 3145851);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8361, 'Orizânia', 'MG', 3145877);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8363, 'Ouro Fino', 'MG', 3146008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8364, 'Ouro Preto', 'MG', 3146107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8365, 'Ouro Verde de Minas', 'MG', 3146206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8366, 'Padre Carvalho', 'MG', 3146255);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8368, 'Paineiras', 'MG', 3146404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8372, 'Palma', 'MG', 3146701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8373, 'Palmópolis', 'MG', 3146750);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8374, 'Papagaios', 'MG', 3146909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8376, 'Pará de Minas', 'MG', 3147105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8377, 'Paraguaçu', 'MG', 3147204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8379, 'Paraopeba', 'MG', 3147402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8384, 'Passos', 'MG', 3147907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8390, 'Paulistas', 'MG', 3148400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8391, 'Pavão', 'MG', 3148509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8395, 'Pedra do Anta', 'MG', 3148806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8397, 'Pedra Dourada', 'MG', 3149002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8398, 'Pedralva', 'MG', 3149101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8400, 'Pedrinópolis', 'MG', 3149200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8404, 'Pequi', 'MG', 3149606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8405, 'Perdigão', 'MG', 3149705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8409, 'Pescador', 'MG', 3150000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8410, 'Piau', 'MG', 3150109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8412, 'Piedade de Ponte Nova', 'MG', 3150208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8414, 'Piedade dos Gerais', 'MG', 3150406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8415, 'Pimenta', 'MG', 3150505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8419, 'Pirajuba', 'MG', 3150703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8420, 'Piranga', 'MG', 3150802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8423, 'Pirapetinga', 'MG', 3151107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8425, 'Piraúba', 'MG', 3151305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8427, 'Piumhi', 'MG', 3151503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8428, 'Planura', 'MG', 3151602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8429, 'Poço Fundo', 'MG', 3151701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8430, 'Poços de Caldas', 'MG', 3151800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8432, 'Pompéu', 'MG', 3152006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8433, 'Ponte Nova', 'MG', 3152105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8434, 'Ponto Chique', 'MG', 3152131);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8435, 'Ponto dos Volantes', 'MG', 3152170);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8437, 'Porto Firme', 'MG', 3152303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8441, 'Prados', 'MG', 3152709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8442, 'Prata', 'MG', 3152808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8443, 'Pratápolis', 'MG', 3152907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8445, 'Presidente Bernardes', 'MG', 3153103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8452, 'Queluzito', 'MG', 3153806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8454, 'Raul Soares', 'MG', 3154002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8455, 'Recreio', 'MG', 3154101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8456, 'Reduto', 'MG', 3154150);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8458, 'Resplendor', 'MG', 3154309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8461, 'Riacho dos Machados', 'MG', 3154507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8462, 'Ribeirão das Neves', 'MG', 3154606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8463, 'Ribeirão Vermelho', 'MG', 3154705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8464, 'Rio Acima', 'MG', 3154804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8468, 'Rio Espera', 'MG', 3155207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8469, 'Rio Manso', 'MG', 3155306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8471, 'Rio Paranaíba', 'MG', 3155504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8473, 'Rio Piracicaba', 'MG', 3155702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8476, 'Rio Vermelho', 'MG', 3156007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8477, 'Ritápolis', 'MG', 3156106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8478, 'Rochedo de Minas', 'MG', 3156205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8480, 'Romaria', 'MG', 3156403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8481, 'Rosário da Limeira', 'MG', 3156452);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8483, 'Rubim', 'MG', 3156601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8488, 'Salto da Divisa', 'MG', 3157104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8489, 'Santa Bárbara', 'MG', 3157203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8492, 'Santa Bárbara do Tugúrio', 'MG', 3157302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8494, 'Santa Cruz de Salinas', 'MG', 3157377);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8495, 'Santa Cruz do Escalvado', 'MG', 3157401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8498, 'Santa Helena de Minas', 'MG', 3157658);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8499, 'Santa Juliana', 'MG', 3157708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8500, 'Santa Luzia', 'MG', 3157807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8501, 'Santa Margarida', 'MG', 3157906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8502, 'Santa Maria de Itabira', 'MG', 3158003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8503, 'Santa Maria do Salto', 'MG', 3158102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8504, 'Santa Maria do Suaçuí', 'MG', 3158201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8506, 'Santana de Cataguases', 'MG', 3158409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8507, 'Santana de Pirapama', 'MG', 3158508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8512, 'Santana do Paraíso', 'MG', 3158953);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8513, 'Santana do Riacho', 'MG', 3159001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8515, 'Santa Rita de Caldas', 'MG', 3159209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8516, 'Santa Rita de Jacutinga', 'MG', 3159308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8518, 'Santa Rita de Ibitipoca', 'MG', 3159407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8525, 'Santo Antônio do Grama', 'MG', 3160108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8526, 'Santo Antônio do Itambé', 'MG', 3160207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8528, 'Santo Antônio do Monte', 'MG', 3160405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8532, 'Santos Dumont', 'MG', 3160702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8533, 'São Bento Abade', 'MG', 3160801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8535, 'São Domingos das Dores', 'MG', 3160959);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8537, 'São Félix de Minas', 'MG', 3161056);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8538, 'São Francisco', 'MG', 3161106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8543, 'São Geraldo da Piedade', 'MG', 3161601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8544, 'São Geraldo do Baixio', 'MG', 3161650);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8545, 'São Gonçalo do Abaeté', 'MG', 3161700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8547, 'São Gonçalo do Rio Abaixo', 'MG', 3161908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8550, 'São João Batista do Glória', 'MG', 3162203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8551, 'São João da Lagoa', 'MG', 3162252);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8552, 'São João da Mata', 'MG', 3162302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8553, 'São João da Ponte', 'MG', 3162401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8554, 'São João das Missões', 'MG', 3162450);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8555, 'São João del Rei', 'MG', 3162500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8556, 'São João do Manhuaçu', 'MG', 3162559);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8558, 'São João do Oriente', 'MG', 3162609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8560, 'São João do Paraíso', 'MG', 3162708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8561, 'São João Evangelista', 'MG', 3162807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8562, 'São João Nepomuceno', 'MG', 3162906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8564, 'São José da Barra', 'MG', 3162948);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8565, 'São José da Lapa', 'MG', 3162955);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8568, 'São José do Alegre', 'MG', 3163201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8569, 'São José do Divino', 'MG', 3163300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8572, 'São José do Mantimento', 'MG', 3163607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8574, 'São Miguel do Anta', 'MG', 3163805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8576, 'São Pedro dos Ferros', 'MG', 3164001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8577, 'São Pedro do Suaçuí', 'MG', 3164100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8578, 'São Romão', 'MG', 3164209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8580, 'São Sebastião da Bela Vista', 'MG', 3164407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8583, 'São Sebastião do Maranhão', 'MG', 3164506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8584, 'São Sebastião do Oeste', 'MG', 3164605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8585, 'São Sebastião do Paraíso', 'MG', 3164704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8587, 'São Sebastião do Rio Verde', 'MG', 3164902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8590, 'São Thomé das Letras', 'MG', 3165206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8595, 'Setubinha', 'MG', 3165552);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8597, 'Senador Amaral', 'MG', 3165578);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8600, 'Senador José Bento', 'MG', 3165800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8601, 'Senador Modestino Gonçalves', 'MG', 3165909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8602, 'Senhora de Oliveira', 'MG', 3166006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8603, 'Senhora do Porto', 'MG', 3166105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8606, 'Seritinga', 'MG', 3166402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8607, 'Serra Azul de Minas', 'MG', 3166501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8610, 'Serra do Salitre', 'MG', 3166808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8611, 'Serrania', 'MG', 3166907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8613, 'Serranos', 'MG', 3167004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8616, 'Silveirânia', 'MG', 3167301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8617, 'Silvianópolis', 'MG', 3167400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8618, 'Simão Pereira', 'MG', 3167509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8620, 'Sobrália', 'MG', 3167707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8623, 'Taiobeiras', 'MG', 3168002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8625, 'Tapira', 'MG', 3168101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8630, 'Teófilo Otoni', 'MG', 3168606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8634, 'Tocantins', 'MG', 3169000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8635, 'Tocos do Moji', 'MG', 3169059);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8639, 'Três Marias', 'MG', 3169356);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8640, 'Três Pontas', 'MG', 3169406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8641, 'Tumiritinga', 'MG', 3169505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8642, 'Tupaciguara', 'MG', 3169604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8643, 'Turmalina', 'MG', 3169703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8645, 'Ubá', 'MG', 3169901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8646, 'Ubaí', 'MG', 3170008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8647, 'Ubaporanga', 'MG', 3170057);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8649, 'Uberlândia', 'MG', 3170206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8652, 'União de Minas', 'MG', 3170438);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8654, 'Urucânia', 'MG', 3170503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8655, 'Urucuia', 'MG', 3170529);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8657, 'Vargem Bonita', 'MG', 3170602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8659, 'Varginha', 'MG', 3170701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8660, 'Varjão de Minas', 'MG', 3170750);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8661, 'Várzea da Palma', 'MG', 3170800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8662, 'Varzelândia', 'MG', 3170909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8666, 'Veríssimo', 'MG', 3171105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8668, 'Vespasiano', 'MG', 3171204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8670, 'Vieiras', 'MG', 3171402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8672, 'Virgem da Lapa', 'MG', 3171600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8673, 'Virgínia', 'MG', 3171709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8675, 'Virgolândia', 'MG', 3171907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8676, 'Visconde do Rio Branco', 'MG', 3172004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8679, 'Afonso Cláudio', 'ES', 3200102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8684, 'Alto Rio Novo', 'ES', 3200359);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8689, 'Baixo Guandu', 'ES', 3200805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8691, 'Boa Esperança', 'ES', 3201001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8694, 'Cachoeiro de Itapemirim', 'ES', 3201209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8696, 'Castelo', 'ES', 3201407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8699, 'Conceição do Castelo', 'ES', 3201704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8700, 'Divino de São Lourenço', 'ES', 3201803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8702, 'Dores do Rio Preto', 'ES', 3202009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8703, 'Ecoporanga', 'ES', 3202108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8704, 'Fundão', 'ES', 3202207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8705, 'Governador Lindenberg', 'ES', 3202256);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8706, 'Guaçuí', 'ES', 3202306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8709, 'Ibiraçu', 'ES', 3202504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8710, 'Ibitirama', 'ES', 3202553);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8711, 'Iconha', 'ES', 3202603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8713, 'Itaguaçu', 'ES', 3202702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8717, 'Jaguaré', 'ES', 3203056);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8719, 'João Neiva', 'ES', 3203130);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8721, 'Linhares', 'ES', 3203205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8724, 'Marechal Floriano', 'ES', 3203346);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8725, 'Marilândia', 'ES', 3203353);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8726, 'Mimoso do Sul', 'ES', 3203403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8727, 'Montanha', 'ES', 3203502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8728, 'Mucurici', 'ES', 3203601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8731, 'Nova Venécia', 'ES', 3203908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8732, 'Pancas', 'ES', 3204005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8734, 'Pinheiros', 'ES', 3204104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8738, 'Rio Bananal', 'ES', 3204351);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8739, 'Rio Novo do Sul', 'ES', 3204401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8741, 'Santa Maria de Jetibá', 'ES', 3204559);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8749, 'Sooretama', 'ES', 3205010);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8751, 'Venda Nova do Imigrante', 'ES', 3205069);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8752, 'Viana', 'ES', 3205101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8754, 'Vila Valério', 'ES', 3205176);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8755, 'Vila Velha', 'ES', 3205200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8756, 'Vitória', 'ES', 3205309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8757, 'Angra dos Reis', 'RJ', 3300100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8758, 'Aperibé', 'RJ', 3300159);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8761, 'Armação dos Búzios', 'RJ', 3300233);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8762, 'Arraial do Cabo', 'RJ', 3300258);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8763, 'Barra do Piraí', 'RJ', 3300308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8765, 'Belford Roxo', 'RJ', 3300456);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8766, 'Bom Jardim', 'RJ', 3300506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8767, 'Bom Jesus do Itabapoana', 'RJ', 3300605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8772, 'Comendador Levy Gasparian', 'RJ', 3300951);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8773, 'Campos dos Goytacazes', 'RJ', 3301009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8774, 'Cantagalo', 'RJ', 3301108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8776, 'Carmo', 'RJ', 3301207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8777, 'Casimiro de Abreu', 'RJ', 3301306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8778, 'Conceição de Macabu', 'RJ', 3301405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8779, 'Cordeiro', 'RJ', 3301504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8780, 'Duas Barras', 'RJ', 3301603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8781, 'Duque de Caxias', 'RJ', 3301702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8783, 'Guapimirim', 'RJ', 3301850);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8785, 'Itaboraí', 'RJ', 3301900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8786, 'Itaguaí', 'RJ', 3302007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8787, 'Italva', 'RJ', 3302056);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8789, 'Itaperuna', 'RJ', 3302205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8791, 'Japeri', 'RJ', 3302270);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8793, 'Macaé', 'RJ', 3302403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8794, 'Macuco', 'RJ', 3302452);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8795, 'Magé', 'RJ', 3302502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8796, 'Mangaratiba', 'RJ', 3302601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8800, 'Miguel Pereira', 'RJ', 3302908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8804, 'Niterói', 'RJ', 3303302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8805, 'Nova Friburgo', 'RJ', 3303401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8808, 'Paraíba do Sul', 'RJ', 3303708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8809, 'Paraty', 'RJ', 3303807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8810, 'Paty do Alferes', 'RJ', 3303856);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8813, 'Piraí', 'RJ', 3304003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8817, 'Queimados', 'RJ', 3304144);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8818, 'Quissamã', 'RJ', 3304151);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8821, 'Rio Claro', 'RJ', 3304409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8823, 'Rio das Ostras', 'RJ', 3304524);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8824, 'Rio de Janeiro', 'RJ', 3304557);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8825, 'Santa Maria Madalena', 'RJ', 3304607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8826, 'Santo Antônio de Pádua', 'RJ', 3304706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8828, 'São Fidélis', 'RJ', 3304805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8830, 'São João da Barra', 'RJ', 3305000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8835, 'São Sebastião do Alto', 'RJ', 3305307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8839, 'Silva Jardim', 'RJ', 3305604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8841, 'Tanguá', 'RJ', 3305752);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8845, 'Valença', 'RJ', 3306107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8849, 'Adamantina', 'SP', 3500105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8850, 'Adolfo', 'SP', 3500204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8854, 'Águas de Santa Bárbara', 'SP', 3500550);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8858, 'Alfredo Marcondes', 'SP', 3500808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8860, 'Altinópolis', 'SP', 3501004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8862, 'Alumínio', 'SP', 3501152);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8863, 'Álvares Florence', 'SP', 3501202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8865, 'Álvaro de Carvalho', 'SP', 3501400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8866, 'Alvinlândia', 'SP', 3501509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8867, 'Americana', 'SP', 3501608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8868, 'Américo Brasiliense', 'SP', 3501707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8871, 'Analândia', 'SP', 3502002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8873, 'Angatuba', 'SP', 3502200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8877, 'Aparecida D''Oeste', 'SP', 3502606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8879, 'Araçariguama', 'SP', 3502754);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8881, 'Araçoiaba da Serra', 'SP', 3502903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8884, 'Arapeí', 'SP', 3503158);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8887, 'Arco-Íris', 'SP', 3503356);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8889, 'Areias', 'SP', 3503505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8891, 'Ariranha', 'SP', 3503703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8892, 'Artur Nogueira', 'SP', 3503802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8894, 'Aspásia', 'SP', 3503950);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8895, 'Assis', 'SP', 3504008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8896, 'Atibaia', 'SP', 3504107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8898, 'Avaí', 'SP', 3504305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8900, 'Avaré', 'SP', 3504503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8901, 'Bady Bassitt', 'SP', 3504602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8902, 'Balbinos', 'SP', 3504701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8903, 'Bálsamo', 'SP', 3504800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8905, 'Barão de Antonina', 'SP', 3505005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8906, 'Barbosa', 'SP', 3505104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8907, 'Bariri', 'SP', 3505203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8909, 'Barra do Chapéu', 'SP', 3505351);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8910, 'Barra do Turvo', 'SP', 3505401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8912, 'Barrinha', 'SP', 3505609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8913, 'Barueri', 'SP', 3505708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8916, 'Bauru', 'SP', 3506003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8917, 'Bebedouro', 'SP', 3506102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8918, 'Bento de Abreu', 'SP', 3506201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8919, 'Bernardino de Campos', 'SP', 3506300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8920, 'Bertioga', 'SP', 3506359);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8921, 'Bilac', 'SP', 3506409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8923, 'Biritiba-Mirim', 'SP', 3506607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8925, 'Bocaina', 'SP', 3506805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8927, 'Boituva', 'SP', 3507001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8932, 'Borborema', 'SP', 3507407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8934, 'Botucatu', 'SP', 3507506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8936, 'Braúna', 'SP', 3507704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8938, 'Brodowski', 'SP', 3507803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8939, 'Brotas', 'SP', 3507902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8940, 'Buri', 'SP', 3508009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8941, 'Buritama', 'SP', 3508108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8942, 'Buritizal', 'SP', 3508207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8946, 'Cachoeira Paulista', 'SP', 3508603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8947, 'Caconde', 'SP', 3508702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8948, 'Cafelândia', 'SP', 3508801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8949, 'Caiabu', 'SP', 3508900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8950, 'Caieiras', 'SP', 3509007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8951, 'Caiuá', 'SP', 3509106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8955, 'Cajuru', 'SP', 3509403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8956, 'Campina do Monte Alegre', 'SP', 3509452);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8958, 'Campo Limpo Paulista', 'SP', 3509601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8960, 'Campos Novos Paulista', 'SP', 3509809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8963, 'Cândido Mota', 'SP', 3510005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8964, 'Cândido Rodrigues', 'SP', 3510104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8967, 'Capela do Alto', 'SP', 3510302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8973, 'Cássia dos Coqueiros', 'SP', 3510906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8974, 'Castilho', 'SP', 3511003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8975, 'Catanduva', 'SP', 3511102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8976, 'Catiguá', 'SP', 3511201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8977, 'Cedral', 'SP', 3511300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8978, 'Cerqueira César', 'SP', 3511409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8982, 'Clementina', 'SP', 3511904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8984, 'Colômbia', 'SP', 3512100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8985, 'Conchal', 'SP', 3512209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8986, 'Conchas', 'SP', 3512308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8987, 'Cordeirópolis', 'SP', 3512407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8988, 'Coroados', 'SP', 3512506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8989, 'Coronel Macedo', 'SP', 3512605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8992, 'Cosmorama', 'SP', 3512902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8993, 'Cotia', 'SP', 3513009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8995, 'Cristais Paulista', 'SP', 3513207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8996, 'Cruzália', 'SP', 3513306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8998, 'Cubatão', 'SP', 3513504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (8999, 'Cunha', 'SP', 3513603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9000, 'Descalvado', 'SP', 3513702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9005, 'Dois Córregos', 'SP', 3514106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9007, 'Dourado', 'SP', 3514304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9008, 'Dracena', 'SP', 3514403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9009, 'Duartina', 'SP', 3514502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9011, 'Echaporã', 'SP', 3514700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9014, 'Elisiário', 'SP', 3514924);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9015, 'Embaúba', 'SP', 3514957);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9019, 'Engenheiro Coelho', 'SP', 3515152);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9020, 'Espírito Santo do Pinhal', 'SP', 3515186);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9022, 'Estrela D''Oeste', 'SP', 3515202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9024, 'Euclides da Cunha Paulista', 'SP', 3515350);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9026, 'Fernandópolis', 'SP', 3515509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9027, 'Fernando Prestes', 'SP', 3515608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9028, 'Fernão', 'SP', 3515657);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9031, 'Floreal', 'SP', 3515905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9032, 'Flórida Paulista', 'SP', 3516002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9033, 'Florínia', 'SP', 3516101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9034, 'Franca', 'SP', 3516200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9035, 'Francisco Morato', 'SP', 3516309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9036, 'Franco da Rocha', 'SP', 3516408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9037, 'Gabriel Monteiro', 'SP', 3516507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9038, 'Gália', 'SP', 3516606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9041, 'Gavião Peixoto', 'SP', 3516853);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9042, 'General Salgado', 'SP', 3516903);

--
-- Data for table public.cidade (OID = 46301) (LIMIT 4500,500)
--
INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9044, 'Glicério', 'SP', 3517109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9046, 'Guaimbê', 'SP', 3517307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9048, 'Guapiaçu', 'SP', 3517505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9050, 'Guará', 'SP', 3517703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9052, 'Guaraci', 'SP', 3517901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9053, 'Guarani D''Oeste', 'SP', 3518008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9056, 'Guararema', 'SP', 3518305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9058, 'Guareí', 'SP', 3518503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9059, 'Guariba', 'SP', 3518602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9060, 'Guarujá', 'SP', 3518701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9062, 'Guatapará', 'SP', 3518859);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9063, 'Guzolândia', 'SP', 3518909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9064, 'Herculândia', 'SP', 3519006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9065, 'Holambra', 'SP', 3519055);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9066, 'Hortolândia', 'SP', 3519071);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9070, 'Ibaté', 'SP', 3519303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9071, 'Ibirá', 'SP', 3519402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9072, 'Ibirarema', 'SP', 3519501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9073, 'Ibitinga', 'SP', 3519600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9074, 'Ibiúna', 'SP', 3519709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9076, 'Iepê', 'SP', 3519907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9078, 'Igarapava', 'SP', 3520103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9081, 'Ilhabela', 'SP', 3520400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9082, 'Ilha Comprida', 'SP', 3520426);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9086, 'Indiaporã', 'SP', 3520707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9087, 'Inúbia Paulista', 'SP', 3520806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9089, 'Iperó', 'SP', 3521002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9090, 'Ipeúna', 'SP', 3521101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9093, 'Ipuã', 'SP', 3521309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9096, 'Irapuru', 'SP', 3521606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9097, 'Itaberá', 'SP', 3521705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9098, 'Itaí', 'SP', 3521804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9100, 'Itaju', 'SP', 3522000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9103, 'Itapecerica da Serra', 'SP', 3522208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9104, 'Itapetininga', 'SP', 3522307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9105, 'Itapeva', 'SP', 3522406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9110, 'Itaporanga', 'SP', 3522802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9113, 'Itaquaquecetuba', 'SP', 3523107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9114, 'Itararé', 'SP', 3523206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9115, 'Itariri', 'SP', 3523305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9120, 'Itobi', 'SP', 3523800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9121, 'Itu', 'SP', 3523909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9122, 'Itupeva', 'SP', 3524006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9123, 'Ituverava', 'SP', 3524105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9124, 'Jaborandi', 'SP', 3524204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9126, 'Jacareí', 'SP', 3524402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9130, 'Jales', 'SP', 3524808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9131, 'Jambeiro', 'SP', 3524907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9132, 'Jandira', 'SP', 3525003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9135, 'Jaú', 'SP', 3525300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9136, 'Jeriquara', 'SP', 3525409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9137, 'Joanópolis', 'SP', 3525508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9140, 'Júlio Mesquita', 'SP', 3525805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9141, 'Jumirim', 'SP', 3525854);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9147, 'Laranjal Paulista', 'SP', 3526407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9148, 'Lavínia', 'SP', 3526506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9151, 'Lençóis Paulista', 'SP', 3526803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9153, 'Lindóia', 'SP', 3527009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9155, 'Lorena', 'SP', 3527207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9156, 'Lourdes', 'SP', 3527256);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9161, 'Luiziânia', 'SP', 3527702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9165, 'Macaubal', 'SP', 3528106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9166, 'Macedônia', 'SP', 3528205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9167, 'Magda', 'SP', 3528304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9171, 'Marabá Paulista', 'SP', 3528700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9173, 'Marapoama', 'SP', 3528858);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9174, 'Mariápolis', 'SP', 3528908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9176, 'Marinópolis', 'SP', 3529104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9178, 'Matão', 'SP', 3529302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9179, 'Mauá', 'SP', 3529401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9181, 'Meridiano', 'SP', 3529609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9182, 'Mesópolis', 'SP', 3529658);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9183, 'Miguelópolis', 'SP', 3529708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9184, 'Mineiros do Tietê', 'SP', 3529807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9185, 'Miracatu', 'SP', 3529906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9186, 'Mira Estrela', 'SP', 3530003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9190, 'Mirassolândia', 'SP', 3530409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9192, 'Mogi das Cruzes', 'SP', 3530607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9193, 'Mogi Guaçu', 'SP', 3530706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9195, 'Mombuca', 'SP', 3530904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9198, 'Monte Alegre do Sul', 'SP', 3531209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9201, 'Monte Azul Paulista', 'SP', 3531506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9202, 'Monte Castelo', 'SP', 3531605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9203, 'Monteiro Lobato', 'SP', 3531704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9206, 'Morungaba', 'SP', 3532009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9207, 'Motuca', 'SP', 3532058);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9213, 'Neves Paulista', 'SP', 3532504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9214, 'Nhandeara', 'SP', 3532603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9217, 'Nova Campina', 'SP', 3532827);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9219, 'Nova Castilho', 'SP', 3532868);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9221, 'Nova Granada', 'SP', 3533007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9223, 'Nova Independência', 'SP', 3533205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9224, 'Novais', 'SP', 3533254);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9225, 'Nova Luzitânia', 'SP', 3533304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9226, 'Nova Odessa', 'SP', 3533403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9229, 'Ocauçu', 'SP', 3533700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9230, 'Óleo', 'SP', 3533809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9231, 'Olímpia', 'SP', 3533908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9233, 'Oriente', 'SP', 3534104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9236, 'Osasco', 'SP', 3534401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9237, 'Oscar Bressane', 'SP', 3534500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9241, 'Ouro Verde', 'SP', 3534807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9243, 'Palestina', 'SP', 3535002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9245, 'Palmeira D''Oeste', 'SP', 3535200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9246, 'Palmital', 'SP', 3535309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9251, 'Paranapanema', 'SP', 3535804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9253, 'Parapuã', 'SP', 3536000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9256, 'Parisi', 'SP', 3536257);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9257, 'Patrocínio Paulista', 'SP', 3536307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9259, 'Paulínia', 'SP', 3536505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9260, 'Paulistânia', 'SP', 3536570);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9262, 'Pederneiras', 'SP', 3536703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9265, 'Pedregulho', 'SP', 3537008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9267, 'Pedrinhas Paulista', 'SP', 3537156);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9269, 'Penápolis', 'SP', 3537305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9270, 'Pereira Barreto', 'SP', 3537404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9273, 'Piacatu', 'SP', 3537701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9275, 'Pilar do Sul', 'SP', 3537909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9276, 'Pindamonhangaba', 'SP', 3538006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9277, 'Pindorama', 'SP', 3538105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9278, 'Pinhalzinho', 'SP', 3538204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9280, 'Piquete', 'SP', 3538501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9281, 'Piracaia', 'SP', 3538600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9282, 'Piracicaba', 'SP', 3538709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9284, 'Pirajuí', 'SP', 3538907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9286, 'Pirapora do Bom Jesus', 'SP', 3539103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9287, 'Pirapozinho', 'SP', 3539202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9289, 'Piratininga', 'SP', 3539400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9290, 'Pitangueiras', 'SP', 3539509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9291, 'Planalto', 'SP', 3539608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9293, 'Poá', 'SP', 3539806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9294, 'Poloni', 'SP', 3539905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9295, 'Pompéia', 'SP', 3540002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9296, 'Pongaí', 'SP', 3540101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9299, 'Pontes Gestal', 'SP', 3540309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9301, 'Porangaba', 'SP', 3540507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9303, 'Porto Ferreira', 'SP', 3540705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9304, 'Potim', 'SP', 3540754);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9309, 'Pratânia', 'SP', 3541059);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9310, 'Presidente Alves', 'SP', 3541109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9312, 'Presidente Epitácio', 'SP', 3541307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9314, 'Presidente Venceslau', 'SP', 3541505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9316, 'Quadra', 'SP', 3541653);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9317, 'Quatá', 'SP', 3541703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9319, 'Queluz', 'SP', 3541901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9320, 'Quintana', 'SP', 3542008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9321, 'Rafard', 'SP', 3542107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9323, 'Redenção da Serra', 'SP', 3542305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9325, 'Reginópolis', 'SP', 3542503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9326, 'Registro', 'SP', 3542602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9327, 'Restinga', 'SP', 3542701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9329, 'Ribeirão Bonito', 'SP', 3542909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9330, 'Ribeirão Branco', 'SP', 3543006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9331, 'Ribeirão Corrente', 'SP', 3543105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9336, 'Ribeirão Preto', 'SP', 3543402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9338, 'Rifaina', 'SP', 3543600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9339, 'Rincão', 'SP', 3543709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9342, 'Rio das Pedras', 'SP', 3544004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9343, 'Rio Grande da Serra', 'SP', 3544103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9344, 'Riolândia', 'SP', 3544202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9345, 'Rosana', 'SP', 3544251);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9346, 'Roseira', 'SP', 3544301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9347, 'Rubiácea', 'SP', 3544400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9348, 'Rubinéia', 'SP', 3544509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9350, 'Sagres', 'SP', 3544707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9351, 'Sales', 'SP', 3544806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9358, 'Salto Grande', 'SP', 3545407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9360, 'Santa Adélia', 'SP', 3545605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9365, 'Santa Cruz da Conceição', 'SP', 3546207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9366, 'Santa Cruz da Esperança', 'SP', 3546256);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9370, 'Santa Fé do Sul', 'SP', 3546603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9371, 'Santa Gertrudes', 'SP', 3546702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9372, 'Santa Isabel', 'SP', 3546801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9374, 'Santa Maria da Serra', 'SP', 3547007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9378, 'Santa Rita D''Oeste', 'SP', 3547403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9380, 'Santa Rosa de Viterbo', 'SP', 3547601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9381, 'Santa Salete', 'SP', 3547650);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9383, 'Santo André', 'SP', 3547809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9385, 'Santo Antônio de Posse', 'SP', 3548005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9386, 'Santo Antônio do Aracanguá', 'SP', 3548054);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9388, 'Santo Antônio do Pinhal', 'SP', 3548203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9390, 'Santópolis do Aguapeí', 'SP', 3548401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9392, 'São Bento do Sapucaí', 'SP', 3548609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9394, 'São Caetano do Sul', 'SP', 3548807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9397, 'São João da Boa Vista', 'SP', 3549102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9398, 'São João das Duas Pontes', 'SP', 3549201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9399, 'São João de Iracema', 'SP', 3549250);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9400, 'São João do Pau D''Alho', 'SP', 3549300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9402, 'São José da Bela Vista', 'SP', 3549508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9405, 'São José do Rio Preto', 'SP', 3549805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9408, 'São Luís do Paraitinga', 'SP', 3550001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9409, 'São Manuel', 'SP', 3550100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9410, 'São Miguel Arcanjo', 'SP', 3550209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9412, 'São Pedro', 'SP', 3550407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9413, 'São Pedro do Turvo', 'SP', 3550506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9414, 'São Roque', 'SP', 3550605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9415, 'São Sebastião', 'SP', 3550704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9416, 'São Sebastião da Grama', 'SP', 3550803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9423, 'Serrana', 'SP', 3551504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9424, 'Serra Negra', 'SP', 3551603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9426, 'Sete Barras', 'SP', 3551801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9428, 'Silveiras', 'SP', 3552007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9430, 'Sorocaba', 'SP', 3552205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9431, 'Sud Mennucci', 'SP', 3552304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9432, 'Sumaré', 'SP', 3552403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9433, 'Suzano', 'SP', 3552502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9437, 'Taboão da Serra', 'SP', 3552809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9439, 'Taguaí', 'SP', 3553005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9440, 'Taiaçu', 'SP', 3553104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9441, 'Taiúva', 'SP', 3553203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9443, 'Tanabi', 'SP', 3553401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9444, 'Tapiraí', 'SP', 3553500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9445, 'Tapiratiba', 'SP', 3553609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9446, 'Taquaral', 'SP', 3553658);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9449, 'Taquarivaí', 'SP', 3553856);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9451, 'Tarumã', 'SP', 3553955);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9453, 'Taubaté', 'SP', 3554102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9455, 'Teodoro Sampaio', 'SP', 3554300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9457, 'Tietê', 'SP', 3554508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9459, 'Torre de Pedra', 'SP', 3554656);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9463, 'Três Fronteiras', 'SP', 3554904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9465, 'Tupã', 'SP', 3555000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9466, 'Tupi Paulista', 'SP', 3555109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9469, 'Ubarana', 'SP', 3555356);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9471, 'Ubirajara', 'SP', 3555505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9472, 'Uchoa', 'SP', 3555604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9474, 'Urânia', 'SP', 3555802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9476, 'Urupês', 'SP', 3556008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9477, 'Valentim Gentil', 'SP', 3556107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9483, 'Várzea Paulista', 'SP', 3556503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9484, 'Vera Cruz', 'SP', 3556602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9485, 'Vinhedo', 'SP', 3556701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9489, 'Votorantim', 'SP', 3557006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9492, 'Chavantes', 'SP', 3557204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9493, 'Estiva Gerbi', 'SP', 3557303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9494, 'Abatiá', 'PR', 4100103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9499, 'Altônia', 'PR', 4100509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9500, 'Alto Paraná', 'PR', 4100608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9502, 'Alvorada do Sul', 'PR', 4100806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9503, 'Amaporã', 'PR', 4100905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9504, 'Ampére', 'PR', 4101002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9506, 'Andirá', 'PR', 4101101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9509, 'Antônio Olinto', 'PR', 4101309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9512, 'Arapoti', 'PR', 4101606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9514, 'Araruna', 'PR', 4101705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9515, 'Araucária', 'PR', 4101804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9517, 'Assaí', 'PR', 4101903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9518, 'Assis Chateaubriand', 'PR', 4102000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9519, 'Astorga', 'PR', 4102109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9521, 'Balsa Nova', 'PR', 4102307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9524, 'Barracão', 'PR', 4102604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9529, 'Boa Esperança', 'PR', 4103008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9531, 'Boa Ventura de São Roque', 'PR', 4103040);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9532, 'Boa Vista da Aparecida', 'PR', 4103057);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9534, 'Bom Jesus do Sul', 'PR', 4103156);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9535, 'Bom Sucesso', 'PR', 4103206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9536, 'Bom Sucesso do Sul', 'PR', 4103222);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9539, 'Brasilândia do Sul', 'PR', 4103370);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9541, 'Cafelândia', 'PR', 4103453);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9543, 'Califórnia', 'PR', 4103503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9545, 'Cambé', 'PR', 4103701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9547, 'Campina da Lagoa', 'PR', 4103909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9548, 'Campina do Simão', 'PR', 4103958);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9549, 'Campina Grande do Sul', 'PR', 4104006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9550, 'Campo Bonito', 'PR', 4104055);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9551, 'Campo do Tenente', 'PR', 4104105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9552, 'Campo Largo', 'PR', 4104204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9553, 'Campo Magro', 'PR', 4104253);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9555, 'Cândido de Abreu', 'PR', 4104402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9556, 'Candói', 'PR', 4104428);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9559, 'Capitão Leônidas Marques', 'PR', 4104600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9561, 'Carlópolis', 'PR', 4104709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9563, 'Castro', 'PR', 4104907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9564, 'Catanduvas', 'PR', 4105003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9566, 'Cerro Azul', 'PR', 4105201);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9568, 'Chopinzinho', 'PR', 4105409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9569, 'Cianorte', 'PR', 4105508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9570, 'Cidade Gaúcha', 'PR', 4105607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9571, 'Clevelândia', 'PR', 4105706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9572, 'Colombo', 'PR', 4105805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9576, 'Contenda', 'PR', 4106209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9578, 'Cornélio Procópio', 'PR', 4106407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9580, 'Coronel Vivida', 'PR', 4106506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9584, 'Cruzeiro do Sul', 'PR', 4106704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9585, 'Cruz Machado', 'PR', 4106803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9590, 'Diamante do Sul', 'PR', 4107124);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9591, 'Diamante D''Oeste', 'PR', 4107157);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9592, 'Dois Vizinhos', 'PR', 4107207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9593, 'Douradina', 'PR', 4107256);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9599, 'Espigão Alto do Iguaçu', 'PR', 4107546);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9600, 'Farol', 'PR', 4107553);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9601, 'Faxinal', 'PR', 4107603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9602, 'Fazenda Rio Grande', 'PR', 4107652);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9605, 'Figueira', 'PR', 4107751);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9608, 'Floresta', 'PR', 4107900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9609, 'Florestópolis', 'PR', 4108007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9614, 'Francisco Beltrão', 'PR', 4108403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9617, 'Godoy Moreira', 'PR', 4108551);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9618, 'Goioerê', 'PR', 4108601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9619, 'Goioxim', 'PR', 4108650);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9622, 'Guairaçá', 'PR', 4108908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9623, 'Guamiranga', 'PR', 4108957);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9624, 'Guapirama', 'PR', 4109005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9625, 'Guaporema', 'PR', 4109104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9627, 'Guaraniaçu', 'PR', 4109302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9629, 'Guaraqueçaba', 'PR', 4109500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9630, 'Guaratuba', 'PR', 4109609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9632, 'Ibaiti', 'PR', 4109708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9633, 'Ibema', 'PR', 4109757);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9635, 'Icaraíma', 'PR', 4109906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9636, 'Iguaraçu', 'PR', 4110003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9637, 'Iguatu', 'PR', 4110052);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9639, 'Imbituva', 'PR', 4110102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9641, 'Inajá', 'PR', 4110300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9643, 'Ipiranga', 'PR', 4110508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9646, 'Irati', 'PR', 4110706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9649, 'Itaipulândia', 'PR', 4110953);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9650, 'Itambaracá', 'PR', 4111001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9652, 'Itapejara D''Oeste', 'PR', 4111209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9657, 'Ivaté', 'PR', 4111555);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9658, 'Ivatuba', 'PR', 4111605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9659, 'Jaboti', 'PR', 4111704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9660, 'Jacarezinho', 'PR', 4111803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9663, 'Jandaia do Sul', 'PR', 4112108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9664, 'Janiópolis', 'PR', 4112207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9667, 'Jardim Alegre', 'PR', 4112504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9668, 'Jardim Olinda', 'PR', 4112603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9670, 'Jesuítas', 'PR', 4112751);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9671, 'Joaquim Távora', 'PR', 4112801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9672, 'Jundiaí do Sul', 'PR', 4112900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9673, 'Juranda', 'PR', 4112959);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9674, 'Jussara', 'PR', 4113007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9675, 'Kaloré', 'PR', 4113106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9676, 'Lapa', 'PR', 4113205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9679, 'Leópolis', 'PR', 4113403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9680, 'Lidianópolis', 'PR', 4113429);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9683, 'Lobato', 'PR', 4113601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9686, 'Lunardelli', 'PR', 4113759);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9687, 'Lupionópolis', 'PR', 4113809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9689, 'Mamborê', 'PR', 4114005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9692, 'Mandirituba', 'PR', 4114302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9693, 'Manfrinópolis', 'PR', 4114351);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9697, 'Maria Helena', 'PR', 4114708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9699, 'Marilândia do Sul', 'PR', 4114906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9700, 'Marilena', 'PR', 4115002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9701, 'Mariluz', 'PR', 4115101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9703, 'Mariópolis', 'PR', 4115309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9704, 'Maripá', 'PR', 4115358);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9705, 'Marmeleiro', 'PR', 4115408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9709, 'Matinhos', 'PR', 4115705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9710, 'Mato Rico', 'PR', 4115739);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9711, 'Mauá da Serra', 'PR', 4115754);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9718, 'Morretes', 'PR', 4116208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9721, 'Nova Aliança do Ivaí', 'PR', 4116505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9722, 'Nova América da Colina', 'PR', 4116604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9724, 'Nova Cantu', 'PR', 4116802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9727, 'Nova Fátima', 'PR', 4117008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9739, 'Paiçandu', 'PR', 4117503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9743, 'Palotina', 'PR', 4117909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9744, 'Paraíso do Norte', 'PR', 4118006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9747, 'Paranapoema', 'PR', 4118303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9748, 'Paranavaí', 'PR', 4118402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9749, 'Pato Bragado', 'PR', 4118451);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9752, 'Paulo Frontin', 'PR', 4118709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9753, 'Peabiru', 'PR', 4118808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9761, 'Pinhão', 'PR', 4119301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9762, 'Piraí do Sul', 'PR', 4119400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9764, 'Pitanga', 'PR', 4119608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9765, 'Pitangueiras', 'PR', 4119657);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9768, 'Ponta Grossa', 'PR', 4119905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9772, 'Porto Barreiro', 'PR', 4120150);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9774, 'Porto Vitória', 'PR', 4120309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9775, 'Prado Ferreira', 'PR', 4120333);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9776, 'Pranchita', 'PR', 4120358);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9779, 'Prudentópolis', 'PR', 4120606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9780, 'Quarto Centenário', 'PR', 4120655);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9782, 'Quatro Barras', 'PR', 4120804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9784, 'Quedas do Iguaçu', 'PR', 4120903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9785, 'Querência do Norte', 'PR', 4121000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9788, 'Ramilândia', 'PR', 4121257);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9789, 'Rancho Alegre', 'PR', 4121307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9790, 'Rancho Alegre D''Oeste', 'PR', 4121356);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9791, 'Realeza', 'PR', 4121406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9792, 'Rebouças', 'PR', 4121505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9795, 'Reserva do Iguaçu', 'PR', 4121752);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9796, 'Ribeirão Claro', 'PR', 4121802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9797, 'Ribeirão do Pinhal', 'PR', 4121901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9800, 'Rio Bonito do Iguaçu', 'PR', 4122156);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9802, 'Rio Branco do Sul', 'PR', 4122206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9804, 'Rolândia', 'PR', 4122404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9805, 'Roncador', 'PR', 4122503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9808, 'Sabáudia', 'PR', 4122701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9812, 'Santa Amélia', 'PR', 4123105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9813, 'Santa Cecília do Pavão', 'PR', 4123204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9815, 'Santa Fé', 'PR', 4123402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9817, 'Santa Inês', 'PR', 4123600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9818, 'Santa Isabel do Ivaí', 'PR', 4123709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9819, 'Santa Izabel do Oeste', 'PR', 4123808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9822, 'Santa Mariana', 'PR', 4123907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9823, 'Santa Mônica', 'PR', 4123956);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9824, 'Santana do Itararé', 'PR', 4124004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9826, 'Santa Terezinha de Itaipu', 'PR', 4124053);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9828, 'Santo Antônio do Caiuá', 'PR', 4124202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9831, 'Santo Inácio', 'PR', 4124509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9832, 'São Carlos do Ivaí', 'PR', 4124608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9833, 'São Jerônimo da Serra', 'PR', 4124707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9834, 'São João', 'PR', 4124806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9836, 'São João do Ivaí', 'PR', 4125001);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9837, 'São João do Triunfo', 'PR', 4125100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9839, 'São Jorge do Ivaí', 'PR', 4125308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9840, 'São Jorge do Patrocínio', 'PR', 4125357);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9841, 'São José da Boa Vista', 'PR', 4125407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9844, 'São Manoel do Paraná', 'PR', 4125555);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9845, 'São Mateus do Sul', 'PR', 4125605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9847, 'São Pedro do Iguaçu', 'PR', 4125753);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9848, 'São Pedro do Ivaí', 'PR', 4125803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9849, 'São Pedro do Paraná', 'PR', 4125902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9851, 'São Tomé', 'PR', 4126108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9852, 'Sapopema', 'PR', 4126207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9853, 'Sarandi', 'PR', 4126256);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9854, 'Saudade do Iguaçu', 'PR', 4126272);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9855, 'Sengés', 'PR', 4126306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9856, 'Serranópolis do Iguaçu', 'PR', 4126355);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9858, 'Sertanópolis', 'PR', 4126504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9862, 'Tamboara', 'PR', 4126702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9866, 'Telêmaco Borba', 'PR', 4127106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9867, 'Terra Boa', 'PR', 4127205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9868, 'Terra Rica', 'PR', 4127304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9870, 'Tibagi', 'PR', 4127502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9874, 'Três Barras do Paraná', 'PR', 4127858);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9875, 'Tunas do Paraná', 'PR', 4127882);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9876, 'Tuneiras do Oeste', 'PR', 4127908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9877, 'Tupãssi', 'PR', 4127957);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9878, 'Turvo', 'PR', 4127965);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9880, 'Umuarama', 'PR', 4128104);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9881, 'União da Vitória', 'PR', 4128203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9883, 'Uraí', 'PR', 4128401);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9886, 'Vera Cruz do Oeste', 'PR', 4128559);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9887, 'Verê', 'PR', 4128609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9888, 'Alto Paraíso', 'PR', 4128625);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9890, 'Virmond', 'PR', 4128658);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9892, 'Xambrê', 'PR', 4128807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9896, 'Agronômica', 'SC', 4200309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9897, 'Água Doce', 'SC', 4200408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9898, 'Águas de Chapecó', 'SC', 4200507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9899, 'Águas Frias', 'SC', 4200556);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9900, 'Águas Mornas', 'SC', 4200606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9903, 'Anchieta', 'SC', 4200804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9905, 'Anita Garibaldi', 'SC', 4201000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9906, 'Anitápolis', 'SC', 4201109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9907, 'Antônio Carlos', 'SC', 4201208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9909, 'Arabutã', 'SC', 4201273);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9910, 'Araquari', 'SC', 4201307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9911, 'Araranguá', 'SC', 4201406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9913, 'Arroio Trinta', 'SC', 4201604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9914, 'Arvoredo', 'SC', 4201653);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9918, 'Balneário Arroio do Silva', 'SC', 4201950);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9919, 'Balneário Camboriú', 'SC', 4202008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9922, 'Bandeirante', 'SC', 4202081);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9923, 'Barra Bonita', 'SC', 4202099);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9924, 'Barra Velha', 'SC', 4202107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9927, 'Benedito Novo', 'SC', 4202206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9928, 'Biguaçu', 'SC', 4202305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9929, 'Blumenau', 'SC', 4202404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9931, 'Bombinhas', 'SC', 4202453);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9934, 'Bom Jesus do Oeste', 'SC', 4202578);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9935, 'Bom Retiro', 'SC', 4202602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9937, 'Braço do Norte', 'SC', 4202800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9941, 'Caçador', 'SC', 4203006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9942, 'Caibi', 'SC', 4203105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9944, 'Camboriú', 'SC', 4203204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9945, 'Capão Alto', 'SC', 4203253);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9946, 'Campo Alegre', 'SC', 4203303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9948, 'Campo Erê', 'SC', 4203501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9949, 'Campos Novos', 'SC', 4203600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9952, 'Capinzal', 'SC', 4203907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9953, 'Capivari de Baixo', 'SC', 4203956);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9955, 'Caxambu do Sul', 'SC', 4204103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9958, 'Chapadão do Lageado', 'SC', 4204194);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9961, 'Concórdia', 'SC', 4204301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9963, 'Coronel Freitas', 'SC', 4204400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9964, 'Coronel Martins', 'SC', 4204459);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9966, 'Correia Pinto', 'SC', 4204558);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9968, 'Cunha Porã', 'SC', 4204707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9969, 'Cunhataí', 'SC', 4204756);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9973, 'Dona Emma', 'SC', 4205100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9977, 'Erval Velho', 'SC', 4205209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9978, 'Faxinal dos Guedes', 'SC', 4205308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9979, 'Flor do Sertão', 'SC', 4205357);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9980, 'Florianópolis', 'SC', 4205407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9981, 'Formosa do Sul', 'SC', 4205431);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9983, 'Fraiburgo', 'SC', 4205506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9986, 'Garopaba', 'SC', 4205704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9987, 'Garuva', 'SC', 4205803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9988, 'Gaspar', 'SC', 4205902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9992, 'Guabiruba', 'SC', 4206306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9994, 'Guaramirim', 'SC', 4206504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9995, 'Guarujá do Sul', 'SC', 4206603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9996, 'Guatambú', 'SC', 4206652);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (9997, 'Herval D''Oeste', 'SC', 4206702);

--
-- Data for table public.cidade (OID = 46301) (LIMIT 5000,500)
--
INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10001, 'Içara', 'SC', 4207007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10003, 'Imaruí', 'SC', 4207205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10004, 'Imbituba', 'SC', 4207304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10005, 'Imbuia', 'SC', 4207403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10007, 'Iomerê', 'SC', 4207577);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10010, 'Ipuaçu', 'SC', 4207684);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10014, 'Irati', 'SC', 4207858);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10015, 'Irineópolis', 'SC', 4207908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10019, 'Itapema', 'SC', 4208302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10021, 'Itapoá', 'SC', 4208450);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10022, 'Ituporanga', 'SC', 4208500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10024, 'Jacinto Machado', 'SC', 4208708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10026, 'Jaraguá do Sul', 'SC', 4208906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10028, 'Joaçaba', 'SC', 4209003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10029, 'Joinville', 'SC', 4209102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10030, 'José Boiteux', 'SC', 4209151);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10034, 'Laguna', 'SC', 4209409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10035, 'Lajeado Grande', 'SC', 4209458);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10036, 'Laurentino', 'SC', 4209508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10039, 'Leoberto Leal', 'SC', 4209805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10040, 'Lindóia do Sul', 'SC', 4209854);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10044, 'Macieira', 'SC', 4210050);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10045, 'Mafra', 'SC', 4210100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10046, 'Major Gercino', 'SC', 4210209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10047, 'Major Vieira', 'SC', 4210308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10051, 'Massaranduba', 'SC', 4210605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10054, 'Mirim Doce', 'SC', 4210852);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10055, 'Modelo', 'SC', 4210902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10057, 'Monte Carlo', 'SC', 4211058);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10058, 'Monte Castelo', 'SC', 4211108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10059, 'Morro da Fumaça', 'SC', 4211207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10060, 'Morro Grande', 'SC', 4211256);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10062, 'Nova Erechim', 'SC', 4211405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10063, 'Nova Itaberaba', 'SC', 4211454);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10067, 'Orleans', 'SC', 4211702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10069, 'Ouro', 'SC', 4211801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10071, 'Paial', 'SC', 4211876);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10072, 'Painel', 'SC', 4211892);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10073, 'Palhoça', 'SC', 4211900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10074, 'Palma Sola', 'SC', 4212007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10076, 'Palmitos', 'SC', 4212106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10080, 'Passos Maia', 'SC', 4212270);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10081, 'Paulo Lopes', 'SC', 4212304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10083, 'Penha', 'SC', 4212502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10085, 'Pescaria Brava', 'SC', 4212650);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10086, 'Petrolândia', 'SC', 4212700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10088, 'Pinhalzinho', 'SC', 4212908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10089, 'Pinheiro Preto', 'SC', 4213005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10091, 'Planalto Alegre', 'SC', 4213153);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10094, 'Ponte Alta do Norte', 'SC', 4213351);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10097, 'Porto União', 'SC', 4213609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10098, 'Pouso Redondo', 'SC', 4213708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10105, 'Rancho Queimado', 'SC', 4214300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10107, 'Rio do Campo', 'SC', 4214508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10108, 'Rio do Oeste', 'SC', 4214607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10109, 'Rio dos Cedros', 'SC', 4214706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10112, 'Rio Negrinho', 'SC', 4215000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10113, 'Rio Rufino', 'SC', 4215059);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10114, 'Riqueza', 'SC', 4215075);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10115, 'Rodeio', 'SC', 4215109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10120, 'Sangão', 'SC', 4215455);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10121, 'Santa Cecília', 'SC', 4215505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10122, 'Santa Helena', 'SC', 4215554);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10127, 'Santiago do Sul', 'SC', 4215695);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10129, 'São Bernardino', 'SC', 4215752);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10131, 'São Bonifácio', 'SC', 4215901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10135, 'São Francisco do Sul', 'SC', 4216206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10138, 'São João do Itaperiú', 'SC', 4216354);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10139, 'São João do Sul', 'SC', 4216404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10140, 'São Joaquim', 'SC', 4216503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10142, 'São José do Cedro', 'SC', 4216701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10143, 'São José do Cerrito', 'SC', 4216800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10144, 'São Lourenço do Oeste', 'SC', 4216909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10145, 'São Ludgero', 'SC', 4217006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10146, 'São Martinho', 'SC', 4217105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10147, 'São Miguel da Boa Vista', 'SC', 4217154);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10148, 'São Miguel do Oeste', 'SC', 4217204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10151, 'Schroeder', 'SC', 4217402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10152, 'Seara', 'SC', 4217501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10154, 'Siderópolis', 'SC', 4217600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10156, 'Sul Brasil', 'SC', 4217758);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10161, 'Timbé do Sul', 'SC', 4218103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10162, 'Timbó', 'SC', 4218202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10164, 'Três Barras', 'SC', 4218301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10166, 'Treze de Maio', 'SC', 4218400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10171, 'Turvo', 'SC', 4218806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10173, 'Urubici', 'SC', 4218905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10177, 'Vargem', 'SC', 4219150);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10179, 'Vidal Ramos', 'SC', 4219200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10180, 'Videira', 'SC', 4219309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10181, 'Vitor Meireles', 'SC', 4219358);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10183, 'Xanxerê', 'SC', 4219507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10187, 'Balneário Rincão', 'SC', 4220000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10188, 'Aceguá', 'RS', 4300034);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10193, 'Alegrete', 'RS', 4300406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10195, 'Almirante Tamandaré do Sul', 'RS', 4300471);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10196, 'Alpestre', 'RS', 4300505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10197, 'Alto Alegre', 'RS', 4300554);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10199, 'Alvorada', 'RS', 4300604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10201, 'Ametista do Sul', 'RS', 4300646);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10202, 'André da Rocha', 'RS', 4300661);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10204, 'Antônio Prado', 'RS', 4300802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10206, 'Araricá', 'RS', 4300877);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10207, 'Aratiba', 'RS', 4300901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10212, 'Arroio do Tigre', 'RS', 4301206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10216, 'Áurea', 'RS', 4301552);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10219, 'Barão', 'RS', 4301651);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10220, 'Barão de Cotegipe', 'RS', 4301701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10222, 'Barracão', 'RS', 4301800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10226, 'Barra do Rio Azul', 'RS', 4301925);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10227, 'Barra Funda', 'RS', 4301958);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10229, 'Benjamin Constant do Sul', 'RS', 4302055);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10232, 'Boa Vista do Buricá', 'RS', 4302204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10234, 'Boa Vista do Incra', 'RS', 4302238);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10235, 'Boa Vista do Sul', 'RS', 4302253);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10236, 'Bom Jesus', 'RS', 4302303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10237, 'Bom Princípio', 'RS', 4302352);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10239, 'Bom Retiro do Sul', 'RS', 4302402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10242, 'Bozano', 'RS', 4302584);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10243, 'Braga', 'RS', 4302600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10245, 'Butiá', 'RS', 4302709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10248, 'Cachoeira do Sul', 'RS', 4303004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10250, 'Cacique Doble', 'RS', 4303202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10251, 'Caibaté', 'RS', 4303301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10252, 'Caiçara', 'RS', 4303400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10253, 'Camaquã', 'RS', 4303509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10256, 'Campestre da Serra', 'RS', 4303673);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10257, 'Campina das Missões', 'RS', 4303707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10258, 'Campinas do Sul', 'RS', 4303806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10261, 'Campos Borges', 'RS', 4304101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10263, 'Cândido Godói', 'RS', 4304309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10264, 'Candiota', 'RS', 4304358);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10265, 'Canela', 'RS', 4304408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10271, 'Capão do Cipó', 'RS', 4304655);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10272, 'Capão do Leão', 'RS', 4304663);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10273, 'Capivari do Sul', 'RS', 4304671);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10276, 'Carazinho', 'RS', 4304705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10279, 'Carlos Gomes', 'RS', 4304853);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10280, 'Casca', 'RS', 4304903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10281, 'Caseiros', 'RS', 4304952);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10283, 'Caxias do Sul', 'RS', 4305108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10285, 'Cerrito', 'RS', 4305124);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10286, 'Cerro Branco', 'RS', 4305132);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10287, 'Cerro Grande', 'RS', 4305157);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10290, 'Chapada', 'RS', 4305306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10295, 'Chuvisca', 'RS', 4305447);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10297, 'Ciríaco', 'RS', 4305504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10302, 'Coqueiro Baixo', 'RS', 4305835);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10304, 'Coronel Barros', 'RS', 4305871);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10306, 'Coronel Pilar', 'RS', 4305934);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10307, 'Cotiporã', 'RS', 4305959);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10309, 'Crissiumal', 'RS', 4306007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10310, 'Cristal', 'RS', 4306056);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10313, 'Cruzaltense', 'RS', 4306130);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10314, 'Cruzeiro do Sul', 'RS', 4306205);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10315, 'David Canabarro', 'RS', 4306304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10317, 'Dezesseis de Novembro', 'RS', 4306353);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10320, 'Dois Irmãos das Missões', 'RS', 4306429);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10322, 'Dom Feliciano', 'RS', 4306502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10323, 'Dom Pedro de Alcântara', 'RS', 4306551);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10324, 'Dom Pedrito', 'RS', 4306601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10325, 'Dona Francisca', 'RS', 4306700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10330, 'Encruzilhada do Sul', 'RS', 4306908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10331, 'Engenho Velho', 'RS', 4306924);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10332, 'Entre-Ijuís', 'RS', 4306932);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10334, 'Erebango', 'RS', 4306973);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10336, 'Ernestina', 'RS', 4307054);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10338, 'Erval Grande', 'RS', 4307203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10341, 'Esperança do Sul', 'RS', 4307450);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10342, 'Espumoso', 'RS', 4307500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10349, 'Fagundes Varela', 'RS', 4307864);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10350, 'Farroupilha', 'RS', 4307906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10351, 'Faxinal do Soturno', 'RS', 4308003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10353, 'Fazenda Vilanova', 'RS', 4308078);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10356, 'Floriano Peixoto', 'RS', 4308250);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10357, 'Fontoura Xavier', 'RS', 4308300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10360, 'Fortaleza dos Valos', 'RS', 4308458);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10363, 'Garruchos', 'RS', 4308656);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10365, 'General Câmara', 'RS', 4308805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10367, 'Getúlio Vargas', 'RS', 4308904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10370, 'Gramado', 'RS', 4309100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10374, 'Guabiju', 'RS', 4309258);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10375, 'Guaíba', 'RS', 4309308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10376, 'Guaporé', 'RS', 4309407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10377, 'Guarani das Missões', 'RS', 4309506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10380, 'Horizontina', 'RS', 4309605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10381, 'Hulha Negra', 'RS', 4309654);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10382, 'Humaitá', 'RS', 4309704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10385, 'Ibiraiaras', 'RS', 4309902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10386, 'Ibirapuitã', 'RS', 4309951);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10388, 'Igrejinha', 'RS', 4310108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10390, 'Ilópolis', 'RS', 4310306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10392, 'Imigrante', 'RS', 4310363);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10393, 'Independência', 'RS', 4310405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10394, 'Inhacorá', 'RS', 4310413);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10396, 'Ipiranga do Sul', 'RS', 4310462);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10397, 'Iraí', 'RS', 4310504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10398, 'Itaara', 'RS', 4310538);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10399, 'Itacurubi', 'RS', 4310553);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10400, 'Itapuca', 'RS', 4310579);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10402, 'Itati', 'RS', 4310652);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10406, 'Jaboticaba', 'RS', 4310850);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10407, 'Jacuizinho', 'RS', 4310876);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10409, 'Jaguarão', 'RS', 4311007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10410, 'Jaguari', 'RS', 4311106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10411, 'Jaquirana', 'RS', 4311122);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10413, 'Jóia', 'RS', 4311155);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10416, 'Lagoão', 'RS', 4311254);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10418, 'Lagoa Vermelha', 'RS', 4311304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10421, 'Lavras do Sul', 'RS', 4311502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10425, 'Machadinho', 'RS', 4311700);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10426, 'Maçambará', 'RS', 4311718);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10431, 'Marau', 'RS', 4311809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10432, 'Marcelino Ramos', 'RS', 4311908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10434, 'Mariano Moro', 'RS', 4312005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10435, 'Marques de Souza', 'RS', 4312054);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10437, 'Mato Castelhano', 'RS', 4312138);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10441, 'Minas do Leão', 'RS', 4312252);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10442, 'Miraguaí', 'RS', 4312302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10444, 'Monte Alegre dos Campos', 'RS', 4312377);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10445, 'Monte Belo do Sul', 'RS', 4312385);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10447, 'Mormaço', 'RS', 4312427);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10450, 'Morro Reuter', 'RS', 4312476);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10452, 'Muçum', 'RS', 4312609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10454, 'Muliterno', 'RS', 4312625);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10458, 'Nova Alvorada', 'RS', 4312757);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10461, 'Nova Boa Vista', 'RS', 4312955);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10462, 'Nova Bréscia', 'RS', 4313003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10463, 'Nova Candelária', 'RS', 4313011);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10464, 'Nova Esperança do Sul', 'RS', 4313037);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10465, 'Nova Hartz', 'RS', 4313060);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10467, 'Nova Palma', 'RS', 4313102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10472, 'Nova Santa Rita', 'RS', 4313375);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10475, 'Novo Machado', 'RS', 4313425);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10476, 'Novo Tiradentes', 'RS', 4313441);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10478, 'Novo Barreiro', 'RS', 4313490);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10481, 'Palmares do Sul', 'RS', 4313656);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10482, 'Palmeira das Missões', 'RS', 4313706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10483, 'Palmitinho', 'RS', 4313805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10484, 'Panambi', 'RS', 4313904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10489, 'Parobé', 'RS', 4314050);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10494, 'Paverama', 'RS', 4314159);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10496, 'Pedro Osório', 'RS', 4314209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10497, 'Pejuçara', 'RS', 4314308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10501, 'Pinhal da Serra', 'RS', 4314464);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10502, 'Pinhal Grande', 'RS', 4314472);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10504, 'Pinheiro Machado', 'RS', 4314506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10505, 'Pinto Bandeira', 'RS', 4314548);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10507, 'Piratini', 'RS', 4314605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10508, 'Planalto', 'RS', 4314704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10511, 'Ponte Preta', 'RS', 4314787);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10512, 'Portão', 'RS', 4314803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10513, 'Porto Alegre', 'RS', 4314902);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10515, 'Porto Mauá', 'RS', 4315057);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10517, 'Porto Xavier', 'RS', 4315107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10518, 'Pouso Novo', 'RS', 4315131);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10521, 'Protásio Alves', 'RS', 4315172);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10523, 'Quaraí', 'RS', 4315305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10525, 'Quevedos', 'RS', 4315321);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10527, 'Redentora', 'RS', 4315404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10528, 'Relvado', 'RS', 4315453);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10529, 'Restinga Seca', 'RS', 4315503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10530, 'Rio dos Índios', 'RS', 4315552);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10534, 'Roca Sales', 'RS', 4315800);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10538, 'Ronda Alta', 'RS', 4316105);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10539, 'Rondinha', 'RS', 4316204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10541, 'Rosário do Sul', 'RS', 4316402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10543, 'Saldanha Marinho', 'RS', 4316436);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10546, 'Salvador do Sul', 'RS', 4316501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10548, 'Santa Bárbara do Sul', 'RS', 4316709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10549, 'Santa Cecília do Sul', 'RS', 4316733);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10551, 'Santa Cruz do Sul', 'RS', 4316808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10552, 'Santa Maria', 'RS', 4316907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10554, 'Santa Margarida do Sul', 'RS', 4316972);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10556, 'Sant''Ana do Livramento', 'RS', 4317103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10557, 'Santa Rosa', 'RS', 4317202);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10561, 'Santo Ângelo', 'RS', 4317509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10567, 'Santo Cristo', 'RS', 4317905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10568, 'Santo Expedito do Sul', 'RS', 4317954);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10569, 'São Borja', 'RS', 4318002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10573, 'São Gabriel', 'RS', 4318309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10575, 'São João da Urtiga', 'RS', 4318424);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10578, 'São José das Missões', 'RS', 4318457);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10580, 'São José do Hortêncio', 'RS', 4318481);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10581, 'São José do Inhacorá', 'RS', 4318499);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10582, 'São José do Norte', 'RS', 4318507);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10583, 'São José do Ouro', 'RS', 4318606);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10584, 'São José do Sul', 'RS', 4318614);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10586, 'São Leopoldo', 'RS', 4318705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10588, 'São Luiz Gonzaga', 'RS', 4318903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10589, 'São Marcos', 'RS', 4319000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10591, 'São Martinho da Serra', 'RS', 4319125);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10595, 'São Pedro da Serra', 'RS', 4319356);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10596, 'São Pedro das Missões', 'RS', 4319364);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10599, 'São Sebastião do Caí', 'RS', 4319505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10600, 'São Sepé', 'RS', 4319604);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10602, 'São Valentim do Sul', 'RS', 4319711);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10604, 'São Vendelino', 'RS', 4319752);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10605, 'São Vicente do Sul', 'RS', 4319802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10608, 'Sarandi', 'RS', 4320107);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10610, 'Sede Nova', 'RS', 4320230);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10611, 'Segredo', 'RS', 4320263);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10612, 'Selbach', 'RS', 4320305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10613, 'Senador Salgado Filho', 'RS', 4320321);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10617, 'Sertão', 'RS', 4320503);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10618, 'Sertão Santana', 'RS', 4320552);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10625, 'Tabaí', 'RS', 4320859);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10626, 'Tapejara', 'RS', 4320909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10627, 'Tapera', 'RS', 4321006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10629, 'Taquara', 'RS', 4321204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10630, 'Taquari', 'RS', 4321303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10631, 'Taquaruçu do Sul', 'RS', 4321329);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10634, 'Terra de Areia', 'RS', 4321436);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10644, 'Três Coroas', 'RS', 4321709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10649, 'Trindade do Sul', 'RS', 4321956);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10650, 'Triunfo', 'RS', 4322004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10651, 'Tucunduva', 'RS', 4322103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10652, 'Tunas', 'RS', 4322152);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10656, 'Tuparendi', 'RS', 4322301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10657, 'Turuçu', 'RS', 4322327);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10659, 'União da Serra', 'RS', 4322350);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10662, 'Vacaria', 'RS', 4322509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10664, 'Vale do Sol', 'RS', 4322533);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10666, 'Vanini', 'RS', 4322558);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10669, 'Veranópolis', 'RS', 4322806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10671, 'Viadutos', 'RS', 4322905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10673, 'Vicente Dutra', 'RS', 4323101);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10674, 'Victor Graeff', 'RS', 4323200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10678, 'Vila Nova do Sul', 'RS', 4323457);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10682, 'Vitória das Missões', 'RS', 4323754);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10683, 'Westfalia', 'RS', 4323770);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10684, 'Xangri-lá', 'RS', 4323804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10685, 'Água Clara', 'MS', 5000203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10687, 'Amambai', 'MS', 5000609);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10688, 'Anastácio', 'MS', 5000708);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10691, 'Antônio João', 'MS', 5000906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10692, 'Aparecida do Taboado', 'MS', 5001003);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10694, 'Aral Moreira', 'MS', 5001243);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10696, 'Bataguassu', 'MS', 5001904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10699, 'Bodoquena', 'MS', 5002159);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10701, 'Brasilândia', 'MS', 5002308);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10702, 'Caarapó', 'MS', 5002407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10704, 'Campo Grande', 'MS', 5002704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10705, 'Caracol', 'MS', 5002803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10709, 'Coronel Sapucaia', 'MS', 5003157);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10710, 'Corumbá', 'MS', 5003207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10712, 'Coxim', 'MS', 5003306);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10714, 'Dois Irmãos do Buriti', 'MS', 5003488);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10717, 'Eldorado', 'MS', 5003751);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10718, 'Fátima do Sul', 'MS', 5003801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10720, 'Glória de Dourados', 'MS', 5004007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10721, 'Guia Lopes da Laguna', 'MS', 5004106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10722, 'Iguatemi', 'MS', 5004304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10725, 'Itaquiraí', 'MS', 5004601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10727, 'Japorã', 'MS', 5004809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10729, 'Jardim', 'MS', 5005004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10731, 'Juti', 'MS', 5005152);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10733, 'Laguna Carapã', 'MS', 5005251);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10734, 'Maracaju', 'MS', 5005400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10735, 'Miranda', 'MS', 5005608);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10736, 'Mundo Novo', 'MS', 5005681);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10737, 'Naviraí', 'MS', 5005707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10738, 'Nioaque', 'MS', 5005806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10740, 'Nova Andradina', 'MS', 5006200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10745, 'Pedro Gomes', 'MS', 5006408);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10747, 'Porto Murtinho', 'MS', 5006903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10751, 'Rio Verde de Mato Grosso', 'MS', 5007406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10752, 'Rochedo', 'MS', 5007505);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10755, 'Sete Quedas', 'MS', 5007703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10756, 'Selvíria', 'MS', 5007802);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10758, 'Sonora', 'MS', 5007935);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10760, 'Taquarussu', 'MS', 5007976);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10761, 'Terenos', 'MS', 5008008);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10762, 'Três Lagoas', 'MS', 5008305);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10763, 'Vicentina', 'MS', 5008404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10764, 'Acorizal', 'MT', 5100102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10766, 'Alta Floresta', 'MT', 5100250);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10767, 'Alto Araguaia', 'MT', 5100300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10769, 'Alto Garças', 'MT', 5100409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10778, 'Barão de Melgaço', 'MT', 5101605);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10781, 'Bom Jesus do Araguaia', 'MT', 5101852);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10783, 'Cáceres', 'MT', 5102504);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10784, 'Campinápolis', 'MT', 5102603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10785, 'Campo Novo do Parecis', 'MT', 5102637);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10786, 'Campo Verde', 'MT', 5102678);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10791, 'Castanheira', 'MT', 5102850);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10792, 'Chapada dos Guimarães', 'MT', 5103007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10793, 'Cláudia', 'MT', 5103056);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10794, 'Cocalinho', 'MT', 5103106);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10796, 'Colniza', 'MT', 5103254);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10797, 'Comodoro', 'MT', 5103304);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10798, 'Confresa', 'MT', 5103353);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10799, 'Conquista D''Oeste', 'MT', 5103361);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10801, 'Cuiabá', 'MT', 5103403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10802, 'Curvelândia', 'MT', 5103437);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10805, 'Dom Aquino', 'MT', 5103601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10807, 'Figueirópolis D''Oeste', 'MT', 5103809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10808, 'Gaúcha do Norte', 'MT', 5103858);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10809, 'General Carneiro', 'MT', 5103908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10810, 'Glória D''Oeste', 'MT', 5103957);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10813, 'Indiavaí', 'MT', 5104500);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10814, 'Ipiranga do Norte', 'MT', 5104526);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10816, 'Itaúba', 'MT', 5104559);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10819, 'Jangada', 'MT', 5104906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10820, 'Jauru', 'MT', 5105002);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10824, 'Juscimeira', 'MT', 5105200);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10826, 'Lucas do Rio Verde', 'MT', 5105259);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10827, 'Luciara', 'MT', 5105309);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10832, 'Nobres', 'MT', 5105903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10833, 'Nortelândia', 'MT', 5106000);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10834, 'Nossa Senhora do Livramento', 'MT', 5106109);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10835, 'Nova Bandeirantes', 'MT', 5106158);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10838, 'Nova Santa Helena', 'MT', 5106190);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10840, 'Nova Canaã do Norte', 'MT', 5106216);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10846, 'Novo Horizonte do Norte', 'MT', 5106273);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10847, 'Novo São Joaquim', 'MT', 5106281);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10849, 'Paranatinga', 'MT', 5106307);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10853, 'Planalto da Serra', 'MT', 5106455);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10855, 'Pontal do Araguaia', 'MT', 5106653);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10856, 'Ponte Branca', 'MT', 5106703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10858, 'Porto Alegre do Norte', 'MT', 5106778);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10860, 'Porto Esperidião', 'MT', 5106828);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10863, 'Primavera do Leste', 'MT', 5107040);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10866, 'Reserva do Cabaçal', 'MT', 5107156);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10868, 'Ribeirãozinho', 'MT', 5107198);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10869, 'Rio Branco', 'MT', 5107206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10872, 'São José do Povo', 'MT', 5107297);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10876, 'Rondolândia', 'MT', 5107578);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10878, 'Rosário Oeste', 'MT', 5107701);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10880, 'Salto do Céu', 'MT', 5107750);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10881, 'Santa Rita do Trivelato', 'MT', 5107768);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10882, 'Santa Terezinha', 'MT', 5107776);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10885, 'São Félix do Araguaia', 'MT', 5107859);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10892, 'Tapurah', 'MT', 5108006);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10893, 'Terra Nova do Norte', 'MT', 5108055);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10895, 'Torixoréu', 'MT', 5108204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10896, 'União do Sul', 'MT', 5108303);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10897, 'Vale de São Domingos', 'MT', 5108352);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10901, 'Nova Guarita', 'MT', 5108808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10902, 'Nova Marilândia', 'MT', 5108857);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10903, 'Nova Maringá', 'MT', 5108907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10904, 'Nova Monte Verde', 'MT', 5108956);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10905, 'Abadia de Goiás', 'GO', 5200050);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10906, 'Abadiânia', 'GO', 5200100);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10907, 'Acreúna', 'GO', 5200134);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10908, 'Adelândia', 'GO', 5200159);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10910, 'Água Limpa', 'GO', 5200209);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10913, 'Aloândia', 'GO', 5200506);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10916, 'Alvorada do Norte', 'GO', 5200803);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10917, 'Amaralina', 'GO', 5200829);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10918, 'Americano do Brasil', 'GO', 5200852);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10921, 'Anhanguera', 'GO', 5201207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10923, 'Aparecida de Goiânia', 'GO', 5201405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10924, 'Aparecida do Rio Doce', 'GO', 5201454);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10926, 'Araçu', 'GO', 5201603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10927, 'Aragarças', 'GO', 5201702);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10931, 'Aruanã', 'GO', 5202502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10933, 'Avelinópolis', 'GO', 5202809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10935, 'Barro Alto', 'GO', 5203203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10939, 'Bonfinópolis', 'GO', 5203559);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10942, 'Britânia', 'GO', 5203807);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10943, 'Buriti Alegre', 'GO', 5203906);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10944, 'Buriti de Goiás', 'GO', 5203939);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10945, 'Buritinópolis', 'GO', 5203962);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10947, 'Cachoeira Alta', 'GO', 5204102);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10949, 'Cachoeira Dourada', 'GO', 5204250);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10951, 'Caiapônia', 'GO', 5204409);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10952, 'Caldas Novas', 'GO', 5204508);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10953, 'Caldazinha', 'GO', 5204557);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10954, 'Campestre de Goiás', 'GO', 5204607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10956, 'Campinorte', 'GO', 5204706);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10957, 'Campo Alegre de Goiás', 'GO', 5204805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10958, 'Campo Limpo de Goiás', 'GO', 5204854);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10962, 'Castelândia', 'GO', 5205059);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10964, 'Caturaí', 'GO', 5205208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10967, 'Cezarina', 'GO', 5205455);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10968, 'Chapadão do Céu', 'GO', 5205471);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10970, 'Cocalzinho de Goiás', 'GO', 5205513);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10971, 'Colinas do Sul', 'GO', 5205521);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10972, 'Córrego do Ouro', 'GO', 5205703);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10974, 'Corumbaíba', 'GO', 5205901);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10975, 'Cristalina', 'GO', 5206206);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10977, 'Crixás', 'GO', 5206404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10982, 'Davinópolis', 'GO', 5206909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10986, 'Edéia', 'GO', 5207402);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10987, 'Estrela do Norte', 'GO', 5207501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10988, 'Faina', 'GO', 5207535);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10991, 'Flores de Goiás', 'GO', 5207907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10992, 'Formosa', 'GO', 5208004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10993, 'Formoso', 'GO', 5208103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10995, 'Divinópolis de Goiás', 'GO', 5208301);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10996, 'Goianápolis', 'GO', 5208400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10997, 'Goiandira', 'GO', 5208509);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (10999, 'Goiânia', 'GO', 5208707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11001, 'Goiás', 'GO', 5208905);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11007, 'Guarinos', 'GO', 5209457);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11009, 'Hidrolândia', 'GO', 5209705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11010, 'Hidrolina', 'GO', 5209804);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11012, 'Inaciolândia', 'GO', 5209937);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11015, 'Ipameri', 'GO', 5210109);

--
-- Data for table public.cidade (OID = 46301) (LIMIT 5500,70)
--
INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11016, 'Ipiranga de Goiás', 'GO', 5210158);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11017, 'Iporá', 'GO', 5210208);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11019, 'Itaberaí', 'GO', 5210406);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11020, 'Itaguari', 'GO', 5210562);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11027, 'Itauçu', 'GO', 5211404);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11029, 'Ivolândia', 'GO', 5211602);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11032, 'Jataí', 'GO', 5211909);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11034, 'Jesúpolis', 'GO', 5212055);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11036, 'Jussara', 'GO', 5212204);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11037, 'Lagoa Santa', 'GO', 5212253);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11039, 'Luziânia', 'GO', 5212501);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11040, 'Mairipotaba', 'GO', 5212600);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11041, 'Mambaí', 'GO', 5212709);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11042, 'Mara Rosa', 'GO', 5212808);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11043, 'Marzagão', 'GO', 5212907);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11044, 'Matrinchã', 'GO', 5212956);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11045, 'Maurilândia', 'GO', 5213004);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11047, 'Minaçu', 'GO', 5213087);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11048, 'Mineiros', 'GO', 5213103);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11049, 'Moiporá', 'GO', 5213400);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11051, 'Montes Claros de Goiás', 'GO', 5213707);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11052, 'Montividiu', 'GO', 5213756);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11053, 'Montividiu do Norte', 'GO', 5213772);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11054, 'Morrinhos', 'GO', 5213806);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11063, 'Nova América', 'GO', 5214705);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11065, 'Nova Crixás', 'GO', 5214838);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11066, 'Nova Glória', 'GO', 5214861);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11067, 'Nova Iguaçu de Goiás', 'GO', 5214879);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11068, 'Nova Roma', 'GO', 5214903);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11069, 'Nova Veneza', 'GO', 5215009);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11072, 'Novo Planalto', 'GO', 5215256);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11074, 'Ouro Verde de Goiás', 'GO', 5215405);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11076, 'Padre Bernardo', 'GO', 5215603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11077, 'Palestina de Goiás', 'GO', 5215652);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11079, 'Palmelo', 'GO', 5215801);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11080, 'Palminópolis', 'GO', 5215900);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11083, 'Paraúna', 'GO', 5216403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11084, 'Perolândia', 'GO', 5216452);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11085, 'Petrolina de Goiás', 'GO', 5216809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11086, 'Pilar de Goiás', 'GO', 5216908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11088, 'Piranhas', 'GO', 5217203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11089, 'Pirenópolis', 'GO', 5217302);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11094, 'Porteirão', 'GO', 5218052);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11096, 'Posse', 'GO', 5218300);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11097, 'Professor Jamil', 'GO', 5218391);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11099, 'Rialma', 'GO', 5218607);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11101, 'Rio Quente', 'GO', 5218789);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11102, 'Rio Verde', 'GO', 5218805);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11103, 'Rubiataba', 'GO', 5218904);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11109, 'Santa Isabel', 'GO', 5219357);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11110, 'Santa Rita do Araguaia', 'GO', 5219407);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11114, 'Santa Terezinha de Goiás', 'GO', 5219704);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11115, 'Santo Antônio da Barra', 'GO', 5219712);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11116, 'Santo Antônio de Goiás', 'GO', 5219738);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11117, 'Santo Antônio do Descoberto', 'GO', 5219753);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11122, 'São Luís de Montes Belos', 'GO', 5220108);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11123, 'São Luíz do Norte', 'GO', 5220157);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11124, 'São Miguel do Araguaia', 'GO', 5220207);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11126, 'São Patrício', 'GO', 5220280);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11128, 'Senador Canedo', 'GO', 5220454);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11130, 'Silvânia', 'GO', 5220603);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11133, 'Taquaral de Goiás', 'GO', 5221007);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11137, 'Trindade', 'GO', 5221403);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11139, 'Turvânia', 'GO', 5221502);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11142, 'Uruaçu', 'GO', 5221601);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11144, 'Urutaí', 'GO', 5221809);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11146, 'Varjão', 'GO', 5221908);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11147, 'Vianópolis', 'GO', 5222005);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11149, 'Vila Boa', 'GO', 5222203);

INSERT INTO cidade (id, nome, uf, codigo_ibge)
VALUES (11151, 'Brasília', 'DF', 5300108);

--
-- Data for table public.pessoa_endereco (OID = 46398) (LIMIT 0,2)
--
INSERT INTO pessoa_endereco (id, fkpessoa, codigo_cidade_ibge, cep, logradouro, numero, bairro, complemento, ativo, principal, dt_cadastro, uf, cpf_cnpj, fk_tipo_endereco, cidade)
VALUES (1, 1, 3306008, '25800000', 'Rua sobe e desce', '999', 'Meu Bairro', NULL, 'S', 'N', '2020-12-08 10:37:43.778447', 'RJ', '11111111000111', 0, 'Três Rios');

INSERT INTO pessoa_endereco (id, fkpessoa, codigo_cidade_ibge, cep, logradouro, numero, bairro, complemento, ativo, principal, dt_cadastro, uf, cpf_cnpj, fk_tipo_endereco, cidade)
VALUES (2, 1, 3306008, '25812010', ' Rua da Galiléia', '55', 'Vila Isabel', NULL, 'S', 'S', '2020-12-23 16:43:36.990001', 'RJ', NULL, 1, NULL);

--
-- Data for table public.tipo_endereco (OID = 46414) (LIMIT 0,4)
--
INSERT INTO tipo_endereco (id, tipo, ativo)
VALUES (1, 'Residencial', 'S');

INSERT INTO tipo_endereco (id, tipo, ativo)
VALUES (2, 'Comercial', 'S');

INSERT INTO tipo_endereco (id, tipo, ativo)
VALUES (3, 'Veraneio', 'S');

INSERT INTO tipo_endereco (id, tipo, ativo)
VALUES (0, 'Principal', 'S');

--
-- Data for table public.pessoa_contato (OID = 46461) (LIMIT 0,2)
--
INSERT INTO pessoa_contato (id, fkpessoa, contato, pessoa_contato, detalhe, rc, principal, dt_cadastro, cpf_cnpj, tipo_contato, email_nfe, email_nfce, email_mdfe, email_cte)
VALUES (2, 2, '24988462180', 'Nelson', NULL, 'C', 'S', '2020-12-11 08:55:53.304', NULL, 'C', 'N', 'N', 'N', 'N');

INSERT INTO pessoa_contato (id, fkpessoa, contato, pessoa_contato, detalhe, rc, principal, dt_cadastro, cpf_cnpj, tipo_contato, email_nfe, email_nfce, email_mdfe, email_cte)
VALUES (3, 2, 'sergio@apisystems.com.br', 'Sergio', NULL, 'C', 'S', '2020-12-11 08:57:11.118', NULL, 'E', 'S', 'N', 'N', 'N');

--
-- Data for table public.tipo_contato (OID = 46492) (LIMIT 0,9)
--
INSERT INTO tipo_contato (id, codigo_tipo, descricao_tipo, ativo)
VALUES (1, 'E', 'E-Mail', 'S');

INSERT INTO tipo_contato (id, codigo_tipo, descricao_tipo, ativo)
VALUES (3, 'F', 'Telefone Fixo', 'S');

INSERT INTO tipo_contato (id, codigo_tipo, descricao_tipo, ativo)
VALUES (4, 'C', 'Celular', 'S');

INSERT INTO tipo_contato (id, codigo_tipo, descricao_tipo, ativo)
VALUES (5, 'S', 'Skype', 'S');

INSERT INTO tipo_contato (id, codigo_tipo, descricao_tipo, ativo)
VALUES (6, 'W', 'Whatsapp', 'S');

INSERT INTO tipo_contato (id, codigo_tipo, descricao_tipo, ativo)
VALUES (7, 'M', 'Messager', 'S');

INSERT INTO tipo_contato (id, codigo_tipo, descricao_tipo, ativo)
VALUES (8, 'T', 'Telegram', 'S');

INSERT INTO tipo_contato (id, codigo_tipo, descricao_tipo, ativo)
VALUES (9, 'O', 'Outro', 'S');

INSERT INTO tipo_contato (id, codigo_tipo, descricao_tipo, ativo)
VALUES (10, 'I', 'Site', 'S');

--
-- Definition for index cidade_pkey (OID = 46308) : 
--
CREATE INDEX cidade_pkey ON cidade USING btree (id);
--
-- Definition for index logs_pk (OID = 29743) : 
--
ALTER TABLE ONLY logs
    ADD CONSTRAINT logs_pk
    PRIMARY KEY (id);
--
-- Definition for index estadocivil_pkey (OID = 38008) : 
--
ALTER TABLE ONLY estadocivil
    ADD CONSTRAINT estadocivil_pkey
    PRIMARY KEY (id);
--
-- Definition for index estadocivil_nome_key (OID = 38010) : 
--
ALTER TABLE ONLY estadocivil
    ADD CONSTRAINT estadocivil_nome_key
    UNIQUE (nome);
--
-- Definition for index pessoa_pkey (OID = 38037) : 
--
ALTER TABLE ONLY pessoa
    ADD CONSTRAINT pessoa_pkey
    PRIMARY KEY (id);
--
-- Definition for index pessoa_fk (OID = 38039) : 
--
ALTER TABLE ONLY pessoa
    ADD CONSTRAINT pessoa_fk
    FOREIGN KEY (estado_civil) REFERENCES estadocivil(id) ON UPDATE CASCADE;
--
-- Definition for index estado_pkey (OID = 46293) : 
--
ALTER TABLE ONLY estado
    ADD CONSTRAINT estado_pkey
    PRIMARY KEY (id);
--
-- Definition for index estado_idx (OID = 46295) : 
--
ALTER TABLE ONLY estado
    ADD CONSTRAINT estado_idx
    UNIQUE (sigla);
--
-- Definition for index estado_idx1 (OID = 46297) : 
--
ALTER TABLE ONLY estado
    ADD CONSTRAINT estado_idx1
    UNIQUE (fk_pais, sigla);
--
-- Definition for index tipo_parentesco_pkey (OID = 46362) : 
--
ALTER TABLE ONLY tipo_parentesco
    ADD CONSTRAINT tipo_parentesco_pkey
    PRIMARY KEY (id);
--
-- Definition for index tipo_parentesco_nome_key (OID = 46364) : 
--
ALTER TABLE ONLY tipo_parentesco
    ADD CONSTRAINT tipo_parentesco_nome_key
    UNIQUE (nome);
--
-- Definition for index pessoa_autorizado_pessoa_dependente_pkey (OID = 46377) : 
--
ALTER TABLE ONLY pessoa_autorizado
    ADD CONSTRAINT pessoa_autorizado_pessoa_dependente_pkey
    PRIMARY KEY (id);
--
-- Definition for index pessoa_autorizado_idx (OID = 46379) : 
--
ALTER TABLE ONLY pessoa_autorizado
    ADD CONSTRAINT pessoa_autorizado_idx
    UNIQUE (fkpessoa, fkautorizado);
--
-- Definition for index pessoa_autorizado_fk (OID = 46381) : 
--
ALTER TABLE ONLY pessoa_autorizado
    ADD CONSTRAINT pessoa_autorizado_fk
    FOREIGN KEY (fkpessoa) REFERENCES pessoa(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index pessoa_autorizado_fk1 (OID = 46386) : 
--
ALTER TABLE ONLY pessoa_autorizado
    ADD CONSTRAINT pessoa_autorizado_fk1
    FOREIGN KEY (fkautorizado) REFERENCES pessoa(id) ON UPDATE CASCADE;
--
-- Definition for index pessoa_autorizado_fk2 (OID = 46391) : 
--
ALTER TABLE ONLY pessoa_autorizado
    ADD CONSTRAINT pessoa_autorizado_fk2
    FOREIGN KEY (fkparentesco) REFERENCES tipo_parentesco(id) ON UPDATE CASCADE;
--
-- Definition for index pessoa_endereco_pkey (OID = 46408) : 
--
ALTER TABLE ONLY pessoa_endereco
    ADD CONSTRAINT pessoa_endereco_pkey
    PRIMARY KEY (id);
--
-- Definition for index pessoa_endereco_idx (OID = 46410) : 
--
ALTER TABLE ONLY pessoa_endereco
    ADD CONSTRAINT pessoa_endereco_idx
    UNIQUE (fkpessoa, codigo_cidade_ibge, cep, logradouro, numero, bairro, complemento);
--
-- Definition for index pessoa_endereco_idx1 (OID = 46445) : 
--
ALTER TABLE ONLY pessoa_endereco
    ADD CONSTRAINT pessoa_endereco_idx1
    UNIQUE (fk_tipo_endereco, fkpessoa);
--
-- Definition for index pessoa_contato_pkey (OID = 46471) : 
--
ALTER TABLE ONLY pessoa_contato
    ADD CONSTRAINT pessoa_contato_pkey
    PRIMARY KEY (id);
--
-- Definition for index pessoa_contato_fk (OID = 46475) : 
--
ALTER TABLE ONLY pessoa_contato
    ADD CONSTRAINT pessoa_contato_fk
    FOREIGN KEY (fkpessoa) REFERENCES pessoa(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index pessoa_contato_idx (OID = 46480) : 
--
ALTER TABLE ONLY pessoa_contato
    ADD CONSTRAINT pessoa_contato_idx
    UNIQUE (fkpessoa, contato);
--
-- Definition for index tipo_contato_pkey (OID = 46497) : 
--
ALTER TABLE ONLY tipo_contato
    ADD CONSTRAINT tipo_contato_pkey
    PRIMARY KEY (id);
--
-- Definition for index tipo_contato_CodikgoTipo_key (OID = 46499) : 
--
ALTER TABLE ONLY tipo_contato
    ADD CONSTRAINT "tipo_contato_CodikgoTipo_key"
    UNIQUE (codigo_tipo);
--
-- Definition for index pessoa_codigo_key (OID = 54682) : 
--
ALTER TABLE ONLY pessoa
    ADD CONSTRAINT pessoa_codigo_key
    UNIQUE (codigo);
--
-- Definition for index pessoa_referencia_pkey (OID = 54694) : 
--
ALTER TABLE ONLY pessoa_referencia
    ADD CONSTRAINT pessoa_referencia_pkey
    PRIMARY KEY (id);
--
-- Definition for index pessoa_referenciao_fk (OID = 54696) : 
--
ALTER TABLE ONLY pessoa_referencia
    ADD CONSTRAINT pessoa_referenciao_fk
    FOREIGN KEY (fkpessoa) REFERENCES pessoa(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index Aplicacoes_pkey (OID = 62885) : 
--
ALTER TABLE ONLY "Aplicacoes"
    ADD CONSTRAINT "Aplicacoes_pkey"
    PRIMARY KEY (id);
--
-- Definition for index Aplicacoes_NomeAplicacao_key (OID = 62887) : 
--
ALTER TABLE ONLY "Aplicacoes"
    ADD CONSTRAINT "Aplicacoes_NomeAplicacao_key"
    UNIQUE (nomeaplicacao);
--
-- Definition for index Modulos_pkey (OID = 62898) : 
--
ALTER TABLE ONLY "Modulos"
    ADD CONSTRAINT "Modulos_pkey"
    PRIMARY KEY (id);
--
-- Definition for index Modulos_fk (OID = 62900) : 
--
ALTER TABLE ONLY "Modulos"
    ADD CONSTRAINT "Modulos_fk"
    FOREIGN KEY (pkaplicacao) REFERENCES "Aplicacoes"(id) ON UPDATE CASCADE;
--
-- Data for sequence public.caixa_id_seq (OID = 29400)
--
SELECT pg_catalog.setval('caixa_id_seq', 1, false);
--
-- Data for sequence public.cargo_id_seq (OID = 29409)
--
SELECT pg_catalog.setval('cargo_id_seq', 1, false);
--
-- Data for sequence public.cargo_permissao_id_seq (OID = 29419)
--
SELECT pg_catalog.setval('cargo_permissao_id_seq', 1, false);
--
-- Data for sequence public.cliente_id_seq (OID = 29428)
--
SELECT pg_catalog.setval('cliente_id_seq', 1, false);
--
-- Data for sequence public.conta_gerencial_id_seq (OID = 29441)
--
SELECT pg_catalog.setval('conta_gerencial_id_seq', 1, false);
--
-- Data for sequence public.filial_id_seq (OID = 29468)
--
SELECT pg_catalog.setval('filial_id_seq', 1, false);
--
-- Data for sequence public.filial_certificado_id_seq (OID = 29477)
--
SELECT pg_catalog.setval('filial_certificado_id_seq', 1, false);
--
-- Data for sequence public.grade_id_seq (OID = 29486)
--
SELECT pg_catalog.setval('grade_id_seq', 1, false);
--
-- Data for sequence public.grupo_id_seq (OID = 29495)
--
SELECT pg_catalog.setval('grupo_id_seq', 1, false);
--
-- Data for sequence public.grupo_acessorio_id_seq (OID = 29505)
--
SELECT pg_catalog.setval('grupo_acessorio_id_seq', 1, false);
--
-- Data for sequence public.marca_id_seq (OID = 29514)
--
SELECT pg_catalog.setval('marca_id_seq', 1, false);
--
-- Data for sequence public.pagar_id_seq (OID = 29523)
--
SELECT pg_catalog.setval('pagar_id_seq', 1, false);
--
-- Data for sequence public.pagar_formapg_id_seq (OID = 29533)
--
SELECT pg_catalog.setval('pagar_formapg_id_seq', 1, false);
--
-- Data for sequence public.pagar_parcela_id_seq (OID = 29542)
--
SELECT pg_catalog.setval('pagar_parcela_id_seq', 1, false);
--
-- Data for sequence public.permissao_id_seq (OID = 29552)
--
SELECT pg_catalog.setval('permissao_id_seq', 4, true);
--
-- Data for sequence public.plano_conta_id_seq (OID = 29593)
--
SELECT pg_catalog.setval('plano_conta_id_seq', 1, false);
--
-- Data for sequence public.plano_conta_categoria_id_seq (OID = 29602)
--
SELECT pg_catalog.setval('plano_conta_categoria_id_seq', 1, false);
--
-- Data for sequence public.produto_id_seq (OID = 29611)
--
SELECT pg_catalog.setval('produto_id_seq', 1, false);
--
-- Data for sequence public.produto_filial_id_seq (OID = 29623)
--
SELECT pg_catalog.setval('produto_filial_id_seq', 1, false);
--
-- Data for sequence public.produto_grade_id_seq (OID = 29632)
--
SELECT pg_catalog.setval('produto_grade_id_seq', 1, false);
--
-- Data for sequence public.produto_preco_id_seq (OID = 29648)
--
SELECT pg_catalog.setval('produto_preco_id_seq', 1, false);
--
-- Data for sequence public.produto_tabela_id_seq (OID = 29657)
--
SELECT pg_catalog.setval('produto_tabela_id_seq', 1, false);
--
-- Data for sequence public.subgrupo_id_seq (OID = 29666)
--
SELECT pg_catalog.setval('subgrupo_id_seq', 1, false);
--
-- Data for sequence public.unidade_id_seq (OID = 29675)
--
SELECT pg_catalog.setval('unidade_id_seq', 1, false);
--
-- Data for sequence public.usuario_id_seq (OID = 29685)
--
SELECT pg_catalog.setval('usuario_id_seq', 3, true);
--
-- Data for sequence public.usuario_filial_id_seq (OID = 29695)
--
SELECT pg_catalog.setval('usuario_filial_id_seq', 1, true);
--
-- Data for sequence public.usuario_permissao_id_seq (OID = 29701)
--
SELECT pg_catalog.setval('usuario_permissao_id_seq', 2, true);
--
-- Data for sequence public.logs_id_seq (OID = 29732)
--
SELECT pg_catalog.setval('logs_id_seq', 1, false);
--
-- Data for sequence public.estadocivil_id_seq (OID = 37998)
--
SELECT pg_catalog.setval('estadocivil_id_seq', 5, true);
--
-- Data for sequence public.pessoa_id_seq (OID = 38012)
--
SELECT pg_catalog.setval('pessoa_id_seq', 4, true);
--
-- Data for sequence public.estado_id_seq (OID = 46284)
--
SELECT pg_catalog.setval('estado_id_seq', 28, true);
--
-- Data for sequence public.cidade_id_seq (OID = 46299)
--
SELECT pg_catalog.setval('cidade_id_seq', 11151, true);
--
-- Data for sequence public.tipo_parentesco_id_seq (OID = 46352)
--
SELECT pg_catalog.setval('tipo_parentesco_id_seq', 1, false);
--
-- Data for sequence public.pessoa_autorizado_id_seq (OID = 46366)
--
SELECT pg_catalog.setval('pessoa_autorizado_id_seq', 1, false);
--
-- Data for sequence public.pessoa_endereco_id_seq (OID = 46396)
--
SELECT pg_catalog.setval('pessoa_endereco_id_seq', 4, true);
--
-- Data for sequence public.tipo_endereco_id_seq (OID = 46412)
--
SELECT pg_catalog.setval('tipo_endereco_id_seq', 4, true);
--
-- Data for sequence public.pessoa_endereco_fk_tipo_endereco_seq (OID = 46426)
--
SELECT pg_catalog.setval('pessoa_endereco_fk_tipo_endereco_seq', 3, true);
--
-- Data for sequence public.pessoa_contato_id_seq (OID = 46459)
--
SELECT pg_catalog.setval('pessoa_contato_id_seq', 6, true);
--
-- Data for sequence public.tipo_contato_id_seq (OID = 46490)
--
SELECT pg_catalog.setval('tipo_contato_id_seq', 11, true);
--
-- Data for sequence public.pessoa_referencia_id_seq (OID = 54684)
--
SELECT pg_catalog.setval('pessoa_referencia_id_seq', 1, true);
--
-- Data for sequence public."Aplicacoes_id_seq" (OID = 62879)
--
SELECT pg_catalog.setval('"Aplicacoes_id_seq"', 1, false);
--
-- Data for sequence public."Modulos_id_seq" (OID = 62889)
--
SELECT pg_catalog.setval('"Modulos_id_seq"', 1, false);
--
-- Comments
--
COMMENT ON SCHEMA public IS 'standard public schema';
COMMENT ON COLUMN public.pessoa.tipo_pessoa IS 'F = Pessoa Fisica
J = Pessoa Juridica';
COMMENT ON COLUMN public.pessoa.limite_credito IS 'Limite de compra do cliente';
COMMENT ON COLUMN public.pessoa.cliente IS 'Informa se é um cliente';
COMMENT ON COLUMN public.pessoa.fornecedor IS 'Informa se é um fornecedor';
COMMENT ON COLUMN public.pessoa.funcionario IS 'Informa se é u funcionário';
COMMENT ON COLUMN public.pessoa.empresa IS 'Informa se é uma empresa';
COMMENT ON COLUMN public.pessoa.transportadora IS 'Informa se é uma transportadora';
COMMENT ON COLUMN public.pessoa_contato.pessoa_contato IS 'Pessoa com quem falar';
COMMENT ON COLUMN public.pessoa_contato.rc IS 'R = Residencial
C = Comercial';
COMMENT ON COLUMN public.pessoa_contato.tipo_contato IS 'E-Email; F=Telefone Fixo; C=Celular;S=Skype;W=Whatsapp;M=Messager;T=Telegram; O=Outros (especificar em detalhe)';
COMMENT ON COLUMN public.pessoa_referencia.nome_referencia IS 'Nome/Razão social da referência';
COMMENT ON COLUMN public.pessoa_referencia.tipo_referencia IS 'C = Comercial
R = Residencial';
