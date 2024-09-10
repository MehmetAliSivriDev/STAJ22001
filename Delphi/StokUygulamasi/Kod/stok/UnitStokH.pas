unit UnitStokH;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,peykan_Unit,ADODB, AdvGlowButton, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, AdvGlassButton,
  StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, EditNew,
  VrDesign, VrControls, AdvFontCombo, LMDBaseControl,
  LMDBaseGraphicControl, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDDockSpeedButton, Mylabel,Unit_cxTurk, DrLabel, CPDrv, cxTextEdit,
  AdvSplitter;

type
  TForm_StokH = class(TForm)
    Panel1: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowHelp: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    Panel_Po: TPanel;
    Panel2: TPanel;
    myLabel3d6: TmyLabel3d;
    myLabel3d11: TmyLabel3d;
    myLabel3d10: TmyLabel3d;
    myLabel3d12: TmyLabel3d;
    myLabel3d13: TmyLabel3d;
    myLabel3d14: TmyLabel3d;
    myLabel3d15: TmyLabel3d;
    myLabel3d2: TmyLabel3d;
    Memo2: TMemo;
    Memo3: TMemo;
    ComboBox_Raf: TAdvOfficeComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit_Aciklama: TEdit;
    Edit3: TEdit;
    Panel3: TPanel;
    myLabel3d7: TmyLabel3d;
    myLabel3d9: TmyLabel3d;
    Edit4: TEdit;
    Edit5: TEdit;
    Panel4: TPanel;
    bvl1: TBevel;
    myLabel3d1: TmyLabel3d;
    VrBitmapRadioButton4: TVrBitmapRadioButton;
    VrBitmapRadioButton5: TVrBitmapRadioButton;
    VrBitmapRadioButton6: TVrBitmapRadioButton;
    VrBitmapRadioButton7: TVrBitmapRadioButton;
    ComboBox_Fir: TAdvOfficeComboBox;
    Panel5: TPanel;
    myLabel3d4: TmyLabel3d;
    myLabel3d5: TmyLabel3d;
    Label_Not: TmyLabel3d;
    myLabel3d8: TmyLabel3d;
    Label_Acik: TmyLabel3d;
    Panel6: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableKod: TcxGridDBColumn;
    cxGrid1DBTableUrunAd: TcxGridDBColumn;
    cxGrid1DBTableGurup: TcxGridDBColumn;
    cxGrid1DBTableKatogori: TcxGridDBColumn;
    cxGrid1DBTableNot: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel7: TPanel;
    Panel9: TPanel;
    myLabel3d17: TmyLabel3d;
    Panel10: TPanel;
    Button_Aktar: TAdvGlassButton;
    Edit7: TEdit;
    DataSource1: TDataSource;
    Timer1: TTimer;
    Panel8: TPanel;
    RadioButtonCikis: TVrBitmapRadioButton;
    RadioButtonGiris: TVrBitmapRadioButton;
    myLabel_Urun: TmyLabel3d;
    myLabel_Grup: TmyLabel3d;
    myLabel_Kategori: TmyLabel3d;
    myLabel_Barkod: TmyLabel3d;
    Timer2: TTimer;
    Label_Hata: TDRLabel;
    TimerHata: TTimer;
    ADOSP_Hareket_Ins: TADOStoredProc;
    CommPortBarkod: TCommPortDriver;
    myLabel3d16: TmyLabel3d;
    Label_Raf_Mik: TmyLabel3d;
    LMevcutAlan: TLabel;
    Panel11: TPanel;
    AdvSplitter1: TAdvSplitter;
    Memo1: TMemo;
    AdvSplitter2: TAdvSplitter;
    Label_Mev: TLabel;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    cxGrid1DBTableRaf: TcxGridDBColumn;
    Panel12: TPanel;
    Panel_Fiyat: TPanel;
    myLabel3d3: TmyLabel3d;
    LMDEdit1: TEditN;
    AdvGlowButton_D: TAdvGlowButton;
    AdvGlowButton_E: TAdvGlowButton;
    AdvGlowButton_T: TAdvGlowButton;
    PanelNoBilgileri: TPanel;
    myLabel3d18: TmyLabel3d;
    myLabel3d19: TmyLabel3d;
    myLabel3d20: TmyLabel3d;
    EFaturaNo: TEdit;
    ESiparisNo: TEdit;
    ETeklifNo: TEdit;
    VrBitmapRadioButton8: TVrBitmapRadioButton;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure Button_AktarClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure RadioButtonGirisChange(Sender: TObject);
    procedure RadioButtonCikisChange(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure VrBitmapRadioButton4Change(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure TimerHataTimer(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure PortBak;
    procedure CommPortBarkodReceiveData(Sender: TObject; DataPtr: Pointer;
      DataSize: Cardinal);
    procedure ComboBox_RafChange(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure AdvGlowButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_StokH: TForm_StokH;
  ADOQuery_S,ADOQueryS_Islem:TADOQuery;
  TipiKontrolEt:String;
  KalanEtiketSayisi:Double;
  MevcutUrun:Real;
implementation

uses MainUnit, UnitAna, Unit1, EUrun_Unit, Unit_Ribon,Unit_Kukaici,Unit_EKutu,Unit_RafBarkod;


{$R *.dfm}

procedure TForm_StokH.FormActivate(Sender: TObject);
begin
  Left:=0;
  Top:=0;
  Width:=FormMain.width-FormMain.widthInt;
  Height:=FormMain.Height-FormMain.EnInt;
end;

procedure TForm_StokH.PortBak;
begin
  CommPortBarkod.Disconnect;

  CommPortBarkod.BaudRateValue:=Form1.BaunRate;

     if Form1.BarPort='Com1' then CommPortBarkod.Port:=pnCOM1
  else if Form1.BarPort='Com2' then CommPortBarkod.Port:=pnCOM2
  else if Form1.BarPort='Com3' then CommPortBarkod.Port:=pnCOM3
  else if Form1.BarPort='Com4' then CommPortBarkod.Port:=pnCOM4
  else if Form1.BarPort='Com5' then CommPortBarkod.Port:=pnCOM5
  else if Form1.BarPort='Com6' then CommPortBarkod.Port:=pnCOM6
  else if Form1.BarPort='Com7' then CommPortBarkod.Port:=pnCOM7
  else if Form1.BarPort='Com8' then CommPortBarkod.Port:=pnCOM8
  else if Form1.BarPort='Com9' then CommPortBarkod.Port:=pnCOM9
  else if Form1.BarPort='Com10' then CommPortBarkod.Port:=pnCOM10;

  CommPortBarkod.Connect;//baglan

end;

procedure TForm_StokH.FormCreate(Sender: TObject);
begin
      if FileExists(Form1.FileRegD + '\Label\Stok_yeni.zpey') then
      begin
        SifreliDosya_Ac(Form1.FileRegD + '\Label\Stok_yeni.zpey',Memo2,True);
      end else
      PeykanHint('','Etiket Secili Yok',clRed,10,false);


  DecimalSeparator:='.';
  cxGridToTr;
  SetWindowLong(Edit1.Handle,GWL_STYLE,GetWindowLong(Edit1.Handle,GWL_STYLE) or ES_NUMBER);

  ResimAl1(AnaForm.Image_Euro,AdvGlowButton_E);
  ResimAl1(AnaForm.Image_Dolar,AdvGlowButton_D);
  ResimAl1(AnaForm.Image_TL,AdvGlowButton_T);
  ResimAl1(AnaForm.image_2,AdvGlowButton3);
  ResimAl1(AnaForm.image_Close,AdvGlowButton1);
  ResimAl1(AnaForm.PrintBarcod_B,AdvGlowButton2);
  ResimAl1(AnaForm.image_4,AdvGlowHelp);
  ResimAl1(AnaForm.PrintBarcod_B,AdvGlowButton4);
  ResimAl1(AnaForm.PrintBarcod_B,AdvGlowButton5);
  ResimAl1(AnaForm.PrintBarcod_B,AdvGlowButton6);
  ResimAl1(AnaForm.PrintBarcod_B,AdvGlowButton7);
  ResimHint(AnaForm.image_Vaz,AdvGlowButton3,'S',False);
  ResimHint(AnaForm.image_Close,AdvGlowButton1,'K',False);
  ResimHint(AnaForm.image_Barcod,AdvGlowButton2,'PB',False);
  ResimHint(AnaForm.ImageHelp,AdvGlowHelp,'Help',False);
  ResimHint(AnaForm.image_Barcod,AdvGlowButton4,'PB',False);


  ADOQuery_S :=TADOQuery.Create(self);
//  ADOQuery_S.Connection:=Form1.ADOConnection1;

  ADOQueryS_Islem :=TADOQuery.Create(self);
  ADOQueryS_Islem.Connection:=Form1.ADOConnection1;

  EditYanlizSayi(Edit2);
  EditYanlizSayi(Edit5);
  EditYanlizSayi(Edit4);

  LMevcutAlan.Caption := 'Departman : ';
  if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQuery_S,True,'PeyMar','') then
  begin
    ADOQuery_S.Close;
    ADOQuery_S.SQL.Clear;
    if Form1.Alan = 'E' then
    begin
     LMevcutAlan.Caption := LMevcutAlan.Caption + 'Elektronik';
      ADOQuery_S.SQL.Add('Select Kod FROM Raf_E order by Kod');
    end else if Form1.Alan = 'O' then
    begin
     LMevcutAlan.Caption := LMevcutAlan.Caption + 'Otomasyon';
      ADOQuery_S.SQL.Add('Select Kod FROM Raf_O order by Kod');
    end else if Form1.Alan = 'B' then
    begin
     LMevcutAlan.Caption := LMevcutAlan.Caption + 'Barkod';
      ADOQuery_S.SQL.Add('Select Kod FROM Raf_B order by Kod');
    end else if Form1.Alan = 'D' then
    begin
     LMevcutAlan.Caption := LMevcutAlan.Caption + 'Demirbaþ';
      ADOQuery_S.SQL.Add('Select Kod FROM Raf_D order by Kod');
    end;
    ADOQuery_S.Open;
    ADOQuery_S.First;
        while not ADOQuery_S.Eof do
        begin
          ComboBox_Raf.Items.Add(ADOQuery_S.FieldByName('Kod').AsString);
          ADOQuery_S.Next;
        end;

   end;

//  EditYanlizSayi(ECiktiEtiketSayisi);
  Timer1.Enabled:=True;
  Timer2.Enabled:=True;
end;

procedure TForm_StokH.AdvGlowButton1Click(Sender: TObject);
begin
  close;
end;

procedure TForm_StokH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  ADOQuery_S.Free;
  ADOQueryS_Islem.Free;
  Form_StokH:=Nil;
end;


procedure TForm_StokH.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:=False;

//  LMevcutAlan.Caption := 'Departman : ';
//  if Form1.Alan = 'E' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Elektronik'
//  else if Form1.Alan = 'O' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Otomasyon'
//  else if Form1.Alan = 'B' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Barkod'
//  else if Form1.Alan = 'D' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Demirbaþ';
  if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQuery_S,True,'PeyMar','') then
  begin
    Screen.Cursor:=crHourGlass;
    AdvGlowButton2.Enabled:=False;
    ADOQuery_S.Close;
    ADOQuery_S.SQL.Clear;

    ADOQuery_S.SQL.Add('Select U.Id, UrunNot, U.Birim, U.Tarih, A_Fiyat, B_Fiyat, Katogori, SUM(Miktar) as Miktar, ');
    ADOQuery_S.SQL.Add('MinStok, UAciklama, Gurup, U.UrunKod, Kullanici, UrunAd, Raf, ');
    ADOQuery_S.SQL.Add('case U.Tur when '+QuotedStr('D')+' then '+QuotedStr('Demirbas')+' when '+QuotedStr('E')+' then '+QuotedStr('Elektronik')+' when '+QuotedStr('O')+' then '+QuotedStr('Otomasyon')+' when '+QuotedStr('B')+' then '+QuotedStr('Barkod')+' end as Tur ');
    ADOQuery_S.SQL.Add(' FROM UrunKart AS U , Stok  Where Stok.UrunKod=U.UrunKod ');
    SQL:='';
    Panel3.Visible:=False;
    AdvGlowButton4.Visible:=False;
    AdvGlowButton5.Visible:=False;
    AdvGlowButton6.Visible:=False;
    AdvGlowButton7.Visible:=False;

    if Form1.Alan = 'E' then SQL:=SQL+' AND U.Tur='+ QuotedStr('E')
    else if Form1.Alan = 'O' then SQL:=SQL+' AND U.Tur='+QuotedStr('O')
    else if Form1.Alan = 'B' then
    begin
        SQL:=SQL+' AND U.Tur='+QuotedStr('B');
        Panel3.Visible:=True;
        AdvGlowButton4.Visible:=True;
        AdvGlowButton5.Visible:=True;
        AdvGlowButton6.Visible:=True;
        AdvGlowButton7.Visible:=True;
    end else if Form1.Alan = 'D' then SQL:=SQL+' AND U.Tur='+#39+'D'+#39;;

    SQL:=SQL+' GROUP BY U.UrunKod, U.Id, UrunNot, U.Birim, U.Tarih, A_Fiyat, B_Fiyat, Katogori,MinStok, UAciklama, Gurup, U.UrunKod, Kullanici, UrunAd,U.Tur,Raf  order BY U.UrunKod';

    ADOQuery_S.SQL.Add(SQL);
    ADOQuery_S.Open;
    DataSource1.DataSet:=ADOQuery_S;

    cxGrid1DBTableView1.DataController.DataSource:=DataSource1;
  end;
//  CheckBox_RafChange(Self);
 AdvGlowButton2.Enabled:=True;
 PortBak;
 Screen.Cursor:=crDefault;
end;

procedure TForm_StokH.Button_AktarClick(Sender: TObject);
var
   S1:String[2];
   XReal,XReal2:Real;
begin
  myLabel3d4.Caption:='Seçili Ürün : '+ADOQuery_S.FieldByName('UrunKod').AsString+'  ==>  '+ADOQuery_S.FieldByName('Gurup').AsString+'  '+ADOQuery_S.FieldByName('UrunAd').AsString;
  myLabel_Urun.Caption :=ADOQuery_S.FieldByName('UrunAd').AsString;
  myLabel_Barkod.Caption :=ADOQuery_S.FieldByName('UrunKod').AsString;
  myLabel_Kategori.Caption :=ADOQuery_S.FieldByName('Katogori').AsString;
  myLabel_Grup.Caption :=ADOQuery_S.FieldByName('Gurup').AsString;
  Label_Acik.Caption :=ADOQuery_S.FieldByName('UAciklama').AsString;
  Label_Not.Caption :=ADOQuery_S.FieldByName('UrunNot').AsString;
  S1:= ADOQuery_S.FieldByName('Tur').AsString;
  ComboBox_Raf.Text:=ADOQuery_S.FieldByName('Raf').AsString;
  Button_Aktar.Down:=False;
//  ComboBox_Raf.Items.Clear;
//  CheckBox_Raf.Checked:=False;
  Memo1.Lines.Clear;
  XReal:=0;
  if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQueryS_Islem,True,'PeyMar','') then
  begin
      ADOQueryS_Islem.Close;
      ADOQueryS_Islem.SQL.Clear;
      ADOQueryS_Islem.SQL.Text:='select Miktar,Raf From Stok where UrunKod='+QuotedStr(myLabel_Barkod.Caption)+' order by Raf';
      ADOQueryS_Islem.Open;
      ADOQueryS_Islem.First;

      if ADOQueryS_Islem.FieldByName('Raf').AsString = '0' then
      begin
        XReal:=XReal+ ADOQueryS_Islem.FieldByName('Miktar').AsInteger;
        Memo1.Lines.Add('BULUNAN RAF : ''   MIKTAR : '+NoktaliSayi(ADOQueryS_Islem.FieldByName('Miktar').AsString));
//        CheckBox_Raf.Checked:=True;
//        CheckBox_RafChange(Self);
//        ComboBox_RafChange(Self);
      end else
      begin

        while not ADOQueryS_Islem.Eof do
        begin
          XReal:=XReal+ ADOQueryS_Islem.FieldByName('Miktar').AsInteger;
          Memo1.Lines.Add('BULUNAN RAF : '+ADOQueryS_Islem.FieldByName('Raf').AsString+'   MIKTAR : '+NoktaliSayi(ADOQueryS_Islem.FieldByName('Miktar').AsString));
//          if not CheckBox_Raf.Checked then
//          ComboBox_Raf.Items.Add(ADOQueryS_Islem.FieldByName('Raf').AsString);
          ADOQueryS_Islem.Next;
        end;
//        ComboBox_Raf.ItemIndex :=0;
//        ComboBox_RafChange(Self);
      end;
      ADOQueryS_Islem.Close;
      ADOQueryS_Islem.SQL.Clear;
      ADOQueryS_Islem.SQL.Add('select KukaSayi From UrunKart where UrunKod='+QuotedStr(myLabel_Barkod.Caption));
      ADOQueryS_Islem.Open;
      ADOQueryS_Islem.First;

      Edit4.Text := IntToStr(ADOQueryS_Islem.FieldByName('KukaSayi').AsInteger);
  end;

  Memo1.Lines.Add('---------------------------------------------------------');
  MevcutUrun:=XReal;
  Memo1.Lines.Add('TOPLAM STOK MIKTARI : '+NoktaliSayi(FloatToStr(XReal))+'  ==>  '+Cevir(FloatToStr(XReal)));
          ComboBox_RafChange(Self);

//  Memo1.Lines.Add('TOPLAM STOK MIKTARI : '+Cevir(FloatToStr(XReal)));
  Edit2.SetFocus;
  AdvGlowButton3.Enabled:=True;
end;

procedure TForm_StokH.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Button_AktarClick(Self);
end;

procedure TForm_StokH.RadioButtonGirisChange(Sender: TObject);
begin
  if RadioButtonGiris.Checked then
  begin
    VrBitmapRadioButton4.Caption:='Firma';
    VrBitmapRadioButton5.Caption:='Raf';
    VrBitmapRadioButton6.Caption:='Ýade';
    VrBitmapRadioButton7.Caption:='Sayým';
    myLabel3d3.Caption:='Birim Alýþ Fiyatý :';
    myLabel3d10.Caption:='T. Giriþ Miktarý :';
    Timer2.Enabled:=True;
      end;
end;

procedure TForm_StokH.RadioButtonCikisChange(Sender: TObject);
begin
  if RadioButtonCikis.Checked then
  begin
    VrBitmapRadioButton4.Caption:='Satýþ';
    VrBitmapRadioButton5.Caption:='Üretim';
    VrBitmapRadioButton6.Caption:='T-Çantasý 1';
    VrBitmapRadioButton7.Caption:='T-Çantasý 2';
    myLabel3d10.Caption:='T. Çýkýþ Miktarý :';
    Timer2.Enabled:=True;
  end;
end;

procedure TForm_StokH.Timer2Timer(Sender: TObject);
begin
 Timer2.Enabled:=False;
  if RadioButtonGiris.Checked then    //Giriþ
  begin
    VrBitmapRadioButton8.Visible := False;
    PanelNoBilgileri.Visible := False;
    if VrBitmapRadioButton6.Checked then
    begin
      ComboBox_Fir.Items.Clear;
      ComboBox_Fir.Text:='SAYIM';
      ComboBox_Fir.Items.Add('Müþteri Iade');
      ComboBox_Fir.Items.Add('ARGE');
      ComboBox_Fir.Items.Add('TAKIM ÇANTASI');
      Panel_Fiyat.Visible:=True;
      myLabel3d1.Visible:=True;
      ComboBox_Fir.Visible:=True;
      Exit;
    end;


    if VrBitmapRadioButton7.Checked then
    begin
      ComboBox_Fir.Text:='SAYIM';
      ComboBox_Fir.Visible:=False;
      Panel_Fiyat.Visible:=False;
      myLabel3d1.Visible:=False;
      Exit;
    end;

    ComboBox_Fir.Visible:=True;
    Panel_Fiyat.Visible:=True;
    myLabel3d1.Visible:=True;

    ComboBox_Fir.Items.Clear;
    ComboBox_Fir.Clear;

     if (VrBitmapRadioButton4.Checked ) OR (VrBitmapRadioButton5.Checked ) then
    begin
     ADOQueryS_Islem.Close;
     ADOQueryS_Islem.SQL.Clear;
     if VrBitmapRadioButton4.Checked then
     begin
      ADOQueryS_Islem.SQL.Text:='select Firma, Ad From Firma where Satici=1 order by Firma,Ad';

      ADOQueryS_Islem.Open;
      ADOQueryS_Islem.First;
      while not ADOQueryS_Islem.Eof do
      begin
        ComboBox_Fir.Items.Add(ADOQueryS_Islem.FieldByName('Firma').AsString);
        ADOQueryS_Islem.Next;
      end;

     end else
     if VrBitmapRadioButton5.Checked then
     begin
       Panel_Fiyat.Visible:=False;
        myLabel3d1.Caption:='Alýndýðý Raf :';
        if Form1.Alan = 'E' then ADOQueryS_Islem.SQL.Text:='select Kod From Raf_E order by Kod'
        else if Form1.Alan = 'O' then ADOQueryS_Islem.SQL.Text:='select Kod From Raf_O order by Kod'
        else if Form1.Alan = 'B' then ADOQueryS_Islem.SQL.Text:='select Kod From Raf_B order by Kod'
        else if Form1.Alan = 'D' then ADOQueryS_Islem.SQL.Text:='select Kod From Raf_D order by Kod';
        ADOQueryS_Islem.Open;
        ADOQueryS_Islem.First;
        while not ADOQueryS_Islem.Eof do
        begin
          ComboBox_Fir.Items.Add(ADOQueryS_Islem.FieldByName('Kod').AsString);
          ADOQueryS_Islem.Next;
        end;
     end;
    end;



  end else if RadioButtonCikis.Checked then // cýkýþ
  begin
    VrBitmapRadioButton8.Visible := True;
    Panel_Fiyat.Visible:=False;
    myLabel3d1.Caption:='Gidecegi Yer :';

    if VrBitmapRadioButton8.Checked then
    begin
      Edit3.Text := 'Deneme';
      ComboBox_Fir.Text:='Deneme';
      ComboBox_Fir.Visible:=True;
      Panel_Fiyat.Visible:=False;
      myLabel3d1.Visible:=True;
      PanelNoBilgileri.Visible := False;
      Exit;
    end;

    if VrBitmapRadioButton7.Checked then
    begin
      Edit3.Text := 'Takým-Çantasý 2';
      ComboBox_Fir.Text:='Takým-Çantasý 2';
      ComboBox_Fir.Visible:=True;
      Panel_Fiyat.Visible:=False;
      myLabel3d1.Visible:=True;
      PanelNoBilgileri.Visible := False;
      Exit;
    end;

    if VrBitmapRadioButton6.Checked then
    begin
      Edit3.Text := 'Takým-Çantasý 1';
      ComboBox_Fir.Text:='Takým-Çantasý 1';
      ComboBox_Fir.Visible:=True;
      Panel_Fiyat.Visible:=False;
      myLabel3d1.Visible:=True;
      PanelNoBilgileri.Visible := False;
      Exit;
    end;

    ComboBox_Fir.Visible:=True;
    myLabel3d1.Visible:=True;
    ComboBox_Fir.Items.Clear;
    ComboBox_Fir.Clear;

    if (VrBitmapRadioButton4.Checked ) OR (VrBitmapRadioButton5.Checked ) then
    begin
     ADOQueryS_Islem.Close;
     ADOQueryS_Islem.SQL.Clear;
      if VrBitmapRadioButton4.Checked then
      begin

        ADOQueryS_Islem.SQL.Text:='select Firma, Ad From Firma Where Satici=0 order by Firma,Ad ';
        ADOQueryS_Islem.Open;
        ADOQueryS_Islem.First;
        while not ADOQueryS_Islem.Eof do
        begin
          ComboBox_Fir.Items.Add(ADOQueryS_Islem.FieldByName('Firma').AsString);
          ADOQueryS_Islem.Next;
        end;
        PanelNoBilgileri.Visible := True;
        Panel_Fiyat.Visible := False;
        Edit3.Text := 'Satýþ';
      end else if VrBitmapRadioButton5.Checked then
      begin
        ComboBox_Fir.Clear;
        ComboBox_Fir.Visible:=True;
        ComboBox_Fir.Text := 'Üretim';
        Panel_Fiyat.Visible:=False;
        PanelNoBilgileri.Visible := False;
        myLabel3d1.Visible:=True;
        Edit3.Text := 'Üretim';
        Exit;
      end;

    end else Exit;
  end;
end;

procedure TForm_StokH.VrBitmapRadioButton4Change(Sender: TObject);
begin
  Timer2.Enabled:=True;
end;



procedure TForm_StokH.AdvGlowButton3Click(Sender: TObject);
var
  GenelHata,YetersizMiktar:Boolean;
begin
  if(Trim(Edit2.Text)='') then         //     (Trim(Edit2.Text)='0') OR
  begin
    Label_Hata.Caption:='HATALI GIRIS , MÝKTAR EN AZ 1 OLMALI.';
    Label_Hata.Blink:=blBlink;
    Label_Hata.Visible:=True;
    TimerHata.Enabled:=True;
    Edit2.SetFocus;
    exit;
  end;

  if Panel3.Visible then
  begin
    if (Trim(Edit4.Text)='') then
    begin
      Label_Hata.Caption:='HATALI GIRIS , ETÝKET MÝKTARI EN AZ "1" OLMALI.';
      Label_Hata.Blink:=blBlink;
      Label_Hata.Visible:=True;
      TimerHata.Enabled:=True;
      Edit4.SetFocus;
      exit;
    end;

    if (StrToInt(Edit4.Text)=0)  then
    begin
      Label_Hata.Caption:='HATALI GIRIS , ETÝKET MÝKTARI EN AZ "1" OLMALI.';
      Label_Hata.Blink:=blBlink;
      Label_Hata.Visible:=True;
      TimerHata.Enabled:=True;
      Edit4.SetFocus;
      exit;
    end;

  end;

  if ((myLabel_Urun.Caption)='-') OR ((myLabel_Barkod.Caption='-')) then
  begin
    Label_Hata.Caption:='HATALI GIRIS , TABLODAN GÝRÝÞ YAPILACAK ÜRÜNÜ SEÇÝNÝZ.';
    Label_Hata.Blink:=blBlink;
    Label_Hata.Visible:=True;
    TimerHata.Enabled:=True;
    exit;
  end;

  if RadioButtonGiris.Checked then     //Giris yapilcaksa;
  begin

    if Trim(ComboBox_Raf.Text)='' then
    begin
      Label_Hata.Caption:='HATALI GIRIS , RAF BÝLGÝSÝ GÝRÝLMEMÝÞ.LÜTFEN KONTROL EDÝNÝZ.';
      Label_Hata.Blink:=blBlink;
      Label_Hata.Visible:=True;
      TimerHata.Enabled:=True;
      ComboBox_Raf.SetFocus;
      exit;
    end;


    if VrBitmapRadioButton5.Checked then   // Rafdan Rafa
    begin
      if Trim(ComboBox_Fir.Text)='' then
      begin
        Label_Hata.Caption:='HATALI GIRIS, ALACAGINIZ RAF BÝLGÝSÝ GIRILMEMIÞ.LÜTFEN KONTROL EDÝNÝZ.';
        Label_Hata.Blink:=blBlink;
        Label_Hata.Visible:=True;
        TimerHata.Enabled:=True;
        ComboBox_Fir.SetFocus;
        exit;
      end;
    end;

  end;



  if RadioButtonGiris.Checked then
  begin
    Edit2.Text:=IntToStr(StrToInt(Edit2.Text));
    if MSSQLKontrol_Store(ADOSP_Hareket_Ins,Form1.ADOConnection1,'PeyMar','') then
    begin
      try
      begin
        ADOSP_Hareket_Ins.Parameters[1].Value:=myLabel_Barkod.Caption;
        //     ADOSP_Hareket_Ins.Parameters[2].Value:=ComboBox_Urun.Text;
        ADOSP_Hareket_Ins.Parameters[2].Value:= Edit2.Text;
        ADOSP_Hareket_Ins.Parameters[3].Value:='0';
        ADOSP_Hareket_Ins.Parameters[4].Value:=ComboBox_Raf.Text ;
        ADOSP_Hareket_Ins.Parameters[5].Value:=Edit3.Text;
        ADOSP_Hareket_Ins.Parameters[6].Value:=Edit_Aciklama.Text;
        ADOSP_Hareket_Ins.Parameters[7].Value:=Form1.Kulanici;

        if Form1.Alan = 'E' then  ADOSP_Hareket_Ins.Parameters[8].Value:='E'
        else if Form1.Alan = 'O' then ADOSP_Hareket_Ins.Parameters[8].Value:='O'
        else if Form1.Alan = 'D' then ADOSP_Hareket_Ins.Parameters[8].Value:='D'
        else if Form1.Alan = 'B' then ADOSP_Hareket_Ins.Parameters[8].Value:='B';

        ADOSP_Hareket_Ins.Parameters[9].Value:=ComboBox_Fir.Text;
        ADOSP_Hareket_Ins.Parameters[10].Value:=LMDEdit1.Text;

        ADOSP_Hareket_Ins.ExecProc;
        GenelHata:=ADOSP_Hareket_Ins.Parameters[11].Value;
        YetersizMiktar:=ADOSP_Hareket_Ins.Parameters[12].Value;
        if GenelHata then
        begin
          ShowMessage('KAYIT OLMADI');
          exit;
        end;

      end
      except
      begin
        ShowMessage('Hata :  SQL Bank_Ins prosedürü çalistirilamadi.. Lütfen Kontrol Ediniz.');
        exit;
      end;
      end;
    end;

  end else
  if RadioButtonCikis.Checked then
  begin
    if MevcutUrun< StrToFloat(Edit2.Text) then
    begin
      Label_Hata.Caption:='HATALI GIRI,'+' Stokta Mevcut Ürün Sayisi: '+FloatToStr(MevcutUrun)+#13+'Girilen Miktar: '+ Edit2.Text+#13+' Stoktan Cikis Yapilamaz.';
      Label_Hata.Blink:=blBlink;
      Label_Hata.Visible:=True;
       TimerHata.Enabled:=True;
      ComboBox_Fir.SetFocus;
      Exit;
    end;

    if MSSQLKontrol_Store(ADOSP_Hareket_Ins,Form1.ADOConnection1,'PeyMar','') then
    begin
      try
        begin
          ADOSP_Hareket_Ins.Parameters[1].Value:=myLabel_Barkod.Caption;
          ADOSP_Hareket_Ins.Parameters[2].Value:='0';
          ADOSP_Hareket_Ins.Parameters[3].Value:=Edit2.Text;
          ADOSP_Hareket_Ins.Parameters[4].Value:=ComboBox_Raf.Text ;
          ADOSP_Hareket_Ins.Parameters[5].Value:=Edit3.Text ; //Neyvin
          ADOSP_Hareket_Ins.Parameters[6].Value:=Edit_Aciklama.Text;   //Acýklam
          ADOSP_Hareket_Ins.Parameters[7].Value:=Form1.Kulanici;
          ADOSP_Hareket_Ins.Parameters[13].Value:=ComboBox_Fir.Text;
          ADOSP_Hareket_Ins.Parameters[14].Value:=ComboBox_Fir.Text;
          ADOSP_Hareket_Ins.Parameters[15].Value:=EFaturaNo.Text;
          ADOSP_Hareket_Ins.Parameters[16].Value:=ESiparisNo.Text;
          ADOSP_Hareket_Ins.Parameters[17].Value:=ETeklifNo.Text;

          if Form1.Alan = 'E' then ADOSP_Hareket_Ins.Parameters[8].Value:='E'
          else if Form1.Alan = 'O' then ADOSP_Hareket_Ins.Parameters[8].Value:='O'
          else if Form1.Alan = 'B' then ADOSP_Hareket_Ins.Parameters[8].Value:='B';

          ADOSP_Hareket_Ins.Parameters[9].Value:='PEYKAN';
          ADOSP_Hareket_Ins.Parameters[10].Value:=LMDEdit1.Text;
          ADOSP_Hareket_Ins.ExecProc;
          GenelHata:=ADOSP_Hareket_Ins.Parameters[11].Value;
          YetersizMiktar:=ADOSP_Hareket_Ins.Parameters[12].Value;

          if  GenelHata then
          begin
            ShowMessage('KAYIT OLMADI');
            exit;
          end;

        end
      except
        begin
          ShowMessage('Hata :   SQL Bank_Ins prosedürü çalistirilamadi.. Lütfen Kontrol Ediniz.');
          exit;
        end;
      end;
    end;

  end;

  Label_Hata.Font.Color:=clLime;
  Label_Hata.Caption:='KAYIT BAÞARILI.';
  Label_Hata.Blink:=blBlink;
  Label_Hata.Visible:=True;
  TimerHata.Enabled:=True;
  Timer1.Enabled:=True;
end;

procedure TForm_StokH.TimerHataTimer(Sender: TObject);
begin
  TimerHata.Enabled:=False;
  Label_Hata.Font.Color:=clRed;
  Label_Hata.Blink:=blNone;
  Label_Hata.Visible:=False;
end;

procedure TForm_StokH.Edit7Change(Sender: TObject);
var
 FilterString: string;
begin

  if Trim(Edit7.Text)='' then
  cxGrid1DBTableView1.DataController.Filter.Active := False
  else begin
  FilterString := Edit7.Text + '%';
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

procedure TForm_StokH.Edit2Change(Sender: TObject);
begin
  if Trim(Edit2.Text) = '' then begin Edit5.Text := '0'; exit; end;
  if Trim(Edit4.Text) = '' then begin Edit5.Text := '0'; exit; end;
  if Trim(Edit2.Text) = '0'then begin Edit5.Text := '0'; exit; end;
  if Trim(Edit4.Text) = '0'then begin Edit5.Text := '0'; exit; end;
  if StrToInt(Edit2.Text) < StrToInt(Edit4.Text) then
  begin
    Edit5.Text := '0';
    exit;
  end;
  KalanEtiketSayisi := StrToInt(Edit2.Text) mod StrToInt(Edit4.Text);
  if KalanEtiketSayisi <= 0 then
    Edit5.Text := '0'
  else
    Edit5.Text := '1';
end;

procedure TForm_StokH.Edit4Change(Sender: TObject);
begin
  if Trim(Edit2.Text) = '' then exit;
  if Trim(Edit4.Text) = '' then exit;
  if StrToInt(Edit2.Text) = 0 then exit;
  if StrToInt(Edit4.Text) = 0 then exit;
  if StrToInt(Edit2.Text) < StrToInt(Edit4.Text) then
  begin
    Edit5.Text := '0';
    exit;
  end;
  KalanEtiketSayisi := StrToInt(Edit2.Text) mod StrToInt(Edit4.Text);
  if KalanEtiketSayisi <= 0 then
    Edit5.Text := '0'
  else
    Edit5.Text := '1';
end;

procedure TForm_StokH.AdvGlowButton2Click(Sender: TObject);
begin
    if ComboBox_Raf.Text <> '' then
    begin
      FormRafBarkod:=TFormRafBarkod.Create(Application);
      FormRafBarkod.myLabel_Barkod.Caption:=myLabel_Barkod.Caption;
      FormRafBarkod.myLabel_Urun.Caption:=myLabel_Urun.Caption;
      FormRafBarkod.myLabel_Grup.Caption:=myLabel_Grup.Caption;
//      FormRafBarkod.Edit1.Text:=Edit4.Text;
      FormRafBarkod.myLabel_Raf.Caption := ComboBox_Raf.Text;
      FormRafBarkod.ShowModal;
      FormRafBarkod.Free;
    end else
    begin
      ShowMessage('Lütfen Raf Seçiniz');
    end;

end;

procedure TForm_StokH.CommPortBarkodReceiveData(Sender: TObject;
  DataPtr: Pointer; DataSize: Cardinal);
Var
  STemp: string;
  p: pchar;
  Yazdir,Oldu:Boolean;

begin

   Yazdir:=False;
   STemp:='';
  p := DataPtr;
  while DataSize > 0 do
  begin
    if (Ord(p^)<>32) AND (Ord(p^)<>13) AND (Ord(p^)<>10)  AND (Ord(p^)<>0)then
    begin
        STemp := STemp + p^;
    end else if Ord(p^)=13 then Yazdir:=True;

    dec( DataSize );
    inc( p );
  end;
    if Trim(STemp)= '' then exit;

  if Yazdir then
  begin

    Edit7.Text := STemp;
    Button_AktarClick(Self);
  end;

end;

procedure TForm_StokH.ComboBox_RafChange(Sender: TObject);
begin
  ADOQueryS_Islem.Close;
  ADOQueryS_Islem.SQL.Clear;
  ADOQueryS_Islem.SQL.Text:='select Miktar From Stok where UrunKod='+QuotedStr(myLabel_Barkod.Caption)+' and Raf='+QuotedStr(ComboBox_Raf.Text)+' order by Raf';
  ADOQueryS_Islem.Open;

  if ADOQueryS_Islem.RecordCount > 0 then Label_Raf_Mik.Caption:=ADOQueryS_Islem.FieldByName('Miktar').AsString + ' Adet'
  else Label_Raf_Mik.Caption:='0 Adet';

end;

procedure TForm_StokH.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
 begin
    if Length(Edit7.Text)=7 then
    begin
      Button_AktarClick(Self);
    end;
 end;
end;

procedure TForm_StokH.FormShow(Sender: TObject);
begin
 Timer2.Enabled:=True;
end;

procedure TForm_StokH.AdvGlowButton4Click(Sender: TObject);
begin

    if ComboBox_Raf.Text <> '' then
    begin
      FormEUrun:=TFormEUrun.Create(Application);
      FormEUrun.myLabel_Barkod.Caption:=myLabel_Barkod.Caption;
      FormEUrun.myLabel_Urun.Caption:=myLabel_Urun.Caption;
      FormEUrun.myLabel_Grup.Caption:=myLabel_Grup.Caption;
      FormEUrun.myLabel_Kategori.Caption:=myLabel_Kategori.Caption;
      FormEUrun.myLabel_Raf.Caption := ComboBox_Raf.Text;
      FormEUrun.Edit1.Text:=Edit4.Text;
      FormEUrun.ShowModal;
      FormEUrun.Free;
    end else
    begin
       ShowMessage('Lütfen Raf Seçiniz');
    end;


end;

procedure TForm_StokH.AdvGlowButton5Click(Sender: TObject);
begin

    if ComboBox_Raf.Text <> '' then
    begin
      FormRibon:=TFormRibon.Create(Application);
      FormRibon.myLabel_Barkod.Caption:=myLabel_Barkod.Caption;
      FormRibon.myLabel_Urun.Caption:=myLabel_Urun.Caption;
      FormRibon.myLabel_Grup.Caption:=myLabel_Grup.Caption;
      FormRibon.myLabel_Kategori.Caption:=myLabel_Kategori.Caption;
      FormRibon.Edit1.Text:=Edit4.Text;
      FormRibon.myLabel_Raf.Caption := ComboBox_Raf.Text;
      FormRibon.ShowModal;
      FormRibon.Free;
    end else
    begin
      ShowMessage('Lütfen Raf Seçiniz');
    end;


end;

procedure TForm_StokH.AdvGlowButton6Click(Sender: TObject);
begin
    FormKukaici:=TFormKukaici.Create(Application);
    FormKukaici.myLabel_Barkod.Caption:=myLabel_Barkod.Caption;
    FormKukaici.myLabel_Urun.Caption:=myLabel_Urun.Caption;
    FormKukaici.myLabel_Grup.Caption:=myLabel_Grup.Caption;
    FormKukaici.myLabel_Kategori.Caption:=myLabel_Kategori.Caption;
    FormKukaici.ShowModal;
    FormKukaici.Free;
end;

procedure TForm_StokH.AdvGlowButton7Click(Sender: TObject);
begin
    FormEKutu:=TFormEKutu.Create(Application);
    FormEKutu.myLabel_Barkod.Caption:=myLabel_Barkod.Caption;
    FormEKutu.myLabel_Urun.Caption:=myLabel_Urun.Caption;
    FormEKutu.myLabel_Grup.Caption:=myLabel_Grup.Caption;
    FormEKutu.myLabel_Kategori.Caption:=myLabel_Kategori.Caption;
    FormEKutu.ShowModal;
    FormEKutu.Free;
end;

end.
