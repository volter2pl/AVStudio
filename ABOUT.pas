unit About;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    OKButton: TButton;
    procedure OKButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

uses Unit1;

{$R *.dfm}

procedure TAboutBox.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Enabled:=true;
end;

procedure TAboutBox.FormShow(Sender: TObject);
begin
ProductName.Caption:=Form1.NazwaProgramu;
Comments.Caption:='Program zosta³ stworzony w ramach pracy in¿ynierskiej wykonanej w 2007r. na Wy¿szej Szkole Komunikacji i Zarz¹dzania w Poznaniu';
end;

procedure TAboutBox.OKButtonClick(Sender: TObject);
begin
AboutBox.Close;
end;

end.
 
