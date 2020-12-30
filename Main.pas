unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, Vcl.Menus, uniMainMenu,
  uniTreeView, uniTreeMenu, uniGUIBaseClasses, uniPanel, uniImageList,
  uniPageControl, dxGDIPlusClasses, uniImage,uniGUIFrame, uniLabel,
  Vcl.Imaging.pngimage;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    UniTreeMenu1: TUniTreeMenu;
    UniMenuItems1: TUniMenuItems;
    mnuHome: TUniMenuItem;
    mnuClientes: TUniMenuItem;
    mnuTabAux: TUniMenuItem;
    mnuUFs: TUniMenuItem;
    mnuGrupos: TUniMenuItem;
    UniNativeImageList1: TUniNativeImageList;
    UniPanel2: TUniPanel;
    UniImage1: TUniImage;
    pagePrincipal: TUniPageControl;
    UniImage2: TUniImage;
    UniImage3: TUniImage;
    UniImage4: TUniImage;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    procedure UniFormCreate(Sender: TObject);
    procedure mnuClientesClick(Sender: TObject);
    procedure mnuHomeClick(Sender: TObject);
  private
    { Private declarations }
    procedure NovaAba(nomeFormFrame: TFrame; descFormFrame: string; Fechar: Boolean);
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, UframeHome, UframeClientes;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;



procedure TMainForm.mnuClientesClick(Sender: TObject);
begin
   NovaAba(TFrame(TframeClientes),'Clientes',True);
end;

procedure TMainForm.mnuHomeClick(Sender: TObject);
begin
   NovaAba(TFrame(TframeHome),'Home',True);
end;

procedure TMainForm.NovaAba(nomeFormFrame: TFrame; descFormFrame: string; Fechar: Boolean);
var TabSheet      :TUniTabSheet;
    FCurrentFrame :TUniFrame;
    I             :Integer;
begin

      pagePrincipal.Visible := True;

      {Verificando se a tela já está aberto e redireciona a ela}
      for I := 0 to pagePrincipal.PageCount - 1 do
        with pagePrincipal do
          if Pages[I].Caption = descFormFrame  then
            begin
              pagePrincipal.ActivePageIndex := I;
              Exit;
            end;

      TabSheet              := TUniTabSheet.Create(Self);
      TabSheet.PageControl  := pagePrincipal;
      TabSheet.Caption      := descFormFrame;
      TabSheet.Closable     := Fechar;

      FCurrentFrame:= TUniFrameClass(nomeFormFrame).Create(Self);

      with FCurrentFrame do
        begin
          Align               := alClient;
          Parent              := TabSheet;
        end;

      Refresh;

      pagePrincipal.ActivePage := TabSheet;
end;


procedure TMainForm.UniFormCreate(Sender: TObject);
begin
   NovaAba(TFrame(TframeHome),'Home',True);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
