unit Unit_Kukaici;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,peykan_Unit,
  StdCtrls, AdvGlowButton, Mylabel, ExtCtrls,Dialogs;

type
  TFormKukaici = class(TForm)
    Panel1: TPanel;
    myLabel3d1: TmyLabel3d;
    myLabel_Barkod: TmyLabel3d;
    myLabel3d2: TmyLabel3d;
    myLabel_Urun: TmyLabel3d;
    myLabel3d3: TmyLabel3d;
    myLabel_Grup: TmyLabel3d;
    myLabel3d4: TmyLabel3d;
    myLabel_Kategori: TmyLabel3d;
    myLabel3d6: TmyLabel3d;
    Edit2: TEdit;
    AdvGlowButton1: TAdvGlowButton;
    Memo1: TMemo;
    MemoYaz: TMemo;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function  EtiketDeiskenMi():Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKukaici: TFormKukaici;

implementation

uses Unit1, UnitAna;

{$R *.dfm}

function  TFormKukaici.EtiketDeiskenMi():Boolean;
 var
   i,MLi:Integer;
   S1,S2,DosyaStr:string;
   urunBarkodKisa : string;

begin
     Screen.Cursor:=crHourGlass;
     MemoYaz.Clear;
     Result := False;
  For MLi:=0 to Memo1.Lines.Count do
  begin
         DosyaStr:=Memo1.Lines.Strings[MLi];

     if Pos('{',DosyaStr)<>0 then
     begin
        if Pos('{V00}',DosyaStr)<>0 then
        begin
           S1:=Copy(DosyaStr,1,Pos('{V00}',DosyaStr)-1);
           S2:=Copy(DosyaStr,Pos('{V00}',DosyaStr)+5,Length(DosyaStr));
           urunBarkodKisa := Copy(myLabel_Barkod.Caption,Length(myLabel_Barkod.Caption) -2, Length(myLabel_Barkod.Caption));
           urunBarkodKisa := Copy(myLabel_Barkod.Caption,1,1) + BastanSifirAt(urunBarkodKisa);
           DosyaStr:=S1 + urunBarkodKisa + S2;
           Result := True;
        end;
//          DosyaStr:=EtiketDeiskenPey(DosyaStr,Form1.BCiktiSayi,Form1.EHiz,Form1.EKoyu,0,0,Form1.ExHome,Form1.EyHome,0,0)
          DosyaStr:=EtiketDeiskenPey(DosyaStr,StrToInt(Edit2.Text),2,20,0,0,0,0,0,0)
     end;

    if (Pos('^FX',DosyaStr)=0) and (Length(DosyaStr)<>0) then
    MemoYaz.Lines.Add(DosyaStr);
  end;

     Screen.Cursor:=crDefault;
end;

procedure TFormKukaici.AdvGlowButton1Click(Sender: TObject);
begin
  if  (myLabel_Barkod.Caption = '') then Exit;

  if NOT EtiketDeiskenMi() then
  BEGIN
    ShowMessage('ETIKET FORMATI YANLIÞ');
    EXIT;
  end;
    Form1.PZpl1.AnaDosyaYaz(MemoYaz);
end;

procedure TFormKukaici.FormCreate(Sender: TObject);
begin

  if FileExists(Form1.FileRegD + '\Label\kukaici.zpey') then
  begin
    SifreliDosya_Ac(Form1.FileRegD + '\Label\kukaici.zpey',Memo1,True);
  end else
  PeykanHint('','Etiket Secili Yok',clRed,10,false);
  EditYanlizSayi(Edit2);
  ResimAl1(AnaForm.img_Print1,AdvGlowButton1);
end;

end.
