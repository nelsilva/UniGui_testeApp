unit MainModule;

interface

uses
  uniGUIMainModule, System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Comp.DataSet, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, UGlobal, System.IniFiles;

type
  TUniMainModule = class(TUniGUIMainModule)
    conexao: TFDConnection;
    fdlnkConexao: TFDPhysPgDriverLink;
    CDS_Login: TFDQuery;
    CDS_Loginid: TLargeintField;
    CDS_Loginfkpessoa: TLargeintField;
    CDS_Loginfk_perfil: TIntegerField;
    CDS_Loginlogin: TWideStringField;
    CDS_Loginsenha_acesso: TWideStringField;
    CDS_Loginsenha_liberacao: TWideStringField;
    CDS_Loginativo: TWideStringField;
    CDS_Logindt_cadastro: TSQLTimeStampField;
    CDS_Logs: TFDQuery;
    CDS_Logsid: TIntegerField;
    CDS_Logslog_data: TSQLTimeStampField;
    CDS_Logslog_evento: TStringField;
    CDS_Logslog_usuario: TStringField;
    CDS_Logslog_obs: TStringField;
    CDS_Cliente: TFDQuery;
    conexao_fotos: TFDConnection;
    CDS_Estado_Civil: TFDQuery;
    CDS_Estado_Civilid: TLargeintField;
    CDS_Estado_Civilnome: TWideStringField;
    CDS_Estado_Civilativo: TWideStringField;
    CDS_Endereco: TFDQuery;
    CDS_Enderecoid: TLargeintField;
    CDS_Enderecofkpessoa: TLargeintField;
    CDS_Enderecocodigo_cidade_ibge: TLargeintField;
    CDS_Enderecocep: TWideStringField;
    CDS_Enderecologradouro: TWideStringField;
    CDS_Endereconumero: TWideStringField;
    CDS_Enderecobairro: TWideStringField;
    CDS_Enderecocomplemento: TWideStringField;
    CDS_Enderecoativo: TWideStringField;
    CDS_Enderecoprincipal2: TWideStringField;
    CDS_Enderecodt_cadastro: TSQLTimeStampField;
    CDS_Enderecouf: TWideStringField;
    CDS_Enderecocpf_cnpj: TWideStringField;
    CDS_Enderecofk_tipo_endereco: TLargeintField;
    CDS_Enderecocidade: TWideStringField;
    CDS_Enderecoid_1: TLargeintField;
    CDS_Enderecotipo: TWideStringField;
    CDS_Enderecoativo_1: TWideStringField;
    CDS_Enderecoid_2: TIntegerField;
    CDS_Endereconome: TWideStringField;
    CDS_Enderecouf_1: TWideStringField;
    CDS_Enderecocodigo_ibge: TLargeintField;
    CDS_UF: TFDQuery;
    CDS_UFid: TLargeintField;
    CDS_UFfk_pais: TIntegerField;
    CDS_UFnome: TWideStringField;
    CDS_UFsigla: TWideStringField;
    CDS_UFperc_part_dest: TBCDField;
    CDS_UFicms: TBCDField;
    CDS_UFfundo_pobreza: TBCDField;
    CDS_UFperc_part_emit: TBCDField;
    CDS_UFicms_inter: TBCDField;
    CDS_UFperc_marckup: TBCDField;
    CDS_Cidades: TFDQuery;
    CDS_Cidadesid: TIntegerField;
    CDS_Cidadesnome: TWideStringField;
    CDS_Cidadesuf: TWideStringField;
    CDS_Cidadescodigo_ibge: TLargeintField;
    CDS_EnderecoPrincipal: TFDQuery;
    CDS_EnderecoPrincipalid: TLargeintField;
    CDS_EnderecoPrincipalfkpessoa: TLargeintField;
    CDS_EnderecoPrincipalcodigo_cidade_ibge: TLargeintField;
    CDS_EnderecoPrincipalcep: TWideStringField;
    CDS_EnderecoPrincipallogradouro: TWideStringField;
    CDS_EnderecoPrincipalnumero: TWideStringField;
    CDS_EnderecoPrincipalbairro: TWideStringField;
    CDS_EnderecoPrincipalcomplemento: TWideStringField;
    CDS_EnderecoPrincipalativo: TWideStringField;
    CDS_EnderecoPrincipalprincipal: TWideStringField;
    CDS_EnderecoPrincipaldt_cadastro: TSQLTimeStampField;
    CDS_EnderecoPrincipaluf: TWideStringField;
    CDS_EnderecoPrincipalcpf_cnpj: TWideStringField;
    CDS_EnderecoPrincipalfk_tipo_endereco: TLargeintField;
    CDS_EnderecoPrincipalcidade: TWideStringField;
    CDS_EnderecoPrincipalid_1: TLargeintField;
    CDS_EnderecoPrincipaltipo: TWideStringField;
    CDS_EnderecoPrincipalativo_1: TWideStringField;
    CDS_EnderecoPrincipalid_2: TIntegerField;
    CDS_EnderecoPrincipalnome: TWideStringField;
    CDS_EnderecoPrincipaluf_1: TWideStringField;
    CDS_EnderecoPrincipalcodigo_ibge: TLargeintField;
    CDS_ContatoPrincipal: TFDQuery;
    CDS_ContatoPrincipalid: TLargeintField;
    CDS_ContatoPrincipalfkpessoa: TLargeintField;
    CDS_ContatoPrincipalcontato: TWideStringField;
    CDS_ContatoPrincipalpessoa_contato: TWideStringField;
    CDS_ContatoPrincipaldetalhe: TWideStringField;
    CDS_ContatoPrincipalrc: TWideStringField;
    CDS_ContatoPrincipalprincipal: TWideStringField;
    CDS_ContatoPrincipaldt_cadastro: TSQLTimeStampField;
    CDS_ContatoPrincipalcpf_cnpj: TWideStringField;
    CDS_ContatoPrincipaltipo_contato: TWideStringField;
    CDS_ContatoPrincipalemail_nfe: TWideStringField;
    CDS_ContatoPrincipalemail_nfce: TWideStringField;
    CDS_ContatoPrincipalemail_mdfe: TWideStringField;
    CDS_ContatoPrincipalemail_cte: TWideStringField;
    CDS_ContatoPrincipalid_1: TLargeintField;
    CDS_ContatoPrincipalcodigo_tipo: TWideStringField;
    CDS_ContatoPrincipaldescricao_tipo: TWideStringField;
    CDS_ContatoPrincipalativo: TWideStringField;
    CDS_ContatoPrincipaldescr_tipo: TWideStringField;
    CDS_ContatoPrincipalcontato_1: TWideStringField;
    CDS_ContatoPrincipalprincipal_1: TWideStringField;
    CDS_ContatoPrincipalemail_nfe_1: TWideStringField;
    CDS_ContatoPrincipalemail_nfce_1: TWideStringField;
    CDS_ContatoPrincipalemail_mdfe_1: TWideStringField;
    CDS_ContatoPrincipalemail_cte_1: TWideStringField;
    CDS_ContatoPrincipalrc_1: TWideStringField;
    CDS_tipo_endereco: TFDQuery;
    CDS_tipo_enderecoid: TLargeintField;
    CDS_tipo_enderecotipo: TWideStringField;
    CDS_tipo_enderecoativo: TWideStringField;
    fdmtblEnderecos: TFDMemTable;
    fdmtblEnderecosid: TLargeintField;
    fdmtblEnderecosfkpessoa: TLargeintField;
    fdmtblEnderecoscodigo_cidade_ibge: TLargeintField;
    fdmtblEnderecoscep: TWideStringField;
    fdmtblEnderecoslogradouro: TWideStringField;
    fdmtblEnderecosnumero: TWideStringField;
    fdmtblEnderecosbairro: TWideStringField;
    fdmtblEnderecoscomplemento: TWideStringField;
    fdmtblEnderecosativo: TWideStringField;
    fdmtblEnderecosprincipal: TWideStringField;
    fdmtblEnderecosdt_cadastro: TSQLTimeStampField;
    fdmtblEnderecosuf: TWideStringField;
    fdmtblEnderecoscpf_cnpj: TWideStringField;
    fdmtblEnderecosfk_tipo_endereco: TLargeintField;
    fdmtblEnderecoscidade: TWideStringField;
    fdmtblEnderecosid_1: TLargeintField;
    fdmtblEnderecostipo: TWideStringField;
    fdmtblEnderecosativo_1: TWideStringField;
    fdmtblEnderecosid_2: TIntegerField;
    fdmtblEnderecosnome: TWideStringField;
    fdmtblEnderecosuf_1: TWideStringField;
    fdmtblEnderecoscodigo_ibge: TLargeintField;
    fdmtblEnderecosexcluido: TStringField;
    fdmtblContatos: TFDMemTable;
    fdmtblContatosid: TLargeintField;
    fdmtblContatosfkpessoa: TLargeintField;
    fdmtblContatoscontato: TWideStringField;
    fdmtblContatospessoa_contato: TWideStringField;
    fdmtblContatosdetalhe: TWideStringField;
    fdmtblContatosprincipal: TWideStringField;
    fdmtblContatosdt_cadastro: TSQLTimeStampField;
    fdmtblContatoscpf_cnpj: TWideStringField;
    fdmtblContatostipo_contato: TWideStringField;
    fdmtblContatosid_1: TLargeintField;
    fdmtblContatoscodigo_tipo: TWideStringField;
    fdmtblContatosdescricao_tipo: TWideStringField;
    fdmtblContatosativo: TWideStringField;
    fdmtblContatostipo: TWideStringField;
    fdmtblContatoslocal: TWideStringField;
    fdmtblContatosrc: TWideStringField;
    fdmtblContatosemail_nfe: TWideStringField;
    fdmtblContatosemail_nfce: TWideStringField;
    fdmtblContatosemail_mdfe: TWideStringField;
    fdmtblContatosemail_cte: TWideStringField;
    CDS_Contatos: TFDQuery;
    CDS_Contatosid: TLargeintField;
    CDS_Contatosfkpessoa: TLargeintField;
    CDS_Contatoscontato: TWideStringField;
    CDS_Contatospessoa_contato: TWideStringField;
    CDS_Contatosdetalhe: TWideStringField;
    CDS_Contatosprincipal: TWideStringField;
    CDS_Contatosdt_cadastro: TSQLTimeStampField;
    CDS_Contatoscpf_cnpj: TWideStringField;
    CDS_Contatostipo_contato: TWideStringField;
    CDS_Contatosid_1: TLargeintField;
    CDS_Contatoscodigo_tipo: TWideStringField;
    CDS_Contatosdescricao_tipo: TWideStringField;
    CDS_Contatosativo: TWideStringField;
    CDS_Contatostipo: TWideStringField;
    CDS_Contatoslocal: TWideStringField;
    CDS_Contatosrc: TWideStringField;
    CDS_Contatosemail_nfe: TWideStringField;
    CDS_Contatosemail_nfce: TWideStringField;
    CDS_Contatosemail_mdfe: TWideStringField;
    CDS_Contatosemail_cte: TWideStringField;
    CDS_Tipo_Contato: TFDQuery;
    CDS_Tipo_Contatoid: TLargeintField;
    CDS_Tipo_Contatocodigo_tipo: TWideStringField;
    CDS_Tipo_Contatodescricao_tipo: TWideStringField;
    CDS_Tipo_Contatoativo: TWideStringField;
    fdmtblContatoPrincipal: TFDMemTable;
    fdmtblContatoPrincipalid: TLargeintField;
    fdmtblContatoPrincipalfkpessoa: TLargeintField;
    fdmtblContatoPrincipalcontato: TWideStringField;
    fdmtblContatoPrincipalpessoa_contato: TWideStringField;
    fdmtblContatoPrincipaldetalhe: TWideStringField;
    fdmtblContatoPrincipalrc: TWideStringField;
    fdmtblContatoPrincipalprincipal: TWideStringField;
    fdmtblContatoPrincipaldt_cadastro: TSQLTimeStampField;
    fdmtblContatoPrincipalcpf_cnpj: TWideStringField;
    fdmtblContatoPrincipaltipo_contato: TWideStringField;
    fdmtblContatoPrincipalemail_nfe: TWideStringField;
    fdmtblContatoPrincipalemail_nfce: TWideStringField;
    fdmtblContatoPrincipalemail_mdfe: TWideStringField;
    fdmtblContatoPrincipalemail_cte: TWideStringField;
    fdmtblContatoPrincipalid_1: TLargeintField;
    fdmtblContatoPrincipalcodigo_tipo: TWideStringField;
    fdmtblContatoPrincipaldescricao_tipo: TWideStringField;
    fdmtblContatoPrincipalativo: TWideStringField;
    fdmtblContatoPrincipaldescr_tipo: TWideStringField;
    fdmtblContatoPrincipalcontato_1: TWideStringField;
    fdmtblContatoPrincipalprincipal_1: TWideStringField;
    fdmtblContatoPrincipalemail_nfe_1: TWideStringField;
    fdmtblContatoPrincipalemail_nfce_1: TWideStringField;
    fdmtblContatoPrincipalemail_mdfe_1: TWideStringField;
    fdmtblContatoPrincipalemail_cte_1: TWideStringField;
    fdmtblContatoPrincipalrc_1: TWideStringField;
    dsContatoPrincipal: TDataSource;
    dsContatos: TDataSource;
    CDS_Referencia: TFDQuery;
    CDS_Referenciaid: TLargeintField;
    CDS_Referenciafkpessoa: TLargeintField;
    CDS_Referencianome_referencia: TWideStringField;
    CDS_Referenciacontato_referencia: TWideStringField;
    CDS_Referenciadt_cadastro: TSQLTimeStampField;
    CDS_Referenciatipo_referencia: TWideStringField;
    CDS_Referenciatelefone1: TWideStringField;
    CDS_Referenciatelefone1_whatsapp: TWideStringField;
    CDS_Referenciatelefone2: TWideStringField;
    CDS_Referenciatelefone2_whatsapp: TWideStringField;
    CDS_Referenciatelefone3: TWideStringField;
    CDS_Referenciaemail1: TWideStringField;
    CDS_Referenciaemail2: TWideStringField;
    CDS_Referenciatipo: TWideStringField;
    fdmtblReferencia: TFDMemTable;
    fdmtblReferenciaid: TLargeintField;
    fdmtblReferenciafkpessoa: TLargeintField;
    fdmtblReferencianome_referencia: TWideStringField;
    fdmtblReferenciacontato_referencia: TWideStringField;
    fdmtblReferenciadt_cadastro: TSQLTimeStampField;
    fdmtblReferenciatipo_referencia: TWideStringField;
    fdmtblReferenciatelefone1: TWideStringField;
    fdmtblReferenciatelefone1_whatsapp: TWideStringField;
    fdmtblReferenciatelefone2: TWideStringField;
    fdmtblReferenciatelefone2_whatsapp: TWideStringField;
    fdmtblReferenciatelefone3: TWideStringField;
    fdmtblReferenciaemail1: TWideStringField;
    fdmtblReferenciaemail2: TWideStringField;
    fdmtblReferenciatipo: TWideStringField;
    dsReferencia: TDataSource;
    CDS_Filial: TFDQuery;
    CDS_Filialid: TIntegerField;
    CDS_Filialnome_fantasia: TWideStringField;
    CDS_Filialrazao_social: TWideStringField;
    CDS_Filiallogradouro: TWideStringField;
    CDS_Filialnumero: TWideStringField;
    CDS_Filialbairro: TWideStringField;
    CDS_Filialfk_cidade: TIntegerField;
    CDS_Filialcep: TWideStringField;
    CDS_Filialtelefone_1: TWideStringField;
    CDS_Filialtelefone_2: TWideStringField;
    CDS_Filialtelefone_3: TWideStringField;
    CDS_Filialcnpj: TWideStringField;
    CDS_Filialie: TWideStringField;
    CDS_Filialgerente: TWideStringField;
    CDS_Filialcomplemento: TWideStringField;
    CDS_Filialemail: TWideStringField;
    CDS_Filialsmtp: TWideStringField;
    CDS_Filialemail_senha: TWideStringField;
    CDS_Filialporta_email: TIntegerField;
    CDS_Filialserie_nfe: TIntegerField;
    CDS_Filialnatureza_operacao_nfe: TWideStringField;
    CDS_Filialperc_aliquota_sn: TBCDField;
    CDS_Filialcalcular_base_icms: TWideStringField;
    CDS_Filialativo: TWideStringField;
    CDS_Filialdt_cadastro: TSQLTimeStampField;
    CDS_Clienteid: TLargeintField;
    CDS_Clientenome: TWideStringField;
    CDS_Clientefantasia_social: TWideStringField;
    CDS_Clientecpf_cnpj: TWideStringField;
    CDS_Clienterg_ie: TWideStringField;
    CDS_Clienteativo: TWideStringField;
    CDS_Clientetipo_pessoa: TWideStringField;
    CDS_Clientedt_cadastrado: TSQLTimeStampField;
    CDS_Clientealteracao: TSQLTimeStampField;
    CDS_Clientenascimento_constituicao: TDateField;
    CDS_Clientesexo: TWideStringField;
    CDS_Clientepai: TWideStringField;
    CDS_Clientemae: TWideStringField;
    CDS_Clienteestado_civil: TIntegerField;
    CDS_Clienteconjuge: TWideStringField;
    CDS_Clienteprofissao: TWideStringField;
    CDS_Clienteespecial: TWideStringField;
    CDS_Clientebloqueado: TWideStringField;
    CDS_Clientelimite_credito: TBCDField;
    CDS_Clientetipo_contribuinte: TWideStringField;
    CDS_Clienteconsumidor_rural: TWideStringField;
    CDS_Clienteconsumidor_final: TWideStringField;
    CDS_Clientecliente: TWideStringField;
    CDS_Clientefornecedor: TWideStringField;
    CDS_Clientefuncionario: TWideStringField;
    CDS_Clienteempresa: TWideStringField;
    CDS_Clientetransportadora: TWideStringField;
    CDS_Clientefornecedor_representante: TWideStringField;
    CDS_Clientecodigo: TWideStringField;
    procedure conexaoBeforeConnect(Sender: TObject);
  private
    { Private declarations }
    pgConectado : Boolean;
  public
    { Public declarations }
    AUserName : string;
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;


procedure TUniMainModule.conexaoBeforeConnect(Sender: TObject);
var
   mIni: TIniFile;
begin
   if not pgConectado then
   begin
       fdlnkConexao.VendorLib := GLOBAL_DIRETORIO_SISTEMA + 'libpq.dll';
       with conexao do
       begin
            mIni   := TIniFile.Create(GLOBAL_DIRETORIO_SISTEMA + 'APILOJA20.INI');
            GLOBAL_CAMINHO_BANCO := mIni.ReadString('Banco de Dados', 'Caminho', '');
            GLOBAL_SERVIDOR_BANCO := mIni.ReadString('Banco de Dados', 'Servidor', 'localhost');
            GLOBAL_PORTA_BANCO := mIni.ReadString('Banco de Dados', 'porta', '5432');
            mIni.Free;

            Connected                      := False;
            DriverName                     := 'PG';
            Params.Values['DriverID']      := 'PG';
            Params.Values['Server']        := GLOBAL_SERVIDOR_BANCO;
            Params.Values['Port']          := GLOBAL_PORTA_BANCO;
            Params.Values['Database']      := GLOBAL_CAMINHO_BANCO;
            Params.Values['UserName']      := GLOBAL_USUARIO_BANCO;
            Params.Values['Password']      := GLOBAL_SENHA_BANCO;
            Params.Values['CharacterSet']  := 'UTF8';
            pgConectado                    := True;
            Connected                      := True;
       end;
   end;

end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
