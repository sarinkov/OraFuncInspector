inherited ClassInfoForm: TClassInfoForm
  ActiveControl = edtCassName
  Caption = 'ClassInfoForm'
  ClientHeight = 112
  ClientWidth = 441
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  inherited bvlButtonsBevel: TdxBevel
    Top = 76
    Width = 441
  end
  inherited pnlMain: TPanel
    Width = 441
    Height = 76
    object lblName: TLabel
      Left = 37
      Top = 41
      Width = 38
      Height = 16
      Caption = 'Name:'
    end
    object lblClassName: TLabel
      Left = 7
      Top = 11
      Width = 68
      Height = 16
      Caption = 'ClassName:'
    end
    object edtName: TEdit
      Left = 87
      Top = 41
      Width = 348
      Height = 24
      ReadOnly = True
      TabOrder = 0
    end
    object edtCassName: TEdit
      Left = 87
      Top = 11
      Width = 348
      Height = 24
      ReadOnly = True
      TabOrder = 1
    end
  end
  inherited btnOk: TcxButton
    Left = 267
    Top = 84
  end
  inherited btnCancel: TcxButton
    Left = 353
    Top = 84
  end
end
