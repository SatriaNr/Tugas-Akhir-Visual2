object Form1: TForm1
  Left = 161
  Top = 142
  Width = 1044
  Height = 540
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 176
    Top = 24
    Width = 614
    Height = 82
    Caption = 'DATA SEKOLAH'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Snap ITC'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 208
    Top = 168
    Width = 84
    Height = 23
    Caption = 'Username'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 208
    Top = 208
    Width = 78
    Height = 23
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btn1: TButton
    Left = 376
    Top = 256
    Width = 161
    Height = 41
    Caption = 'KELUAR'
    TabOrder = 0
    OnClick = btn1Click
  end
  object e1: TEdit
    Left = 336
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object e2: TEdit
    Left = 336
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btn2: TButton
    Left = 208
    Top = 256
    Width = 153
    Height = 41
    Caption = 'LOGIN'
    TabOrder = 3
    OnClick = btn2Click
  end
  object pnl1: TPanel
    Left = 344
    Top = 112
    Width = 337
    Height = 41
    Color = clRed
    TabOrder = 4
    object Label4: TLabel
      Left = 24
      Top = 8
      Width = 287
      Height = 21
      Caption = 'Silahkan login untuk mengisi data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Britannic Bold'
      Font.Style = []
      ParentFont = False
    end
  end
  object mm1: TMainMenu
    Left = 16
    object Data1: TMenuItem
      Caption = 'Data'
      object Siswa1: TMenuItem
        Caption = 'Siswa'
        OnClick = Siswa1Click
      end
      object OrangTua1: TMenuItem
        Caption = 'Orang Tua'
        OnClick = OrangTua1Click
      end
      object WaliKelas1: TMenuItem
        Caption = 'Wali Kelas'
        OnClick = WaliKelas1Click
      end
      object Kelas1: TMenuItem
        Caption = 'Kelas'
        OnClick = Kelas1Click
      end
      object Poin1: TMenuItem
        Caption = 'Poin'
        OnClick = Poin1Click
      end
      object Semester1: TMenuItem
        Caption = 'Semester'
        OnClick = Semester1Click
      end
      object Hubungan1: TMenuItem
        Caption = 'Hubungan'
        OnClick = Hubungan1Click
      end
    end
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
    Left = 16
    Top = 56
  end
  object zqry1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 16
    Top = 112
  end
  object tmr1: TTimer
    Interval = 2
    OnTimer = tmr1Timer
    Left = 16
    Top = 168
  end
end
