inherited SelectSaveParamsForm: TSelectSaveParamsForm
  ActiveControl = dtrDirTree
  Caption = #1057#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1074#1099#1073#1088#1072#1085#1085#1099#1093
  ClientHeight = 584
  ClientWidth = 415
  ExplicitWidth = 421
  ExplicitHeight = 613
  PixelsPerInch = 96
  TextHeight = 16
  inherited bvlButtonsBevel: TdxBevel
    Top = 550
    Width = 415
    Height = 13
    ExplicitTop = 539
    ExplicitWidth = 415
    ExplicitHeight = 13
  end
  inherited pnlMain: TPanel
    Width = 415
    Height = 369
    ExplicitWidth = 415
    ExplicitHeight = 369
    object dtrDirTree: TRzDirectoryTree
      AlignWithMargins = True
      Left = 8
      Top = 8
      HideSelection = False
      Indent = 19
      SelectionPen.Color = clBtnShadow
      TabOrder = 0
      OnChange = dtrDirTreeChange
    end
  end
  inherited btnOk: TcxButton
    Left = 241
    Top = 556
    TabOrder = 2
    ExplicitLeft = 241
    ExplicitTop = 556
  end
  inherited btnCancel: TcxButton
    Left = 327
    Top = 556
    TabOrder = 3
    ExplicitLeft = 327
    ExplicitTop = 556
  end
  object gbxSaveOptions: TcxGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 372
    Align = alTop
    Caption = #1054#1087#1094#1080#1080
    TabOrder = 1
    Height = 175
    Width = 409
    object lblFileExt: TLabel
      Left = 5
      Top = 47
      Width = 77
      Height = 16
      Caption = #1056#1072#1089#1096#1080#1088#1077#1085#1080#1077':'
      FocusControl = cbxFileExt
    end
    object lblDir: TLabel
      Left = 5
      Top = 23
      Width = 51
      Height = 16
      Caption = #1050#1072#1090#1072#1083#1086#1075':'
    end
    object chbOwnerDir: TcxCheckBox
      Left = 5
      Top = 77
      Caption = #1054#1090#1076#1077#1083#1100#1085#1099#1081' '#1087#1086#1076#1082#1072#1090#1072#1083#1086#1075' '#1076#1083#1103' '#1074#1083#1072#1076#1077#1083#1100#1094#1072
      Style.TransparentBorder = False
      TabOrder = 3
    end
    object chbTypeDir: TcxCheckBox
      Left = 5
      Top = 99
      Caption = #1054#1090#1076#1077#1083#1100#1085#1099#1081' '#1087#1086#1076#1082#1072#1090#1072#1083#1086#1075' '#1076#1083#1103' '#1090#1080#1087#1072' '#1086#1073#1098#1077#1082#1090#1072
      Style.TransparentBorder = False
      TabOrder = 4
    end
    object chbOwnerInName: TcxCheckBox
      Left = 5
      Top = 121
      Caption = #1044#1086#1073#1072#1074#1083#1103#1090#1100' '#1074#1083#1072#1076#1077#1083#1100#1094#1072' '#1074' '#1080#1084#1103' '#1092#1072#1081#1083#1072
      Style.TransparentBorder = False
      TabOrder = 5
    end
    object chbTypeInName: TcxCheckBox
      Left = 5
      Top = 143
      Caption = #1044#1086#1073#1072#1074#1083#1103#1090#1100' '#1090#1080#1087' '#1086#1073#1098#1077#1082#1090#1072' '#1074' '#1080#1084#1103' '#1092#1072#1081#1083#1072
      Style.TransparentBorder = False
      TabOrder = 6
    end
    object edtDir: TcxTextEdit
      Left = 88
      Top = 23
      TabOrder = 0
      Text = 'edtDir'
      Width = 316
    end
    object cbxFileExt: TcxComboBox
      Left = 88
      Top = 47
      Properties.Items.Strings = (
        'sql')
      TabOrder = 1
      Text = 'cbxFileExt'
      Width = 121
    end
    object btnClearTextList: TcxButton
      Left = 215
      Top = 49
      Width = 20
      Height = 20
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1080#1089#1090#1086#1088#1080#1102' '#1087#1086#1080#1089#1082#1072
      Caption = 'btnClearTextList'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
        530000014D504C544547704CE64848E94B4B030000EB4D4DE04242DF40400301
        01E84A4ADC3D3DDD3E3EED4F4FED4E4EEE5050DA3B3BE24343E24444EA4C4CE3
        4545E84B4BE24545E54747D23F3FE94D4DD84646E04343E14242EA4E4EDA4848
        E94C4CDE4242DD3F3FCE3C3CDF4141DB4949EC5050DD4040CD3A3ADE3F3FEE51
        51DC4A4AEC5050EF5151EC4E4ED33B3BDC3E3ED53C3CCA383883282866222281
        2A2A6B2424642323872C2CDD4545DC45456A2424D03D3D7C2626611F1F872C2C
        672020651F1F802A2A7A2424CF3D3D6523236B2525601E1E882D2D0401018126
        26651E1E792323812B2B652323892F2FEA4D4D5F1D1D8025256C2525641E1EB2
        3B3B0F0404B33D3D832C2C792323B73D3D110505B83E3ED93B3B0A03035E1C1C
        882828C738387F25258929290C0303C638388C29298E2A2AE74949E54747E244
        44E44545E84A4AE14242EA4C4CDF4141EC4D4DDE3F3F24AE8224000000657452
        4E5300FEFE01FEFEFE01FEFEFEFEFEFEFEFEFEFEFEE3E3FEE3E2E2E2FEE2E2FE
        E2FEE2FEE2E2E2E2FED5D5F8EDEDF8D5EDED272727272627E3E326E227272627
        262626E22626262601262626262727FE262627275301532727530153FE012753
        D5275301D553535A0C93EC000000ED4944415418D3258DD572024110457B6D66
        59D8C5DDDD2124048B902011880B9E20218284FF7F6406CE43D7AD73AB6EC3EB
        5B227A770504FC1E4DF47BF01297E560938A565096E35D486AD46A8DF314E3AA
        93A624C4EEF97F9EB71E1F5A791A62D00EB0EE959E351A59FDCACD069E00D75C
        A2B810C5DD71D53119CBDB18E69BC030B612ECDEE58AE61F82B97084F7A26232
        FC110CA683BDB8B06B75BF049DD67E4DFB5B8FE0580A84A543F03C62E884907F
        8D90C582D0DA8F4263484B918D572A9F9D5C4ADE4D444A434645F09D735CC347
        530626294509DFD0F187F04049CD61F891FD7CE6A8E046B3ECD7740BED1424F0
        74D1043B0000000049454E44AE426082}
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 2
    end
  end
end
