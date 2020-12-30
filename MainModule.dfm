object UniMainModule: TUniMainModule
  OldCreateOrder = False
  Background.Fit = True
  LoginBackground.Picture.Data = {
    0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000032
    0000003208060000001E3F88B10000000467414D410000B18F0BFC6105000000
    097048597300000EC300000EC301C76FA8640000007B494441546843DDC83101
    00200CC0B0E9C314D287811828479ECC9CBB5F6016318B9845CC226611B38859
    C42C6216318B9845CC226611B38859C42C6216318B9845CC226611B38859C42C
    6216318B9845CC226611B38859C42C6216318B9845CC226611B38859C42C6216
    318B9845CC226611B38859C42C62E6DC7D882866205D0C8DFE0000000049454E
    44AE426082}
  LoginBackground.Fit = True
  MonitoredKeys.Keys = <>
  Height = 359
  Width = 818
  object conexao: TFDConnection
    Params.Strings = (
      'Database=APILoja20'
      'User_Name=postgres'
      'Password=masterkey'
      'Server=localhost'
      'CharacterSet=UTF8'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    BeforeConnect = conexaoBeforeConnect
    Left = 29
    Top = 15
  end
  object fdlnkConexao: TFDPhysPgDriverLink
    Left = 118
    Top = 15
  end
  object CDS_Login: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from usuario')
    Left = 226
    Top = 19
    object CDS_Loginid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
    end
    object CDS_Loginfkpessoa: TLargeintField
      FieldName = 'fkpessoa'
      Origin = 'fkpessoa'
    end
    object CDS_Loginfk_perfil: TIntegerField
      FieldName = 'fk_perfil'
      Origin = 'fk_perfil'
    end
    object CDS_Loginlogin: TWideStringField
      FieldName = 'login'
      Origin = '"login"'
      Size = 70
    end
    object CDS_Loginsenha_acesso: TWideStringField
      FieldName = 'senha_acesso'
      Origin = 'senha_acesso'
      Size = 70
    end
    object CDS_Loginsenha_liberacao: TWideStringField
      FieldName = 'senha_liberacao'
      Origin = 'senha_liberacao'
      Size = 70
    end
    object CDS_Loginativo: TWideStringField
      FieldName = 'ativo'
      Origin = 'ativo'
      FixedChar = True
      Size = 1
    end
    object CDS_Logindt_cadastro: TSQLTimeStampField
      FieldName = 'dt_cadastro'
      Origin = 'dt_cadastro'
    end
  end
  object CDS_Logs: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from logs')
    Left = 356
    Top = 17
    object CDS_Logsid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDS_Logslog_data: TSQLTimeStampField
      FieldName = 'log_data'
      Origin = 'log_data'
    end
    object CDS_Logslog_evento: TStringField
      FieldName = 'log_evento'
      Origin = 'log_evento'
      Size = 255
    end
    object CDS_Logslog_usuario: TStringField
      FieldName = 'log_usuario'
      Origin = 'log_usuario'
      Size = 100
    end
    object CDS_Logslog_obs: TStringField
      FieldName = 'log_obs'
      Origin = 'log_obs'
      Size = 255
    end
  end
  object CDS_Cliente: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT *'
      'FROM pessoa p'
      'WHERE (p.cliente='#39'S'#39')')
    Left = 491
    Top = 22
    object CDS_Clienteid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDS_Clientenome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object CDS_Clientefantasia_social: TWideStringField
      FieldName = 'fantasia_social'
      Origin = 'fantasia_social'
      Size = 70
    end
    object CDS_Clientecpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 18
    end
    object CDS_Clienterg_ie: TWideStringField
      FieldName = 'rg_ie'
      Origin = 'rg_ie'
    end
    object CDS_Clienteativo: TWideStringField
      FieldName = 'ativo'
      Origin = 'ativo'
      FixedChar = True
      Size = 1
    end
    object CDS_Clientetipo_pessoa: TWideStringField
      FieldName = 'tipo_pessoa'
      Origin = 'tipo_pessoa'
      Size = 1
    end
    object CDS_Clientedt_cadastrado: TSQLTimeStampField
      FieldName = 'dt_cadastrado'
      Origin = 'dt_cadastrado'
    end
    object CDS_Clientealteracao: TSQLTimeStampField
      FieldName = 'alteracao'
      Origin = 'alteracao'
    end
    object CDS_Clientenascimento_constituicao: TDateField
      FieldName = 'nascimento_constituicao'
      Origin = 'nascimento_constituicao'
    end
    object CDS_Clientesexo: TWideStringField
      FieldName = 'sexo'
      Origin = 'sexo'
      Size = 1
    end
    object CDS_Clientepai: TWideStringField
      FieldName = 'pai'
      Origin = 'pai'
      Size = 100
    end
    object CDS_Clientemae: TWideStringField
      FieldName = 'mae'
      Origin = 'mae'
      Size = 100
    end
    object CDS_Clienteestado_civil: TIntegerField
      FieldName = 'estado_civil'
      Origin = 'estado_civil'
    end
    object CDS_Clienteconjuge: TWideStringField
      FieldName = 'conjuge'
      Origin = 'conjuge'
      Size = 100
    end
    object CDS_Clienteprofissao: TWideStringField
      FieldName = 'profissao'
      Origin = 'profissao'
      Size = 100
    end
    object CDS_Clienteespecial: TWideStringField
      FieldName = 'especial'
      Origin = 'especial'
      FixedChar = True
      Size = 1
    end
    object CDS_Clientebloqueado: TWideStringField
      FieldName = 'bloqueado'
      Origin = 'bloqueado'
      FixedChar = True
      Size = 1
    end
    object CDS_Clientelimite_credito: TBCDField
      FieldName = 'limite_credito'
      Origin = 'limite_credito'
      Precision = 15
      Size = 2
    end
    object CDS_Clientetipo_contribuinte: TWideStringField
      FieldName = 'tipo_contribuinte'
      Origin = 'tipo_contribuinte'
      Size = 1
    end
    object CDS_Clienteconsumidor_rural: TWideStringField
      FieldName = 'consumidor_rural'
      Origin = 'consumidor_rural'
      FixedChar = True
      Size = 1
    end
    object CDS_Clienteconsumidor_final: TWideStringField
      FieldName = 'consumidor_final'
      Origin = 'consumidor_final'
      FixedChar = True
      Size = 1
    end
    object CDS_Clientecliente: TWideStringField
      FieldName = 'cliente'
      Origin = 'cliente'
      FixedChar = True
      Size = 1
    end
    object CDS_Clientefornecedor: TWideStringField
      FieldName = 'fornecedor'
      Origin = 'fornecedor'
      FixedChar = True
      Size = 1
    end
    object CDS_Clientefuncionario: TWideStringField
      FieldName = 'funcionario'
      Origin = 'funcionario'
      FixedChar = True
      Size = 1
    end
    object CDS_Clienteempresa: TWideStringField
      FieldName = 'empresa'
      Origin = 'empresa'
      FixedChar = True
      Size = 1
    end
    object CDS_Clientetransportadora: TWideStringField
      FieldName = 'transportadora'
      Origin = 'transportadora'
      FixedChar = True
      Size = 1
    end
    object CDS_Clientefornecedor_representante: TWideStringField
      FieldName = 'fornecedor_representante'
      Origin = 'fornecedor_representante'
      Size = 100
    end
    object CDS_Clientecodigo: TWideStringField
      FieldName = 'codigo'
      Origin = 'codigo'
      Size = 10
    end
  end
  object conexao_fotos: TFDConnection
    Params.Strings = (
      'Database=fotos'
      'User_Name=postgres'
      'Password=masterkey'
      'Server=localhost'
      'CharacterSet=WIN1252'
      'DriverID=PG')
    LoginPrompt = False
    Left = 31
    Top = 80
  end
  object CDS_Estado_Civil: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from estadocivil order by nome')
    Left = 126
    Top = 81
    object CDS_Estado_Civilid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDS_Estado_Civilnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object CDS_Estado_Civilativo: TWideStringField
      FieldName = 'ativo'
      Origin = 'ativo'
      FixedChar = True
      Size = 1
    end
  end
  object CDS_Endereco: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from pessoa_endereco e '
      'left join  tipo_endereco t on e.fk_tipo_endereco=t.id'
      'left join cidade c on e.codigo_cidade_ibge=c.codigo_ibge'
      'where (e.fkpessoa=:fkpessoa) and (e.principal='#39'N'#39')')
    Left = 231
    Top = 78
    ParamData = <
      item
        Name = 'FKPESSOA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
    object CDS_Enderecoid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDS_Enderecofkpessoa: TLargeintField
      FieldName = 'fkpessoa'
      Origin = 'fkpessoa'
    end
    object CDS_Enderecocodigo_cidade_ibge: TLargeintField
      FieldName = 'codigo_cidade_ibge'
      Origin = 'codigo_cidade_ibge'
    end
    object CDS_Enderecocep: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 9
    end
    object CDS_Enderecologradouro: TWideStringField
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 40
    end
    object CDS_Endereconumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 10
    end
    object CDS_Enderecobairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 40
    end
    object CDS_Enderecocomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 45
    end
    object CDS_Enderecoativo: TWideStringField
      FieldName = 'ativo'
      Origin = 'ativo'
      FixedChar = True
      Size = 1
    end
    object CDS_Enderecoprincipal2: TWideStringField
      FieldName = 'principal'
      Origin = 'principal'
      FixedChar = True
      Size = 1
    end
    object CDS_Enderecodt_cadastro: TSQLTimeStampField
      FieldName = 'dt_cadastro'
      Origin = 'dt_cadastro'
    end
    object CDS_Enderecouf: TWideStringField
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object CDS_Enderecocpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 18
    end
    object CDS_Enderecofk_tipo_endereco: TLargeintField
      FieldName = 'fk_tipo_endereco'
      Origin = 'fk_tipo_endereco'
    end
    object CDS_Enderecocidade: TWideStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 100
    end
    object CDS_Enderecoid_1: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
    end
    object CDS_Enderecotipo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      Size = 100
    end
    object CDS_Enderecoativo_1: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ativo_1'
      Origin = 'ativo'
      FixedChar = True
      Size = 1
    end
    object CDS_Enderecoid_2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_2'
      Origin = 'id'
    end
    object CDS_Endereconome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object CDS_Enderecouf_1: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf_1'
      Origin = 'uf'
      Size = 2
    end
    object CDS_Enderecocodigo_ibge: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'codigo_ibge'
      Origin = 'codigo_ibge'
    end
  end
  object CDS_UF: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from estado order by sigla')
    Left = 322
    Top = 82
    object CDS_UFid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDS_UFfk_pais: TIntegerField
      FieldName = 'fk_pais'
      Origin = 'fk_pais'
    end
    object CDS_UFnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object CDS_UFsigla: TWideStringField
      FieldName = 'sigla'
      Origin = 'sigla'
      Size = 2
    end
    object CDS_UFperc_part_dest: TBCDField
      FieldName = 'perc_part_dest'
      Origin = 'perc_part_dest'
      Precision = 15
      Size = 2
    end
    object CDS_UFicms: TBCDField
      FieldName = 'icms'
      Origin = 'icms'
      Precision = 15
      Size = 2
    end
    object CDS_UFfundo_pobreza: TBCDField
      FieldName = 'fundo_pobreza'
      Origin = 'fundo_pobreza'
      Precision = 15
      Size = 2
    end
    object CDS_UFperc_part_emit: TBCDField
      FieldName = 'perc_part_emit'
      Origin = 'perc_part_emit'
      Precision = 15
      Size = 2
    end
    object CDS_UFicms_inter: TBCDField
      FieldName = 'icms_inter'
      Origin = 'icms_inter'
      Precision = 15
      Size = 2
    end
    object CDS_UFperc_marckup: TBCDField
      FieldName = 'perc_marckup'
      Origin = 'perc_marckup'
      Precision = 15
      Size = 2
    end
  end
  object CDS_Cidades: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from cidade order by uf,nome')
    Left = 414
    Top = 83
    object CDS_Cidadesid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
    end
    object CDS_Cidadesnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object CDS_Cidadesuf: TWideStringField
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object CDS_Cidadescodigo_ibge: TLargeintField
      FieldName = 'codigo_ibge'
      Origin = 'codigo_ibge'
    end
  end
  object CDS_EnderecoPrincipal: TFDQuery
    Filtered = True
    Connection = conexao
    SQL.Strings = (
      'select * from pessoa_endereco e '
      'left join  tipo_endereco t on e.fk_tipo_endereco=t.id'
      'left join cidade c on e.codigo_cidade_ibge=c.codigo_ibge'
      'where (e.fkpessoa=:fkpessoa) and (e.principal='#39'S'#39')'
      'limit 1')
    Left = 536
    Top = 86
    ParamData = <
      item
        Name = 'FKPESSOA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object CDS_EnderecoPrincipalid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDS_EnderecoPrincipalfkpessoa: TLargeintField
      FieldName = 'fkpessoa'
      Origin = 'fkpessoa'
    end
    object CDS_EnderecoPrincipalcodigo_cidade_ibge: TLargeintField
      FieldName = 'codigo_cidade_ibge'
      Origin = 'codigo_cidade_ibge'
    end
    object CDS_EnderecoPrincipalcep: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 9
    end
    object CDS_EnderecoPrincipallogradouro: TWideStringField
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 40
    end
    object CDS_EnderecoPrincipalnumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 10
    end
    object CDS_EnderecoPrincipalbairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 40
    end
    object CDS_EnderecoPrincipalcomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 45
    end
    object CDS_EnderecoPrincipalativo: TWideStringField
      FieldName = 'ativo'
      Origin = 'ativo'
      FixedChar = True
      Size = 1
    end
    object CDS_EnderecoPrincipalprincipal: TWideStringField
      FieldName = 'principal'
      Origin = 'principal'
      FixedChar = True
      Size = 1
    end
    object CDS_EnderecoPrincipaldt_cadastro: TSQLTimeStampField
      FieldName = 'dt_cadastro'
      Origin = 'dt_cadastro'
    end
    object CDS_EnderecoPrincipaluf: TWideStringField
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object CDS_EnderecoPrincipalcpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 18
    end
    object CDS_EnderecoPrincipalfk_tipo_endereco: TLargeintField
      FieldName = 'fk_tipo_endereco'
      Origin = 'fk_tipo_endereco'
    end
    object CDS_EnderecoPrincipalcidade: TWideStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 100
    end
    object CDS_EnderecoPrincipalid_1: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
    end
    object CDS_EnderecoPrincipaltipo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      Size = 100
    end
    object CDS_EnderecoPrincipalativo_1: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ativo_1'
      Origin = 'ativo'
      FixedChar = True
      Size = 1
    end
    object CDS_EnderecoPrincipalid_2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_2'
      Origin = 'id'
    end
    object CDS_EnderecoPrincipalnome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object CDS_EnderecoPrincipaluf_1: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf_1'
      Origin = 'uf'
      Size = 2
    end
    object CDS_EnderecoPrincipalcodigo_ibge: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'codigo_ibge'
      Origin = 'codigo_ibge'
    end
  end
  object CDS_ContatoPrincipal: TFDQuery
    Filtered = True
    Connection = conexao
    SQL.Strings = (
      'select *,'
      
        '       case when c.tipo_contato='#39'O'#39' then c.detalhe else t.descri' +
        'cao_tipo end as descr_tipo,'
      '       c.contato,c.principal,'
      '       c.email_nfe,c.email_nfce,c.email_mdfe,c.email_cte, c.rc '
      'from pessoa_contato as c '
      'left join tipo_contato t on c.tipo_contato=t.codigo_tipo'
      'where (c.principal='#39'S'#39') and (c.fkpessoa=:fkpessoa)')
    Left = 39
    Top = 149
    ParamData = <
      item
        Name = 'FKPESSOA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object CDS_ContatoPrincipalid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDS_ContatoPrincipalfkpessoa: TLargeintField
      FieldName = 'fkpessoa'
      Origin = 'fkpessoa'
    end
    object CDS_ContatoPrincipalcontato: TWideStringField
      FieldName = 'contato'
      Origin = 'contato'
      Size = 255
    end
    object CDS_ContatoPrincipalpessoa_contato: TWideStringField
      FieldName = 'pessoa_contato'
      Origin = 'pessoa_contato'
      Size = 100
    end
    object CDS_ContatoPrincipaldetalhe: TWideStringField
      FieldName = 'detalhe'
      Origin = 'detalhe'
      Size = 100
    end
    object CDS_ContatoPrincipalrc: TWideStringField
      FieldName = 'rc'
      Origin = 'rc'
      Size = 1
    end
    object CDS_ContatoPrincipalprincipal: TWideStringField
      FieldName = 'principal'
      Origin = 'principal'
      FixedChar = True
      Size = 1
    end
    object CDS_ContatoPrincipaldt_cadastro: TSQLTimeStampField
      FieldName = 'dt_cadastro'
      Origin = 'dt_cadastro'
    end
    object CDS_ContatoPrincipalcpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 18
    end
    object CDS_ContatoPrincipaltipo_contato: TWideStringField
      FieldName = 'tipo_contato'
      Origin = 'tipo_contato'
      Size = 1
    end
    object CDS_ContatoPrincipalemail_nfe: TWideStringField
      FieldName = 'email_nfe'
      Origin = 'email_nfe'
      FixedChar = True
      Size = 1
    end
    object CDS_ContatoPrincipalemail_nfce: TWideStringField
      FieldName = 'email_nfce'
      Origin = 'email_nfce'
      FixedChar = True
      Size = 1
    end
    object CDS_ContatoPrincipalemail_mdfe: TWideStringField
      FieldName = 'email_mdfe'
      Origin = 'email_mdfe'
      FixedChar = True
      Size = 1
    end
    object CDS_ContatoPrincipalemail_cte: TWideStringField
      FieldName = 'email_cte'
      Origin = 'email_cte'
      FixedChar = True
      Size = 1
    end
    object CDS_ContatoPrincipalid_1: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
    end
    object CDS_ContatoPrincipalcodigo_tipo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo_tipo'
      Origin = 'codigo_tipo'
      Size = 2
    end
    object CDS_ContatoPrincipaldescricao_tipo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao_tipo'
      Origin = 'descricao_tipo'
      Size = 50
    end
    object CDS_ContatoPrincipalativo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ativo'
      Origin = 'ativo'
      Size = 1
    end
    object CDS_ContatoPrincipaldescr_tipo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'descr_tipo'
      Origin = 'descr_tipo'
      ReadOnly = True
      Size = 8190
    end
    object CDS_ContatoPrincipalcontato_1: TWideStringField
      FieldName = 'contato_1'
      Origin = 'contato'
      Size = 255
    end
    object CDS_ContatoPrincipalprincipal_1: TWideStringField
      FieldName = 'principal_1'
      Origin = 'principal'
      FixedChar = True
      Size = 1
    end
    object CDS_ContatoPrincipalemail_nfe_1: TWideStringField
      FieldName = 'email_nfe_1'
      Origin = 'email_nfe'
      FixedChar = True
      Size = 1
    end
    object CDS_ContatoPrincipalemail_nfce_1: TWideStringField
      FieldName = 'email_nfce_1'
      Origin = 'email_nfce'
      FixedChar = True
      Size = 1
    end
    object CDS_ContatoPrincipalemail_mdfe_1: TWideStringField
      FieldName = 'email_mdfe_1'
      Origin = 'email_mdfe'
      FixedChar = True
      Size = 1
    end
    object CDS_ContatoPrincipalemail_cte_1: TWideStringField
      FieldName = 'email_cte_1'
      Origin = 'email_cte'
      FixedChar = True
      Size = 1
    end
    object CDS_ContatoPrincipalrc_1: TWideStringField
      FieldName = 'rc_1'
      Origin = 'rc'
      Size = 1
    end
  end
  object CDS_tipo_endereco: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select * from tipo_endereco where (id <> 0) and (tipo <> '#39'Princi' +
        'pal'#39') order by tipo')
    Left = 161
    Top = 150
    object CDS_tipo_enderecoid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
    end
    object CDS_tipo_enderecotipo: TWideStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Size = 100
    end
    object CDS_tipo_enderecoativo: TWideStringField
      FieldName = 'ativo'
      Origin = 'ativo'
      FixedChar = True
      Size = 1
    end
  end
  object fdmtblEnderecos: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 276
    Top = 145
    object fdmtblEnderecosid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdmtblEnderecosfkpessoa: TLargeintField
      FieldName = 'fkpessoa'
      Origin = 'fkpessoa'
    end
    object fdmtblEnderecoscodigo_cidade_ibge: TLargeintField
      FieldName = 'codigo_cidade_ibge'
      Origin = 'codigo_cidade_ibge'
    end
    object fdmtblEnderecoscep: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 9
    end
    object fdmtblEnderecoslogradouro: TWideStringField
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 40
    end
    object fdmtblEnderecosnumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 10
    end
    object fdmtblEnderecosbairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 40
    end
    object fdmtblEnderecoscomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 45
    end
    object fdmtblEnderecosativo: TWideStringField
      FieldName = 'ativo'
      Origin = 'ativo'
      FixedChar = True
      Size = 1
    end
    object fdmtblEnderecosprincipal: TWideStringField
      FieldName = 'principal'
      Origin = 'principal'
      FixedChar = True
      Size = 1
    end
    object fdmtblEnderecosdt_cadastro: TSQLTimeStampField
      FieldName = 'dt_cadastro'
      Origin = 'dt_cadastro'
    end
    object fdmtblEnderecosuf: TWideStringField
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object fdmtblEnderecoscpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 18
    end
    object fdmtblEnderecosfk_tipo_endereco: TLargeintField
      FieldName = 'fk_tipo_endereco'
      Origin = 'fk_tipo_endereco'
    end
    object fdmtblEnderecoscidade: TWideStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 100
    end
    object fdmtblEnderecosid_1: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
    end
    object fdmtblEnderecostipo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      Size = 100
    end
    object fdmtblEnderecosativo_1: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ativo_1'
      Origin = 'ativo'
      FixedChar = True
      Size = 1
    end
    object fdmtblEnderecosid_2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_2'
      Origin = 'id'
    end
    object fdmtblEnderecosnome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object fdmtblEnderecosuf_1: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf_1'
      Origin = 'uf'
      Size = 2
    end
    object fdmtblEnderecoscodigo_ibge: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'codigo_ibge'
      Origin = 'codigo_ibge'
    end
    object fdmtblEnderecosexcluido: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'excluido'
      Size = 1
    end
  end
  object fdmtblContatos: TFDMemTable
    Filter = 'fk_tipo_endereco<>0'
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 469
    Top = 149
    object fdmtblContatosid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdmtblContatosfkpessoa: TLargeintField
      FieldName = 'fkpessoa'
      Origin = 'fkpessoa'
    end
    object fdmtblContatoscontato: TWideStringField
      FieldName = 'contato'
      Origin = 'contato'
      Size = 255
    end
    object fdmtblContatospessoa_contato: TWideStringField
      FieldName = 'pessoa_contato'
      Origin = 'pessoa_contato'
      Size = 100
    end
    object fdmtblContatosdetalhe: TWideStringField
      FieldName = 'detalhe'
      Origin = 'detalhe'
      Size = 100
    end
    object fdmtblContatosprincipal: TWideStringField
      FieldName = 'principal'
      Origin = 'principal'
      FixedChar = True
      Size = 1
    end
    object fdmtblContatosdt_cadastro: TSQLTimeStampField
      FieldName = 'dt_cadastro'
      Origin = 'dt_cadastro'
    end
    object fdmtblContatoscpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 18
    end
    object fdmtblContatostipo_contato: TWideStringField
      FieldName = 'tipo_contato'
      Origin = 'tipo_contato'
      Size = 1
    end
    object fdmtblContatosid_1: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
    end
    object fdmtblContatoscodigo_tipo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo_tipo'
      Origin = 'codigo_tipo'
      Size = 2
    end
    object fdmtblContatosdescricao_tipo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao_tipo'
      Origin = 'descricao_tipo'
      Size = 50
    end
    object fdmtblContatosativo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ativo'
      Origin = 'ativo'
      Size = 1
    end
    object fdmtblContatostipo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      Size = 255
    end
    object fdmtblContatoslocal: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'local'
      Origin = '"local"'
      Size = 50
    end
    object fdmtblContatosrc: TWideStringField
      FieldName = 'rc'
      Origin = 'rc'
      Size = 1
    end
    object fdmtblContatosemail_nfe: TWideStringField
      FieldName = 'email_nfe'
      Origin = 'email_nfe'
      FixedChar = True
      Size = 1
    end
    object fdmtblContatosemail_nfce: TWideStringField
      FieldName = 'email_nfce'
      Origin = 'email_nfce'
      FixedChar = True
      Size = 1
    end
    object fdmtblContatosemail_mdfe: TWideStringField
      FieldName = 'email_mdfe'
      Origin = 'email_mdfe'
      FixedChar = True
      Size = 1
    end
    object fdmtblContatosemail_cte: TWideStringField
      FieldName = 'email_cte'
      Origin = 'email_cte'
      FixedChar = True
      Size = 1
    end
  end
  object CDS_Contatos: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select *, '
      
        'Cast(case when c.tipo_contato<>'#39'O'#39' then t.descricao_tipo else c.' +
        'detalhe end as Varchar(255)) as Tipo,'
      
        'cast(case when c.rc='#39'R'#39' then '#39'Residencial'#39' else '#39'Comercial'#39' end ' +
        'as VARCHAR(50)) as local '
      'from pessoa_contato c '
      'left join  tipo_contato t on c.tipo_contato=t.codigo_tipo'
      'where (c.fkpessoa=:fkpessoa) and (principal <> '#39'S'#39')')
    Left = 384
    Top = 146
    ParamData = <
      item
        Name = 'FKPESSOA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
    object CDS_Contatosid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDS_Contatosfkpessoa: TLargeintField
      FieldName = 'fkpessoa'
      Origin = 'fkpessoa'
    end
    object CDS_Contatoscontato: TWideStringField
      FieldName = 'contato'
      Origin = 'contato'
      Size = 255
    end
    object CDS_Contatospessoa_contato: TWideStringField
      FieldName = 'pessoa_contato'
      Origin = 'pessoa_contato'
      Size = 100
    end
    object CDS_Contatosdetalhe: TWideStringField
      FieldName = 'detalhe'
      Origin = 'detalhe'
      Size = 100
    end
    object CDS_Contatosprincipal: TWideStringField
      FieldName = 'principal'
      Origin = 'principal'
      FixedChar = True
      Size = 1
    end
    object CDS_Contatosdt_cadastro: TSQLTimeStampField
      FieldName = 'dt_cadastro'
      Origin = 'dt_cadastro'
    end
    object CDS_Contatoscpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 18
    end
    object CDS_Contatostipo_contato: TWideStringField
      FieldName = 'tipo_contato'
      Origin = 'tipo_contato'
      Size = 1
    end
    object CDS_Contatosid_1: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
    end
    object CDS_Contatoscodigo_tipo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo_tipo'
      Origin = 'codigo_tipo'
      Size = 2
    end
    object CDS_Contatosdescricao_tipo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao_tipo'
      Origin = 'descricao_tipo'
      Size = 50
    end
    object CDS_Contatosativo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ativo'
      Origin = 'ativo'
      Size = 1
    end
    object CDS_Contatostipo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      ReadOnly = True
      Size = 255
    end
    object CDS_Contatoslocal: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'local'
      Origin = '"local"'
      ReadOnly = True
      Size = 50
    end
    object CDS_Contatosrc: TWideStringField
      FieldName = 'rc'
      Origin = 'rc'
      Size = 1
    end
    object CDS_Contatosemail_nfe: TWideStringField
      FieldName = 'email_nfe'
      Origin = 'email_nfe'
      FixedChar = True
      Size = 1
    end
    object CDS_Contatosemail_nfce: TWideStringField
      FieldName = 'email_nfce'
      Origin = 'email_nfce'
      FixedChar = True
      Size = 1
    end
    object CDS_Contatosemail_mdfe: TWideStringField
      FieldName = 'email_mdfe'
      Origin = 'email_mdfe'
      FixedChar = True
      Size = 1
    end
    object CDS_Contatosemail_cte: TWideStringField
      FieldName = 'email_cte'
      Origin = 'email_cte'
      FixedChar = True
      Size = 1
    end
  end
  object CDS_Tipo_Contato: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select * from tipo_contato where ativo='#39'S'#39' order by descricao_ti' +
        'po')
    Left = 584
    Top = 151
    object CDS_Tipo_Contatoid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDS_Tipo_Contatocodigo_tipo: TWideStringField
      FieldName = 'codigo_tipo'
      Origin = 'codigo_tipo'
      Size = 2
    end
    object CDS_Tipo_Contatodescricao_tipo: TWideStringField
      FieldName = 'descricao_tipo'
      Origin = 'descricao_tipo'
      Size = 50
    end
    object CDS_Tipo_Contatoativo: TWideStringField
      FieldName = 'ativo'
      Origin = 'ativo'
      Size = 1
    end
  end
  object fdmtblContatoPrincipal: TFDMemTable
    Filter = 'fk_tipo_endereco=0'
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 43
    Top = 224
    object fdmtblContatoPrincipalid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdmtblContatoPrincipalfkpessoa: TLargeintField
      FieldName = 'fkpessoa'
      Origin = 'fkpessoa'
    end
    object fdmtblContatoPrincipalcontato: TWideStringField
      FieldName = 'contato'
      Origin = 'contato'
      Size = 255
    end
    object fdmtblContatoPrincipalpessoa_contato: TWideStringField
      FieldName = 'pessoa_contato'
      Origin = 'pessoa_contato'
      Size = 100
    end
    object fdmtblContatoPrincipaldetalhe: TWideStringField
      FieldName = 'detalhe'
      Origin = 'detalhe'
      Size = 100
    end
    object fdmtblContatoPrincipalrc: TWideStringField
      FieldName = 'rc'
      Origin = 'rc'
      Size = 1
    end
    object fdmtblContatoPrincipalprincipal: TWideStringField
      FieldName = 'principal'
      Origin = 'principal'
      FixedChar = True
      Size = 1
    end
    object fdmtblContatoPrincipaldt_cadastro: TSQLTimeStampField
      FieldName = 'dt_cadastro'
      Origin = 'dt_cadastro'
    end
    object fdmtblContatoPrincipalcpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 18
    end
    object fdmtblContatoPrincipaltipo_contato: TWideStringField
      FieldName = 'tipo_contato'
      Origin = 'tipo_contato'
      Size = 1
    end
    object fdmtblContatoPrincipalemail_nfe: TWideStringField
      FieldName = 'email_nfe'
      Origin = 'email_nfe'
      FixedChar = True
      Size = 1
    end
    object fdmtblContatoPrincipalemail_nfce: TWideStringField
      FieldName = 'email_nfce'
      Origin = 'email_nfce'
      FixedChar = True
      Size = 1
    end
    object fdmtblContatoPrincipalemail_mdfe: TWideStringField
      FieldName = 'email_mdfe'
      Origin = 'email_mdfe'
      FixedChar = True
      Size = 1
    end
    object fdmtblContatoPrincipalemail_cte: TWideStringField
      FieldName = 'email_cte'
      Origin = 'email_cte'
      FixedChar = True
      Size = 1
    end
    object fdmtblContatoPrincipalid_1: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
    end
    object fdmtblContatoPrincipalcodigo_tipo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo_tipo'
      Origin = 'codigo_tipo'
      Size = 2
    end
    object fdmtblContatoPrincipaldescricao_tipo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao_tipo'
      Origin = 'descricao_tipo'
      Size = 50
    end
    object fdmtblContatoPrincipalativo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ativo'
      Origin = 'ativo'
      Size = 1
    end
    object fdmtblContatoPrincipaldescr_tipo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'descr_tipo'
      Origin = 'descr_tipo'
      Size = 8190
    end
    object fdmtblContatoPrincipalcontato_1: TWideStringField
      FieldName = 'contato_1'
      Origin = 'contato'
      Size = 255
    end
    object fdmtblContatoPrincipalprincipal_1: TWideStringField
      FieldName = 'principal_1'
      Origin = 'principal'
      FixedChar = True
      Size = 1
    end
    object fdmtblContatoPrincipalemail_nfe_1: TWideStringField
      FieldName = 'email_nfe_1'
      Origin = 'email_nfe'
      FixedChar = True
      Size = 1
    end
    object fdmtblContatoPrincipalemail_nfce_1: TWideStringField
      FieldName = 'email_nfce_1'
      Origin = 'email_nfce'
      FixedChar = True
      Size = 1
    end
    object fdmtblContatoPrincipalemail_mdfe_1: TWideStringField
      FieldName = 'email_mdfe_1'
      Origin = 'email_mdfe'
      FixedChar = True
      Size = 1
    end
    object fdmtblContatoPrincipalemail_cte_1: TWideStringField
      FieldName = 'email_cte_1'
      Origin = 'email_cte'
      FixedChar = True
      Size = 1
    end
    object fdmtblContatoPrincipalrc_1: TWideStringField
      FieldName = 'rc_1'
      Origin = 'rc'
      Size = 1
    end
  end
  object dsContatoPrincipal: TDataSource
    DataSet = fdmtblContatoPrincipal
    Left = 169
    Top = 224
  end
  object dsContatos: TDataSource
    DataSet = fdmtblContatos
    Left = 677
    Top = 150
  end
  object CDS_Referencia: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select *, '
      'Cast(case '
      '        when r.tipo_referencia='#39'C'#39' then '#39'Comercial'#39
      '        when r.tipo_referencia='#39'P'#39' then '#39'Pessoal'#39' '
      '     end as Varchar(20)) as Tipo'
      'from pessoa_referencia r'
      'where (r.fkpessoa=:fkpessoa)')
    Left = 284
    Top = 223
    ParamData = <
      item
        Name = 'FKPESSOA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
    object CDS_Referenciaid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDS_Referenciafkpessoa: TLargeintField
      FieldName = 'fkpessoa'
      Origin = 'fkpessoa'
    end
    object CDS_Referencianome_referencia: TWideStringField
      FieldName = 'nome_referencia'
      Origin = 'nome_referencia'
      Size = 40
    end
    object CDS_Referenciacontato_referencia: TWideStringField
      FieldName = 'contato_referencia'
      Origin = 'contato_referencia'
      Size = 100
    end
    object CDS_Referenciadt_cadastro: TSQLTimeStampField
      FieldName = 'dt_cadastro'
      Origin = 'dt_cadastro'
    end
    object CDS_Referenciatipo_referencia: TWideStringField
      FieldName = 'tipo_referencia'
      Origin = 'tipo_referencia'
      Size = 1
    end
    object CDS_Referenciatelefone1: TWideStringField
      FieldName = 'telefone1'
      Origin = 'telefone1'
      Size = 16
    end
    object CDS_Referenciatelefone1_whatsapp: TWideStringField
      FieldName = 'telefone1_whatsapp'
      Origin = 'telefone1_whatsapp'
      FixedChar = True
      Size = 1
    end
    object CDS_Referenciatelefone2: TWideStringField
      FieldName = 'telefone2'
      Origin = 'telefone2'
      Size = 16
    end
    object CDS_Referenciatelefone2_whatsapp: TWideStringField
      FieldName = 'telefone2_whatsapp'
      Origin = 'telefone2_whatsapp'
      FixedChar = True
      Size = 1
    end
    object CDS_Referenciatelefone3: TWideStringField
      FieldName = 'telefone3'
      Origin = 'telefone3'
      Size = 16
    end
    object CDS_Referenciaemail1: TWideStringField
      FieldName = 'email1'
      Origin = 'email1'
      Size = 70
    end
    object CDS_Referenciaemail2: TWideStringField
      FieldName = 'email2'
      Origin = 'email2'
      Size = 70
    end
    object CDS_Referenciatipo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      ReadOnly = True
    end
  end
  object fdmtblReferencia: TFDMemTable
    Filter = 'fk_tipo_endereco<>0'
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 385
    Top = 222
    object fdmtblReferenciaid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdmtblReferenciafkpessoa: TLargeintField
      FieldName = 'fkpessoa'
      Origin = 'fkpessoa'
    end
    object fdmtblReferencianome_referencia: TWideStringField
      FieldName = 'nome_referencia'
      Origin = 'nome_referencia'
      Size = 40
    end
    object fdmtblReferenciacontato_referencia: TWideStringField
      FieldName = 'contato_referencia'
      Origin = 'contato_referencia'
      Size = 100
    end
    object fdmtblReferenciadt_cadastro: TSQLTimeStampField
      FieldName = 'dt_cadastro'
      Origin = 'dt_cadastro'
    end
    object fdmtblReferenciatipo_referencia: TWideStringField
      FieldName = 'tipo_referencia'
      Origin = 'tipo_referencia'
      Size = 1
    end
    object fdmtblReferenciatelefone1: TWideStringField
      FieldName = 'telefone1'
      Origin = 'telefone1'
      Size = 16
    end
    object fdmtblReferenciatelefone1_whatsapp: TWideStringField
      FieldName = 'telefone1_whatsapp'
      Origin = 'telefone1_whatsapp'
      FixedChar = True
      Size = 1
    end
    object fdmtblReferenciatelefone2: TWideStringField
      FieldName = 'telefone2'
      Origin = 'telefone2'
      Size = 16
    end
    object fdmtblReferenciatelefone2_whatsapp: TWideStringField
      FieldName = 'telefone2_whatsapp'
      Origin = 'telefone2_whatsapp'
      FixedChar = True
      Size = 1
    end
    object fdmtblReferenciatelefone3: TWideStringField
      FieldName = 'telefone3'
      Origin = 'telefone3'
      Size = 16
    end
    object fdmtblReferenciaemail1: TWideStringField
      FieldName = 'email1'
      Origin = 'email1'
      Size = 70
    end
    object fdmtblReferenciaemail2: TWideStringField
      FieldName = 'email2'
      Origin = 'email2'
      Size = 70
    end
    object fdmtblReferenciatipo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
    end
  end
  object dsReferencia: TDataSource
    DataSet = fdmtblReferencia
    Left = 481
    Top = 222
  end
  object CDS_Filial: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from filial order by razao_social')
    Left = 628
    Top = 24
    object CDS_Filialid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
    end
    object CDS_Filialnome_fantasia: TWideStringField
      FieldName = 'nome_fantasia'
      Origin = 'nome_fantasia'
      Size = 70
    end
    object CDS_Filialrazao_social: TWideStringField
      FieldName = 'razao_social'
      Origin = 'razao_social'
      Size = 70
    end
    object CDS_Filiallogradouro: TWideStringField
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 40
    end
    object CDS_Filialnumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 10
    end
    object CDS_Filialbairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 40
    end
    object CDS_Filialfk_cidade: TIntegerField
      FieldName = 'fk_cidade'
      Origin = 'fk_cidade'
    end
    object CDS_Filialcep: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 9
    end
    object CDS_Filialtelefone_1: TWideStringField
      FieldName = 'telefone_1'
      Origin = 'telefone_1'
      Size = 16
    end
    object CDS_Filialtelefone_2: TWideStringField
      FieldName = 'telefone_2'
      Origin = 'telefone_2'
      Size = 16
    end
    object CDS_Filialtelefone_3: TWideStringField
      FieldName = 'telefone_3'
      Origin = 'telefone_3'
      Size = 16
    end
    object CDS_Filialcnpj: TWideStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 18
    end
    object CDS_Filialie: TWideStringField
      FieldName = 'ie'
      Origin = 'ie'
      Size = 15
    end
    object CDS_Filialgerente: TWideStringField
      FieldName = 'gerente'
      Origin = 'gerente'
      Size = 100
    end
    object CDS_Filialcomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 45
    end
    object CDS_Filialemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 70
    end
    object CDS_Filialsmtp: TWideStringField
      FieldName = 'smtp'
      Origin = 'smtp'
      Size = 70
    end
    object CDS_Filialemail_senha: TWideStringField
      FieldName = 'email_senha'
      Origin = 'email_senha'
      Size = 70
    end
    object CDS_Filialporta_email: TIntegerField
      FieldName = 'porta_email'
      Origin = 'porta_email'
    end
    object CDS_Filialserie_nfe: TIntegerField
      FieldName = 'serie_nfe'
      Origin = 'serie_nfe'
    end
    object CDS_Filialnatureza_operacao_nfe: TWideStringField
      FieldName = 'natureza_operacao_nfe'
      Origin = 'natureza_operacao_nfe'
      Size = 70
    end
    object CDS_Filialperc_aliquota_sn: TBCDField
      FieldName = 'perc_aliquota_sn'
      Origin = 'perc_aliquota_sn'
      Precision = 15
      Size = 2
    end
    object CDS_Filialcalcular_base_icms: TWideStringField
      FieldName = 'calcular_base_icms'
      Origin = 'calcular_base_icms'
      FixedChar = True
      Size = 1
    end
    object CDS_Filialativo: TWideStringField
      FieldName = 'ativo'
      Origin = 'ativo'
      FixedChar = True
      Size = 1
    end
    object CDS_Filialdt_cadastro: TSQLTimeStampField
      FieldName = 'dt_cadastro'
      Origin = 'dt_cadastro'
    end
  end
end
