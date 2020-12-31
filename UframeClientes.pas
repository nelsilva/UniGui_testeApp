unit UframeClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniBasicGrid, uniDBGrid, uniGUIBaseClasses,
  uniPanel, Data.DB, uniGridExporters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uniLabel, uniButton, uniBitBtn, uniSpeedButton,
  uniGenericControl;

type
  TframeClientes = class(TUniFrame)
    pnlBarra: TUniPanel;
    UniPanel1: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    dsClientes: TDataSource;
    UniGridExcelExporter1: TUniGridExcelExporter;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniDBGrid1DrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule;



procedure TframeClientes.UniDBGrid1DrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
var
   grid : TUniDBGrid;
begin

   if Column.Index = 3 then    // Cria o botão Alterar...
   begin
      grid := TUniDBGrid(Sender);
      grid.DataSource.DataSet.Edit;
      {
      Column.Field.Text := '<a href="#" onClick="return SubmitClick("GRID","' + grid.DataSource.DataSet.FieldByName('id').AsString  + '",false)"><button type="button" class="btn btn-primary btn-crud"><span class="far fa-edit" aria-hidden="true"></span>&nbsp;Alterar</button>' +
                           '&nbsp;' +
                           '<a href="#" onClick="return SubmitClick("GRID","' + grid.DataSource.DataSet.FieldByName('id').AsString  + '",true,"Excluir este registro ?")"><button type="button" class="btn btn-danger btn-crud"><span class="fas fa-trash-alt" aria-hidden="true"></span>&nbsp;Excluir</button>';
                           }
      {
      Column.Field.Text := '<button type="button" class="btn btn-outline-primary btn-sm" onclick="return SubmitClick("GRID","' + grid.DataSource.DataSet.FieldByName('id').AsString  + '",false)"><span class="far fa-edit" aria-hidden="true"></span>&nbsp;Alterar</button>' +
                           '&nbsp;' +
                           '<button type="button" class="btn btn-outline-danger btn-sm" onclick="return SubmitClickConfirm("GRID","' + grid.DataSource.DataSet.FieldByName('id').AsString  + '",true,"Excluir este registro ?")"><span class="fas fa-trash-alt" aria-hidden="true"></span>&nbsp;Excluir</button>';

      }
      Column.Field.Text := '<a href="#" role="button" aria-disabled="true" tabindex="-1" class="btn btn-outline-primary btn-crud" onclick="return SubmitClick("GRID","' + grid.DataSource.DataSet.FieldByName('id').AsString  + '",false)"><span class="far fa-edit" aria-hidden="true"></span>&nbsp;Alterar</a>' +
                           '&nbsp;' +
                           '<a href="#" role="button" aria-disabled="true" tabindex="-1" class="btn btn-outline-danger btn-crud" onclick="return SubmitClickConfirm("GRID","' + grid.DataSource.DataSet.FieldByName('id').AsString  + '",true,"Excluir este registro ?")"><span class="fas fa-trash-alt" aria-hidden="true"></span>&nbsp;Excluir</a>';

      grid.DataSource.DataSet.Post;
   end;
  { if Column.Index = 4 then    // Cria o botão Alterar...
   begin
      Column.Field.Text := '<a href="#" onclick="return SubmitClick("GRID","' + dsClientes.DataSet.FieldByName('id').AsString  + '",true,"Excluir este registro ?")"><button type="button" class="btn btn-danger" title="Danger"><span class="fa fa-minus" aria-hidden="true"></span></button>';
   end; }

 //  if ((ARow div 2)=0) then
   if Odd(ARow) then  // 536870911
   begin
    // Attribs.Font.Color := clRed;
     Attribs.Color      := clWhite;
   end
   else
   begin
    // Attribs.Font.Color := clYellow;
     Attribs.Color      := $00F1F2F3;
   end;

end;

procedure TframeClientes.UniFrameCreate(Sender: TObject);
begin
     dsClientes.DataSet.Open;
end;

end.
