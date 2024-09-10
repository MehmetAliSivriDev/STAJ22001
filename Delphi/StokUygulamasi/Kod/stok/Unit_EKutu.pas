unit Unit_EKutu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,peykan_Unit,
  Dialogs, StdCtrls, AdvGlowButton, Mylabel, ExtCtrls;

type
  TFormEKutu = class(TForm)
    Panel1: TPanel;
    myLabel3d1: TmyLabel3d;
    myLabel_Barkod: TmyLabel3d;
    myLabel3d2: TmyLabel3d;
    myLabel_Urun: TmyLabel3d;
    myLabel3d3: TmyLabel3d;
    myLabel_Grup: TmyLabel3d;
    myLabel3d4: TmyLabel3d;
    myLabel_Kategori: TmyLabel3d;
    myLabel3d5: TmyLabel3d;
    myLabel3d6: TmyLabel3d;
    Edit1: TEdit;
    Edit2: TEdit;
    AdvGlowButton1: TAdvGlowButton;
    Memo1: TMemo;
    MemoYaz: TMemo;
    myLabel3d7: TmyLabel3d;
    Edit3: TEdit;
    myLabel3d8: TmyLabel3d;
    Edit4: TEdit;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function  EtiketDeiskenMi():Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEKutu: TFormEKutu;

implementation

uses Unit1, UnitAna;

{$R *.dfm}

function  TFormEKutu.EtiketDeiskenMi():Boolean;
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
           DosyaStr:=S1+Edit1.Text+S2;
           Result := True;
        end;

        if Pos('{V01}',DosyaStr)<>0 then
        begin
           S1:=Copy(DosyaStr,1,Pos('{V01}',DosyaStr)-1);
           S2:=Copy(DosyaStr,Pos('{V01}',DosyaStr)+5,Length(DosyaStr));
            DosyaStr:=S1+myLabel_Kategori.Caption+S2;
        end;

        if Pos('{V02}',DosyaStr)<>0 then      //
        begin
           S1:=Copy(DosyaStr,1,Pos('{V02}',DosyaStr)-1);
           S2:=Copy(DosyaStr,Pos('{V02}',DosyaStr)+5,Length(DosyaStr));
           DosyaStr:=S1+myLabel_Urun.Caption+S2;
        end;
        if Pos('{V03}',DosyaStr)<>0 then      //
        begin
           S1:=Copy(DosyaStr,1,Pos('{V03}',DosyaStr)-1);
           S2:=Copy(DosyaStr,Pos('{V03}',DosyaStr)+5,Length(DosyaStr));
           urunBarkodKisa := Copy(myLabel_Barkod.Caption,Length(myLabel_Barkod.Caption) -2, Length(myLabel_Barkod.Caption));
           urunBarkodKisa := Copy(myLabel_Barkod.Caption,1,1) + BastanSifirAt(urunBarkodKisa);
           DosyaStr:=S1 + urunBarkodKisa + S2;
        end;
        if Pos('{V04}',DosyaStr)<>0 then      //
        begin
           S1:=Copy(DosyaStr,1,Pos('{V04}',DosyaStr)-1);
           S2:=Copy(DosyaStr,Pos('{V04}',DosyaStr)+5,Length(DosyaStr));
           DosyaStr:=S1 + myLabel_Barkod.Caption + S2;
        end;
        if Pos('{V05}',DosyaStr)<>0 then      //
        begin
           S1:=Copy(DosyaStr,1,Pos('{V05}',DosyaStr)-1);
           S2:=Copy(DosyaStr,Pos('{V05}',DosyaStr)+5,Length(DosyaStr));
           DosyaStr:=S1 + Edit3.Text + S2;
        end;
        if Pos('{V06}',DosyaStr)<>0 then      //
        begin
           S1:=Copy(DosyaStr,1,Pos('{V06}',DosyaStr)-1);
           S2:=Copy(DosyaStr,Pos('{V06}',DosyaStr)+5,Length(DosyaStr));
           DosyaStr:=S1 + Edit4.Text + S2;
        end;

//          DosyaStr:=EtiketDeiskenPey(DosyaStr,Form1.BCiktiSayi,Form1.EHiz,Form1.EKoyu,0,0,Form1.ExHome,Form1.EyHome,0,0)
          DosyaStr:=EtiketDeiskenPey(DosyaStr,StrToInt(Edit2.Text),2,15,0,0,10,28,0,0)
     end;

    if (Pos('^FX',DosyaStr)=0) and (Length(DosyaStr)<>0) then
    MemoYaz.Lines.Add(DosyaStr);
  end;

     Screen.Cursor:=crDefault;
end;

procedure TFormEKutu.AdvGlowButton1Click(Sender: TObject);
begin
    if  (Trim(Edit2.Text)='') OR (Edit2.Text='0') then Exit;

    if NOT EtiketDeiskenMi() then
    BEGIN
      ShowMessage('ETIKET FORMATI YANLIÞ');
  //    AdvGlowButton2.Enabled:=True;
      EXIT;
    end;
    Form1.PZpl1.AnaDosyaYaz(MemoYaz);
end;

procedure TFormEKutu.FormCreate(Sender: TObject);
begin
  if FileExists(Form1.FileRegD + '\Label\koli.zpey') then
  begin
    SifreliDosya_Ac(Form1.FileRegD + '\Label\koli.zpey',Memo1,True);
  end else
  PeykanHint('','Etiket Secili Yok',clRed,10,false);
  EditYanlizSayi(Edit1);
  EditYanlizSayi(Edit2);
  ResimAl1(AnaForm.img_Print1,AdvGlowButton1);
end;

end.
