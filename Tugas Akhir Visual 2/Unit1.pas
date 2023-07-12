unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, ExtCtrls;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    Data1: TMenuItem;
    Siswa1: TMenuItem;
    OrangTua1: TMenuItem;
    WaliKelas1: TMenuItem;
    Kelas1: TMenuItem;
    Poin1: TMenuItem;
    Semester1: TMenuItem;
    Hubungan1: TMenuItem;
    btn1: TButton;
    Label1: TLabel;
    e1: TEdit;
    e2: TEdit;
    btn2: TButton;
    ZConnection1: TZConnection;
    zqry1: TZQuery;
    Label2: TLabel;
    Label3: TLabel;
    pnl1: TPanel;
    tmr1: TTimer;
    Label4: TLabel;
    procedure Siswa1Click(Sender: TObject);
    procedure OrangTua1Click(Sender: TObject);
    procedure WaliKelas1Click(Sender: TObject);
    procedure Kelas1Click(Sender: TObject);
    procedure Poin1Click(Sender: TObject);
    procedure Hubungan1Click(Sender: TObject);
    procedure Semester1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure TForm1.Siswa1Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm1.OrangTua1Click(Sender: TObject);
begin
form3.show;
end;

procedure TForm1.WaliKelas1Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm1.Kelas1Click(Sender: TObject);
begin
form5.show
end;

procedure TForm1.Poin1Click(Sender: TObject);
begin
form6.show;
end;

procedure TForm1.Hubungan1Click(Sender: TObject);
begin
form7.show;
end;

procedure TForm1.Semester1Click(Sender: TObject);
begin
form8.show
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
if Application.MessageBox('Project Akan Dihentikan!!','peringatan',MB_YESNO)=MRYES then
begin
Application.Terminate;
end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
with   zqry1 do begin
SQL.Clear;
SQL.Add('select * from user where username='+QuotedStr(e1.Text));
Open;
end;
 if zqry1.RecordCount=0
then
Application.MessageBox('Maaf user name tidak ditemukan','informasi',MB_OK or MB_ICONINFORMATION)
else
begin
if zqry1.FieldByName('password').AsString<>e2.Text
then
Application.MessageBox('mastikan password yang anda masukkan benar','error',MB_OK or MB_ICONERROR)
else
begin
ShowMessage('Berhasil login, kamu bisa mengakses data');
Data1.Enabled:=True;
end;
end;
end;


procedure TForm1.FormShow(Sender: TObject);
begin
Data1.Enabled:=False;
end;

procedure TForm1.tmr1Timer(Sender: TObject);
begin
Label4.Left:=Label4.Left-1;
if Label4.Left <1 then Label4.Left:=300;
end;

end.
