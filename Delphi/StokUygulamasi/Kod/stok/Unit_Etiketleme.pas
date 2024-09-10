unit Unit_Etiketleme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,peykan_Unit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxTextEdit, VrDesign, AdvFontCombo,
  StdCtrls, AdvGlowButton, AdvGlassButton, Mylabel, VrControls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ExtCtrls,ADODB,Unit_cxTurk, DrLabel;

type
  TForm_Etiket = class(TForm)
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableKod: TcxGridDBColumn;
    cxGrid1DBTableUrunAd: TcxGridDBColumn;
    cxGrid1DBTableGurup: TcxGridDBColumn;
    cxGrid1DBTableKatogori: TcxGridDBColumn;
    cxGrid1DBTableNot: TcxGridDBColumn;
    cxGrid1DBTableTur: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label_Mev: TLabel;
    myLabel3d1: TmyLabel3d;
    Button1: TButton;
    Panel4: TPanel;
    Button_Aktar: TAdvGlassButton;
    Edit1: TEdit;
    Panel5: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowHelp: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    Panel6: TPanel;
    myLabel3d3: TmyLabel3d;
    myLabel3d5: TmyLabel3d;
    myLabel3d8: TmyLabel3d;
    myLabel3d10: TmyLabel3d;
    myLabel3d11: TmyLabel3d;
    myLabel3d2: TmyLabel3d;
    myLabel_Urun: TmyLabel3d;
    myLabel_Grup: TmyLabel3d;
    myLabel_Kategori: TmyLabel3d;
    myLabel_Barkod: TmyLabel3d;
    myLabel3d12: TmyLabel3d;
    Label_Raf_Mik: TmyLabel3d;
    Panel7: TPanel;
    myLabel3d7: TmyLabel3d;
    myLabel3d9: TmyLabel3d;
    Edit4: TEdit;
    Edit5: TEdit;
    Memo2: TMemo;
    Memo1: TMemo;
    ComboBox_Raf: TAdvOfficeComboBox;
    Memo_detay: TMemo;
    Edit2: TEdit;
    Edit3: TEdit;
    CheckBox_Raf: TVrBitmapCheckBox;
    Label_Hata: TDRLabel;
    Timer1: TTimer;
    DataSource1: TDataSource;
    Panel8: TPanel;
    myLabel3d4: TmyLabel3d;
    myLabel3d6: TmyLabel3d;
    Label_Not: TmyLabel3d;
    myLabel3d13: TmyLabel3d;
    Label_Acik: TmyLabel3d;
    AdvGlowButton3: TAdvGlowButton;
    img1: TImage;
    MemoYuvarlak: TMemo;
    Splitter1: TSplitter;
    LMevcutAlan: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ComboBox_RafChange(Sender: TObject);
    procedure CheckBox_RafChange(Sender: TObject);
    procedure Button_AktarClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure AdvGlowButton2Click(Sender: TObject);
    function  EtiketDeiskenMi:Boolean;
    function  EtiketDeiskenMi_Y(SifirYok:String):Boolean;
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Etiket: TForm_Etiket;
  ADOQuery_E,ADOQueryE_Islem:TADOQuery;
  KalanEtiketVarMi:Boolean;
  KalanEtiketSayisi:Double;
  MevcutUrun:Real;
  TipiKontrolEt:String;
implementation

uses MainUnit, Unit1, UnitAna;

{$R *.dfm}

function  TForm_Etiket.EtiketDeiskenMi_Y(SifirYok:String):Boolean;
 var
   i,MLi:Integer;
   S1,S2,DosyaStr :String;
begin
  Screen.Cursor:=crHourGlass;
  Memo1.Lines.Clear;
  Result := False;

  For MLi:=0 to MemoYuvarlak.Lines.Count do
  begin
    DosyaStr := MemoYuvarlak.Lines.Strings[MLi];
    if Pos('{',DosyaStr)<>0 then
    begin
      if Pos('{V00}',DosyaStr)<>0 then  //kutudaki adet
      begin
        S1:=Copy(DosyaStr,1,Pos('{V00}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{V00}',DosyaStr)+5,15);
        DosyaStr:=S1 + SifirYok + S2;
        Result := True;
      end;
      if Pos('{V01}',DosyaStr)<>0 then //ribon tipi(wax-resin)
      begin
        S1:=Copy(DosyaStr,1,Pos('{V01}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{V01}',DosyaStr)+5,15);
        DosyaStr:=S1+ myLabel_Barkod.Caption +S2;
      end;

      if Pos('{V02}',DosyaStr)<>0 then //ürün adý
      begin
        S1:=Copy(DosyaStr,1,Pos('{V02}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{V02}',DosyaStr)+5,15);
        DosyaStr:=S1 + myLabel_Urun.caption + S2;
      end;

      if Pos('{PQ}',DosyaStr)<>0 then //Çikti sayisi için
      begin
        S1:=Copy(DosyaStr,1,Pos('{PQ}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{PQ}',DosyaStr)+4,15);

        DosyaStr:=S1 +Edit3.Text + S2
      end;
    end;
    if Pos('^FX',DosyaStr)=0 then
      Memo1.Lines.Add(DosyaStr);
  end;

  Screen.Cursor:=crDefault;
end;

procedure TForm_Etiket.FormActivate(Sender: TObject);
begin
  Left:=0;
  Top:=0;
  Width:=FormMain.width-FormMain.widthInt;
  Height:=FormMain.Height-FormMain.EnInt;
end;

function  TForm_Etiket.EtiketDeiskenMi:Boolean;
 var
   CS:Double;
   i,MLi:Integer;
   TempStr,S1,S2,DosyaStr,CiktiSayi,urunNo:String;
begin
  Screen.Cursor:=crHourGlass;
  Memo1.Lines.Clear;
  Result := False;

  if StrToInt(Edit3.Text) < StrToInt(Edit4.Text) then
    Ciktisayi := Edit3.Text
  else CiktiSayi := Edit4.Text ;

  For MLi:=0 to Memo2.Lines.Count do
  begin
    DosyaStr:=Memo2.Lines.Strings[MLi];
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
        DosyaStr:=S1+BarcodTurk(myLabel_Urun.Caption)+S2;
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
        DosyaStr:=S1+ComboBox_Raf.Text+S2;
        Result := True;
      end;

      if Pos('{W01}',DosyaStr)<>0 then //^Kutunun genislik boyutu için
      begin
        S1:=Copy(DosyaStr,1,Pos('{W01}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{W01}',DosyaStr)+5,15);
        if KalanEtiketVarMi then DosyaStr:=S1+FloatToStr((Length(FloatToStr(KalanEtiketSayisi / StrToInt(Edit5.Text))) * 14) + 10 )+S2
        else DosyaStr:=S1+IntToStr((Length(Edit3.Text) * 14) + 10)+S2;
        Result := True;
      end;
      if Pos('{CS}',DosyaStr)<>0 then //Çikti sayisi için
      begin
        S1:=Copy(DosyaStr,1,Pos('{CS}',DosyaStr)-1);
        S2:=Copy(DosyaStr,Pos('{CS}',DosyaStr)+4,15);
        if Edit4.Text = '0' then CS:= StrToInt(Edit3.Text)
        else CS:= StrToInt(Edit3.Text) / StrToInt(Edit4.Text); //BARKOD ÇIKTI SAYISINI HESAPLIYOR
        if KalanEtiketVarMi then CS := StrToInt(Edit5.Text);
        DosyaStr:=S1+FloatToStr( CS )+S2 ;
        Result := True;
      end;
    end;
    if Pos('^FX',DosyaStr)=0 then
      Memo1.Lines.Add(DosyaStr);
  end;
  
  KalanEtiketVarMi := False;
  Screen.Cursor:=crDefault;
end;


procedure TForm_Etiket.FormCreate(Sender: TObject);
begin
  DecimalSeparator:='.';
  cxGridToTr;
  SetWindowLong(Edit2.Handle,GWL_STYLE,GetWindowLong(Edit2.Handle,GWL_STYLE) or ES_NUMBER);
  SetWindowLong(Edit3.Handle,GWL_STYLE,GetWindowLong(Edit3.Handle,GWL_STYLE) or ES_NUMBER );

  ResimAl1(AnaForm.image_Close,AdvGlowButton1);
  ResimAl1(AnaForm.PrintBarcod_B,AdvGlowButton2);
  ResimAl1(AnaForm.image_4,AdvGlowHelp);

  ResimAl1(AnaForm.Image_kutuYaz,AdvGlowButton3);

  ResimHint(AnaForm.image_Close,AdvGlowButton1,'K',False);
  ResimHint(AnaForm.img5,AdvGlowButton2,'Duzenle',False);
  ResimHint(AnaForm.ImageHelp,AdvGlowHelp,'Help',False);
  
  ADOQuery_E :=TADOQuery.Create(self);
  ADOQuery_E.Connection:=Form1.ADOConnection1;

  ADOQueryE_Islem :=TADOQuery.Create(self);
  ADOQueryE_Islem.Connection:=Form1.ADOConnection1;

  if Form1.ZDil = 1 then TipiKontrolEt := Form1.SeciliEtiketZPL
  else if Form1.ZDil = 2 then TipiKontrolEt := Form1.SeciliEtiketEPL
  else if Form1.ZDil = 3 then TipiKontrolEt := Form1.SeciliEtiketPPL;

  if  FileExists(TipiKontrolEt) then
  begin
    SifreliDosya_Ac(TipiKontrolEt,Memo2,True);
  end;


  EditYanlizSayi(Edit3);
  EditYanlizSayi(Edit5);
  EditYanlizSayi(Edit4);
  Timer1.Enabled:=True;
end;

procedure TForm_Etiket.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  ADOQuery_E.Free;
  ADOQueryE_Islem.Free;
  Form_Etiket:=Nil;
end;

procedure TForm_Etiket.AdvGlowButton1Click(Sender: TObject);
begin
  close;
end;

procedure TForm_Etiket.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:=False;

  LMevcutAlan.Caption := 'Departman : ';
  if Form1.Alan = 'E' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Elektronik'
  else if Form1.Alan = 'O' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Otomasyon'
  else if Form1.Alan = 'B' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Barkod'
  else if Form1.Alan = 'D' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Demirbaþ';

  if Form1.Alan = 'B' then
  begin
      myLabel3d7.Caption :='Bir Kukadaki'+#13+'Etiket Sayýsý :';
      myLabel3d9.Caption :='Ekstra Kuka Adeti :';
  end else
  begin
      myLabel3d7.Caption :='Bir Paketteki'+#13+'Ürün Sayýsý :';
      myLabel3d9.Caption :='Ekstra Paket Adeti :';
  end;

  Screen.Cursor:=crHourGlass;
  AdvGlowButton2.Enabled:=False;
  ADOQuery_E.Close;
  ADOQuery_E.SQL.Clear;

  ADOQuery_E.SQL.Add('Select U.Id, UrunNot, U.Birim, U.Tarih, A_Fiyat, B_Fiyat, Katogori, SUM(Miktar) as Miktar, ');
  ADOQuery_E.SQL.Add('MinStok, UAciklama, Gurup, U.UrunKod, Kullanici, UrunAd, ');
  ADOQuery_E.SQL.Add('case U.Tur when '+QuotedStr('D')+' then '+QuotedStr('Demirbas')+' when '+QuotedStr('E')+' then '+QuotedStr('Elektronik')+' when '+QuotedStr('O')+' then '+QuotedStr('Otomasyon')+' when '+QuotedStr('B')+' then '+QuotedStr('Barkod')+' end as Tur ');
  ADOQuery_E.SQL.Add(' FROM UrunKart AS U , Stok  Where Stok.UrunKod=U.UrunKod ');
  SQL:='';

  if Form1.Alan = 'E' then SQL:=SQL+' AND U.Tur='+ QuotedStr('E')
  else if Form1.Alan = 'O' then SQL:=SQL+' AND U.Tur='+QuotedStr('O')
  else if Form1.Alan = 'B' then SQL:=SQL+' AND U.Tur='+QuotedStr('B')
  else if Form1.Alan = 'D' then SQL:=SQL+' AND U.Tur='+#39+'D'+#39;;


  SQL:=SQL+' GROUP BY U.UrunKod, U.Id, UrunNot, U.Birim, U.Tarih, A_Fiyat, B_Fiyat, Katogori,MinStok, UAciklama, Gurup, U.UrunKod, Kullanici, UrunAd,U.Tur';

  ADOQuery_E.SQL.Add(SQL);
  ADOQuery_E.Open;
  DataSource1.DataSet:=ADOQuery_E;

  cxGrid1DBTableView1.DataController.DataSource:=DataSource1;
  CheckBox_RafChange(Self);
  AdvGlowButton2.Enabled:=True;
  Screen.Cursor:=crDefault;
end;

procedure TForm_Etiket.ComboBox_RafChange(Sender: TObject);
begin
  ADOQueryE_Islem.Close;
  ADOQueryE_Islem.SQL.Clear;
  ADOQueryE_Islem.SQL.Text:='select Miktar From Stok where UrunKod='+QuotedStr(myLabel_Barkod.Caption)+' and Raf='+QuotedStr(ComboBox_Raf.Text)+' order by Raf';
  ADOQueryE_Islem.Open;

  if ADOQueryE_Islem.RecordCount > 0 then Label_Raf_Mik.Caption:=ADOQueryE_Islem.FieldByName('Miktar').AsString + ' Adet'
  else Label_Raf_Mik.Caption:='0 Adet';
end;

procedure TForm_Etiket.CheckBox_RafChange(Sender: TObject);
begin
  if CheckBox_Raf.Checked then
  begin
    ComboBox_Raf.Items.Clear;
    ADOQueryE_Islem.Close;
    ADOQueryE_Islem.SQL.Clear;
    SQL:='Select distinct Kod ';
    SQL:=SQL+' FROM Raf';

    if Form1.Alan = 'E' then SQL:=SQL+' Where Tur='+QuotedStr('E')
    else if Form1.Alan = 'O' then SQL:=SQL+' Where Tur='+QuotedStr('O')
    else if Form1.Alan = 'B' then SQL:=SQL+' Where Tur='+QuotedStr('B')
    else if Form1.Alan = 'D' then SQL:=SQL+' Where Tur='+QuotedStr('D');

    SQL:=SQL+' order by Kod';
    ADOQueryE_Islem.SQL.Text:=SQL;

    ADOQueryE_Islem.Open;
    ADOQueryE_Islem.First;
    while not ADOQueryE_Islem.Eof do
    begin
      ComboBox_Raf.Items.Add(ADOQueryE_Islem.FieldByName('Kod').AsString);
       ADOQueryE_Islem.Next;
    end;
  end;
end;

procedure TForm_Etiket.Button_AktarClick(Sender: TObject);
var
   S1:String[2];
   XReal,XReal2:Real;
begin
  myLabel3d4.Caption:='Seçili Ürün : '+ADOQuery_E.FieldByName('UrunKod').AsString+'  ==>  '+ADOQuery_E.FieldByName('UrunAd').AsString;
  myLabel_Urun.Caption :=ADOQuery_E.FieldByName('UrunAd').AsString;
  myLabel_Barkod.Caption :=ADOQuery_E.FieldByName('UrunKod').AsString;
  myLabel_Kategori.Caption :=ADOQuery_E.FieldByName('Katogori').AsString;
  myLabel_Grup.Caption :=ADOQuery_E.FieldByName('Gurup').AsString;

  Label_Acik.Caption :=ADOQuery_E.FieldByName('UAciklama').AsString;
  Label_Not.Caption :=ADOQuery_E.FieldByName('UrunNot').AsString;
  S1:= ADOQuery_E.FieldByName('Tur').AsString;

  if ADOQuery_E.FieldByName('Gurup').AsString = 'RÝBON' then
     AdvGlowButton3.visible := True
  else AdvGlowButton3.visible := false;

  Button_Aktar.Down:=False;
  ComboBox_Raf.Items.Clear;
  CheckBox_Raf.Checked:=False;
  Memo_detay.Lines.Clear;

  XReal:=0;
  ADOQueryE_Islem.Close;
  ADOQueryE_Islem.SQL.Clear;
  ADOQueryE_Islem.SQL.Text:='select Miktar,Raf From Stok where UrunKod='+QuotedStr(myLabel_Barkod.Caption)+' order by Raf';
  ADOQueryE_Islem.Open;
  ADOQueryE_Islem.First;

  if ADOQueryE_Islem.FieldByName('Raf').AsString = '0' then
  begin
    XReal:=XReal+ ADOQueryE_Islem.FieldByName('Miktar').AsInteger;
    Memo_detay.Lines.Add('BULUNAN RAF : ''   MIKTAR : '+NoktaliSayi(ADOQueryE_Islem.FieldByName('Miktar').AsString));
    CheckBox_Raf.Checked:=True;
    CheckBox_RafChange(Self);
    ComboBox_RafChange(Self);
  end else
  begin

    while not ADOQueryE_Islem.Eof do
    begin
      XReal:=XReal+ ADOQueryE_Islem.FieldByName('Miktar').AsInteger;
      Memo_detay.Lines.Add('BULUNAN RAF : '+ADOQueryE_Islem.FieldByName('Raf').AsString+'   MIKTAR : '+NoktaliSayi(ADOQueryE_Islem.FieldByName('Miktar').AsString));
      if not CheckBox_Raf.Checked then
      ComboBox_Raf.Items.Add(ADOQueryE_Islem.FieldByName('Raf').AsString);
      ADOQueryE_Islem.Next;
    end;
    ComboBox_Raf.ItemIndex :=0;
    ComboBox_RafChange(Self);
  end;
  ADOQueryE_Islem.Close;
  ADOQueryE_Islem.SQL.Clear;
  ADOQueryE_Islem.SQL.Add('select KukaSayi From UrunKart where UrunKod='+QuotedStr(myLabel_Barkod.Caption));
  ADOQueryE_Islem.Open;
  ADOQueryE_Islem.First;

  Edit4.Text := IntToStr(ADOQueryE_Islem.FieldByName('KukaSayi').AsInteger);
  if StrToInt(Edit4.Text) < 1 then Edit4.Text := '1';
  Memo_detay.Lines.Add('-----------------------------------------------');
  MevcutUrun:=XReal;
  Memo_detay.Lines.Add('TOPLAM STOK MIKTARI : '+NoktaliSayi(FloatToStr(XReal)));
  Memo_detay.Lines.Add('TOPLAM STOK MIKTARI : '+Cevir(FloatToStr(XReal)));
  Edit3.SetFocus;
  AdvGlowButton2.Enabled:=True;
end;

procedure TForm_Etiket.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
 begin
    if Length(Edit1.Text)=7 then
    begin
      Button_AktarClick(Self);
    end;
 end;
end;

procedure TForm_Etiket.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    Button_AktarClick(Self);
end;

procedure TForm_Etiket.AdvGlowButton2Click(Sender: TObject);
var
  S1,S2 :string;
begin
if (Trim(Edit3.Text) ='0') or (Trim(Edit3.Text) = '')then
  begin
     PeykanHint('','GÝRÝÞ MÝKTARI HATALI.',clRed,25,False);
   exit;
  end;


  if myLabel_Grup.Caption = 'RÝBON' then
  begin

    if not FileExists(Form1.FileRegD+'/Label/yuvarlak.zpey') then
    begin
      PeykanHint('','Seçili Etiket Yok veya HATALI'+#13+'Sabit Etiket Cikartilacak!',clRed,10,False);
    end;
  
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

    Form1.PZpl1.AnaDosyaYaz(Memo1);
  

  end else
  begin
    if not FileExists(TipiKontrolEt) then
    begin
      PeykanHint('','Seçili Etiket Yok veya HATALI'+#13+'Sabit Etiket Cikartilacak!',clRed,10,False);
    end;

    if NOT EtiketDeiskenMi then
    BEGIN
      ShowMessage('BUK-');
      EXIT;
    end;

    Form1.PZpl1.AnaDosyaYaz(Memo1);

    if StrToInt(Edit4.Text) <= 0 then exit;

    if StrToInt(Edit3.Text) > StrToInt(Edit4.Text) then
      KalanEtiketSayisi := StrToInt(Edit3.Text) mod StrToInt(Edit4.Text)
    else KalanEtiketSayisi := 0;

    if KalanEtiketSayisi > 0 then
    begin
      KalanEtiketVarMi := true;

      if NOT EtiketDeiskenMi then
      BEGIN
        ShowMessage('BUK-');
        EXIT;
      end;

      Form1.PZpl1.AnaDosyaYaz(Memo1);
    end;

  end;
end;

procedure TForm_Etiket.Edit3Change(Sender: TObject);
begin
if Trim(Edit3.Text) = '' then begin Edit5.Text := '0'; exit; end;
  if Trim(Edit4.Text) = '' then begin Edit5.Text := '0'; exit; end;
  if Trim(Edit3.Text) = '0'then begin Edit5.Text := '0'; exit; end;
  if Trim(Edit4.Text) = '0'then begin Edit5.Text := '0'; exit; end;
  if StrToInt(Edit3.Text) < StrToInt(Edit4.Text) then
  begin
    Edit5.Text := '0';
    exit;
  end;
  KalanEtiketSayisi := StrToInt(Edit3.Text) mod StrToInt(Edit4.Text);
  if KalanEtiketSayisi <= 0 then
    Edit5.Text := '0'
  else
    Edit5.Text := '1';
end;

procedure TForm_Etiket.Edit4Change(Sender: TObject);
begin
 if Trim(Edit3.Text) = '' then exit;
  if Trim(Edit4.Text) = '' then exit;
  if StrToInt(Edit3.Text) = 0 then exit;
  if StrToInt(Edit4.Text) = 0 then exit;
  if StrToInt(Edit3.Text) < StrToInt(Edit4.Text) then
  begin
    Edit5.Text := '0';
    exit;
  end;
  KalanEtiketSayisi := StrToInt(Edit3.Text) mod StrToInt(Edit4.Text);
  if KalanEtiketSayisi <= 0 then
    Edit5.Text := '0'
  else
    Edit5.Text := '1';
end;

procedure TForm_Etiket.Edit1Change(Sender: TObject);
var
 FilterString: string;
begin

  if Trim(Edit1.Text)='' then
  cxGrid1DBTableView1.DataController.Filter.Active := False
  else begin
  FilterString := Edit1.Text + '%';
  with cxGrid1DBTableView1.DataController.Filter.Root do
    begin
      Clear;
      BoolOperatorKind := fboOr;
      AddItem(cxGrid1DBTableKod, foLike, FilterString, FilterString);
    end;
  cxGrid1DBTableView1.DataController.Filter.Active := True;
  Label_Mev.Caption:=IntToStr( cxGrid1DBTableView1.DataController.FilteredRecordCount);
  end;
end;

end.
