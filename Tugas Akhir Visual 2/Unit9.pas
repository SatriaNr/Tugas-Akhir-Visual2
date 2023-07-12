unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    e1: TEdit;
    e2: TEdit;
    ZConnection1: TZConnection;
    zqry1: TZQuery;
    btn1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

end.
