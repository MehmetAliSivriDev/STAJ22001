unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    LAd: TLabel;
    LSoyad: TLabel;
    TAd: TEdit;
    TSoyad: TEdit;
    BVeriAktar: TButton;
    LGelenAd: TLabel;
    LGelenSoyad: TLabel;
    procedure BVeriAktarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BVeriAktarClick(Sender: TObject);

Const
  baslangicAd : AnsiString = 'Ad : ';
  baslangicSoyad : AnsiString = 'Soyad : ';

begin


  LGelenAd.Caption :=  baslangicAd + TAd.Text;
  LGelenSoyad.Caption := baslangicSoyad + TSoyad.Text;

end;

end.
