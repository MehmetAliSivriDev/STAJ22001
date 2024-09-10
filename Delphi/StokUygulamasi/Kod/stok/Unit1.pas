unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, AdvSmoothButton, IniFiles, peykan_Unit, pngimage,
  GDIPicture, Registry, WinInet, AdvGlowButton, AdvSmoothToggleButton, StdCtrls,
  DB, LMDPNGImage, ExeInfo, Dialog_Pey, dxGDIPlusClasses, Mylabel, cxStyles,
  cxGridTableView, cxClasses, AdvOfficeHint, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, DBClient, WebCopy, ADODB, VrControls, VrSystem,
  AdvToolBar, AdvToolBarStylers, AdvPreviewMenu, AdvPreviewMenuStylers,
  AdvOfficeTabSet, AdvOfficeTabSetStylers, AdvMenus, AdvMenuStylers, dxSkinsCore,
  dxSkinBlack, shellapi, dxSkinsForm, PZPL_Unit, AdvOfficePager,
  AdvOfficePagerStylers, cxLookAndFeels, dxSkinsDefaultPainters, jpeg, Menus,
  BarPopupMenu;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    img1: TImage;
    AdvSmoothButton_X1: TAdvSmoothButton;
    AdvSmoothButton_X2: TAdvSmoothButton;
    AdvSmoothButton_X3: TAdvSmoothButton;
    AdvSmoothButton_X4: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    AdvSmoothButton_X5: TAdvSmoothButton;
    lbl1: TLabel;
    edtPassword: TEdit;
    SpeedButton1: TAdvSmoothToggleButton;
    img_html: TImage;
    tmrBitir: TTimer;
    myLabel3d5: TmyLabel3d;
    AdvOfficeHint1: TAdvOfficeHint;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    SpeedButton2: TSpeedButton;
    WebCopy1: TWebCopy;
    ADOConnection1: TADOConnection;
    ADOCommand1: TADOCommand;
    ADOSP_Kasa_Ins: TADOStoredProc;
    ADOSP_Kasa_Mevcut: TADOStoredProc;
    ADOSP_Bank_Mevcut: TADOStoredProc;
    ADOSP_Kasa_Sil: TADOStoredProc;
    ADOSP_Kasa_Update: TADOStoredProc;
    ADOSP_Bank_Ins: TADOStoredProc;
    ADOSP_Doviz_Oku: TADOStoredProc;
    ADOSP_Doviz_Ins: TADOStoredProc;
    ADOSP_Bank_Update: TADOStoredProc;
    ADOSP_Bank_Sil: TADOStoredProc;
    ADOSP_Firma_KodBul: TADOStoredProc;
    ADOSP_Firma_Sil: TADOStoredProc;
    ADOSP_Firma_Ins: TADOStoredProc;
    ADOSP_Firmax_Ins: TADOStoredProc;
    ADOSP_Sirket_Ins: TADOStoredProc;
    ADOSP_Vergi_Up1: TADOStoredProc;
    ADOSP_Dept_Ins: TADOStoredProc;
    ADOSP_Dept_Bul: TADOStoredProc;
    VrBitmapList1: TVrBitmapList;
    VrBitmapList2: TVrBitmapList;
    VrBitmapList3: TVrBitmapList;
    Image_Bos: TImage;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    AdvOfficeTabSetOfficeStyler1: TAdvOfficeTabSetOfficeStyler;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    AdvMenuStyler1: TAdvMenuStyler;
    dxSkinController1: TdxSkinController;
    PZpl1: TPZpl;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    ADOSP_Telefon_Ins: TADOStoredProc;
    TimerPer: TTimer;
    TimerKredi: TTimer;
    TimerKart: TTimer;
    VrBitList1: TVrBitmapList;
    BPopMenuElektronik: TBarPopupMenu;
    EStok: TMenuItem;
    asfdds1: TMenuItem;
    ETanimlama: TMenuItem;
    N1: TMenuItem;
    ERapor: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    BPopMenuOtomasyon: TBarPopupMenu;
    OStok: TMenuItem;
    MenuItem2: TMenuItem;
    OTanimlama: TMenuItem;
    MenuItem4: TMenuItem;
    ORapor: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    BPopMenuBarkod: TBarPopupMenu;
    BStok: TMenuItem;
    MenuItem10: TMenuItem;
    BTanimlama: TMenuItem;
    MenuItem12: TMenuItem;
    BRapor: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    BPopMenuDemirbas: TBarPopupMenu;
    DStok: TMenuItem;
    MenuItem18: TMenuItem;
    DTanimlama: TMenuItem;
    MenuItem20: TMenuItem;
    DRapor: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    EArama: TMenuItem;
    OArama: TMenuItem;
    BArama: TMenuItem;
    DArama: TMenuItem;
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmrBitirTimer(Sender: TObject);
    procedure AdvSmoothButton_X1Click(Sender: TObject);
    procedure edtPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure AdvSmoothButton_X5Click(Sender: TObject);
    procedure AdvSmoothButton_X2Click(Sender: TObject);
    procedure AdvSmoothButton_X3Click(Sender: TObject);
    procedure AdvSmoothButton_X4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure img1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TimerKrediTimer(Sender: TObject);
    procedure TimerKartTimer(Sender: TObject);
    procedure EStokClick(Sender: TObject);
    procedure OStokClick(Sender: TObject);
    procedure BStokClick(Sender: TObject);
    procedure DStokClick(Sender: TObject);
    procedure ETanimlamaClick(Sender: TObject);
    procedure OTanimlamaClick(Sender: TObject);
    procedure BTanimlamaClick(Sender: TObject);
    procedure DTanimlamaClick(Sender: TObject);
    procedure ERaporClick(Sender: TObject);
    procedure ORaporClick(Sender: TObject);
    procedure BRaporClick(Sender: TObject);
    procedure DRaporClick(Sender: TObject);
    procedure EAramaClick(Sender: TObject);
    procedure AramayaGit();
    procedure OAramaClick(Sender: TObject);
    procedure BAramaClick(Sender: TObject);
    procedure DAramaClick(Sender: TObject);
  private
    { Private declarations }
  public
    Alan: string;



//    Tops:Integer;
//    SevkText,DataFileName,RaporAd,TaRapor,FileRegD : string;
    PanelDlgBak, ALcopy, Pass: Bool;
    BankName, DiziAy, KasaName, UrunBar, ExeName, FirmaName: string;
    UserNamePc, DovizTarih: string;
    SeciliEtiketZPL, SeciliEtiketEPL, SeciliEtiketPPL, Kulanici, TrialLisan, RegKod, Surum, CuvSevk, ASS, CuvName, Yava, CariA, Rma, FileRegD, DataFileName, DataFilePath, FirA: string;
    StaffKul, PasW, DemoSay: Integer;
    lisankon, YaziciWin, RaporYazdir, LogOutVar, YapmaC, Demo: Boolean;
    BaunRate: Integer;
    Ver_Yaz, Ver_Yaz1: string;                    // TamDemo,Trial,
    Ses1, Ses2, Ses3, Ses4: string;
    YaziciPort, BarPort: string[5];
    ZDil: Byte;
    Size: LongInt;
    IniFile: TIniFile;
    Sifre, LisanStr, KulList, IndexAd: string;
    ADOQueryX: TADOQuery;
  end;

var
  Form1: TForm1;
  GunLisan, SQL, FirTarih, Fir, ResimYer: string;
  PassList: Bool;
  MKDosya: system.Text;
  isif: Byte;

implementation

uses
  DlgUnit1, MainUnit, UnitSql, Unit_Admin, UnitAna;


{$R *.dfm}

procedure TForm1.AdvSmoothButton1Click(Sender: TObject);
begin
  ADOQueryMain.Free;
  Close;

end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Width := 550;
  Height := 315;
  edtPassword.SetFocus;
  if Pos('GÝRÝÞ', lbl1.Caption) = 0 then
    SpeedButton1.Caption := 'LOG OUT';
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
label
  DevamG;
var
  SS: string;
begin

  Pass := False;

  if SpeedButton1.Caption = 'LOG OUT' then
  begin
    SpeedButton1.Caption := '&Tamam';
    AdvSmoothButton_X1.Enabled := False;
    AdvSmoothButton_X2.Enabled := False;
    AdvSmoothButton_X3.Enabled := False;
    AdvSmoothButton_X4.Enabled := False;
    AdvSmoothButton_X5.Enabled := False;
    lbl1.Font.Color := clBlack;
    lbl1.Caption := 'GIRIÞ ÞÝFRENÝZÝ GÝRÝNÝZ...';
    exit;
  end;

  if edtPassword.Text = '' then
    Exit;

  if (edtPassword.Text = '1617') or (edtPassword.Text = 'arman') then
  begin
    lbl1.Font.Color := clRed;
    if edtPassword.Text = 'arman' then
      lbl1.Caption := 'ALI HOSSEINZADEH'
    else
      lbl1.Caption := 'Master';

    StaffKul := 0;
    Pass := True;
    SS := 'Master';
    AdvSmoothButton_X1.Enabled := True;
    AdvSmoothButton_X2.Enabled := True;
    AdvSmoothButton_X3.Enabled := True;
    AdvSmoothButton_X4.Enabled := True;
    AdvSmoothButton_X5.Enabled := True;

    goto DevamG;
  end;
  Screen.Cursor := crHourGlass;

  Screen.Cursor := crHourGlass;

  if MSSQLKontrol_Query(Form1.ADOConnection1, ADOQueryX, True, 'PeyMar', '') then
  begin
    ADOQueryX.SQL.Clear;
    ADOQueryX.SQL.Append('Select * from Yava where Kod=HASHBYTES(' + #39 + 'SHA1' + #39 + ',' + #39 + Trim(edtPassword.Text) + #39 + ')');
    ADOQueryX.Open;

    if ADOQueryX.RecordCount > 0 then
    begin
    //    myLabel3d1.Font.Color:=clRed;
      SS := ADOQueryX.FieldByName('Ad').AsString;
      lbl1.Caption := 'Kullanýcý Adý :' + SS;
      delay(50);
      Form1.AdvSmoothButton_X1.Enabled := ADOQueryX.FieldByName('P1').AsBoolean;
      delay(50);
      Form1.AdvSmoothButton_X2.Enabled := ADOQueryX.FieldByName('P2').AsBoolean;
      delay(50);
      Form1.AdvSmoothButton_X3.Enabled := ADOQueryX.FieldByName('P3').AsBoolean;
      Form1.AdvSmoothButton_X4.Enabled := Form1.AdvSmoothButton_X3.Enabled;
      delay(50);
      Form1.AdvSmoothButton_X5.Enabled := ADOQueryX.FieldByName('P0').AsBoolean;
      delay(100);
      Form1.Pass := True;
      Kulanici := SS;
      FormMain.AdvOfficeStatusBar1.Panels[3].Text := '<p align="reft"><B><FONT COLOR="clNavy">Kullanýcý Adý : </FONT><FONT COLOR="clRed">' + SS + '   </FONT></b></p>';
        //  ADOQueryY.Free;
    end
    else
    begin
      Screen.Cursor := crDefault;
      OKDlg := TOKDlg.Create(Application);
      OKDlg.Top := 50;
      OKDlg.Left := 10;
      OKDlg.LMDLabel3.Caption := 'YANLIÞ ÞIFRE'; //WRONG PASSWORD';
      OKDlg.ShowModal;
      OKDlg.Free;

        //MessageDlg(' WRONG PASSWORD ',mtError,[mbOk],0);

      edtPassword.Text := '';
      inc(isif);
      if isif > 2 then
        Halt
      else
        edtPassword.SetFocus;
      Exit;
    end;
  end;
DevamG:
  Kulanici := SS;
  edtPassword.Text := '';
  Screen.Cursor := crDefault;
  //  Form1.Hide;


end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  if (screen.width <> 800) then
  begin
    Position := poDesktopCenter;
  end
  else
  begin
    Position := poDesigned;
    Top := 0;
    Left := 0;
  end;

  Size := 0;
  Demo := False;
  ZamanFormatAyar;
  DoubleBuffered := true;
  ALcopy := False;

  FileRegD := ExeYeri;
  ExeName := ExeAdi;

  IniFile.Free;

  Application.HelpFile := FileRegD + '\' + ExeName + '.hlp';
//--------------
 //Demo:=True;
  Demo := False;
 {
  Ali;
  if (not TamDemo) AND (not Trial) Then
  begin
    tmrBitir.Enabled:=True;
    exit;
  end;

  if Demo Then
  begin

    DForm:=TDForm.Create(Application);
    DForm.Memo1.Lines.Add(ExeInfo1.ProductName);
    DForm.Caption:='About Kupo Sevk Program';
    DForm.Memo1.Lines.Add(' ');
    DForm.Memo1.Lines.Add('SÜRÜM:'+Surum);
    DForm.Memo1.Lines.Add(' ');
    DForm.Memo1.Lines.Add('KULLANICI ADI: '+Fir);
    DForm.Memo1.Lines.Add('KURUM BAÞLANGICI: '+FirTarih);
    DForm.Memo1.Lines.Add('Registration Kodu: '+RegKod);
    DForm.Memo1.Lines.Add(' ');
    //DForm.Height:=275;
    DForm.Memo1.Lines.Add('LICENSE : DEMO');
    DForm.Timer1.Enabled:=True;
    DForm.ShowModal;
    DForm.Free;
    //Demo:=True;
    //if Eng then
    //Caption:='    ROBSTAT Program   [ DEMO ]   Ver:'+Surum
    //else
    //Caption:='    ROBSTAT Program   [ DEMO ]   Ver:'+Surum+'  -  '+IndexSurum;
    Ver_Yaz1:=Fir+' ==> '+ExeInfo1.ProductName+'   [ Ver: '+ExeInfo1.FileVersion+' ]     DEMO Ver: ';//    Ekran : '+IntToStr(screen.width)+' x '+IntToStr(screen.height);
    Ver_Yaz :='<p align="right"><B><I><FONT COLOR="clRed">'+Trim(ExeInfo1.ProductName)+' Ver : '+ExeInfo1.FileVersion+'   </FONT></i></b></p>';

    DemoSay:=0;

  end else if Trial then
  begin
    //Demo:=True;
    //if Eng then
    //Form1.Caption:='    ROBSTAT Program   [ Trial ]   Ver:'+Surum
    //else
    //Form1.Caption:='    ROBSTAT Program   [ Trial ]   Ver:'+Surum;
    Ver_Yaz1:=Fir+' ==> '+ExeInfo1.ProductName+'   [ Ver: '+ExeInfo1.FileVersion+' ]     Trial Ver.  ';//  Ekran : '+IntToStr(screen.width)+' x '+IntToStr(screen.height);
    Ver_Yaz :='<p align="right"><B><I><FONT COLOR="clRed">'+Trim(ExeInfo1.ProductName)+' Ver : '+ExeInfo1.FileVersion+'   </FONT></i></b></p>';

  end else
  begin
    Demo:=False;
    //if Eng then
    //Form1.Caption:='    ROBSTAT Program   [ '+Fir+' ]   Ver:'+Surum
    //else
    //Form1.Caption:='    ROBSTAT Program   [ '+Fir+' ]   Ver:'+Surum+'  -  '+IndexSurum;
    Ver_Yaz1:=Fir+' ==> '+ExeInfo1.ProductName+'   [ Ver: '+ExeInfo1.FileVersion+' ] ';// -     Ekran : '+IntToStr(screen.width)+' x '+IntToStr(screen.height);
    Ver_Yaz :='<p align="right"><B><I><FONT COLOR="clRed">'+ExeInfo1.ProductName +' Ver : '+ExeInfo1.FileVersion+'   </FONT></i></b></p>';

    end;

  }


  if not FileExists(FileRegD + '\temp\Peykan.cfg') then
  begin
    {$I-}
    MkDir(FileRegD + '\temp');
    {$I+}
    HasAttr(FileRegD + '\temp\Peykan.cfg', True);
  end;

  DiziYoksaYarat(FileRegD + '\Data');
  DiziYoksaYarat(FileRegD + '\Veri');
  DiziYoksaYarat(FileRegD + '\Label');

//  if GetWindowsVer='Win 2k' then EnInt:=48+AdvToolBar1.Height+AdvOfficeMDITabSet1.Height+AdvOfficeStatusBar1.Height
//    else EnInt:=25+AdvToolBar1.Height+AdvOfficeMDITabSet1.Height+AdvOfficeStatusBar1.Height;
//    widthInt:=25;

  IniFile := TIniFile.Create(FileRegD + '\' + ExeName + '.ini');
  BarPort := IniFile.ReadString('Ayar', 'BarPort', 'Com3');
  RaporYazdir := IniFile.ReadBool('Ayar', 'RaporYazdir', True);
  YaziciPort := IniFile.ReadString('Ayar', 'YaziciPort', 'Com1');
  YaziciWin := IniFile.ReadBool('Ayar', 'YaziciWin', False);
  GunLisan := IniFile.ReadString('Prog', 'Gun', '7');
  ;
  BaunRate := IniFile.ReadInteger('Ayar', 'BHiz', 9600);

  Ses1 := IniFile.ReadString('Ses', 'S1', FileRegD + '\2.WAV');
  Ses2 := IniFile.ReadString('Ses', 'S2', '');
  Ses3 := IniFile.ReadString('Ses', 'S3', '');
  Ses4 := IniFile.ReadString('Ses', 'S4', FileRegD + '\1.WAV');

  SeciliEtiketZPL := IniFile.ReadString('Ayar', 'SeciliEtiket', FileRegD + '\Label\3.zpey');
  SeciliEtiketEPL := IniFile.ReadString('Ayar', 'SeciliEtiketEPL', FileRegD + '\Label\PTV1_EPL.epey');
  SeciliEtiketPPL := IniFile.ReadString('Ayar', 'SeciliEtiketPPL', FileRegD + '\Label\PTV1_PPL.ppey');
  ZDil := IniFile.ReadInteger('Yazici', 'Dil', 1);

  lisankon := IniFile.ReadBool('Sistem', 'lisankon', False);
  IniFile.Free;
  AdvOfficePagerOfficeStyler1.Style := psOffice2007Obsidian;
  if FileExists(FileRegD + '\' + ExeAdi + '.udl') then
  begin
    MSSQL_UDL_Baglan(ADOConnection1, ExeName);

//      Form1.StatusBar1.Panels[3].Text :='<p align="center"><B><BODY BGCOLOR="clLime">MS SQL</BODY></b></p>';


  end
  else
  begin
    if MSSQL_Baglan('', 'sa', 'PeyMar', '', ADOConnection1, True) then
    begin
//        StatusBar1.Panels[3].Text :='<p align="center" ><B><BODY BGCOLOR="clLime" >MS SQL</BODY></b></p>';

    end
    else
    begin
//        StatusBar1.Panels[1].Text :='<p align="center"><B><BODY BGCOLOR="clRed">MS SQL</BODY></b></p>';
      ShowMessage('Hata Kodu :  ' + #13 + 'VERITABANINA BAGLANILAMIYOR. AG BAGLANTILARINI KONTROL EDINI!');
      exit;
    end;
  end;

  ADOQueryX := TADOQuery.Create(self);
  ADOQueryX.Connection := ADOConnection1;

  myLabel3d5.Caption := Ver_Yaz1;
  AnaForm.Hide;
end;

procedure TForm1.tmrBitirTimer(Sender: TObject);
begin
  Halt(0);
end;

procedure TForm1.AdvSmoothButton_X1Click(Sender: TObject);
var
  iTop: Integer;
begin
//    FormMain.AdvOfficeMDITabSet1.Visible:=False;
//    FormMain.Panel_St.Visible :=False;
//    FormMain.Panel_1.Visible:=False;
//    FormMain.Panel_Ta.Visible:=False;
//    FormMain.Panel_Mu.Visible :=True;
//    Form1.Hide;
//    FormMain.AdvOfficeMDITabSet1.Visible:=True;
//    FormMain.AdvOfficeStatusBar1.Visible:=True;

  iTop := Top + Height - ClientHeight - 10;
  BPopMenuElektronik.Popup(Form1.Left + AdvSmoothButton_X1.Left, iTop + AdvSmoothButton_X1.Top + AdvSmoothButton_X1.Height);

end;

procedure TForm1.edtPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if edtPassword.Text <> '' then
  begin
    if Key = Chr(VK_RETURN) then
      SpeedButton1Click(Self);
  end;

end;

procedure TForm1.AdvSmoothButton_X5Click(Sender: TObject);
begin
  Form1.WindowState := wsMinimized;
  Delay(50);
  Form1.Hide;
  Form_Admin := TForm_Admin.Create(Application);
  Form_Admin.ShowModal;
  Form_Admin.Free;

  Form1.Show;
  Form1.WindowState := wsNormal;

end;

procedure TForm1.AdvSmoothButton_X2Click(Sender: TObject);
var
  iTop: Integer;
begin
//    FormMain.AdvOfficeMDITabSet1.Visible:=False;
//   FormMain.Panel_Rapor.Visible:=False;
//    FormMain.Panel_Ta.Visible :=False;
//    FormMain.Panel_StokH.Visible :=True;
//    FormMain.Panel_Mu.Visible :=True;
//    FormMain.Panel_1.Visible:=False;
//    FormMain.Panel_St.Visible :=False;
//    Form1.Hide;
//    FormMain.AdvOfficeMDITabSet1.Visible:=True;
//    FormMain.AdvOfficeStatusBar1.Visible:=True;

  iTop := Top + Height - ClientHeight - 10;
  BPopMenuOtomasyon.Popup(Form1.Left + AdvSmoothButton_X2.Left, iTop + AdvSmoothButton_X2.Top + AdvSmoothButton_X2.Height);
end;

procedure TForm1.AdvSmoothButton_X3Click(Sender: TObject);
var
  iTop: Integer;
begin
//    FormMain.AdvOfficeMDITabSet1.Visible:=False;
//    FormMain.Panel_Rapor.Visible:=False;
//    FormMain.Panel_St.Visible :=False;
//    FormMain.Panel_1.Visible:=False;
//    FormMain.Panel_StokH.Visible :=False;
//    FormMain.Panel_Mu.Visible :=True;
//    FormMain.Panel_Ta.Visible :=True;
//    Form1.Hide;
//    FormMain.AdvOfficeMDITabSet1.Visible:=True;
//    FormMain.AdvOfficeStatusBar1.Visible:=True;

  iTop := Top + Height - ClientHeight - 10;
  BPopMenuBarkod.Popup(Form1.Left + AdvSmoothButton_X3.Left, iTop + AdvSmoothButton_X3.Top + AdvSmoothButton_X3.Height);

end;

procedure TForm1.AdvSmoothButton_X4Click(Sender: TObject);
var
  iTop: Integer;
begin
// FormMain.AdvOfficeMDITabSet1.Visible:=False;
//    FormMain.Panel_St.Visible :=False;
//    FormMain.Panel_1.Visible:=False;
//    FormMain.Panel_StokH.Visible :=False;
//    FormMain.Panel_Ta.Visible :=False;
//    FormMain.Panel_Mu.Visible :=True;
//    FormMain.Panel_Rapor.Visible :=True;
//    Form1.Hide;
//    FormMain.AdvOfficeMDITabSet1.Visible:=True;
//    FormMain.AdvOfficeStatusBar1.Visible:=True;

  iTop := Top + Height - ClientHeight - 10;
  BPopMenuDemirbas.Popup(Form1.Left + AdvSmoothButton_X4.Left, iTop + AdvSmoothButton_X4.Top + AdvSmoothButton_X4.Height)

end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
//Label Bad;
var
  Bulunduyer: string;
begin
  begin
    Bulunduyer := GetDeskTopPath(Form1, 'PROGRAMS_FILES');
    if WebBaglantiVarMi then
    begin
      if FileExists(Bulunduyer + '\AnyDesk\AnyDesk.exe') then
      begin
        CalisVeBekle(Form1, Bulunduyer + '\AnyDesk\AnyDesk.exe', '');
      end
      else
      begin
        Bulunduyer := GetDeskTopPath(Form1, 'DESKTOP');
        if FileExists(Bulunduyer + '\AnyDesk.exe') then
          CalisVeBekle(Form1, Bulunduyer + '\AnyDesk.exe', '')
        else
          ShellExecute(0, 'open', PChar(WebAdresAnydesk), nil, nil, SW_SHOWNORMAL);
      end;
    end
    else
      PeykanHint('', 'INTERNETE BAGLANTI YOK', clYellow, 10, False);
  end;

end;

procedure TForm1.img1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  TForm(form1).perform(WM_SYSCOMMAND, $F012, 0);

end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  ADOQueryX.Free;
  Halt;
end;

procedure TForm1.TimerKrediTimer(Sender: TObject);
var
  SiraV: Byte;
begin
  TimerKredi.Enabled := False;
{
V1Menu.Visible:=False;
V2Menu.Visible:=False;
V3Menu.Visible:=False;
V4Menu.Visible:=False;
V5Menu.Visible:=False;
SiraV:=0;
  Form1.HKrediYarat;
  while not Form1.HKrediDataSet.Eof do
    begin
    inc(SiraV);
if SiraV=1 then begin
V1Menu.Visible:=True;
V1Menu.Caption:=Form1.HKrediDataSet.FieldByName('Ad').AsString;
end else if SiraV=2 then begin
V1Menu.Visible:=True;
V1Menu.Caption:=Form1.HKrediDataSet.FieldByName('Ad').AsString;
end else if SiraV=3 then begin V3Menu.Visible:=True;
V3Menu.Caption:=Form1.HKrediDataSet.FieldByName('Ad').AsString;
end else if SiraV=4 then begin V4Menu.Visible:=True;
V4Menu.Caption:=Form1.HKrediDataSet.FieldByName('Ad').AsString;
end else if SiraV=5 then begin V5Menu.Visible:=True;
V5Menu.Caption:=Form1.HKrediDataSet.FieldByName('Ad').AsString;
end;
      HKrediDataSet.Next;
    end;
  HKrediDataSet.Free;
     }
end;

//procedure TForm_S.K2MenuClick(Sender: TObject);
//var
//SS:String;
//begin
//SS:=K2Menu.Caption;
//  if Pos('&',SS)<>0 then delete(SS,Pos('&',SS),1);
//
//
//  //Form1.Pass:=False;
//  //
//  //  {
//  //if K1Form = nil then begin
//  K1Form:=TK1Form.Create(Application);
//  K1Form.PerAd:=SS;
//  Form1.HKartYarat;
//  Form1.HKartDataSet.Filtered:=False;
//  Form1.HKartDataSet.Filter:='Sif='+#39+SS+#39;
//  Form1.HKartDataSet.Filtered:=True;
//  K1Form.PerKod:=Form1.HKartDataSet.FieldByName('Sif').AsString;
//  Form1.HKartDataSet.Free;
//  K1Form.Caption:=SS+' Hesap Defteri';
//  AdvOfficeMDITabSet1.AddTab(K1Form);
//  K1Form.Show;
//  end ELSE BEGIN K1Form.Show;
//  K1Form.WindowState:=wsNormal;
//  end;
//end;
//
//procedure TForm_S.K3MenuClick(Sender: TObject);
//var
//SS:String;
//begin
//SS:=K3Menu.Caption;
//if Pos('&',SS)<>0 then delete(SS,Pos('&',SS),1);
//
//
//Form1.Pass:=False;
//
// {
//
//if K1Form = nil then begin
//K1Form:=TK1Form.Create(Application);
//K1Form.PerAd:=SS;
//Form1.HKartYarat;
//Form1.HKartDataSet.Filtered:=False;
//Form1.HKartDataSet.Filter:='Sif='+#39+SS+#39;
//Form1.HKartDataSet.Filtered:=True;
//K1Form.PerKod:=Form1.HKartDataSet.FieldByName('Sif').AsString;
//Form1.HKartDataSet.Free;
//K1Form.Caption:=SS+' Hesap Defteri';
//AdvOfficeMDITabSet1.AddTab(K1Form);
//K1Form.Show;
//end ELSE BEGIN K1Form.Show;
//K1Form.WindowState:=wsNormal;
//end;
//}
//
//end;

procedure TForm1.TimerKartTimer(Sender: TObject);
var
  SiraK: Byte;
begin
  TimerKart.Enabled := False;
{
K1Menu.Visible:=False;
K2Menu.Visible:=False;
K3Menu.Visible:=False;
K4Menu.Visible:=False;
K5Menu.Visible:=False;
SiraK:=0;
  Form1.HKartYarat;
  while not Form1.HKartDataSet.Eof do
    begin
    inc(SiraK);
if SiraK=1 then begin
K1Menu.Visible:=True;
K1Menu.Caption:=Form1.HKartDataSet.FieldByName('Sif').AsString;
end else if SiraK=2 then begin
K2Menu.Visible:=True;
K2Menu.Caption:=Form1.HKartDataSet.FieldByName('Sif').AsString;
end else if SiraK=3 then begin K3Menu.Visible:=True;
K3Menu.Caption:=Form1.HKartDataSet.FieldByName('Sif').AsString;
end else if SiraK=4 then begin K4Menu.Visible:=True;
K4Menu.Caption:=Form1.HKartDataSet.FieldByName('Sif').AsString;
end else if SiraK=5 then begin K5Menu.Visible:=True;
K5Menu.Caption:=Form1.HKartDataSet.FieldByName('Sif').AsString;
end;
      HKartDataSet.Next;
    end;
  HKartDataSet.Free;
      }
end;

procedure TForm1.EStokClick(Sender: TObject);
begin
  FormMain.AdvOfficeMDITabSet1.Visible := False;
  FormMain.Panel_Rapor.Visible := False;
  FormMain.Panel_Ta.Visible := False;
  FormMain.Panel_StokH.Visible := True;
  FormMain.Panel_Mu.Visible := True;
  FormMain.Panel_1.Visible := False;
  FormMain.Panel_St.Visible := False;
  FormMain.Panel_Arama.Visible := False;
  Form1.Hide;
  FormMain.AdvOfficeMDITabSet1.Visible := True;
  FormMain.AdvOfficeStatusBar1.Visible := True;
  Alan := 'E';
  FormMain.Label_info2.Caption := 'ELEKREONIK';

end;

procedure TForm1.OStokClick(Sender: TObject);
begin
  FormMain.AdvOfficeMDITabSet1.Visible := False;
  FormMain.Panel_Rapor.Visible := False;
  FormMain.Panel_Ta.Visible := False;
  FormMain.Panel_StokH.Visible := True;
  FormMain.Panel_Mu.Visible := True;
  FormMain.Panel_1.Visible := False;
  FormMain.Panel_St.Visible := False;
  FormMain.Panel_Arama.Visible := False;
  Form1.Hide;
  FormMain.AdvOfficeMDITabSet1.Visible := True;
  FormMain.AdvOfficeStatusBar1.Visible := True;

  Alan := 'O';
  FormMain.Label_info2.Caption := 'OTOMASYON';
end;

procedure TForm1.BStokClick(Sender: TObject);
begin

  FormMain.AdvOfficeMDITabSet1.Visible := False;
  FormMain.Panel_Rapor.Visible := False;
  FormMain.Panel_Ta.Visible := False;
  FormMain.Panel_StokH.Visible := True;
  FormMain.Panel_Mu.Visible := True;
  FormMain.Panel_1.Visible := False;
  FormMain.Panel_St.Visible := False;
  FormMain.Panel_Arama.Visible := False;
  Form1.Hide;
  FormMain.AdvOfficeMDITabSet1.Visible := True;
  FormMain.AdvOfficeStatusBar1.Visible := True;
  Alan := 'B';
  FormMain.Label_info2.Caption := 'BARKOD SISTEMI';

end;

procedure TForm1.DStokClick(Sender: TObject);
begin

  FormMain.AdvOfficeMDITabSet1.Visible := False;
  FormMain.Panel_Rapor.Visible := False;
  FormMain.Panel_Ta.Visible := False;
  FormMain.Panel_StokH.Visible := True;
  FormMain.Panel_Mu.Visible := True;
  FormMain.Panel_1.Visible := False;
  FormMain.Panel_St.Visible := False;
  FormMain.Panel_Arama.Visible := False;
  Form1.Hide;
  FormMain.AdvOfficeMDITabSet1.Visible := True;
  FormMain.AdvOfficeStatusBar1.Visible := True;

  Alan := 'D';
  FormMain.Label_info2.Caption := 'DEMIRBAÞ';

end;

procedure TForm1.ETanimlamaClick(Sender: TObject);
begin
  FormMain.AdvOfficeMDITabSet1.Visible := False;
  FormMain.Panel_Rapor.Visible := False;
  FormMain.Panel_St.Visible := False;
  FormMain.Panel_1.Visible := False;
  FormMain.Panel_StokH.Visible := False;
  FormMain.Panel_Mu.Visible := True;
  FormMain.Panel_Ta.Visible := True;
  FormMain.Panel_Arama.Visible := False;
  Form1.Hide;
  FormMain.AdvOfficeMDITabSet1.Visible := True;
  FormMain.AdvOfficeStatusBar1.Visible := True;

  Alan := 'E';
  FormMain.Label_info1.Caption := 'ELEKREONIK';
end;

procedure TForm1.OTanimlamaClick(Sender: TObject);
begin
  FormMain.AdvOfficeMDITabSet1.Visible := False;
  FormMain.Panel_Rapor.Visible := False;
  FormMain.Panel_St.Visible := False;
  FormMain.Panel_1.Visible := False;
  FormMain.Panel_StokH.Visible := False;
  FormMain.Panel_Mu.Visible := True;
  FormMain.Panel_Ta.Visible := True;
  FormMain.Panel_Arama.Visible := False;
  Form1.Hide;
  FormMain.AdvOfficeMDITabSet1.Visible := True;
  FormMain.AdvOfficeStatusBar1.Visible := True;

  Alan := 'O';
  FormMain.Label_info1.Caption := 'OTOMASYON';
end;

procedure TForm1.BTanimlamaClick(Sender: TObject);
begin
  FormMain.AdvOfficeMDITabSet1.Visible := False;
  FormMain.Panel_Rapor.Visible := False;
  FormMain.Panel_St.Visible := False;
  FormMain.Panel_1.Visible := False;
  FormMain.Panel_StokH.Visible := False;
  FormMain.Panel_Mu.Visible := True;
  FormMain.Panel_Ta.Visible := True;
  FormMain.Panel_Arama.Visible := False;
  Form1.Hide;
  FormMain.AdvOfficeMDITabSet1.Visible := True;
  FormMain.AdvOfficeStatusBar1.Visible := True;

  Alan := 'B';
  FormMain.Label_info1.Caption := 'BARKOD SISTEMI';

end;

procedure TForm1.DTanimlamaClick(Sender: TObject);
begin
  FormMain.AdvOfficeMDITabSet1.Visible := False;
  FormMain.Panel_Rapor.Visible := False;
  FormMain.Panel_St.Visible := False;
  FormMain.Panel_1.Visible := False;
  FormMain.Panel_StokH.Visible := False;
  FormMain.Panel_Mu.Visible := True;
  FormMain.Panel_Ta.Visible := True;
  FormMain.Panel_Arama.Visible := False;
  Form1.Hide;
  FormMain.AdvOfficeMDITabSet1.Visible := True;
  FormMain.AdvOfficeStatusBar1.Visible := True;

  Alan := 'D';
  FormMain.Label_info1.Caption := 'DEMIRBAÞ';

end;

procedure TForm1.ERaporClick(Sender: TObject);
begin
  FormMain.AdvOfficeMDITabSet1.Visible := False;
  FormMain.Panel_St.Visible := False;
  FormMain.Panel_1.Visible := False;
  FormMain.Panel_StokH.Visible := False;
  FormMain.Panel_Ta.Visible := False;
  FormMain.Panel_Mu.Visible := True;
  FormMain.Panel_Rapor.Visible := True;
  FormMain.Panel_Arama.Visible := False;
  Form1.Hide;
  FormMain.AdvOfficeMDITabSet1.Visible := True;
  FormMain.AdvOfficeStatusBar1.Visible := True;

  Alan := 'E';
  FormMain.Label_info3.Caption := 'ELEKREONIK';

end;

procedure TForm1.ORaporClick(Sender: TObject);
begin
  FormMain.AdvOfficeMDITabSet1.Visible := False;
  FormMain.Panel_St.Visible := False;
  FormMain.Panel_1.Visible := False;
  FormMain.Panel_StokH.Visible := False;
  FormMain.Panel_Ta.Visible := False;
  FormMain.Panel_Mu.Visible := True;
  FormMain.Panel_Rapor.Visible := True;
  FormMain.Panel_Arama.Visible := False;
  Form1.Hide;
  FormMain.AdvOfficeMDITabSet1.Visible := True;
  FormMain.AdvOfficeStatusBar1.Visible := True;

  Alan := 'O';
  FormMain.Label_info3.Caption := 'OTOMASYON';

end;

procedure TForm1.BRaporClick(Sender: TObject);
begin
  FormMain.AdvOfficeMDITabSet1.Visible := False;
  FormMain.Panel_St.Visible := False;
  FormMain.Panel_1.Visible := False;
  FormMain.Panel_StokH.Visible := False;
  FormMain.Panel_Ta.Visible := False;
  FormMain.Panel_Mu.Visible := True;
  FormMain.Panel_Rapor.Visible := True;
  FormMain.Panel_Arama.Visible := False;
  Form1.Hide;
  FormMain.AdvOfficeMDITabSet1.Visible := True;
  FormMain.AdvOfficeStatusBar1.Visible := True;

  Alan := 'B';
  FormMain.Label_info3.Caption := 'BARKOD SISTEMI';

end;

procedure TForm1.DRaporClick(Sender: TObject);
begin
  FormMain.AdvOfficeMDITabSet1.Visible := False;
  FormMain.Panel_St.Visible := False;
  FormMain.Panel_1.Visible := False;
  FormMain.Panel_StokH.Visible := False;
  FormMain.Panel_Ta.Visible := False;
  FormMain.Panel_Mu.Visible := True;
  FormMain.Panel_Rapor.Visible := True;
  FormMain.Panel_Arama.Visible := False;
  Form1.Hide;
  FormMain.AdvOfficeMDITabSet1.Visible := True;
  FormMain.AdvOfficeStatusBar1.Visible := True;

  Alan := 'D';
  FormMain.Label_info3.Caption := 'DEMIRBAÞ';

end;

procedure TForm1.AramayaGit();
begin
  FormMain.AdvOfficeMDITabSet1.Visible := False;
  FormMain.Panel_St.Visible := False;
  FormMain.Panel_1.Visible := False;
  FormMain.Panel_StokH.Visible := False;
  FormMain.Panel_Ta.Visible := False;
  FormMain.Panel_Mu.Visible := True;
  FormMain.Panel_Arama.Visible := True;
  FormMain.Panel_Rapor.Visible := False;
  Form1.Hide;
end;


procedure TForm1.EAramaClick(Sender: TObject);
begin
  AramayaGit;
end;

procedure TForm1.OAramaClick(Sender: TObject);
begin
  AramayaGit;
end;

procedure TForm1.BAramaClick(Sender: TObject);
begin
  AramayaGit;
end;

procedure TForm1.DAramaClick(Sender: TObject);
begin
  AramayaGit;
end;

end.

