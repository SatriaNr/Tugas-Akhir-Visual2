object Form2: TForm2
  Left = 136
  Top = 116
  Width = 1099
  Height = 614
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 96
    Top = 136
    Width = 17
    Height = 13
    Caption = 'NIS'
  end
  object lbl2: TLabel
    Left = 96
    Top = 168
    Width = 24
    Height = 13
    Caption = 'NISN'
  end
  object lbl3: TLabel
    Left = 96
    Top = 200
    Width = 65
    Height = 13
    Caption = 'NAMA SISWA'
  end
  object lbl4: TLabel
    Left = 96
    Top = 232
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl5: TLabel
    Left = 96
    Top = 264
    Width = 72
    Height = 13
    Caption = 'TEMPAT LAHIR'
  end
  object lbl6: TLabel
    Left = 416
    Top = 104
    Width = 79
    Height = 13
    Caption = 'TANGGAL LAHIR'
  end
  object lbl7: TLabel
    Left = 416
    Top = 136
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object lbl8: TLabel
    Left = 416
    Top = 168
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl9: TLabel
    Left = 416
    Top = 200
    Width = 44
    Height = 13
    Caption = 'TELEPON'
  end
  object lbl10: TLabel
    Left = 416
    Top = 232
    Width = 13
    Height = 13
    Caption = 'HP'
  end
  object lbl11: TLabel
    Left = 416
    Top = 264
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object lbl12: TLabel
    Left = 96
    Top = 104
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label1: TLabel
    Left = 400
    Top = 32
    Width = 223
    Height = 42
    Caption = 'Data Siswa'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Snap ITC'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object edt2: TEdit
    Left = 200
    Top = 136
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object edt3: TEdit
    Left = 200
    Top = 168
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object edt4: TEdit
    Left = 200
    Top = 200
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object edt5: TEdit
    Left = 200
    Top = 232
    Width = 185
    Height = 21
    TabOrder = 3
  end
  object dtp1: TDateTimePicker
    Left = 512
    Top = 104
    Width = 186
    Height = 21
    Date = 45111.851868263890000000
    Time = 45111.851868263890000000
    TabOrder = 4
  end
  object cbb1: TComboBox
    Left = 512
    Top = 136
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'LAKI-LAKI'
      'PEREMPUAN')
  end
  object edt6: TEdit
    Left = 200
    Top = 264
    Width = 185
    Height = 21
    TabOrder = 6
  end
  object edt7: TEdit
    Left = 512
    Top = 168
    Width = 185
    Height = 21
    TabOrder = 7
  end
  object edt8: TEdit
    Left = 512
    Top = 200
    Width = 185
    Height = 21
    TabOrder = 8
  end
  object edt9: TEdit
    Left = 512
    Top = 232
    Width = 185
    Height = 21
    TabOrder = 9
  end
  object dbgrd1: TDBGrid
    Left = 64
    Top = 336
    Width = 977
    Height = 209
    DataSource = ds1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn1: TButton
    Left = 728
    Top = 112
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 11
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 728
    Top = 160
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 12
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 728
    Top = 208
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 13
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 728
    Top = 256
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 14
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 840
    Top = 112
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 15
    OnClick = btn5Click
  end
  object edt10: TEdit
    Left = 512
    Top = 264
    Width = 185
    Height = 21
    TabOrder = 16
  end
  object btn6: TButton
    Left = 840
    Top = 208
    Width = 75
    Height = 25
    Caption = 'PRINT'
    TabOrder = 17
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 840
    Top = 160
    Width = 75
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 18
    OnClick = btn7Click
  end
  object edt1: TEdit
    Left = 200
    Top = 104
    Width = 185
    Height = 21
    TabOrder = 19
  end
  object con1: TZConnection
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
    Left = 8
    Top = 8
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 8
    Top = 56
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 8
    Top = 104
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45115.532455972200000000
    ReportOptions.LastChange = 45115.565927557870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 8
    Top = 160
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 355.600000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 5
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 1268.410268000000000000
        object Memo25: TfrxMemoView
          Left = 400.630180000000000000
          Top = 7.559060000000000000
          Width = 253.228510000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN SISWA')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 34.015770000000000000
        Top = 173.858380000000000000
        Width = 1268.410268000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo13: TfrxMemoView
          Top = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'id'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."id"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 30.236240000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'nis'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."nis"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 139.842610000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'nisn'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."nisn"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 238.110390000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'nama_siswa'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."nama_siswa"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 336.378170000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'nik'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."nik"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 423.307360000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'tempat_Lahir'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."tempat_Lahir"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 529.134200000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'tanggal_lahir'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."tanggal_lahir"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 619.842920000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'jenis_kelamin'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."jenis_kelamin"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 702.992580000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."alamat"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 789.921770000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'telp'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."telp"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 895.748610000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'hp'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."hp"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 1001.575450000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."status"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 26.456710000000000000
        Top = 86.929190000000000000
        Width = 1268.410268000000000000
        object Memo1: TfrxMemoView
          Top = 7.559060000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 30.236240000000000000
          Top = 7.559060000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NIS')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 139.842610000000000000
          Top = 7.559060000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NISN')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 238.110390000000000000
          Top = 7.559060000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA SISWA')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 336.378170000000000000
          Top = 7.559060000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NIK')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 423.307360000000000000
          Top = 7.559060000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TEMPAT LAHIR')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 529.134200000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL LAHIR')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 619.842920000000000000
          Top = 7.559060000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JK')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 702.992580000000000000
          Top = 7.559060000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 789.921770000000000000
          Top = 7.559060000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TELEPON')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 895.748610000000000000
          Top = 7.559060000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'HP')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 1001.575450000000000000
          Top = 7.559060000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'STATUS')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 16
    Top = 208
  end
end
