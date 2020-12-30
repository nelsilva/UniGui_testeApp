unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniBitBtn, uniEdit,
  uniLabel, uniGUIBaseClasses, uniPanel;

type
  TfrmLogin = class(TUniLoginForm)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    edtUsuario: TUniEdit;
    edtSenha: TUniEdit;
    UniBitBtn1: TUniBitBtn;
    procedure UniBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Main;

function frmLogin: TfrmLogin;
begin
  Result := TfrmLogin(UniMainModule.GetFormInstance(TfrmLogin));
end;

procedure TfrmLogin.UniBitBtn1Click(Sender: TObject);
begin



    UniMainModule.AUserName := 'This User';
    ModalResult:=mrOK;  // Login is valid so proceed to MainForm

    // ModalResult:=mrCancel; // Invalid Login exit from app
end;



initialization
  RegisterAppFormClass(TfrmLogin);

end.
