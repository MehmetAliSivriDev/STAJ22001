unit Unit_SatisEtiketi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DrLabel, AdvGlowButton, Spin, ExtCtrls, StdCtrls, AdvFontCombo,
  Mylabel,peykan_Unit, EditNew, AdvGlassButton, dxGDIPlusClasses;

type
  TFormSatisEtiketi = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowHelp: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    Panel3: TPanel;
    Memo2: TMemo;
    Image1: TImage;
    Label1: TLabel;
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure AdvGlowButton4Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSatisEtiketi: TFormSatisEtiketi;

implementation

uses UnitAna, Unit1, Math;

{$R *.dfm}

procedure TFormSatisEtiketi.AdvGlowButton5Click(Sender: TObject);
begin
  close;
end;

procedure TFormSatisEtiketi.FormCreate(Sender: TObject);
begin
  ResimAl1(AnaForm.image_Close,AdvGlowButton5);
  ResimAl1(AnaForm.PrintBarcod_B,AdvGlowButton4);
  ResimAl1(AnaForm.image_4,AdvGlowHelp);

  if  FileExists(Form1.FileRegD+'\Label\satislbl.zpey') then
  begin
    SifreliDosya_Ac(Form1.FileRegD+'\Label\satislbl.zpey',Memo2,True);
  end else
  begin
    PeykanHint('','Seçili Etiket Yok veya HATALI',clRed,10,False);
  end;

end;

procedure TFormSatisEtiketi.AdvGlowButton4Click(Sender: TObject);
begin
  Form1.PZpl1.AnaDosyaYaz(Memo2);
end;
end.
