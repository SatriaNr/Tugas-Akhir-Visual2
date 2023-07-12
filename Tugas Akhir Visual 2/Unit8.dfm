object Form8: TForm8
  Left = 170
  Top = 191
  Width = 1044
  Height = 540
  Caption = 'Form8'
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
    Top = 72
    Width = 47
    Height = 13
    Caption = 'SISWA ID'
  end
  object lbl2: TLabel
    Left = 96
    Top = 104
    Width = 39
    Height = 13
    Caption = 'POIN ID'
  end
  object lbl3: TLabel
    Left = 96
    Top = 136
    Width = 70
    Height = 13
    Caption = 'WALIKELAS ID'
  end
  object lbl4: TLabel
    Left = 96
    Top = 168
    Width = 73
    Height = 13
    Caption = 'ORANG TUA ID'
  end
  object lbl5: TLabel
    Left = 96
    Top = 200
    Width = 44
    Height = 13
    Caption = 'KELAS ID'
  end
  object lbl6: TLabel
    Left = 376
    Top = 72
    Width = 46
    Height = 13
    Caption = 'TANGGAL'
  end
  object lbl7: TLabel
    Left = 376
    Top = 104
    Width = 51
    Height = 13
    Caption = 'SEMESTER'
  end
  object lbl8: TLabel
    Left = 376
    Top = 168
    Width = 76
    Height = 13
    Caption = 'TINGKAT KELAS'
  end
  object lbl9: TLabel
    Left = 376
    Top = 136
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object Label1: TLabel
    Left = 392
    Top = 8
    Width = 285
    Height = 42
    Caption = 'Data Semester'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Snap ITC'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object edt1: TEdit
    Left = 192
    Top = 72
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 192
    Top = 104
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 192
    Top = 136
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 192
    Top = 168
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 192
    Top = 200
    Width = 145
    Height = 21
    TabOrder = 4
  end
  object dtp1: TDateTimePicker
    Left = 472
    Top = 72
    Width = 145
    Height = 21
    Date = 45115.478386238430000000
    Time = 45115.478386238430000000
    TabOrder = 5
  end
  object cbb1: TComboBox
    Left = 472
    Top = 104
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      '1'
      '2')
  end
  object edt6: TEdit
    Left = 472
    Top = 136
    Width = 145
    Height = 21
    TabOrder = 7
  end
  object edt7: TEdit
    Left = 472
    Top = 168
    Width = 145
    Height = 21
    TabOrder = 8
  end
  object dbgrd1: TDBGrid
    Left = 152
    Top = 256
    Width = 673
    Height = 225
    DataSource = ds1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn1: TButton
    Left = 656
    Top = 80
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 10
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 656
    Top = 120
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 11
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 656
    Top = 160
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 12
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 656
    Top = 200
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 13
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 776
    Top = 80
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 14
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 776
    Top = 120
    Width = 75
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 15
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 776
    Top = 160
    Width = 75
    Height = 25
    Caption = 'PRINT'
    TabOrder = 16
    OnClick = btn7Click
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 8
    Top = 112
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
    Top = 16
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      
        'select semester.id, semester.siswa_id, semester.poin_id, semeste' +
        'r.wali_id, semester.ortu_id, semester.kelas_id, semester.tanggal' +
        ', semester.semester, semester.status, semester.tingkat_kelas'
      'from semester'
      'LEFT JOIN siswa ON semester.siswa_id = siswa.id'
      'LEFT JOIN poin ON semester.poin_id = poin.id'
      'LEFT JOIN wali_kelas ON semester.wali_id = wali_kelas.id'
      'LEFT JOIN ortu ON semester.ortu_id = ortu.id'
      'LEFT JOIN kelas ON semester.kelas_id = kelas.id')
    Params = <>
    Left = 8
    Top = 64
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45115.630868541700000000
    ReportOptions.LastChange = 45115.637418958340000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 8
    Top = 168
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
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 1268.410268000000000000
        object Memo21: TfrxMemoView
          Left = 359.055350000000000000
          Top = 18.897650000000000000
          Width = 230.551330000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            'LAPORAN SEMESTER')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 124.724490000000000000
        Width = 1268.410268000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 22.677180000000000000
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
          Left = 26.456710000000000000
          Width = 71.811070000000000000
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
            'ID SISWA')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 98.267780000000000000
          Width = 60.472480000000000000
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
            'ID POIN')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 158.740260000000000000
          Width = 113.385900000000000000
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
            'ID WALI KELAS')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 272.126160000000000000
          Width = 113.385900000000000000
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
            'ID ORANG TUA')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 385.512060000000000000
          Width = 94.488250000000000000
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
            'ID KELAS')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 480.000310000000000000
          Width = 94.488250000000000000
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
            'TANGGAL')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 574.488560000000000000
          Width = 94.488250000000000000
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
            'SEMESTER')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 668.976810000000000000
          Width = 94.488250000000000000
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
        object Memo10: TfrxMemoView
          Left = 763.465060000000000000
          Width = 113.385900000000000000
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
            'TINGKAT KELAS')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 204.094620000000000000
        Width = 1268.410268000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
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
        object Memo12: TfrxMemoView
          Left = 26.456710000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'siswa_id'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."siswa_id"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 98.267780000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'poin_id'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."poin_id"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 158.740260000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'wali_id'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."wali_id"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 272.126160000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ortu_id'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."ortu_id"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 385.512060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kelas_id'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."kelas_id"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 480.000310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."tanggal"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 574.488560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'semester'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."semester"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 668.976810000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
        object Memo20: TfrxMemoView
          Left = 763.465060000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tingkat_kelas'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."tingkat_kelas"]')
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
    Left = 8
    Top = 224
  end
end
