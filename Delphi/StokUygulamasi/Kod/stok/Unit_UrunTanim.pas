unit Unit_UrunTanim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, MoneyEdit, EditNew, VrControls, VrDesign, StdCtrls,
  AdvFontCombo, Mylabel, DrLabel, AdvGlowButton,peykan_Unit,ADODB, DB,
  ExtDlgs, Grids, AdvObj, BaseGrid, AdvGrid, AdvCGrid;

type
  TForm_Urun_Tanim = class(TForm)
    Panel_Button: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    Panel_Ana: TPanel;
    Label_Hata: TDRLabel;
    Panel1: TPanel;
    myLabel3d3: TmyLabel3d;
    myLabel3d1: TmyLabel3d;
    myLabel3d2: TmyLabel3d;
    myLabel3d4: TmyLabel3d;
    ComboBox_G: TAdvOfficeComboBox;
    ComboBox_K: TAdvOfficeComboBox;
    Edit_Bar: TEdit;
    Edit_Ad: TEdit;
    AdvGlowButton5: TAdvGlowButton;
    Panel2: TPanel;
    Panel3: TPanel;
    myLabel3d5: TmyLabel3d;
    myLabel3d6: TmyLabel3d;
    myLabel3d7: TmyLabel3d;
    LMDEdit1: TEditN;
    LMDEdit2: TEditN;
    AdvGlowButton_T: TAdvGlowButton;
    AdvGlowButton_E: TAdvGlowButton;
    AdvGlowButton_D: TAdvGlowButton;
    Edit_Aciklama: TEdit;
    Panel4: TPanel;
    myLabel3d8: TmyLabel3d;
    myLabel3d9: TmyLabel3d;
    myLabel3d10: TmyLabel3d;
    AdvOfficeComboBox1: TAdvOfficeComboBox;
    MoneyEdit1: TMoneyEdit;
    Edit_Ozel: TEdit;
    Panel_Alt: TPanel;
    Panel5: TPanel;
    image1: TImage;
    Timer1: TTimer;
    Panel6: TPanel;
    myLabel3d11: TmyLabel3d;
    Edit1: TEdit;
    Barkod_Ver: TADOStoredProc;
    ADOSP_Urun_Ins: TADOStoredProc;
    TimerHata: TTimer;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    OpenPictureDialog1: TOpenPictureDialog;
    AdvGlowButton1: TAdvGlowButton;
    LMevcutAlan: TLabel;
    Panel7: TPanel;
    myLabel3d13: TmyLabel3d;
    ComboBox_Raf: TAdvOfficeComboBox;
    myLabel3d12: TmyLabel3d;
    Edit2: TEdit;
    myLabel3d14: TmyLabel3d;
    AdvColumnGrid1: TAdvColumnGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ComboBox_GChange(Sender: TObject);
    procedure BarkodaOdaklan;
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure Edit_BarKeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure TimerHataTimer(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure AdvGlowButton7Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  GrupID:string;
  end;

var
  Form_Urun_Tanim: TForm_Urun_Tanim;
  ADOQueryM_U:TADOQuery;
implementation

uses Unit1, UnitAna, UnitKamera1, DUrunUnit, UnitStokH;

{$R *.dfm}

procedure TForm_Urun_Tanim.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  ADOQueryM_U.Free;
  Form_Urun_Tanim:=Nil;
end;

procedure TForm_Urun_Tanim.BarkodaOdaklan;
begin
  Edit_Bar.SetFocus;
  Edit_Bar.SelStart := Length(Edit_Bar.Text);
end;

procedure TForm_Urun_Tanim.FormCreate(Sender: TObject);
begin
  ResimAl1(AnaForm.Image_Euro,AdvGlowButton_E);
  ResimAl1(AnaForm.Image_Dolar,AdvGlowButton_D);
  ResimAl1(AnaForm.Image_TL,AdvGlowButton_T);
  ResimAl1(AnaForm.image_Close,AdvGlowButton1);
  ResimAl1(AnaForm.image_2,AdvGlowButton3);
  ResimAl1(AnaForm.image_Duz,AdvGlowButton2);
//  ResimAl1(AnaForm.image_4,AdvGlowHelp);
  ResimAl1(AnaForm.Image_Resim,AdvGlowButton6);
  ResimAl1(AnaForm.Image_Kamera,AdvGlowButton7);

  ResimHint(AnaForm.image_Save,AdvGlowButton3,'S',False);
  ResimHint(AnaForm.image_Close,AdvGlowButton1,'K',False);
  ResimHint(AnaForm.img5,AdvGlowButton2,'Duzenle',False);
//  ResimHint(AnaForm.ImageHelp,AdvGlowHelp,'Help',False);

  ADOQueryM_U :=TADOQuery.Create(self);
  ADOQueryM_U.Connection:=Form1.ADOConnection1;

  EditYanlizSayi(Edit1);
  EditYanlizSayi(Edit2);
    AdvColumnGrid1.ActiveCellColor:=$00404040;
  AdvColumnGrid1.SelectionColorTo:=$00DFDFDF;
  AdvColumnGrid1.SelectionMirrorColor:=$00DFDFDF;

  AdvColumnGrid1.SelectionColor:= clGray;
  AdvColumnGrid1.SelectionMirrorColorTo:=clGray;
  Timer1.Enabled:=True;
end;

procedure TForm_Urun_Tanim.FormActivate(Sender: TObject);
begin
  Top:=10;
  BarkodaOdaklan;
end;

procedure TForm_Urun_Tanim.AdvGlowButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_Urun_Tanim.Timer1Timer(Sender: TObject);
var
  Sira:Integer;
begin
  Timer1.Enabled:=False;

  Screen.Cursor:=crSQLWait;
  if Form1.Alan = 'E' then
  begin
    Edit_Bar.Text := 'E';
    Panel6.Visible := False;
  end
  else if Form1.Alan = 'O' then
  begin
    Edit_Bar.Text := 'O';
    Panel6.Visible := False;
  end else if Form1.Alan = 'B' then
  begin
    Edit_Bar.Text := 'B';
    Panel6.Visible := True;
  end else if Form1.Alan = 'D' then
  begin
    Edit_Bar.Text := 'D';
    Panel6.Visible := False;
  end;

  LMevcutAlan.Caption := 'Departman : ';
  if Form1.Alan = 'E' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Elektronik'
  else if Form1.Alan = 'O' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Otomasyon'
  else if Form1.Alan = 'B' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Barkod'
  else if Form1.Alan = 'D' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Demirbaþ';

  ComboBox_G.Items.Clear;
  ComboBox_K.Items.Clear;

   ADOQueryM_U.Close;
   ADOQueryM_U.SQL.Clear;

   if Form1.Alan = 'E' then
     ADOQueryM_U.SQL.Append('Select GAd from UrunG where Tur='#39+'E'+#39+' order by Gad')
   else if Form1.Alan = 'O' then
     ADOQueryM_U.SQL.Append('Select GAd from UrunG where Tur='#39+'O'+#39+' order by Gad')
   else if Form1.Alan = 'B' then
     ADOQueryM_U.SQL.Append('Select GAd from UrunG where Tur='#39+'B'+#39+' order by Gad')
   else if Form1.Alan = 'D' then
     ADOQueryM_U.SQL.Append('Select GAd from UrunG where Tur='#39+'D'+#39+' order by Gad');

      if not MSSQLOpen_Query(ADOQueryM_U,'ADOQueryM_U') then Exit;

   ADOQueryM_U.First;
   while  not ADOQueryM_U.Eof do
   begin
     ComboBox_G.Items.Add(ADOQueryM_U.FieldByName('GAd').AsString);
       ADOQueryM_U.Next;
   end;



   ADOQueryM_U.Close;
   ADOQueryM_U.SQL.Clear;


  if Form1.Alan = 'E' then
    ADOQueryM_U.SQL.Append('Select KAd from UrunK where Tur='#39+'E'+#39+' order by Kad')
  else if Form1.Alan = 'O' then
    ADOQueryM_U.SQL.Append('Select KAd from UrunK where Tur='#39+'O'+#39+' order by Kad')
  else if Form1.Alan = 'B' then
    ADOQueryM_U.SQL.Append('Select KAd from UrunK where Tur='#39+'B'+#39+' order by Kad')
  else if Form1.Alan = 'D' then
    ADOQueryM_U.SQL.Append('Select KAd from UrunK where Tur='#39+'D'+#39+' order by Kad');
  if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQueryM_U,True,'PeyMar','') then
  begin
      if not MSSQLOpen_Query(ADOQueryM_U,'ADOQueryM_U') then Exit;
    ADOQueryM_U.First;
    while  not ADOQueryM_U.Eof do
    begin
      ComboBox_K.Items.Add(ADOQueryM_U.FieldByName('KAd').AsString);
       ADOQueryM_U.Next;
    end;
  end;


    ComboBox_Raf.Items.Clear;

    ADOQueryM_U.Close;
    ADOQueryM_U.SQL.Clear;

    if Form1.Alan = 'E' then SQL:='Select distinct Kod FROM Raf_E'
    else if Form1.Alan = 'O' then SQL:='Select distinct Kod FROM Raf_O'
    else if Form1.Alan = 'B' then SQL:='Select distinct Kod FROM Raf_B'
    else if Form1.Alan = 'D' then SQL:='Select distinct Kod FROM Raf_D';


    SQL:=SQL+' order by Kod';
    ADOQueryM_U.SQL.Text:=SQL;

      if not MSSQLOpen_Query(ADOQueryM_U,'ADOQueryM_U') then Exit;
    ADOQueryM_U.First;
    while not ADOQueryM_U.Eof do
    begin
    ComboBox_Raf.Items.Add(ADOQueryM_U.FieldByName('Kod').AsString);
     ADOQueryM_U.Next;
    end;
 //-------------------
 AdvColumnGrid1.ClearAll;
  Sira:=0;
   AdvColumnGrid1.Cells[0,Sira]:='No';
  AdvColumnGrid1.Cells[1,Sira]:='UrunKod';
  AdvColumnGrid1.Cells[2,Sira]:='Gurup';
  AdvColumnGrid1.Cells[3,Sira]:='UrunAd';
  AdvColumnGrid1.Cells[4,Sira]:='Katogori';
  AdvColumnGrid1.Cells[5,Sira]:='Aciklama';
  AdvColumnGrid1.Cells[6,Sira]:='Raf';
  AdvColumnGrid1.Cells[7,Sira]:='Miktar';

     ADOQueryM_U.Close;
    ADOQueryM_U.SQL.Clear;
    SQL:='Select U.UrunKod,U.UrunAd,S.Tur,U.Gurup,S.Raf,S.Miktar,U.Katogori,U.UAciklama FROM Stok S ,UrunKart U';

    if Form1.Alan = 'E' then SQL:=SQL+' Where S.Tur='+QuotedStr('E')
    else if Form1.Alan = 'O' then SQL:=SQL+' Where S.Tur='+QuotedStr('O')
    else if Form1.Alan = 'B' then SQL:=SQL+' Where S.Tur='+QuotedStr('B')
    else if Form1.Alan = 'D' then SQL:=SQL+' Where S.Tur='+QuotedStr('D');


    SQL:=SQL+' and U.UrunKod=S.UrunKod order by UrunKod,Gurup';
    ADOQueryM_U.SQL.Text:=SQL;

      if not MSSQLOpen_Query(ADOQueryM_U,'ADOQueryM_U') then Exit;
    ADOQueryM_U.First;
    while not ADOQueryM_U.Eof do
    begin
      inc(Sira);
      AdvColumnGrid1.Cells[0,Sira]:=IntToStr(Sira);
      AdvColumnGrid1.Cells[1,Sira]:=ADOQueryM_U.FieldByName('UrunKod').AsString;
      AdvColumnGrid1.Cells[2,Sira]:=ADOQueryM_U.FieldByName('Gurup').AsString;
      AdvColumnGrid1.Cells[3,Sira]:=ADOQueryM_U.FieldByName('UrunAd').AsString;

      AdvColumnGrid1.Cells[4,Sira]:=ADOQueryM_U.FieldByName('Katogori').AsString;
      AdvColumnGrid1.Cells[5,Sira]:=ADOQueryM_U.FieldByName('UAciklama').AsString;

      AdvColumnGrid1.Cells[6,Sira]:=ADOQueryM_U.FieldByName('Raf').AsString;
      AdvColumnGrid1.Cells[7,Sira]:=ADOQueryM_U.FieldByName('Miktar').AsString;


     ADOQueryM_U.Next;
    end;
  if Sira>0 then
    AdvColumnGrid1.RowCount:=Sira +1;


  Screen.Cursor:=crDefault;


end;

procedure TForm_Urun_Tanim.ComboBox_GChange(Sender: TObject);
begin
  ADOQueryM_U.Close;
  ADOQueryM_U.SQL.Clear;
  ADOQueryM_U.SQL.Add('SELECT Id FROM UrunG WHERE GAd='+QuotedStr(Trim(ComboBox_G.Text)));
      if not MSSQLOpen_Query(ADOQueryM_U,'ADOQueryM_U') then Exit;
  if ADOQueryM_U.RecordCount>0 then GrupID:= ADOQueryM_U.FieldByName('Id').AsString;

end;

procedure TForm_Urun_Tanim.AdvGlowButton5Click(Sender: TObject);
var
  YeniNo:string;
  i:Integer;
begin
  if StringLen(Trim(Edit_Bar.Text)) = 0 then
  begin
    Label_Hata.Caption:='BARKODUN ÝLK HARFÝ BELÝRTÝLMEMÝÞ. LÜTFEN KONTROL EDÝNÝZ.';
     Label_Hata.Blink:=blBlink;
     Label_Hata.Visible:=True;
     TimerHata.Enabled:=True;
//    ShowMessage('Kod getirmek için Barkod No ya gelecek kod türünün ilk harfi yazman gerek. ÖRN:B');
    exit;
  end;


  ADOQueryM_U.SQL.Clear;
  ADOQueryM_U.SQL.Add('Select isnull(Max(SUBSTRING(UrunKod,2,7)) +1 ,'+QuotedStr('000001')+') as SonrakiKod from UrunKart where UrunKod LIKE ' + QuotedStr(Edit_Bar.Text[1]+'%'));
      if not MSSQLOpen_Query(ADOQueryM_U,'ADOQueryM_U') then Exit;
  if ADOQueryM_U.FieldByName('SonrakiKod').AsString <> '' then
  begin
    YeniNo:=ADOQueryM_U.FieldByName('SonrakiKod').AsString;
    if Length(YeniNo)<6 then YeniNo:= BastanSifirKoy(YeniNo,6) ;
    Edit_Bar.Text := Edit_Bar.Text[1] + YeniNo;
    BarkodaOdaklan;
  end;

   for i:=0 to AdvColumnGrid1.RowCount-1 do
   begin
     if Edit_Bar.Text=AdvColumnGrid1.Cells[1,i] then
     begin
       AdvColumnGrid1.Row:=i;
       Break;
     end;
   end;

//   if Form1.Kontrol_Store(Barkod_Ver) then
//    begin
//      try
//        begin
//          Barkod_Ver.Parameters[1].Value := Trim(Edit_Bar.Text[1]);
//          Barkod_Ver.ExecProc;
//
//          if Barkod_Ver.Parameters[3].Value then
//          begin
//            ShowMessage('KAYIT YAPILAMADI.. Lütfen Kontrol Ediniz.');
//            Exit;
//          end else Edit_Bar.Text:= Barkod_Ver.Parameters[2].Value;
//        end
//      except
//        begin
//          ShowMessage('Hata :   SQL Barkod_Ver prosedürü çalistirilamadi, Lütfen Kontrol Ediniz.');
//        end;
//      end;
//    end;
end;

procedure TForm_Urun_Tanim.Edit_BarKeyPress(Sender: TObject;
  var Key: Char);
begin

  if (not (Key in ['0'..'9', #8,#13,'E','O','B','D'])) then Key := #0;

end;

procedure TForm_Urun_Tanim.AdvGlowButton3Click(Sender: TObject);
VAR
  JPegStream : TMemoryStream;
  SQL : string;
begin


  if Trim(ComboBox_Raf.Text)='' then
  begin
     Label_Hata.Caption:='RAF Girilmemiþ LÜTFEN KONTROL EDÝNÝZ.';
     Label_Hata.Blink:=blBlink;
     Label_Hata.Visible:=True;
     TimerHata.Enabled:=True;
     Exit;
  end;


  if Length(ComboBox_Raf.Text)<1 then
  begin
     Label_Hata.Caption:='RAF HATALI LÜTFEN KONTROL EDÝNÝZ.';
     Label_Hata.Blink:=blBlink;
     Label_Hata.Visible:=True;
     TimerHata.Enabled:=True;
     Exit;
  end;


  if Trim(Edit_Bar.Text)='' then
  begin
     Label_Hata.Caption:='Barkod Girilmemiþ LÜTFEN KONTROL EDÝNÝZ.';
     Label_Hata.Blink:=blBlink;
     Label_Hata.Visible:=True;
     TimerHata.Enabled:=True;
     Exit;
  end;

  if StringLen(Trim(Edit_Bar.Text)) < 7 then
  begin
    Label_Hata.Caption:='Lütfen 7 karakterli bir Barkod No giriniz.';
     Label_Hata.Blink:=blBlink;
     Label_Hata.Visible:=True;
     TimerHata.Enabled:=True;
    exit;
  end;
  if Trim(Edit_Ad.Text)='' then
  begin
    Label_Hata.Caption:='Ürün Adi Girilmemiþ LÜTFEN KONTROL EDÝNÝZ.';
     Label_Hata.Blink:=blBlink;
     Label_Hata.Visible:=True;
     TimerHata.Enabled:=True;
    exit;
  end;

  ADOQueryM_U.SQL.Clear;
  ADOQueryM_U.SQL.Append('Select * from UrunKart where UrunKod='+QuotedStr(trim(Edit_Bar.text)));
      if not MSSQLOpen_Query(ADOQueryM_U,'ADOQueryM_U') then Exit;
  ADOQueryM_U.First;

 if ADOQueryM_U.RecordCount>0 then
 begin
   Label_Hata.Caption:='Bu Barkod Tanýtýlmýþ LÜTFEN KONTROL EDÝNÝZ.';
     Label_Hata.Blink:=blBlink;
     Label_Hata.Visible:=True;
     TimerHata.Enabled:=True;
    Exit;
 end;

 if Trim(ComboBox_G.Text) = '' then
 begin
  Label_Hata.Caption:='Ürün Grubu Seçilmemiþ LÜTFEN KONTROL EDÝNÝZ.';
  Label_Hata.Blink:=blBlink;
  Label_Hata.Visible:=True;
  TimerHata.Enabled:=True;
  exit;
  end;

  Screen.Cursor:=crSQLWait;

  if MSSQLKontrol_Store(ADOSP_Urun_Ins,Form1.ADOConnection1,'PeyMar','') then
  begin
    try
      begin
        ADOSP_Urun_Ins.Parameters[1].Value := Trim(Edit_Bar.text);
        ADOSP_Urun_Ins.Parameters[2].Value := Trim(Edit_Ad.Text);
        ADOSP_Urun_Ins.Parameters[3].Value := LMDEdit1.Text;
        ADOSP_Urun_Ins.Parameters[4].Value := LMDEdit2.Text;
        ADOSP_Urun_Ins.Parameters[5].Value := Trim(AdvOfficeComboBox1.Text);

        ADOSP_Urun_Ins.Parameters[6].Value := Trim(Edit_Aciklama.text);
        ADOSP_Urun_Ins.Parameters[7].Value := Trim(ComboBox_K.Text);
        ADOSP_Urun_Ins.Parameters[8].Value := Trim(ComboBox_G.Text);
        ADOSP_Urun_Ins.Parameters[9].Value := Form1.Kulanici;
        ADOSP_Urun_Ins.Parameters[10].Value := Edit_Ozel.Text;

        if Form1.Alan = 'E' then
        ADOSP_Urun_Ins.Parameters[11].Value :='E'
        else if Form1.Alan = 'O' then
        ADOSP_Urun_Ins.Parameters[11].Value :='O'
        else if Form1.Alan = 'B' then
        ADOSP_Urun_Ins.Parameters[11].Value :='B'
        else if Form1.Alan = 'D' then
        ADOSP_Urun_Ins.Parameters[11].Value :='D';


         if AdvGlowButton_D.Down then
        ADOSP_Urun_Ins.Parameters[12].Value :='1'
        else if AdvGlowButton_E.Down then
        ADOSP_Urun_Ins.Parameters[12].Value :='2'
         else ADOSP_Urun_Ins.Parameters[12].Value :='0';


        ADOSP_Urun_Ins.Parameters[13].Value := Trim(MoneyEdit1.Text);
        if Trim(Edit1.Text) <> '' then
          ADOSP_Urun_Ins.Parameters[14].Value := Trim(Edit1.Text);

        if (Trim(ComboBox_Raf.Text)<>'') and (Trim(Edit2.Text)<>'') then
        begin
            ADOSP_Urun_Ins.Parameters[15].Value := Trim(Edit2.Text);
            ADOSP_Urun_Ins.Parameters[16].Value := Trim(ComboBox_Raf.Text);
        end else
        begin
            ADOSP_Urun_Ins.Parameters[15].Value :='0';
            ADOSP_Urun_Ins.Parameters[16].Value :='';
        end;
        ADOSP_Urun_Ins.ExecProc;

        if Form_StokH <> nil then  Form_StokH.Timer1.Enabled:=True;
        
      end
    except
      begin
        ShowMessage('Hata :   SQL ADOSP_Urun_Ins prosedürü çalistirilamadi.. Lütfen Kontrol Ediniz.');
      end;
    end;
  end;

  if Image1.Picture.Graphic <> nil then
  begin
    Image1.Picture.SaveToFile(Form1.FileRegD+'\Data\'+ Trim(Edit_Bar.Text)+'.jpg');
    JPegStream := TMemoryStream.Create;
    try
      begin
        Image1.Picture.Graphic.SaveToStream(JPegStream);
        JPegStream.Position := 0;
        ADOQueryM_U.SQL.Clear;
        ADOQueryM_U.Close;
        ADOQueryM_U.SQL.Append('Select * from UrunKart where UrunKod='+ QuotedStr(Trim(Edit_Bar.Text)));
      if not MSSQLOpen_Query(ADOQueryM_U,'ADOQueryM_U') then Exit;
        ADOQueryM_U.Edit;
        (ADOQueryM_U.FieldByName('Resim') as TBlobField).LoadFromStream(JPegStream);
        ADOQueryM_U.Post;
      end;
    finally
      begin
       JPegStream.Free;
      end;
    end;
  end;

  SQL := '';

  ADOQueryM_U.Close;
  ADOQueryM_U.SQL.Clear;
  ADOQueryM_U.SQL.Add('SELECT * FROM UrunG WHERE GAd = ' + QuotedStr(ComboBox_G.Text));
      if not MSSQLOpen_Query(ADOQueryM_U,'ADOQueryM_U') then Exit;

  if not(ADOQueryM_U.RecordCount > 0) then
  Begin
      SQL := 'INSERT INTO UrunG (GAd,Kullanici,Tur) VALUES(';
      SQL := SQL + QuotedStr(ComboBox_G.Text) + ',' + QuotedStr(Form1.Kulanici) + ',' + QuotedStr(Form1.Alan) + ')';

      Form1.ADOCommand1.CommandText :=SQL;
      Form1.ADOCommand1.Execute;
  end;

//  ADOQueryM_U.Close;
//  ADOQueryM_U.SQL.Clear;
//  ADOQueryM_U.SQL.Add('SELECT * FROM UrunK WHERE KAd = ' + QuotedStr(ComboBox_K.Text));
//  ADOQueryM_U.Open;
//
//  if not(ADOQueryM_U.RecordCount > 0) then
//  Begin
//
//      ADOQueryM_U.Close;
//      ADOQueryM_U.SQL.Clear;
//      ADOQueryM_U.SQL.Add('SELECT * FROM UrunG WHERE GAd = ' + QuotedStr(ComboBox_G.Text));
//      ADOQueryM_U.Open;
//
//
//
//
//
//      SQL := 'INSERT INTO UrunK (KAd,Kullanici,Kato,Tur) VALUES(';
//      SQL := SQL + QuotedStr(ComboBox_K.Text) + ',' + QuotedStr(Form1.Kulanici) + ',' + QuotedStr() + ',' + QuotedStr(Form1.Alan) + ')';
//
//      ADOQueryM_U.CommandText :=SQL;
//      ADOQueryM_U.Execute;
//  end

  Edit_Ad.Text:='';
  ComboBox_G.Text := '';
  Edit2.Text := '0';
  ComboBox_Raf.Text := '';

  if Form1.Alan = 'E' then Edit_Bar.Text:='E'
  else if Form1.Alan = 'O' then Edit_Bar.Text:='O'
  else if Form1.Alan = 'D' then Edit_Bar.Text:='D'
  else if Form1.Alan = 'B' then Edit_Bar.Text:='B';

  BarkodaOdaklan;
  PeykanHint('Basarili','Urun Kaydi Basarili',clGreen,25,false);
  Screen.Cursor:=crDefault;
end;

procedure TForm_Urun_Tanim.TimerHataTimer(Sender: TObject);
begin
  TimerHata.Enabled:=False;
  Label_Hata.Blink:=blNone;
  Label_Hata.Visible:=False;
end;

procedure TForm_Urun_Tanim.AdvGlowButton6Click(Sender: TObject);
VAR
  JPegStream : TMemoryStream;
begin
  if Trim(Edit_Bar.Text)='' then
  begin

    Label_Hata.Caption:='Ýlk Önce Barkod Numarasý Giriniz.';
     Label_Hata.Blink:=blBlink;
     Label_Hata.Visible:=True;
     TimerHata.Enabled:=True;

  exit;
  end;

  if OpenPictureDialog1.Execute then
  begin
    if Trim(OpenPictureDialog1.FileName)='' then
    begin
      Screen.Cursor:=crDefault;
      Exit;
    end;
    if ( POS('.jpg',OpenPictureDialog1.FileName)<>0) OR ( POS('.JPG',OpenPictureDialog1.FileName)<>0) then
    begin
      Image1.Visible := true;
      Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    end;
  end;
end;

procedure TForm_Urun_Tanim.AdvGlowButton7Click(Sender: TObject);
begin
  if Trim(Edit_Bar.Text)='' then
  begin
    Label_Hata.Caption:='ÝLK ÖNCE BARKOD KODUNU'+#13+'YAZINIZ VE TEKRAR DENEYIN...';
     Label_Hata.Blink:=blBlink;
     Label_Hata.Visible:=True;
     TimerHata.Enabled:=True;
    exit;
  end;
   FormKamera1:=TFormKamera1.Create(Application);
   FormKamera1.FoNo:=1;
   FormKamera1.Label1.Caption:=Edit_Bar.Text;
   FormKamera1.ShowModal;
   FormKamera1.Free;
end;

procedure TForm_Urun_Tanim.AdvGlowButton2Click(Sender: TObject);
begin
  DUrunKart:=TDUrunKart.Create(Application);
  DUrunKart.BarGor:= Edit_Bar.Text;
  DUrunKart.ShowModal;
  DUrunKart.Free;
end;

end.
