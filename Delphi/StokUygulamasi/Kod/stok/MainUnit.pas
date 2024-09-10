unit MainUnit;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,DrLabel,
  Dialogs, Menus, AdvMenus, AdvToolBar, AdvToolBarStylers, StdCtrls,Registry,peykan_Unit,
  AdvOfficeTabSet, AdvOfficeTabSetStylers, AdvMenuStylers, ExtCtrls, DB,IniFiles,ADODB,
  DBClient, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, Shlobj,shellapi,UrlMon,
  WinInet,ExeInfo, ImgList, LMDControl, LMDBaseControl, pngimage,GDIPicture,
  LMDBaseGraphicControl, LMDGraphicControl, LMDBaseImage, LMDCustomNImage,
  LMDNImage, AdvGlowButton, AdvSmoothButton, AdvGlassButton,
  AdvPreviewMenu, AdvPreviewMenuStylers, AdvOfficeHint, AdvShapeButton,
  AdvOfficeSelectors, ScrollText, LMDCustomComponent, LMDGlobalHotKey;

type
  TFormMain = class(TForm)
    AdvDockPanel1: TAdvDockPanel;
    Image1: TImage;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    Timer1: TTimer;
    Timer_Stok1: TTimer;
    ImageList6: TImageList;
    Panel_Mu: TPanel;
    Panel_1: TPanel;
    Panel_St: TPanel;
    ImageList4: TImageList;
    ImageList3: TImageList;
    ImageList2: TImageList;
    ImageList1: TImageList;
    ScrollText1: TScrollText;
    AdvOfficeHint1: TAdvOfficeHint;
    Panel_Ta: TPanel;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeTabSetOfficeStyler1: TAdvOfficeTabSetOfficeStyler;
    AdvOfficeMDITabSet1: TAdvOfficeMDITabSet;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    Panel_StokH: TPanel;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    F1HotKey1: TLMDGlobalHotKey;
    F2HotKey: TLMDGlobalHotKey;
    Panel_Rapor: TPanel;
    AdvGlowButton11: TAdvGlowButton;
    AdvGlowButton12: TAdvGlowButton;
    AdvGlowButton13: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    AdvGlowButton15: TAdvGlowButton;
    AdvGlowButton16: TAdvGlowButton;
    Label_info1: TDRLabel;
    Label_info2: TDRLabel;
    Label_info3: TDRLabel;
    Panel_Arama: TPanel;
    DRLabel1: TDRLabel;
    AdvGlowButton17: TAdvGlowButton;
    AdvGlowButton18: TAdvGlowButton;
    AdvGlowButton19: TAdvGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer_Stok1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
    procedure AdvGlowButton7Click(Sender: TObject);
    procedure F1HotKey1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure F2HotKeyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvGlowButton13Click(Sender: TObject);
    procedure AdvGlowButton11Click(Sender: TObject);
    procedure AdvGlowButton14Click(Sender: TObject);
    procedure AdvGlowButton15Click(Sender: TObject);
    procedure AdvGlowButton19Click(Sender: TObject);
    procedure AdvGlowButton17Click(Sender: TObject);
  private
    { Private declarations }

    MDIDefProc:pointer;
    MDIInstance:TFarProc;
    procedure MDIWndProc(var prmMsg:TMessage);
    procedure CreateWnd;override;
    procedure ShowBitmap(prmDC:hDC);


//------------------
  public
EnInt,widthInt:Integer;

DolarAl,DolarSat,DolarEAl,DolarESat,EuroAl,EuroSat,EuroEAl,EuroESat:Real;


    { Public declarations }
  end;

var
  FormMain: TFormMain;
  glbImgWidth:integer;
  glbImgHeight:integer;
  MKDosya:SYSTEM.TextFile;
  IniFile:TIniFile;
  ADOQueryMain:TADOQuery;

implementation

uses UnitAna, Unit1, UnitGrupTanim, UnitKatTanim, UnitRafTanim,
  Unit_UrunTanim, UnitStokH, UnitStokRapor, UnitStokHareket,Unit_UrunArama,
  Unit_Etiketleme, Unit_SatisEtiketi;

{$R *.dfm}




procedure TFormMain.MDIWndProc(var prmMsg:TMessage);
begin

 with prmMsg do
  begin
   if Msg=WM_ERASEBKGND then
    begin
      ShowBitmap(wParam);
     Result:=1;
    end
   else
    Result:=CallWindowProc(MDIDefProc,ClientHandle,Msg,wParam,lParam);
  end;
end;



procedure TFormMain.CreateWnd;
begin
   inherited CreateWnd;
   MDIInstance:=MakeObjectInstance(MDIWndProc); { create wrapper }
   MDIDefProc:=pointer(SetWindowLong(ClientHandle,GWL_WNDPROC,
     longint(MDIInstance)) );
end;




procedure TFormMain.ShowBitmap(prmDC:hDC);
 var
  wrkSource:TRect;
  wrkTarget:TRect;
  wrkX:integer;
  wrkY:integer;
begin
 {tile bitmap }
 if FormStyle=fsNormal then
  begin
   wrkY:=0;
   while wrkY < ClientHeight do    { go from top to bottom.. }
    begin
     wrkX:=0;
     while wrkX < ClientWidth do   { ..and left to right. }
      begin
       Canvas.Draw(wrkX,wrkY,Image1.Picture.Bitmap);
       Inc(wrkX,glbImgWidth);
      end;
     Inc(wrkY,glbImgHeight);
    end;
  end
 else if FormStyle=fsMDIForm then
  begin
   Windows.GetClientRect(ClientHandle,wrkTarget);
   wrkY:=0;
   while wrkY < wrkTarget.Bottom do
    begin
     wrkX:=0;
     while wrkX < wrkTarget.Right do
      begin
       BitBlt(longint(prmDC),wrkX,wrkY,Image1.Width,Image1.Height,
                Image1.Canvas.Handle,0,0,SRCCOPY);
       Inc(wrkX,glbImgWidth);
      end;
     Inc(wrkY,glbImgHeight);
    end;
  end;
end;



procedure TFormMain.FormCreate(Sender: TObject);
var
//  SSS:String[3];
  wrkDC:hDC;
  Temp:String;
begin

    ZamanFormatAyar;
    EkraniKorucuKapat;

    glbImgHeight:=Image1.Picture.Height;
    glbImgWidth:=Image1.Picture.Width;

    wrkDC:=GetDC(ClientHandle);
   ShowBitmap(wrkDC);
   ReleaseDC(ClientHandle,wrkDC);

   EnInt:= 50+AdvOfficeMDITabSet1.Height+AdvOfficeStatusBar1.Height+Panel_StokH.Height+10;
   widthInt:=25;

  Caption:=Caption+'   [ Ver: '+AnaForm.ExeInfo1.FileVersion+' ]';
 AdvOfficeStatusBar1.Panels[12].Text :='<p align="right"><B><I><FONT COLOR="clwhite">'+Trim(AnaForm.ExeInfo1.ProductName)+'   Ver : '+AnaForm.ExeInfo1.FileVersion+'     </FONT></i></b></p>';
    AdvOfficeStatusBar1.Panels[12].Text :='<p align="right"><B><I><FONT COLOR="clwhite">PeyMar Ver : '+Temp+'   </FONT></i></b></p>';

   ResimAl1(AnaForm.Image_stokG,AdvGlowButton9);
   ResimAl1(AnaForm.Image_stokG,AdvGlowButton16);
   ResimAl1(AnaForm.Image_stokC,AdvGlowButton10);
   ResimAl1(AnaForm.image_Barcod_B,AdvGlowButton15);

   ResimAl1(AnaForm.Image_urun,AdvGlowButton3);
   ResimAl1(AnaForm.Image_grup,AdvGlowButton4);
   ResimAl1(AnaForm.Image_categry,AdvGlowButton6);
   ResimAl1(AnaForm.Image_raf,AdvGlowButton5);
   ResimAl1(AnaForm.image_4,AdvGlowButton2);
   ResimAl1(AnaForm.image_Close,AdvGlowButton1);

   ResimAl1(AnaForm.image_4,AdvGlowButton8);
   ResimAl1(AnaForm.image_Close,AdvGlowButton7);
   ResimAl1(AnaForm.image_4,AdvGlowButton12);
   ResimAl1(AnaForm.image_Close,AdvGlowButton11);
   ResimAl1(AnaForm.image_Suz,AdvGlowButton19);
   ResimAl1(AnaForm.image_Close,AdvGlowButton17);

   ResimHint(AnaForm.image_Close,AdvGlowButton7,'K',False);
   ResimHint(AnaForm.image_Close,AdvGlowButton1,'K',False);
   ResimHint(AnaForm.image_Close,AdvGlowButton11,'K',False);

  ADOQueryMain :=TADOQuery.Create(self);
   ADOQueryMain.Connection:=Form1.ADOConnection1;
    Timer1.Enabled:=True;
     Panel_St.Height:=150;

end;

procedure TFormMain.Timer1Timer(Sender: TObject);
var
//Simdi:TDate;
SS,Gun:String[20];
GReal,CReal:Real;
  StrUserName: PChar;
  Size: DWord;
  SDate:TDate;
  S1:String;
begin
  Timer1.Enabled:=False;


  Size:=250;
  GetMem(StrUserName, Size);
  GetUserName(StrUserName, Size);
  Form1.UserNamePc:=StrPas(StrUserName);
  FreeMem(StrUserName);

  IniFile:=TIniFile.Create(Form1.FileRegD+'\PeyMar.ini');
  Gun:=IniFile.ReadString('Kasa','Date','01.08.2017');
  IniFile.Free;

  if DateToStr(now)<>Gun then
  begin
 //   Simdi:=StrToDate(Gun);

    IniFile:=TIniFile.Create(Form1.FileRegD+'\PeyMar.ini');
    IniFile.WriteString('Kasa','Date',DateToStr(now));
    IniFile.Free;

    GReal:=0;
    CReal:=0;

  end;

  F1HotKey1.Active:=True;
  F2HotKey.Active:=True;
end;

procedure TFormMain.Timer_Stok1Timer(Sender: TObject);
var
  GTempInt,ETempInt,OTempInt,BTempInt:String[30];
begin
    DecimalSeparator:='.';
  Timer_Stok1.Enabled:=False;



   AdvOfficeStatusBar1.Panels[2].Text :='<p align="reft"><B><FONT COLOR="clNavy">Tanimli Ürün : </FONT><FONT COLOR="clRed">'+GTempInt+'   </FONT></b></p>';
   AdvOfficeStatusBar1.Panels[2].OfficeHint.Title :='Tanimli Ürün Dosyasi : '; //FloatToStr(GReal));
   AdvOfficeStatusBar1.Panels[2].OfficeHint.Notes.CommaText :='';
   AdvOfficeStatusBar1.Panels[2].OfficeHint.Notes.Text :='Genel Toplam : '+GTempInt+' Adet'; //FloatToStr(GReal));
   AdvOfficeStatusBar1.Panels[2].OfficeHint.Notes.Text :=AdvOfficeStatusBar1.Panels[2].OfficeHint.Notes.Text+'Elektronik Toplam    : '+ETempInt+' Adet';
   AdvOfficeStatusBar1.Panels[2].OfficeHint.Notes.Text :=AdvOfficeStatusBar1.Panels[2].OfficeHint.Notes.Text+'Otomasyon Toplam  : '+OTempInt+' Adet';
   AdvOfficeStatusBar1.Panels[2].OfficeHint.Notes.Text :=AdvOfficeStatusBar1.Panels[2].OfficeHint.Notes.Text+'Barkod Toplam         : '+BTempInt+' Adet';

end;

procedure TFormMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:=False;
  Form1.WindowState:=wsNormal;

if Form_RafTanim <> nil then
    Form_RafTanim.Close;
  if Form_GrupTanim <> nil then
    Form_GrupTanim.Close;
  if Form_KategoriT <> nil then
    Form_KategoriT.Close;
  if Form_StokH <> nil then
    Form_StokH.Close;
   if Form_Stok_R <> nil then
    Form_Stok_R.Close;
   if Form_Stok_H <> nil then
    Form_Stok_H.Close;
   if Form_Etiket <> nil then
    Form_Etiket.Close;
    
    AdvOfficeMDITabSet1.Visible:=False;
    Panel_St.Visible :=False;
    Panel_1.Visible:=True;
    Panel_Ta.Visible:=False;
    Panel_Mu.Visible :=False;
  AdvOfficeStatusBar1.Visible:=False;


  Form1.Show;

end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ADOQueryMain.Free;

end;

procedure TFormMain.AdvGlowButton4Click(Sender: TObject);
begin
  if Form_GrupTanim = nil then
  begin
    Form_GrupTanim:=TForm_GrupTanim.Create(Application);
    AdvOfficeMDITabSet1.AddTab(Form_GrupTanim);
    Form_GrupTanim.Show;
  end ELSE
  BEGIN
    Form_GrupTanim.Show;
    Form_GrupTanim.WindowState:=wsNormal;
  end;
end;

procedure TFormMain.AdvGlowButton6Click(Sender: TObject);
begin
  if Form_KategoriT = nil then
  begin
    Form_KategoriT:=TForm_KategoriT.Create(Application);
    AdvOfficeMDITabSet1.AddTab(Form_KategoriT);
    Form_KategoriT.Show;
  end ELSE
  BEGIN
    Form_KategoriT.Show;
    Form_KategoriT.WindowState:=wsNormal;
  end;
end;

procedure TFormMain.AdvGlowButton5Click(Sender: TObject);
begin
  if Form_RafTanim = nil then
  begin
    Form_RafTanim:=TForm_RafTanim.Create(Application);
    AdvOfficeMDITabSet1.AddTab(Form_RafTanim);
    Form_RafTanim.Show;
  end ELSE
  BEGIN
    Form_RafTanim.Show;
    Form_RafTanim.WindowState:=wsNormal;
  end;
end;

procedure TFormMain.AdvGlowButton1Click(Sender: TObject);
begin
  if Form_RafTanim <> nil then
    Form_RafTanim.Close;
  if Form_GrupTanim <> nil then
    Form_GrupTanim.Close;
  if Form_KategoriT <> nil then
    Form_KategoriT.Close;
  if Form_Urun_Tanim <> nil then
    Form_Urun_Tanim.Close;

 Panel_1.Visible:=True;
  Close;
end;

procedure TFormMain.AdvGlowButton3Click(Sender: TObject);
begin
  if Form_Urun_Tanim = nil then
  begin
    Form_Urun_Tanim:=TForm_Urun_Tanim.Create(Application);
    AdvOfficeMDITabSet1.AddTab(Form_Urun_Tanim);
    Form_Urun_Tanim.Show;
  end ELSE
  BEGIN
    Form_Urun_Tanim.Show;
    Form_Urun_Tanim.WindowState:=wsNormal;
  end;
end;

procedure TFormMain.AdvGlowButton9Click(Sender: TObject);
begin
  if Form_StokH = nil then
  begin
    Form_StokH:=TForm_StokH.Create(Application);
    AdvOfficeMDITabSet1.AddTab(Form_StokH);
    Form_StokH.RadioButtonGiris.Checked:=True;
    Form_StokH.Show;
  end ELSE
  BEGIN
    Form_StokH.Show;
    Form_StokH.WindowState:=wsNormal;
  end;
end;

procedure TFormMain.AdvGlowButton10Click(Sender: TObject);
begin
if Form_StokH = nil then
  begin
    Form_StokH:=TForm_StokH.Create(Application);
    AdvOfficeMDITabSet1.AddTab(Form_StokH);
    Form_StokH.RadioButtonCikis.Checked:=True;
    Form_StokH.Show;
  end ELSE
  BEGIN
    Form_StokH.Show;
    Form_StokH.WindowState:=wsNormal;
  end;
end;

procedure TFormMain.AdvGlowButton7Click(Sender: TObject);
begin
if Form_StokH <> nil then
    Form_StokH.Close;
 if Form_Etiket <> nil then
    Form_Etiket.Close;
 Panel_1.Visible:=True;
  Close;
end;

procedure TFormMain.F1HotKey1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Panel_StokH.Visible then AdvGlowButton9Click(Self);
end;

procedure TFormMain.F2HotKeyKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Panel_StokH.Visible then AdvGlowButton10Click(Self);
end;

procedure TFormMain.AdvGlowButton13Click(Sender: TObject);
begin
  if Form_Stok_R = nil then
  begin
    Form_Stok_R:=TForm_Stok_R.Create(Self);
    AdvOfficeMDITabSet1.AddTab(Form_Stok_R);
    Form_Stok_R.Show;
  end ELSE
  BEGIN
    Form_Stok_R.Show;
    Form_Stok_R.WindowState:=wsNormal;
  end;
end;

procedure TFormMain.AdvGlowButton11Click(Sender: TObject);
begin
  if Form_Stok_R <> nil then
      Form_Stok_R.Close;
   if Form_Stok_H <> nil then
      Form_Stok_H.Close;

   Panel_1.Visible:=True;
    Close;
end;

procedure TFormMain.AdvGlowButton14Click(Sender: TObject);
begin
  if Form_Stok_H = nil then
  begin
    Form_Stok_H:=TForm_Stok_H.Create(Self);
    AdvOfficeMDITabSet1.AddTab(Form_Stok_H);
    Form_Stok_H.Show;
  end ELSE
  BEGIN
    Form_Stok_H.Show;
    Form_Stok_H.WindowState:=wsNormal;
  end;
end;

procedure TFormMain.AdvGlowButton15Click(Sender: TObject);
begin

      FormSatisEtiketi:=TFormSatisEtiketi.Create(Application);
      FormSatisEtiketi.ShowModal;
      FormSatisEtiketi.Free;

end;

procedure TFormMain.AdvGlowButton19Click(Sender: TObject);
begin
  if FormUrunArama = nil then
  begin
    FormUrunArama:=TFormUrunArama.Create(Self);
    FormUrunArama.Show;
  end ELSE
  BEGIN
    FormUrunArama.Show;
    FormUrunArama.WindowState:=wsNormal;
  end;
end;

procedure TFormMain.AdvGlowButton17Click(Sender: TObject);
begin
    if FormUrunArama <> nil then
      FormUrunArama.Close;

    Panel_1.Visible:=True;
    Close;
end;

end.


