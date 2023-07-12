unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, frxClass, frxDBSet;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
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
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
edt1.Text :='';
edt2.Text :='';
edt3.Text :='';
edt1.Enabled:=True;
edt2.Enabled:=True;
edt3.Enabled:=True;
btn2.Enabled:=True;
btn5.Enabled:=True;
edt1.setFocus;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
if zqry1.Locate('id',edt1.Text,[])then
begin
MessageDlg('Data Sudah Ada',mtError,[mbOK],0);
end else
begin
zqry1.Open;
zqry1.Append;
zqry1.FieldByName('id').AsString:=edt1.Text;
zqry1.FieldByName('nama').AsString:=edt2.Text;
zqry1.FieldByName('jurusan').AsString:=edt3.Text;
zqry1.post;
ShowMessage('Data Tersimpan');
btn1Click(sender);
end;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
with zqry1 do
begin
zqry1.Open;
zqry1.Edit;
zqry1.FieldList[0].AsString:=edt1.Text;
zqry1.FieldList[1].AsString:=edt2.Text;
zqry1.FieldList[2].AsString:=edt3.Text;
zqry1.post;
ShowMessage('Data Di Edit');
btn1Click(sender);
end;
end;

procedure TForm5.btn4Click(Sender: TObject);
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

procedure TForm5.btn5Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
btn2.Enabled:=False;
btn3.Enabled:=False;
btn4.Enabled:=False;
btn5.Enabled:=False;
edt1.Enabled:=False;
edt2.Enabled:=False;
edt3.Enabled:=False;
end;

procedure TForm5.clear;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
end;

procedure TForm5.btn6Click(Sender: TObject);
begin
if Application.MessageBox('Yakin akan Kembali??','peringatan',MB_YESNO)=MRYES then
form5.Close;
end;

procedure TForm5.btn7Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:=zqry1.FieldList[0].AsString;
edt2.Text:=zqry1.FieldList[1].AsString;
edt3.Text:=zqry1.FieldList[2].AsString;
btn3.Enabled:=True;
btn4.Enabled:=True;
btn5.Enabled:=True;
edt1.Enabled:=True;
edt2.Enabled:=True;
edt3.Enabled:=True;

end;

procedure TForm5.FormShow(Sender: TObject);
begin
btn2.Enabled:=False;
btn3.Enabled:=False;
btn4.Enabled:=False;
btn5.Enabled:=False;
edt1.Enabled:=False;
edt2.Enabled:=False;
edt3.Enabled:=False;
end;

end.
