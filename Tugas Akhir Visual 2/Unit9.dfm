object Form9: TForm9
  Left = 210
  Top = 153
  Width = 928
  Height = 480
  Caption = 'Form9'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 224
    Top = 80
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 224
    Top = 112
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object e1: TEdit
    Left = 280
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'e1'
  end
  object e2: TEdit
    Left = 280
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'e2'
  end
  object btn1: TButton
    Left = 280
    Top = 184
    Width = 75
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 2
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'sekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\Tugas Akhir Visu' +
      'al 2\libmysql.dll'
    Left = 32
    Top = 24
  end
  object zqry1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 96
    Top = 24
  end
end
