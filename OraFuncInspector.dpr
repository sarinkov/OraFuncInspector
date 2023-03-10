program OraFuncInspector;

{$INCLUDE XCompilerOptions.inc}

uses
  Vcl.Forms,
  fmBase in 'fmBase.pas' {BaseForm},
  fmBaseDialog in 'fmBaseDialog.pas' {BaseDialogForm},
  Vcl.Themes,
  Vcl.Styles,
  fmMain in 'fmMain.pas' {MainForm},
  dmMain in 'dmMain.pas' {MainDataModule: TDataModule},
  fmBaseLogin in 'fmBaseLogin.pas' {BaseLoginForm},
  fmLogin in 'fmLogin.pas' {LoginForm},
  fmSettings in 'fmSettings.pas' {SettingsForm},
  fmAttr in 'fmAttr.pas' {AttrForm},
  unGlobals in 'unGlobals.pas',
  fmSelectSaveParams in 'fmSelectSaveParams.pas' {SelectSaveParamsForm},
  unConsts in 'unConsts.pas',
  fmClassInfo in 'fmClassInfo.pas' {ClassInfoForm},
  fmSelectDir in 'fmSelectDir.pas' {SelectDirForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Oracle Function Inspector';
  Application.CreateForm(TMainDataModule, MainDataModule);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
