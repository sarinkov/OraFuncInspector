unit fmSelectDir;

{$INCLUDE XCompilerOptions.inc}
{$WARN SYMBOL_DEPRECATED OFF}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fmBaseDialog, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ComCtrls, RzTreeVw, RzFilSys,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, dxBevel;

type
  TSelectDirForm = class(TBaseDialogForm)
    dtrDirTree: TRzDirectoryTree;
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

function  SelectDirectory(DefVal: string): string;

implementation

{$R *.dfm}

function  SelectDirectory(DefVal: string): string;
var
  F: TSelectDirForm;
begin
  F := TSelectDirForm.Create(Application.MainForm);
  try
    F.dtrDirTree.Directory := DefVal;
    if F.ShowModal = mrOk
      then Result := F.dtrDirTree.Directory
      else Result := DefVal;
  finally
    FreeAndNil(F);
  end;
end;

procedure TSelectDirForm.FormCreate(Sender: TObject);
begin
  inherited;
  dtrDirTree.Align := alClient;
  Height           := Trunc(Screen.Height * 0.7);
end;
{$WARN SYMBOL_DEPRECATED ON}

end.
