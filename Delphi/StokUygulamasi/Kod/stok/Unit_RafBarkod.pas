unit Unit_RafBarkod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,peykan_Unit,
  Dialogs, AdvGlowButton, StdCtrls, Mylabel, ExtCtrls, AdvFontCombo, DB,
  ADODB;

type
  TFormRafBarkod = class(TForm)
    Panel1: TPanel;
    myLabel3d1: TmyLabel3d;
    myLabel_Barkod: TmyLabel3d;
    myLabel3d2: TmyLabel3d;
    myLabel_Urun: TmyLabel3d;
    myLabel3d3: TmyLabel3d;
    myLabel_Grup: TmyLabel3d;
    myLabel3d4: TmyLabel3d;
    myLabel_Raf: TmyLabel3d;
    Memo1: TMemo;
    MemoYaz: TMemo;
    ComboBox_Raf: TAdvOfficeComboBox;
    myLabel3d6: TmyLabel3d;
    Panel2: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    Bevel1: TBevel;
    procedure FormCreate(Sender: TObject);
    function  EtiketDeiskenMi():Boolean;
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRafBarkod: TFormRafBarkod;
ADOQuery_X:TADOQuery;
implementation

uses Unit1, UnitAna, UnitStokH;

{$R *.dfm}
function  TFormRafBarkod.EtiketDeiskenMi():Boolean;
 var
   CS:Double;
   i,MLi:Integer;
   TempStr,S1,S2,DosyaStr,CiktiSayi:String;
   urunNo:String;

begin
     Screen.Cursor:=crHourGlass;
     MemoYaz.Lines.Clear;
     Result := False;


  For MLi:=0 to Memo1.Lines.Count do
  begin
    DosyaStr:=Memo1.Lines.Strings[MLi];

    if Pos('{',DosyaStr)<>0 then
    begin
      if Pos('{V00}',DosyaStr)<>0 then
      begin
        S1:=Copy(DosyaStr,1,Pos('{V00}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{V00}',DosyaStr)+5,15);
        DosyaStr:=S1+myLabel_Grup.Caption+S2;
        Result := True;
      end;
      if Pos('{V01}',DosyaStr)<>0 then
      begin
        S1:=Copy(DosyaStr,1,Pos('{V01}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{V01}',DosyaStr)+5,15);

        DosyaStr:=S1+ myLabel_Urun.Caption +S2;
        Result := True;
      end;
      if Pos('{V02}',DosyaStr)<>0 then
      begin
        S1:=Copy(DosyaStr,1,Pos('{V02}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{V02}',DosyaStr)+5,15);

        urunNo := Copy(myLabel_Barkod.Caption,5,Length(myLabel_Barkod.Caption));
        DosyaStr:=S1+ urunNo +S2;
        Result := True;

      end;
      if Pos('{V03}',DosyaStr)<>0 then
      begin
        S1:=Copy(DosyaStr,1,Pos('{V03}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{V03}',DosyaStr)+5,15);
        DosyaStr:=S1+myLabel_Barkod.Caption+S2;
        Result := True;
      end;
      if Pos('{V04}',DosyaStr)<>0 then
      begin
        S1:=Copy(DosyaStr,1,Pos('{V04}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{V04}',DosyaStr)+5,15);
        DosyaStr:=S1+myLabel_Raf.Caption+S2;
        Result := True;
      end;
      if Pos('{V05}',DosyaStr)<>0 then
      begin
        S1:=Copy(DosyaStr,1,Pos('{V04}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{V04}',DosyaStr)+5,15);
        DosyaStr:=S1+FormRafBarkod.Caption+S2;
        Result := True;
      end;

      if Pos('{CS}',DosyaStr)<>0 then //Çikti sayisi için
      begin
        S1:=Copy(DosyaStr,1,Pos('{CS}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{CS}',DosyaStr)+4,15);
        DosyaStr:=S1+'1'+S2;
        Result := True;
      end;
    end;
    if Pos('^FX',DosyaStr)=0 then
      MemoYaz.Lines.Add(DosyaStr);

  end;
  Screen.Cursor:=crDefault;
end;

procedure TFormRafBarkod.FormCreate(Sender: TObject);
begin
  if FileExists(Form1.FileRegD + '\Label\Stok_yeni.zpey') then
  begin
    SifreliDosya_Ac(Form1.FileRegD + '\Label\Stok_yeni.zpey',Memo1,True);
  end else
  PeykanHint('','Etiket Secili Yok',clRed,10,false);

    ADOQuery_X :=TADOQuery.Create(self);
//  ResimAl1(AnaForm.img_Print1,AdvGlowButton1);
  ComboBox_Raf.Items:=Form_StokH.ComboBox_Raf.Items;


    if Form1.Alan = 'E' then
     Caption :='Elektronik'
    else if Form1.Alan = 'O' then
      Caption :='Otomasyon'
    else if Form1.Alan = 'B' then
      Caption := 'Barkod'
    else if Form1.Alan = 'D' then
      Caption := 'Demirbaþ';


end;

procedure TFormRafBarkod.AdvGlowButton3Click(Sender: TObject);
begin
    Close;
end;

procedure TFormRafBarkod.AdvGlowButton2Click(Sender: TObject);
begin
  if  (myLabel_Barkod.Caption = '') then Exit;

  if NOT EtiketDeiskenMi() then
  BEGIN
    ShowMessage('ETIKET FORMATI YANLIÞ');
    EXIT;
  end;
    Form1.PZpl1.AnaDosyaYaz(MemoYaz);
end;

procedure TFormRafBarkod.AdvGlowButton8Click(Sender: TObject);
begin
    myLabel_Raf.Caption:=ComboBox_Raf.Text;

  if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQuery_X,True,'PeyMar','') then
  begin
    ADOQuery_X.Close;
    ADOQuery_X.SQL.Clear;
    ADOQuery_X.SQL.Add('Select Stok.UrunKod,Raf,Stok.Tur,U.UrunAd,U.Katogori,U.Gurup FROM UrunKart AS U , Stok where Stok.Tur='+QuotedStr(Form1.Alan)+' and Stok.UrunKod=U.UrunKod and Raf='+QuotedStr(ComboBox_Raf.Text)+'order by UrunKod');
    ADOQuery_X.Open;
    ADOQuery_X.First;
    ShowMessage(IntToStr(ADOQuery_X.RecordCount)+'   '+FormRafBarkod.Caption);
        while not ADOQuery_X.Eof do
        begin
          myLabel_Barkod.Caption:=ADOQuery_X.FieldByName('UrunKod').AsString;
          myLabel_Urun.Caption:=ADOQuery_X.FieldByName('UrunAd').AsString;
          myLabel_Grup.Caption:=ADOQuery_X.FieldByName('Gurup').AsString;
          ADOQuery_X.Next;

          Delay(500);
          AdvGlowButton2Click(Self);
        end;

   end;

            myLabel_Barkod.Caption:='';
          myLabel_Urun.Caption:='';
          myLabel_Grup.Caption:='';
end;

procedure TFormRafBarkod.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
ADOQuery_X.Free;
end;

end.
