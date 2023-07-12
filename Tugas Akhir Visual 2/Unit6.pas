unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    btn6: TButton;
    btn7: TButton;
    Label1: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure clear;
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
edt1.Text :='';
edt2.Text :='';
edt3.Text :='';
edt4.Text :='';
edt5.Text :='';
edt1.Enabled:=True;
edt2.Enabled:=True;
edt3.Enabled:=True;
edt4.Enabled:=True;
edt5.Enabled:=True;
btn2.Enabled:=True;
btn5.Enabled:=True;
edt1.setFocus;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
if zqry1.Locate('id',edt1.Text,[])then
begin
MessageDlg('Data Sudah Ada',mtError,[mbOK],0);
end else
begin
zqry1.Open;
zqry1.Append;
zqry1.FieldByName('id').AsString:=edt1.Text;
zqry1.FieldByName('nama_poin').AsString:=edt2.Text;
zqry1.FieldByName('bobot').AsString:=edt3.Text;
zqry1.FieldByName('jenis').AsString:=edt4.Text;
zqry1.FieldByName('status').AsString:=edt5.Text;
zqry1.post;
ShowMessage('Data Tersimpan');
btn1Click(sender);
end;
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
with zqry1 do
begin
zqry1.Open;
zqry1.Edit;
zqry1.FieldList[0].AsString:=edt1.Text;
zqry1.FieldList[1].AsString:=edt2.Text;
zqry1.FieldList[2].AsString:=edt3.Text;
zqry1.FieldList[3].AsString:=edt4.Text;
zqry1.FieldList[4].AsString:=edt5.Text;
zqry1.post;
ShowMessage('Data Di Edit');
btn1Click(sender);
end;
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
if Application.MessageBox('Data Akan Dihapus!!','peringatan',MB_YESNO)=MRYES then
begin
with zqry1 do
begin
Delete;
ShowMessage('Data Di Hapus');
end;
end;
btn1Click(sender);
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
btn2.Enabled:=False;
btn3.Enabled:=False;
btn4.Enabled:=False;
btn5.Enabled:=False;
edt1.Enabled:=False;
edt2.Enabled:=False;
edt3.Enabled:=False;
edt4.Enabled:=False;
edt5.Enabled:=False;
end;

procedure TForm6.clear;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
end;

procedure TForm6.btn6Click(Sender: TObject);
begin
if Application.MessageBox('Yakin akan Kembali??','peringatan',MB_YESNO)=MRYES then
form6.Close;
end;

procedure TForm6.btn7Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:=zqry1.FieldList[0].AsString;
edt2.Text:=zqry1.FieldList[1].AsString;
edt3.Text:=zqry1.FieldList[2].AsString;
edt4.Text:=zqry1.FieldList[3].AsString;
edt5.Text:=zqry1.FieldList[4].AsString;
btn3.Enabled:=True;
btn4.Enabled:=True;
btn5.Enabled:=True;
edt1.Enabled:=True;
edt2.Enabled:=True;
edt3.Enabled:=True;
edt4.Enabled:=True;
edt5.Enabled:=True;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
btn2.Enabled:=False;
btn3.Enabled:=False;
btn4.Enabled:=False;
btn5.enabled:=False;
edt1.Enabled:=False;
edt2.Enabled:=False;
edt3.Enabled:=False;
edt4.Enabled:=False;
edt5.Enabled:=False;

end;

end.
