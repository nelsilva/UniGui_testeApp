object frameClientes: TframeClientes
  Left = 0
  Top = 0
  Width = 877
  Height = 606
  OnCreate = UniFrameCreate
  TabOrder = 0
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
  end
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
  object UniDBGrid1: TUniDBGrid
    Left = 74
    Top = 62
    Width = 803
    Height = 544
    Hint = ''
    TitleFont.Height = -15
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = [fsBold]
    DataSource = dsClientes
    LoadMask.Message = 'Loading data...'
    EmptyText = 'Nenhum Cliente Cadastrado'
    Align = alClient
    Font.Height = -15
    Font.Name = 'Segoe UI'
    ParentFont = False
    TabOrder = 2
    Exporter.Enabled = True
    Exporter.FileName = 'Export_Clientes'
    Exporter.Exporter = UniGridExcelExporter1
    Exporter.Title = 'Clientes'
  end
  object dsClientes: TDataSource
    DataSet = UniMainModule.CDS_Cliente
    Left = 664
    Top = 23
  end
  object UniGridExcelExporter1: TUniGridExcelExporter
    FileExtention = 'xlsx'
    MimeType = 
      'application/vnd.openxmlformats-officedocument.spreadsheetml.shee' +
      't'
    CharSet = 'UTF-8'
    Left = 778
    Top = 21
  end
end
