unit UframeHome;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  Vcl.Imaging.pngimage, uniImage, uniLabel, uniChart, uniGUIFrame;

type
  TframeHome = class(TUniFrame)
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniPanel4: TUniPanel;
    UniPanel5: TUniPanel;
    UniImage1: TUniImage;
    UniPanel6: TUniPanel;
    UniPanel7: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniPanel8: TUniPanel;
    UniPanel9: TUniPanel;
    UniImage2: TUniImage;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniChart2: TUniChart;
    Series2: TUniPieSeries;
    UniPanel10: TUniPanel;
    UniPanel11: TUniPanel;
    UniImage3: TUniImage;
    UniPanel12: TUniPanel;
    UniPanel13: TUniPanel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniPanel14: TUniPanel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniPanel15: TUniPanel;
    UniPanel16: TUniPanel;
    UniPanel17: TUniPanel;
    UniPanel18: TUniPanel;
    UniImage4: TUniImage;
    UniPanel19: TUniPanel;
    UniPanel20: TUniPanel;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniPanel21: TUniPanel;
    UniPanel22: TUniPanel;
    UniImage5: TUniImage;
    UniPanel23: TUniPanel;
    UniPanel24: TUniPanel;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    UniPanel25: TUniPanel;
    UniPanel26: TUniPanel;
    UniImage6: TUniImage;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniChart1: TUniChart;
    UniLineSeries1: TUniLineSeries;
    UniLineSeries2: TUniLineSeries;
    UniPanel27: TUniPanel;
    UniPanel28: TUniPanel;
    UniPanel29: TUniPanel;
    UniImage7: TUniImage;
    UniPanel30: TUniPanel;
    UniPanel32: TUniPanel;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    UniPanel33: TUniPanel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    UniPanel34: TUniPanel;
    UniPanel36: TUniPanel;
    UniImage8: TUniImage;
    UniPanel37: TUniPanel;
    UniPanel38: TUniPanel;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    UniPanel39: TUniPanel;
    UniLabel24: TUniLabel;
    UniLabel25: TUniLabel;
    UniPanel31: TUniPanel;
    UniPanel40: TUniPanel;
    UniPanel35: TUniPanel;
    UniPanel41: TUniPanel;
    UniImage9: TUniImage;
    UniPanel42: TUniPanel;
    UniPanel43: TUniPanel;
    UniLabel26: TUniLabel;
    UniLabel27: TUniLabel;
    UniLabel28: TUniLabel;
    UniPanel44: TUniPanel;
    UniPanel45: TUniPanel;
    UniLabel29: TUniLabel;
    UniPanel46: TUniPanel;
    UniImage10: TUniImage;
    UniPanel47: TUniPanel;
    UniPanel48: TUniPanel;
    UniLabel30: TUniLabel;
    UniLabel31: TUniLabel;
    UniPanel49: TUniPanel;
    UniLabel32: TUniLabel;
    UniPanel50: TUniPanel;
    UniPanel52: TUniPanel;
    UniPanel53: TUniPanel;
    UniImage11: TUniImage;
    UniPanel54: TUniPanel;
    UniLabel33: TUniLabel;
    UniLabel34: TUniLabel;
    UniPanel55: TUniPanel;
    UniPanel56: TUniPanel;
    UniImage12: TUniImage;
    UniPanel57: TUniPanel;
    UniLabel35: TUniLabel;
    UniLabel36: TUniLabel;
    UniPanel58: TUniPanel;
    UniPanel59: TUniPanel;
    UniImage13: TUniImage;
    UniPanel60: TUniPanel;
    UniLabel37: TUniLabel;
    UniLabel38: TUniLabel;
    UniPanel51: TUniPanel;
    UniPanel61: TUniPanel;
    UniImage14: TUniImage;
    UniPanel62: TUniPanel;
    UniPanel63: TUniPanel;
    UniLabel39: TUniLabel;
    UniLabel40: TUniLabel;
    UniPanel64: TUniPanel;
    UniLabel41: TUniLabel;
    UniLabel42: TUniLabel;
    procedure UniFrameCreate(Sender: TObject);
  private
    procedure ApplyChanges;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TframeHome.UniFrameCreate(Sender: TObject);
begin
   ApplyChanges;
end;

procedure TframeHome.ApplyChanges;
var
  I : Integer;
  Val : Double;
  Head : string;
begin
  Series2.Clear;
  UniLineSeries1.Clear;
  UniLineSeries2.Clear;
  for I := 0 to 4 do
  begin
    randomize;
    Val:=random*100+10;
    Head:=inttostr(i);
    Series2.Add(Val, Head);
  end;


 UniLineSeries1.Add(0, '1');
 UniLineSeries2.Add(0, '1');
 for I := 2 to 5 do
  begin
    Head:=inttostr(i);
    Val:=random*100+10;
    UniLineSeries1.Add(Val, Head);
    Val:=random*100+10;
    UniLineSeries2.Add(Val, Head);
  end;
  UniLineSeries1.Add(0, '6');
  UniLineSeries2.Add(0, '6');
end;

end.
