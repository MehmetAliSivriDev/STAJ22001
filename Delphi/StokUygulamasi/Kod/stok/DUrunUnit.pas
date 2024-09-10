unit DUrunUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, AdvFontCombo, MoneyEdit, StdCtrls,peykan_Unit,
  Mylabel, ExtCtrls, EditNew, VrControls, VrDesign, DB, ADODB,Jpeg,
  dxGDIPlusClasses, Menus, ExtDlgs, AdvGlassButton, Buttons;


type
  TDUrunKart = class(TForm)
    Timer1: TTimer;
    OpenPictureDialog1: TOpenPictureDialog;
    Timer2: TTimer;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    myLabel3d1: TmyLabel3d;
    myLabel3d2: TmyLabel3d;
    myLabel3d3: TmyLabel3d;
    myLabel3d5: TmyLabel3d;
    myLabel3d4: TmyLabel3d;
    myLabel3d6: TmyLabel3d;
    myLabel3d7: TmyLabel3d;
    myLabel3d8: TmyLabel3d;
    myLabel3d9: TmyLabel3d;
    myLabel3d10: TmyLabel3d;
    MoneyEdit1: TMoneyEdit;
    AdvOfficeComboBox1: TAdvOfficeComboBox;
    ComboBox_G: TAdvOfficeComboBox;
    ComboBox_K: TAdvOfficeComboBox;
    LMDEdit1: TEditN;
    LMDEdit2: TEditN;
    ComboBox_Bar: TAdvOfficeComboBox;
    Button_Aktar: TAdvGlassButton;
    AdvGlowButton_D: TAdvGlowButton;
    AdvGlowButton_E: TAdvGlowButton;
    AdvGlowButton_T: TAdvGlowButton;
    Edit_Ad: TEdit;
    Panel4: TPanel;
    Image1: TImage;
    Panel5: TPanel;
    myLabel3d11: TmyLabel3d;
    Edit1: TEdit;
    Edit_Aciklama: TEdit;
    Edit_Ozel: TEdit;
    PopupMenu1: TPopupMenu;
    Temizle1: TMenuItem;
    ResimAktar1: TMenuItem;
    LMevcutAlan: TLabel;
    AdvGlowButton6: TAdvGlowButton;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button_AktarClick(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure ResimSqlKayit(ResimAd:String);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure KAYIT1Click(Sender: TObject);
    procedure Temizle1Click(Sender: TObject);
    procedure ResimAktar1Click(Sender: TObject);
    procedure ResimTemizle;
    procedure AdvGlowButton6Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    BarGor:String[50];
    ilkKod :Boolean;
  end;

var
  DUrunKart: TDUrunKart;
  ADOQueryD_Sor:TADOQuery;

implementation

uses UnitKamera1, Unit1, UnitAna, UnitStokH;

{$R *.dfm}

procedure TDUrunKart.AdvGlowButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TDUrunKart.AdvGlowButton2Click(Sender: TObject);
 var
   SQL:string;
   S2,S1:String[2];
   JPegStream : TMemoryStream;
begin
  if Trim(ComboBox_Bar.Text)='' then
  Begin
    ShowMessage('Barkod seçilmemis lütfen kontrol ediniz.');
   Exit;
  end;

  if Form1.Alan = 'E' then S1:='E'
  else if Form1.Alan = 'B' then S1:='B'
  else if Form1.Alan = 'D' then S1:='D'
  else if Form1.Alan = 'O' then S1:='O';

 if Trim(S1) = '' then begin ShowMessage('Lütfen tanim yapilacak urun tipini seçiniz!'); Exit; end;
  Screen.Cursor:=crSQLWait;

  if AdvGlowButton_D.Down then
    S2:='1'
  else if AdvGlowButton_E.Down then
    S2:='2'
  else S2:='0';
  ADOQueryD_Sor.Close;
  ADOQueryD_Sor.SQL.Clear;
  ADOQueryD_Sor.Close;
  ADOQueryD_Sor.SQL.Add('select * from UrunKart where UrunKod='+QuotedStr(Trim(ComboBox_Bar.Text)));
      if not MSSQLOpen_Query(ADOQueryD_Sor,'ADOQueryD_Sor') then Exit;

  if ADOQueryD_Sor.RecordCount > 0 then
  begin
    SQL:= ' UPDATE dbo.UrunKart SET  UAciklama=' + QuotedStr(Trim(Edit_Aciklama.Text))
    +' , UrunAd='  + QuotedStr(Trim(Edit_Ad.Text))
    +' , Birim='   + QuotedStr(Trim(AdvOfficeComboBox1.Text))
    +' , A_Fiyat=' + QuotedStr(Trim(LMDEdit1.Text))
    +' , B_Fiyat=' + QuotedStr(Trim(LMDEdit2.Text))
    +' , MinStok=' + QuotedStr(Trim(MoneyEdit1.Text))
    +' , UrunNot=' + QuotedStr(Trim(Edit_Ozel.Text))
    +' , Gurup=' + QuotedStr(Trim(ComboBox_G.Text))
    +' , Katogori=' + QuotedStr(Trim(ComboBox_K.Text))
    +' , Tur=' + QuotedStr(S1)
    +' , Pul=' + QuotedStr(S2)
    +' , Kullanici=' + QuotedStr(Form1.Kulanici)
    +' , KukaSayi=' + QuotedStr(Trim(Edit1.Text))

    +' WHERE UrunKod='+QuotedStr(Trim(ComboBox_Bar.Text));
    Form1.ADOCommand1.CommandText :=SQL;
    Form1.ADOCommand1.Execute;
    if Form_StokH <> nil then  Form_StokH.Timer1.Enabled:=True;
  end else
  begin
    PeykanHint('HATA','BARKOD BULUNAMADI.',clRed,30,True);
    Screen.Cursor:=crDefault;
    exit;
  end;

  ADOQueryD_Sor.Close;
  ADOQueryD_Sor.SQL.Clear;
  ADOQueryD_Sor.Close;
  ADOQueryD_Sor.SQL.Add('select * from UrunKart where UrunKod='+QuotedStr(Trim(ComboBox_Bar.Text)));
  if not MSSQLOpen_Query(ADOQueryD_Sor,'ADOQueryD_Sor') then Exit;
  ADOQueryD_Sor.Edit;

  if Image1.Picture.Graphic <> nil then
  begin
    if  not (FileExists(Form1.FileRegD+'\Data\'+ Trim(ComboBox_Bar.Text)+'.jpg')) then
      Image1.Picture.SaveToFile(Form1.FileRegD+'\Data\'+ Trim(ComboBox_Bar.Text)+'.jpg');

    JPegStream   := TMemoryStream.Create;
    try
      begin
        Image1.Picture.Graphic.SaveToStream(JPegStream);
        JPegStream.Position := 0;
        (ADOQueryD_Sor.FieldByName('Resim') as TBlobField).LoadFromStream(JpegStream);
      end;
    finally
      begin
       JPegStream.Free;
      end;
    end;
  end else begin
    (ADOQueryD_Sor.FieldByName('Resim') as TBlobField).Value := NullAsStringValue;
    if (FileExists(Form1.FileRegD+'\Data\'+ Trim(ComboBox_Bar.Text)+'.jpg')) then
      DeleteFile(Form1.FileRegD+'\Data\'+ Trim(ComboBox_Bar.Text)+'.jpg');
  end;

  ADOQueryD_Sor.Post;

  ComboBox_Bar.Text:='';
  DUrunKart.Caption:='Düzenlenecek Urun Barkodunu Seç';
  Screen.Cursor:=crDefault;
  PeykanHint('Basarili','Urun Güncelleme Basarili',clGreen,25,false);
  DUrunKart.close;

end;

procedure TDUrunKart.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
ADOQueryD_Sor.Free
end;

procedure TDUrunKart.FormCreate(Sender: TObject);
begin
  ResimAl1(AnaForm.Image_Euro,AdvGlowButton_E);
  ResimAl1(AnaForm.Image_Dolar,AdvGlowButton_D);
  ResimAl1(AnaForm.Image_TL,AdvGlowButton_T);
  ResimAl1(AnaForm.image_2,AdvGlowButton2);
  ResimAl1(AnaForm.image_Close,AdvGlowButton1);
  ResimAl1(AnaForm.Image_Resim,AdvGlowButton3);
//  ResimAl1(AnaForm.Img_Print1,AdvGlowButton5);
  ResimAl1(AnaForm.Image_Kamera,AdvGlowButton4);

  ResimHint(AnaForm.image_Save,AdvGlowButton2,'S',False);
  ResimHint(AnaForm.image_Close,AdvGlowButton1,'K',False);

  ResimAl1(AnaForm.ImageSil,AdvGlowButton6);
  ResimHint(AnaForm.image_Vaz,AdvGlowButton6,'Sil',False);


  ilkKod :=True;
ADOQueryD_Sor :=TADOQuery.Create(self);
   ADOQueryD_Sor.Connection:=Form1.ADOConnection1;

  if Form1.Alan = 'E' then
  begin
    Panel5.Visible:= False;
    ComboBox_Bar.Text := 'E';
  end
  else if Form1.Alan = 'O' then
  begin
    Panel5.Visible:= False;
    ComboBox_Bar.Text := 'O';
  end
  else if Form1.Alan = 'B' then
  begin
    Panel5.Visible:= True;
    ComboBox_Bar.Text := 'B';
  end
  else if Form1.Alan = 'D' then
  begin
    Panel5.Visible:= False;
    ComboBox_Bar.Text := 'D';
  end;

  Timer1.Enabled:=True;
  Timer2.Enabled:=True;

end;

procedure TDUrunKart.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:=False;

  LMevcutAlan.Caption := 'Departman : ';
  if Form1.Alan = 'E' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Elektronik'
  else if Form1.Alan = 'O' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Otomasyon'
  else if Form1.Alan = 'B' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Barkod'
  else if Form1.Alan = 'D' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Demirbaþ';

  ComboBox_Bar.Items.Clear;
  ADOQueryD_Sor.SQL.Clear;


  if Form1.Alan = 'E' then
    ADOQueryD_Sor.SQL.Add('Select UrunKod from UrunKart where Tur='+#39+'E'+#39+' order by UrunKod')
  else if Form1.Alan = 'O' then
    ADOQueryD_Sor.SQL.Add('Select UrunKod from UrunKart where Tur='+#39+'O'+#39+' order by UrunKod')
  else if Form1.Alan = 'D' then
    ADOQueryD_Sor.SQL.Add('Select UrunKod from UrunKart where Tur='+#39+'D'+#39+' order by UrunKod')
  else if Form1.Alan = 'B' then
    ADOQueryD_Sor.SQL.Add('Select UrunKod from UrunKart where Tur='+#39+'B'+#39+' order by UrunKod')
  else
    ADOQueryD_Sor.SQL.Add('Select UrunKod from UrunKart order by UrunKod');

  if not MSSQLOpen_Query(ADOQueryD_Sor,'ADOQueryD_Sor') then Exit;
  ADOQueryD_Sor.First;
  while  not ADOQueryD_Sor.Eof do
  begin
    ComboBox_Bar.Items.Add(ADOQueryD_Sor.FieldByName('UrunKod').AsString);
    ADOQueryD_Sor.Next;
  end;

  ADOQueryD_Sor.SQL.Clear;
  Button_Aktar.Visible:=True;
  if ilkKod then
  begin
    ilkKod:= False;
    ComboBox_Bar.Text:=BarGor;
    if Trim(BarGor)<>'' then   Button_AktarClick(Self);
  end;
end;

procedure TDUrunKart.Button_AktarClick(Sender: TObject);
 var
   S1:String[2];
  JPegStream : TMemoryStream;
begin
  Screen.Cursor:=crSQLWait;

  ADOQueryD_Sor.SQL.Clear;
  DUrunKart.Caption:='Düzenlenecek Urun Kodu : '+ComboBox_Bar.Text;
  ADOQueryD_Sor.SQL.Add('Select * from UrunKart where UrunKod ='+QuotedStr(ComboBox_Bar.Text));
  if not MSSQLOpen_Query(ADOQueryD_Sor,'ADOQueryD_Sor') then Exit;
  ADOQueryD_Sor.First;

  if ADOQueryD_Sor.RecordCount > 0 then
  begin
    Edit_Ad.Text :=ADOQueryD_Sor.FieldByName('UrunAd').AsString;
    ComboBox_K.Text :=ADOQueryD_Sor.FieldByName('Katogori').AsString;
    ComboBox_G.Text :=ADOQueryD_Sor.FieldByName('Gurup').AsString;
    Edit_Aciklama.Text :=ADOQueryD_Sor.FieldByName('UAciklama').AsString;
    Edit_Ozel.Text :=ADOQueryD_Sor.FieldByName('UrunNot').AsString;
    AdvGlowButton6.Visible:=True;
    S1:= ADOQueryD_Sor.FieldByName('Tur').AsString;

    S1:= ADOQueryD_Sor.FieldByName('Pul').AsString;
    if (S1='1')  then  AdvGlowButton_E.Down :=True
    else if (S1='2') then  AdvGlowButton_E.Down :=True
    else AdvGlowButton_T.Down :=True;


    LMDEdit1.Text :=ADOQueryD_Sor.FieldByName('A_Fiyat').AsString;
    LMDEdit2.Text :=ADOQueryD_Sor.FieldByName('B_Fiyat').AsString;
    AdvOfficeComboBox1.Text :=ADOQueryD_Sor.FieldByName('Birim').AsString;
    MoneyEdit1.Text:=ADOQueryD_Sor.FieldByName('MinStok').AsString;
    Edit1.Text := ADOQueryD_Sor.FieldByName('KukaSayi').AsString;

     //Resimi Doldur
    if FileExists(Form1.FileRegD + '\Data\'+ ComboBox_Bar.Text + '.jpg') then
    begin
      Image1.Visible := True;
      Image1.Picture.LoadFromFile(Form1.FileRegD + '\Data\'+ ComboBox_Bar.Text + '.jpg');

    end
    else
    begin
      if ADOQueryD_Sor.FieldByName('Resim').AsVariant <> '' then
      begin
        Image1.Visible := True;
        JPegStream := TMemoryStream.Create;
        (ADOQueryD_Sor.FieldByName('Resim') as TBlobField).SaveToStream(JPegStream);
        JPegStream.Position := 0;
        try
        begin
          Image1.Picture.Graphic := nil;
          Image1.Picture.Graphic := TJPEGImage.Create;
          Image1.Picture.Graphic.LoadFromStream(JPegStream);
        end;
        except
        begin
          Image1.Picture.Bitmap.LoadFromStream(JPegStream);
          Image1.Picture.SaveToFile(Form1.FileRegD+'\Data\'+ComboBox_Bar.Text+'.jpg');
        end;
        end;
        JpegStream.Free;
      end
      else
      begin
        Image1.Visible := False;
      end;
    end;
  end;
  Screen.Cursor:=crDefault;

end;

procedure TDUrunKart.ResimSqlKayit(ResimAd:String);
VAR
  JPegStream : TMemoryStream;
begin
            Image1.Picture.SaveToFile(Form1.FileRegD+'\Data\'+Trim(ResimAd)+'.jpg');
             Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
                 JPegStream := TMemoryStream.Create;
               try
                   Image1.Picture.Graphic.SaveToStream(JpegStream);
                   JpegStream.Position:=0;

             //   ADOQueryM_U.SQL.Clear;
            //    ADOQueryM_U.SQL.Append('Select * from UrunKart where Kod='#39+trim(Edit_Bar.text)+#39);
           //     ADOQueryM_U.Open;
                ADOQueryD_Sor.Edit;
                (ADOQueryD_Sor.fieldbyname('Resim') as TBlobField).LoadFromStream(JpegStream);
                ADOQueryD_Sor.Post;


          finally
                JPegStream.Free;
          end
end;

procedure TDUrunKart.ResimTemizle;
begin
  if Image1.Picture.Graphic <> nil then
  begin
    Image1.Picture.Graphic := nil;
    Image1.Visible := False;
  end;

end;
procedure TDUrunKart.AdvGlowButton3Click(Sender: TObject);
VAR
  JPegStream : TMemoryStream;
begin
  if Trim(ComboBox_Bar.Text)='' then
  begin
    PeykanHint('','Lütfen ilk önce barkod numarasini giriniz!',clRed,3,false);
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
      Image1.Visible := True;
      Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    end;
  end;
end;

procedure TDUrunKart.AdvGlowButton4Click(Sender: TObject);
begin
    if Trim(ComboBox_Bar.Text)='' then
    begin
                AnaForm.Pey_Dialog1.DesktopCenter:=False;
                AnaForm.Pey_Dialog1.Captext:='HATALI DOSYA';
                AnaForm.Pey_Dialog1.MsgText:='ÝLK ÖNCE BARKOD KODUNU'+#13+'YAZINIZ VE TEKRAR DENEYIN...';
                AnaForm.Pey_Dialog1.MsgBtn:=mbOKCancel;
                AnaForm.Pey_Dialog1.MessageGoster;
      exit;
    end;
     FormKamera1:=TFormKamera1.Create(Application);
     FormKamera1.FoNo:=2;
     FormKamera1.Label1.Caption:=ComboBox_Bar.Text;

     FormKamera1.ShowModal;
     FormKamera1.Free;
end;

procedure TDUrunKart.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled:=False;
  // Button_Aktar.Visible:=False;

  ComboBox_G.Items.Clear;
  ComboBox_K.Items.Clear;
  ADOQueryD_Sor.SQL.Clear;

  if Form1.Alan = 'E' then
  ADOQueryD_Sor.SQL.Append('Select GAd from UrunG where Tur='+#39+'E'+#39+' order by Gad')
  else if Form1.Alan = 'O' then
  ADOQueryD_Sor.SQL.Append('Select GAd from UrunG where Tur='+#39+'O'+#39+' order by Gad')
  else if Form1.Alan = 'D' then
  ADOQueryD_Sor.SQL.Append('Select GAd from UrunG where Tur='+#39+'D'+#39+' order by Gad')
  else if Form1.Alan = 'B' then
  ADOQueryD_Sor.SQL.Append('Select GAd from UrunG where Tur='+#39+'B'+#39+' order by Gad')
  else
  ADOQueryD_Sor.SQL.Append('Select GAd from UrunG order by Gad');

  if not MSSQLOpen_Query(ADOQueryD_Sor,'ADOQueryD_Sor') then Exit;
  ADOQueryD_Sor.First;
  while  not ADOQueryD_Sor.Eof do
  begin
  ComboBox_G.Items.Add(ADOQueryD_Sor.FieldByName('GAd').AsString);
  ADOQueryD_Sor.Next;
  end;

  ADOQueryD_Sor.SQL.Clear;


  if Form1.Alan = 'E' then
    ADOQueryD_Sor.SQL.Append('Select KAd from UrunK where Tur='+#39+'E'+#39+' order by KAd')
  else if Form1.Alan = 'O' then
    ADOQueryD_Sor.SQL.Append('Select KAd from UrunK where Tur='+#39+'O'+#39+' order by KAd')
  else if Form1.Alan = 'D' then
    ADOQueryD_Sor.SQL.Append('Select KAd from UrunK where Tur='+#39+'D'+#39+' order by KAd')
  else if Form1.Alan = 'B' then
    ADOQueryD_Sor.SQL.Append('Select KAd from UrunK where Tur='+#39+'B'+#39+' order by KAd')
  else
    ADOQueryD_Sor.SQL.Append('Select * from UrunK order by KAd');

  if not MSSQLOpen_Query(ADOQueryD_Sor,'ADOQueryD_Sor') then Exit;
  ADOQueryD_Sor.First;
  while  not ADOQueryD_Sor.Eof do
  begin
    ComboBox_K.Items.Add(ADOQueryD_Sor.FieldByName('KAd').AsString);
    ADOQueryD_Sor.Next;
  end;
end;

procedure TDUrunKart.KAYIT1Click(Sender: TObject);
begin

       Image1.Picture.SaveToFile(Form1.FileRegD+'\Data\'+ComboBox_Bar.Text+'.jpg');

end;

procedure TDUrunKart.Temizle1Click(Sender: TObject);
begin
  ResimTemizle;
end;

procedure TDUrunKart.ResimAktar1Click(Sender: TObject);
begin
  AdvGlowButton3Click(Self);
end;

procedure TDUrunKart.AdvGlowButton6Click(Sender: TObject);
begin
  if Trim(ComboBox_Bar.Text)='' then Exit;
  ADOQueryD_Sor.SQL.Clear;
  ADOQueryD_Sor.SQL.Text:='select isnull(Miktar,0) as Sayi,Raf From Stok where UrunKod='+QuotedStr(ComboBox_Bar.Text)+' order by Miktar desc';
      if not MSSQLOpen_Query(ADOQueryD_Sor,'ADOQueryD_Sor') then Exit;
  ADOQueryD_Sor.First;
  if (ADOQueryD_Sor.FieldByName('Sayi').AsInteger<>0) and (ADOQueryD_Sor.RecordCount>0) then
  begin
     If MyMessageDlg(#39+ADOQueryD_Sor.FieldByName('Raf').AsString+#39+' da ==> '+ADOQueryD_Sor.FieldByName('Sayi').AsString+'  Mevcut  '+#13+#39+ComboBox_Bar.Text+#39+' silmek istedigine Emin misiniz?', mtWarning, [mbOk, mbCancel], ['EVET', 'VAZGEÇ'],mrCancel,True,False ) = mrCancel then Exit;
      Form1.ADOCommand1.CommandText :='delete Stok WHERE UrunKod='+QuotedStr(ComboBox_Bar.Text);
      Form1.ADOCommand1.Execute;
      Delay(3);
      Form1.ADOCommand1.CommandText :='delete UrunKart WHERE UrunKod='+QuotedStr(ComboBox_Bar.Text);
      Form1.ADOCommand1.Execute;
      Delay(3);
      if Form_StokH <> nil then  Form_StokH.Timer1.Enabled:=True;
  end else
  begin
      Form1.ADOCommand1.CommandText :='delete Stok WHERE UrunKod='+QuotedStr(ComboBox_Bar.Text);
      Form1.ADOCommand1.Execute;
      Delay(3);
      Form1.ADOCommand1.CommandText :='delete UrunKart WHERE UrunKod='+QuotedStr(ComboBox_Bar.Text);
      Form1.ADOCommand1.Execute;
      Delay(3);
      if Form_StokH <> nil then  Form_StokH.Timer1.Enabled:=True;
      ComboBox_Bar.Text:='';

  end;
end;

end.
