program APILoja20;

uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  ULogin in 'ULogin.pas' {frmLogin: TUniLoginForm},
  UframeHome in 'UframeHome.pas' {frameHome: TUniFrame},
  UframeClientes in 'UframeClientes.pas' {frameClientes: TUniFrame},
  UGlobal in 'C:\APILoja20\UGlobal.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
