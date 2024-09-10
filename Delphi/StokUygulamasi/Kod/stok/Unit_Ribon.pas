unit Unit_Ribon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,peykan_Unit,
  Dialogs, Buttons, StdCtrls, Mylabel, AdvGlowButton, ExtCtrls;

type
  TFormRibon = class(TForm)
    Memo1: TMemo;
    MemoYaz: TMemo;
    Panel1: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    myLabel3d1: TmyLabel3d;
    myLabel_Barkod: TmyLabel3d;
    myLabel3d2: TmyLabel3d;
    myLabel_Urun: TmyLabel3d;
    myLabel3d3: TmyLabel3d;
    myLabel_Grup: TmyLabel3d;
    myLabel3d4: TmyLabel3d;
    myLabel_Kategori: TmyLabel3d;
    myLabel3d9: TmyLabel3d;
    myLabel_Raf: TmyLabel3d;
    myLabel3d5: TmyLabel3d;
    Edit1: TEdit;
    myLabel3d7: TmyLabel3d;
    Edit3: TEdit;
    myLabel3d8: TmyLabel3d;
    Edit4: TEdit;
    myLabel3d6: TmyLabel3d;
    Edit2: TEdit;
    procedure FormCreate(Sender: TObject);
    function  EtiketDeiskenMi_Y(SifirYok:String):Boolean;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRibon: TFormRibon;

implementation

uses Unit1, UnitAna;

{$R *.dfm}

function  TFormRibon.EtiketDeiskenMi_Y(SifirYok:String):Boolean;
 var
   i,MLi:Integer;
   S1,S2,DosyaStr :String;
   urunBarkodKisa : string;
begin
  Screen.Cursor:=crHourGlass;
  MemoYaz.Lines.Clear;
  Result := False;

  For MLi:=0 to Memo1.Lines.Count do
  begin
    DosyaStr := Memo1.Lines.Strings[MLi];
    if Pos('{',DosyaStr)<>0 then
    begin
      if Pos('{V00}',DosyaStr)<>0 then
      begin
        S1:=Copy(DosyaStr,1,Pos('{V00}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{V00}',DosyaStr)+5,15);

        urunBarkodKisa := Copy(myLabel_Barkod.Caption,Length(myLabel_Barkod.Caption) -2, Length(myLabel_Barkod.Caption));
        urunBarkodKisa := Copy(myLabel_Barkod.Caption,1,1) + BastanSifirAt(urunBarkodKisa);
        DosyaStr:=S1 + urunBarkodKisa + S2;
        Result := True;
      end;
      if Pos('{V01}',DosyaStr)<>0 then
      begin
        S1:=Copy(DosyaStr,1,Pos('{V01}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{V01}',DosyaStr)+5,15);
        DosyaStr:=S1+ myLabel_Barkod.Caption +S2;
        Result := True;
      end;

      if Pos('{V02}',DosyaStr)<>0 then //ürün adý
      begin
        S1:=Copy(DosyaStr,1,Pos('{V02}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{V02}',DosyaStr)+5,15);
        DosyaStr:=S1 + myLabel_Urun.caption + S2;
        Result := True;
      end;
      if Pos('{V03}',DosyaStr)<>0 then //ürün adý
      begin
        S1:=Copy(DosyaStr,1,Pos('{V03}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{V03}',DosyaStr)+5,15);
        DosyaStr:=S1 + Edit3.Text + S2;
        Result := True;
      end;
      if Pos('{V04}',DosyaStr)<>0 then //ürün adý
      begin
        S1:=Copy(DosyaStr,1,Pos('{V04}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{V04}',DosyaStr)+5,15);
        DosyaStr:=S1 + Edit4.Text + S2;
        Result := True;
      end;
      if Pos('{V05}',DosyaStr)<>0 then //ürün adý
      begin
        S1:=Copy(DosyaStr,1,Pos('{V05}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{V05}',DosyaStr)+5,15);
        DosyaStr:=S1 + myLabel_Raf.caption + S2;
        Result := True;
      end;

      if Pos('{PQ}',DosyaStr)<>0 then //Çikti sayisi için
      begin
        S1:=Copy(DosyaStr,1,Pos('{PQ}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{PQ}',DosyaStr)+4,15);
        DosyaStr:=S1 +Edit2.Text + S2;
        Result := True;
      end;

//          DosyaStr:=EtiketDeiskenPey(DosyaStr,Form1.BCiktiSayi,Form1.EHiz,Form1.EKoyu,0,0,Form1.ExHome,Form1.EyHome,0,0)
      DosyaStr:=EtiketDeiskenPey(DosyaStr,StrToInt(Edit2.Text),2,14,0,0,1,8,0,0);

    end;
    if Pos('^FX',DosyaStr)=0 then
      MemoYaz.Lines.Add(DosyaStr);
  end;

  Screen.Cursor:=crDefault;
end;


procedure TFormRibon.FormCreate(Sender: TObject);
begin
      if FileExists(Form1.FileRegD + '\Label\Ryuvarlak.zpey') then
      begin
        SifreliDosya_Ac(Form1.FileRegD + '\Label\Ryuvarlak.zpey',Memo1,True);
      end else
      PeykanHint('','Etiket Secili Yok',clRed,10,false);
      ResimAl1(AnaForm.img_Print1,AdvGlowButton1);
      EditYanlizSayi(Edit1);
      EditYanlizSayi(Edit2);
end;

procedure TFormRibon.AdvGlowButton1Click(Sender: TObject);
var
  S1,S2 :string;
begin
   S1:=Copy(myLabel_Barkod.Caption,1,1);

    if UpperCase(s1) = 'B' then
    begin
      S2 := Copy(myLabel_Barkod.Caption,2,Length(myLabel_Barkod.Caption));
      s1 := UpperCase(s1) + BastanSifirAt(S2);

    end else s1 := myLabel_Barkod.Caption;

    if NOT EtiketDeiskenMi_Y(s1) then
    BEGIN
      ShowMessage('BUK-');
      EXIT;
    end;

    //showmessage(memo3.text);

    Form1.PZpl1.AnaDosyaYaz(MemoYaz);
end;

procedure TFormRibon.AdvGlowButton2Click(Sender: TObject);
begin
     if  (myLabel_Barkod.Caption = '') then Exit;
     
end;

end.
