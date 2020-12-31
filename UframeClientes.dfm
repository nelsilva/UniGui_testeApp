object frameClientes: TframeClientes
  Left = 0
  Top = 0
  Width = 877
  Height = 606
  OnCreate = UniFrameCreate
  Layout = 'hbox'
  LayoutAttribs.Padding = '5'
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 62
    Width = 74
    Height = 544
    Hint = ''
    Align = alLeft
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = ''
  end
  object pnlBarra: TUniPanel
    Left = 0
    Top = 0
    Width = 877
    Height = 62
    Hint = ''
    Align = alTop
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    DesignSize = (
      877
      62)
    object UniLabel1: TUniLabel
      Left = 685
      Top = 3
      Width = 180
      Height = 25
      Hint = ''
      Caption = 'Cadastro de Clientes'
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWindow
      TabOrder = 1
    end
    object UniLabel2: TUniLabel
      Left = 77
      Top = 17
      Width = 100
      Height = 32
      Hint = ''
      TextConversion = txtHTML
      AutoSize = False
      Caption = 
        '<a href="#" role="button" aria-disabled="true" tabindex="-1" onc' +
        'lick="return SubmitClick("GRID","novo",false)"><span class="btn ' +
        'btn-success btn-lg far fa-user-plus" aria-hidden="true"></span>&' +
        'nbsp;Novo</a>'
      TabOrder = 2
    end
  end
  object UniDBGrid1: TUniDBGrid
    AlignWithMargins = True
    Left = 77
    Top = 65
    Width = 797
    Height = 538
    Hint = ''
    TitleFont.Height = -15
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = [fsBold]
    DataSource = dsClientes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgAutoRefreshRow]
    WebOptions.PageSize = 15
    LoadMask.Message = 'Loading data...'
    EmptyText = 'Nenhum Cliente Cadastrado'
    BorderStyle = ubsNone
    Align = alClient
    Font.Height = -15
    Font.Name = 'Segoe UI'
    ParentFont = False
    TabOrder = 2
    Exporter.Enabled = True
    Exporter.FileName = 'Export_Clientes'
    Exporter.Exporter = UniGridExcelExporter1
    Exporter.Title = 'Clientes'
    OnDrawColumnCell = UniDBGrid1DrawColumnCell
    Columns = <
      item
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'id'
        Width = 68
        Font.Name = 'Segoe UI'
      end
      item
        FieldName = 'nome'
        Title.Alignment = taCenter
        Title.Caption = 'Nome/Raz'#227'o Social'
        Width = 365
        Font.Name = 'Segoe UI'
      end
      item
        FieldName = 'cpf_cnpj'
        Title.Alignment = taCenter
        Title.Caption = 'CPF/CNPJ'
        Width = 119
        Font.Name = 'Segoe UI'
      end
      item
        ActionColumn.Buttons = <
          item
            ButtonId = 0
            UI = 'raised'
            IconCls = 'compose'
          end>
        FieldName = 'Acoes'
        Title.Alignment = taCenter
        Title.Caption = 'A'#231#245'es'
        Width = 250
        Font.Name = 'Segoe UI'
        ReadOnly = True
      end>
  end
  object dsClientes: TDataSource
    DataSet = UniMainModule.CDS_Cliente
    Left = 747
    Top = 138
  end
  object UniGridExcelExporter1: TUniGridExcelExporter
    FileExtention = 'xlsx'
    MimeType = 
      'application/vnd.openxmlformats-officedocument.spreadsheetml.shee' +
      't'
    CharSet = 'UTF-8'
    Left = 817
    Top = 183
  end
end
