object MainDataModule: TMainDataModule
  OldCreateOrder = False
  Height = 651
  Width = 733
  object SkinController: TdxSkinController
    Kind = lfStandard
    NativeStyle = False
    SkinName = 'MoneyTwins'
    Left = 32
    Top = 10
  end
  object Connection: TFDConnection
    ConnectionName = 'MainConnection'
    Params.Strings = (
      'DriverID=Ora'
      'Database=XE'
      'Password=1982'
      'User_Name=SYSTEM')
    Left = 32
    Top = 60
  end
  object qryMain: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'WITH cteObjects AS ('
      '  SELECT DISTINCT '
      '         upper(src.owner) as owner'
      '        ,upper(src.name)  as name'
      '        ,CASE WHEN upper(src.type) like '#39'PACKAGE%'#39
      '           THEN '#39'PACKAGE'#39
      '           ELSE upper(src.type)'
      '         END              as type'
      '    FROM all_source src'
      '   WHERE upper(src.owner) = upper(nvl(:owner, src.owner))'
      '     and upper(src.text) like '#39'%'#39' || upper(:text) || '#39'%'#39
      '     and ('
      '         upper(src.type) in  ('#39'FUNCTION'#39', '#39'PROCEDURE'#39') or'
      '         upper(src.type) like '#39'PACKAGE%'#39
      '         )'
      ')         '
      'SELECT obj.*'
      '      ,CASE '
      '         WHEN obj.type = '#39'PROCEDURE'#39' THEN 1'
      '         WHEN obj.type = '#39'FUNCTION'#39'  THEN 2'
      '         WHEN obj.type = '#39'PACKAGE'#39'   THEN 3'
      '                                     ELSE 0    '
      '       END as type_id     '
      '  FROM cteObjects obj'
      ' ORDER BY obj.owner, obj.type, obj.name'
      ';  ')
    Left = 120
    Top = 12
    ParamData = <
      item
        Name = 'OWNER'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TEXT'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end
