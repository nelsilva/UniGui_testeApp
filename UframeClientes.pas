unit UframeClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniBasicGrid, uniDBGrid, uniGUIBaseClasses,
  uniPanel, Data.DB, uniGridExporters;

type
  TframeClientes = class(TUniFrame)
    pnlBarra: TUniPanel;
    UniPanel1: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    dsClientes: TDataSource;
    UniGridExcelExporter1: TUniGridExcelExporter;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule;



procedure TframeClientes.UniFrameCreate(Sender: TObject);
begin
     dsClientes.DataSet.Open;
end;

end.
