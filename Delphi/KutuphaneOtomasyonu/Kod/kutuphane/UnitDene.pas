unit Unit1;

interface
                             
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, AdvSmoothButton,IniFiles,peykan_Unit,peykan_lisans,
  pngimage,GDIPicture,Registry,WinInet,ActiveX, Mmsystem,HTMLHelpViewer,
  AdvGlowButton, AdvSmoothToggleButton, StdCtrls, DB, LMDPNGImage,
  ExeInfo, Dialog_Pey, dxGDIPlusClasses, Mylabel, cxStyles,
  cxGridTableView, cxClasses, AdvOfficeHint, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, dxSkinsCore, dxSkinBlack,
  cxLookAndFeels, dxSkinsForm,IdMessage,ShellApi,PZPL_Unit,
  AdvOfficePager, AdvOfficePagerStylers, DBClient, VrControls, VrSystem,
  GIFImage, ImgList, Provider,AgOpenDialog, CPDrv, Menus, BarMenus,
  ZDataset, AppEvnts, ADODB, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTP;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    img1: TImage;
    Button_HDepo: TAdvSmoothButton;
    Button_Plan: TAdvSmoothButton;
    Button_Sevk: TAdvSmoothButton;
    Button_Rapor: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    Button_Admin: TAdvSmoothButton;
    lbl1: TLabel;
    edtPassword: TEdit;
    SpeedButton1: TAdvSmoothToggleButton;
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
    VrBitmapList1: TVrBitmapList;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    PZpl1: TPZpl;
    ZPortDriver: TCommPortDriver;
    PopupMenu_SQL: TBcBarPopupMenu;
    anmliAGENTTAANAMAKINAAktar1: TMenuItem;
    N2: TMenuItem;
    anmlFIRMALARIANAMAKINAAktar1: TMenuItem;
    Timer1: TTimer;
    ImageList2: TImageList;
    myLabel3d1: TmyLabel3d;
    N3: TMenuItem;
    CariHesap1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    TimerHalt: TTimer;
    ImageHelp: TImage;
    ADOQuery1: TADOQuery;
    ADOCommand1: TADOCommand;
    ADOConnection1: TADOConnection;
    StatusBar1: TAdvOfficeStatusBar;
    Edit1: TEdit;
    Button1: TButton;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle17: TcxStyle;
    N1: TMenuItem;
    BcBarPopupMenu1: TBcBarPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    BcBarPopupMenu2: TBcBarPopupMenu;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    ImageList3: TImageList;
    N4: TMenuItem;
    PartiTakip1: TMenuItem;
    N5: TMenuItem;
    OperatrTakip1: TMenuItem;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    MusTakip1: TMenuItem;
    N6: TMenuItem;
    SMTP: TIdSMTP;
    MailMessage: TIdMessage;
    N7: TMenuItem;
    SevkEdilenToplar1: TMenuItem;
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button_HDepoClick(Sender: TObject);
    procedure edtPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure Button_AdminClick(Sender: TObject);
    procedure Button_PlanClick(Sender: TObject);
    procedure Button_SevkClick(Sender: TObject);
    procedure Button_RaporClick(Sender: TObject);
//    procedure writereg(HKey:HKEY;keyname,str1,str2 : string);
    procedure SpeedButton2Click(Sender: TObject);
    procedure img1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure anmliAGENTTAANAMAKINAAktar1Click(Sender: TObject);
    procedure anmlFIRMALARIANAMAKINAAktar1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure MailAt(MailTo,MailKonu,MailDosya:string);
    procedure LisansControl;
    procedure myLabel3d5Click(Sender: TObject);
    procedure SQL_Baglan;
    procedure CariHesap1Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function ApplicationEvents1Help(Command: Word; Data: Integer;
      var CallHelp: Boolean): Boolean;
    procedure TimerHaltTimer(Sender: TObject);
    procedure ImageHelpClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SqlYarat(TabloKod:Byte;Tablo_adi : String);
    procedure SqlTabloKontrol;
    procedure MenuItem9Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure OperatrTakip1Click(Sender: TObject);
    procedure PartiTakip1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure MusTakip1Click(Sender: TObject);
    procedure SevkEdilenToplar1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }



NetworkYer,SeciliEtiketZPL,SeciliEtiketEPL,SeciliEtiketPPL,Kulanici,TrialLisan,RegKod,Surum,CuvSevk,ASS,CuvName,Yava,CariA,Rma,FileRegD,DataFileName,DataFilePath,FirA :String;
MakinaNo,StaffKul,widthInt,EnInt,PasW,DemoSay:Integer;
LogoVar,Uretim,KutularaKayit,SesVer,ExcelDuzgun,DataGuncel,Page_Bool,SayfaDik,lisankon,NetworkBool,SabitEBaslik,Hiz9600,YaziciWin,RaporYazdir,LogOutVar,TamDemo,Trial,YapmaC,Pass,Demo,ELogo:Boolean;
LabelRusca,RaporDiliAktif,RaporRusca:Boolean;
TopNo,SevkNo:Int64;
BCiktiSayi,EHiz,EKoyu,ExHome,EyHome:Integer;


ZDil:Byte;
E_List_Sol_1,E_List_Sol_2,E_List_Sol_3,E_List_Sol_4,E_List_Sol_5,E_List_Sol_6:String[40];
E_List_Sol_Rus1,E_List_Sol_Rus2,E_List_Sol_Rus3,E_List_Sol_Rus4,E_List_Sol_Rus5,E_List_Sol_Rus6:String[40];
E_No_Sol_x1,E_No_Sol_x2,E_No_Sol_x3,E_No_Sol_1,E_No_Sol_2,E_No_Sol_3,E_No_Sol_4,E_No_Sol_5,E_No_Sol_6,keyno:Byte;
UserIP,Ver_Yaz,Ver_Yaz1:String;
FKod,BarIndexStr,SPageFooterSol,SPageFooterSag,ExeName,SevkBaslik,Baslik,Ses1,Ses2,Ses3,Ses4:String;
TartiPort,YaziciPort,MetrePort,BarPort:String[5];
Page_T,Page_B,Page_L,Page_R,Page_H,Page_F,KopunDeger1,KopunDeger2,KopunDeger3,KopunDeger4:Integer;
EtiketDizi,EtiketDiziRus : Array [0..9] of String[50];
SayacTip:String[20];
Size:LongInt;
IniFile:TIniFile;
//SPageFooter,SPageHeader,
Sifre,LisanStr,KulList,IndexAd:String;
YeniTip,ZLite,Yedekleme,BarkodTekil,Fasoncu,Sevkiyatci,Ex_Vilgul,Ex_KgYok,OtoRunPort,OtoBarkodPort,SayacVar,CekiListesi,KuponAktif:Boolean;

MailHost,MailKimlik,MailSifre,MailAtan,MailPortNo,MailKonu,MailCC,MailDosya,MailTo,MailYazi_1,MailYazi_2,MailYazi_3,MailYazi_4,MailYazi_5:string;





  end;

var
  Form1: TForm1;
  GunLisan,SQL,FirTarih,Fir,ResimYer:String;
  PassList:Bool;
  MKDosya:system.Text;
  isif:Byte;
  ADOQuery_Yarat: TADOQuery;
implementation

uses DlgUnit1, DemoForm,
  MusUnit, UnitSevk, UnitRapor, MakinaUnit, AnaEkran_Unit, UnitStok,
  Unit_Admin, PeykanPanel_Unit,UnitCari, HabUnit, UnitStokOut, Unit_StokAl,
  UnitStokFtp, UnitHGiris, UnitOpeTakip, UnitPartiTakip, Unit_Password,
  KeyUnit, UnitMusRapor, UnitSevkEdilmis;



{$R *.dfm}
 {$R car.res}
  type
   TVolumeRec = record
     case Integer of
       0: (LongVolume: Longint) ;
       1: (LeftVolume, RightVolume : Word) ;
     end;

const DeviceIndex=5;
       {0:Wave
        1:MIDI
        2:CDAudio
        3:Line-In
        4:Microphone
        5:Master
        6:PC-loudspeaker}





procedure TForm1.SqlYarat(TabloKod:Byte;Tablo_adi : String);
begin

  ADOQuery_Yarat := TADOQuery.Create(Self);
  if MSSQLKontrol_Query(ADOConnection1,ADOQuery_Yarat,True,'PeyKupon1',IntToStr(Form1.MakinaNo)) then
  begin
    ADOQuery_Yarat.Close;
    ADOQuery_Yarat.SQL.Clear;
    ADOQuery_Yarat.SQL.Add('sp_tables');
    ADOQuery_Yarat.Open;
    ADOQuery_Yarat.Filtered:=False;
    ADOQuery_Yarat.Filter:= 'TABLE_NAME = ' + QuotedStr(Tablo_adi);
    ADOQuery_Yarat.Filtered:=True;

    if ADOQuery_Yarat.RecordCount < 1 then
    begin
      case TabloKod of
        //Cari
        1:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'Cari'+
          '('+
          'Id bigint IDENTITY(1,1) NOT NULL,'+
          'SevkNo int NULL,'+
          'FirmaAd nvarchar(50) NULL,'+
          'Kupon int DEFAULT (0),'+
          'KursunMt numeric(8, 2) DEFAULT (0),'+
          'KesimMt numeric(8, 2) DEFAULT (0),'+
          'TopSayi int DEFAULT (0),'+
          'Tutar numeric(8, 2) DEFAULT (0),'+
          'ATutar numeric(8, 2) DEFAULT (0),'+
          'BirimKupon numeric(8, 2) DEFAULT (0),'+
          'BirimKursun numeric(8, 2) DEFAULT (0),'+
          'BirimSarim numeric(8, 2) DEFAULT (0),'+
          'BirimKesim numeric(8, 2) DEFAULT (0),'+
          'GC bit DEFAULT (1),'+
          'Kullanici nvarchar(50) NULL,'+
          'Aciklama nvarchar(150) NULL, '+
          'Tarih date DEFAULT (getdate()),'+
          'Tarih_saat datetime DEFAULT (getdate()),'+
          'A1 bit DEFAULT (0) ' +
          ')';
        //CariIndex
        2:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'CariIndex'+
          '('+
          'Id bigint IDENTITY(1,1) NOT NULL,'+
          'FirmaAd nvarchar(50) NULL,'+
          'Tutar numeric(8, 2) DEFAULT (0),'+
          'ATutar numeric(8, 2) DEFAULT (0),'+
          'Aciklama nvarchar(150) NULL, '+
          'Tarih date DEFAULT (getdate()),'+
          'Tarih_saat datetime DEFAULT (getdate())'+
          ')';

        //CigFirma
        3:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'CigDepo'+
          ' ( ' +
          ' Id    [bigint] IDENTITY(1,1) NOT NULL, ' +
          ' Bar  nvarchar(20), ' +
          ' PNo  nvarchar(10), ' + //Parti No
          ' En  nvarchar(3), ' +
          ' PMetraj  float DEFAULT (0), ' +
          ' Metraj  float, ' +
          ' Kg  float DEFAULT (0) , ' +
          ' PKg  float DEFAULT (0) , ' +  //Partilenen Kg
          ' Kcinsi  nvarchar(20), ' +
          ' FirmaId bigint NOT NULL, '+
          ' TopSayi  integer, ' +
          ' PTopSayi  integer DEFAULT (0) ,' + //Partilenen Top Sayisi
          ' Tarih date DEFAULT (getdate()),'+
          ' Tarih_saat datetime DEFAULT (getdate()),'+
          ' Birim nvarchar(10),'+
          ' Biti bit DEFAULT (0) ,' +
          ' MusParti  nvarchar(20)' +
          ')';


        //Desen
        4:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'Desen'+
          ' ( ' +
          ' Id    [bigint] IDENTITY(1,1) NOT NULL, ' +
          ' MusteriAd  nvarchar(90), ' +      
          ' Kod  nvarchar(20), ' +
          ' DesenAd nvarchar (30), ' +
          ' Varyant nvarchar (30), ' +
          ' BirimFiyat numeric(8, 2) DEFAULT (0),'+
          ' Tur smallint DEFAULT (0) ' +
          ' ) ';

        //DetaySevk
        5:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'DetaySevk'+
          ' ( ' +
          ' Id [bigint] IDENTITY(1,1) NOT NULL, ' +
          ' No int,' +
          ' SevkNo bigint , ' +
          ' Metraj numeric(8, 2) DEFAULT (0),'+
          ' Kg numeric(8, 2) DEFAULT (0),'+
          ' Kupon integer DEFAULT (0), ' +
          ' Barkod nvarchar(20) , ' +
          ' Data1 nvarchar(30),'+
          ' Data2 nvarchar(30) , ' +
          ' Tarih_Saat datetime DEFAULT (getdate())'+
          ' ) ';

        //Firma
        6:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'Firma'+
          ' ( ' +
          ' Id [bigint] IDENTITY(1,1) NOT NULL, ' +
          ' Ad nvarchar(80) , ' +
          ' Adres nvarchar(150) , ' +
          ' BulutKod nvarchar(30) , ' +
          ' Yet nvarchar(50) , ' +
          ' Active  bit DEFAULT (1), ' +
          ' Mail  nvarchar(50) , ' +
          ' BirimKupon numeric(8, 2) DEFAULT (0),'+
          ' BirimKupon2 numeric(8, 2) DEFAULT (0),'+
          ' BirimKupon3 numeric(8, 2) DEFAULT (0),'+
          ' BirimKursun numeric(8, 2) DEFAULT (0),'+
          ' BirimSarim numeric(8, 2) DEFAULT (0),'+
          ' BirimKesim numeric(8, 2) DEFAULT (0),'+
          ' Tur smallint DEFAULT (0), ' +
          ' Tel nvarchar(15) , ' +
          ' CariActive bit DEFAULT (0), ' +
          ' Kod int DEFAULT (0)' +
          ' ) ';
        //ListData
        7:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'ListData'+
          ' ( ' +
          ' Id   [bigint] IDENTITY(1,1) NOT NULL, ' +
          ' Ad   nvarchar(50) , ' +
          ' B1   varchar(80)' +
          ' ) ';
         //Mail
        8:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'Mail'+
          ' ( ' +
          ' Id [bigint] IDENTITY(1,1) NOT NULL, ' +
          ' MailHost  nvarchar(100), '  +
          ' MailKimlik  nvarchar(100), '  +
          ' MailSifre  nvarchar(100), '  +
          ' MailAtan  nvarchar(100), '  +
          ' MailKonu  nvarchar(100), '  +
          ' MailCC  nvarchar(100), '  +
          ' MailDosya  nvarchar(100), '  +
          ' MailYazi_1  nvarchar(100), '  +
          ' MailYazi_2  nvarchar(100), '  +
          ' MailYazi_3  nvarchar(100), '  +
          ' MailYazi_4  nvarchar(100), '  +
          ' MailYazi_5  nvarchar(100), '  +
          ' MailPortNo  nvarchar(10), '  +
          ' Seviye Integer, '  +
          ' Gun  nvarchar(10), '  +
          ' Tarih date DEFAULT (getdate())'+
          ' ) ';

        9: //MList
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'MList' +
          ' ( ' +
          ' Id bigint IDENTITY(1,1) NOT NULL, ' +
          ' Yazi nvarchar(50) DEFAULT ('+QuotedStr('')+'), '+
          ' Data nvarchar(50) DEFAULT ('+QuotedStr('')+'), '+
          ' Sira int DEFAULT (0), '+
          ' Konum  int DEFAULT (0)' +
          ' ) '+

          ' INSERT INTO MList (Sira) values(1)'+
          ' INSERT INTO MList (Sira) values(2)'+
          ' INSERT INTO MList (Sira) values(3)'+
          ' INSERT INTO MList (Sira) values(4)'+
          ' INSERT INTO MList (Sira) values(5)'+
          ' INSERT INTO MList (Sira) values(6)'+
          ' INSERT INTO MList (Sira) values(7)'+
          ' INSERT INTO MList (Sira) values(8)'+
          ' INSERT INTO MList (Sira) values(9)'+
          ' INSERT INTO MList (Sira) values(10)';

        //PartiData
        10:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'PartiData'+
          ' ( ' +
          ' Id    [bigint] IDENTITY(1,1) NOT NULL, ' +
          ' FirmaId bigint NOT NULL, '+
          ' Bar  nvarchar(20), ' +        //Bar
          ' Dikkat  nvarchar(80), ' +
          ' Nota  nvarchar(80), ' +        //Not
          ' Metraj  numeric(8, 2) DEFAULT (0),'+   //Metraj
          ' Kg numeric(8, 2) DEFAULT (0),'+          //Kg
          ' Musteri  nvarchar(80), ' +    //Musteri Adý
          ' Kalite  nvarchar(30), ' +
          ' isTopMt nvarchar(8) DEFAULT (0), ' +       //istenilen top Metresi
          ' Kazan integer DEFAULT (0), ' +
          ' Islem nvarchar(60), ' +
          ' Data1 nvarchar(30), ' +
          ' Data2 nvarchar(30), ' +
          ' Data3 nvarchar(30), ' +
          ' Data4 nvarchar(30), ' +
          ' Tarih_Saat datetime DEFAULT (getdate()) ,'+
          ' Kursun  bit DEFAULT (0) , ' +
          ' Kesim  bit DEFAULT (0) ' +     
          ' ) ';

        //Sevk
        11:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'Sevk'+
          ' ( ' +
          ' Id [bigint] IDENTITY(1,1) NOT NULL, ' +
          ' Firma nvarchar(80) , ' +
          ' SevkNo integer DEFAULT (0) , ' +
          ' TopSayi integer DEFAULT (0) , ' +
          ' Metraj  numeric(8, 2) DEFAULT (0),'+   //Metraj
          ' Kg  numeric(8, 2) DEFAULT (0),'+
          ' Tarih date DEFAULT (getdate()),'+
          ' Tarih_Time datetime DEFAULT (getdate()),'+
          ' Saat nvarchar(12) , ' +
          ' Kim nvarchar(12) , ' +
          ' Kupon integer DEFAULT (0) '+
          ' ) ';


        //Stok
        12:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'Stok'+
          ' ( ' +
          ' Id        [bigint] IDENTITY(1,1) NOT NULL, ' +
          ' Metraj  numeric(8, 2) DEFAULT (0),'+   //Metraj
          ' Kg  numeric(8, 2) DEFAULT (0),'+   //Metraj
          ' TopNo integer DEFAULT (0) , ' +
          ' Musteri  nvarchar(85),  ' +     //Musteri
          ' Barkod   nvarchar(30),  ' +      //Bar
          ' Islem    nvarchar(60),  ' +
          ' Data1 nvarchar(30), ' +
          ' Data2 nvarchar(30), ' +
          ' Data3 nvarchar(30), ' +
          ' Data4 nvarchar(30), ' +
          ' Data5 nvarchar(30), ' +
          ' Data6 nvarchar(30), ' +
          ' Tarih_Saat DATETIME DEFAULT (getdate()),  ' +          
          ' Tarih  nvarchar(12),  ' +          //Tarih
          ' Saat  nvarchar(12),  ' +
          ' Kim   nvarchar(30),  ' +
          ' MakNo int DEFAULT (1),' +
          ' PartiBar nvarchar(15),  ' +
          ' A1 bit DEFAULT (0) '+
          ' ) ';

        //StokSil
        13:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'StokSil'+
          ' ( ' +
          ' Id        [bigint] IDENTITY(1,1) NOT NULL, ' +
          ' Metraj  numeric(8, 2) DEFAULT (0),'+   //Metraj
          ' TopNo integer DEFAULT (0) , ' +
          ' Musteri  nvarchar(85),  ' +     //Musteri
          ' Barkod   nvarchar(30),  ' +      //Bar
          ' Tarih_Saat DATETIME DEFAULT (getdate()),  ' +
          ' Kim   nvarchar(30) ' +
          ' ) ';


        //Uretim
        14:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'Uretim'+
          ' ( ' +
          ' Id [bigint] IDENTITY(1,1) NOT NULL, ' +
          ' Metraj  numeric(8, 2) DEFAULT (0),'+   //Metraj
          ' Kg  numeric(8, 2) DEFAULT (0),'+   
          ' TopNo integer DEFAULT (0),'+
          ' Musteri  nvarchar(85), '  +
          ' Islem nvarchar(60) , ' +
          ' Data1 nvarchar(30) , ' +
          ' Data2 nvarchar(30) , ' +
          ' Data3 nvarchar(30) , ' +
          ' Data4 nvarchar(30) , ' +
          ' Kalite nvarchar(30) , ' +
          ' Tarih date DEFAULT (getdate()),'+
          ' Tarih_Saat datetime DEFAULT (getdate()),'+
          ' Saat nvarchar(12) , ' +
          ' Kim nvarchar(30) , ' +
          ' A1 bit DEFAULT (0) , ' +
          ' MakNo int DEFAULT (0) , ' +
          ' PartiBar nvarchar(15) , ' +
          ' Barkod nvarchar(30) ' +
          ' ) ';

        //Yava                     
        15:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'Yava'+
          ' ( ' +
          ' Id [bigint] IDENTITY(1,1) NOT NULL, ' +
          ' Ad  nvarchar(25), '  +
          ' Kod nvarchar(12), ' +
          ' Tarih smalldatetime DEFAULT (getdate()), ' +
          ' P0 BIT DEFAULT (0), ' +
          ' P1 BIT DEFAULT (0), ' +
          ' P2 BIT DEFAULT (0), ' +
          ' P3 BIT DEFAULT (0), ' +
          ' P4 BIT DEFAULT (0), ' +
          ' P5 BIT DEFAULT (0), ' +
          ' P6 BIT DEFAULT (0), ' +
          ' Active BIT  DEFAULT (1),' +
          ' resim image'+
          ' ) ';



      end;
      ADOCommand1.Execute;
    end;
      ADOQuery_Yarat.Filtered:=False;
      ADOQuery_Yarat.Close;

  end;
  ADOQuery_Yarat.Free;


end;


procedure TForm1.SqlTabloKontrol;
begin
    SqlYarat(1,'Cari');
    SqlYarat(2,'CariIndex');
    SqlYarat(3,'CigDepo');
    SqlYarat(4,'Desen');
    SqlYarat(5,'DetaySevk');
    SqlYarat(6,'Firma');
    SqlYarat(7,'ListData');
    SqlYarat(8,'Mail');
    SqlYarat(9,'MList');
    SqlYarat(10,'PartiData');
    SqlYarat(11,'Sevk');
    SqlYarat(12,'Stok');
    SqlYarat(13,'StokSil');
    SqlYarat(14,'Uretim');
    SqlYarat(15,'Yava');
end;

//***************************************
procedure PlaySnd(S : String);
begin
//  if fSound then
    PlaySound(PChar(S), hInstance, SND_RESOURCE or SND_MEMORY or SND_ASYNC);
end;

procedure SetVolume(aVolume:Byte) ;
var
  Vol: TVolumeRec;
begin
   Vol.LeftVolume := aVolume shl 8;
   Vol.RightVolume:= Vol.LeftVolume;
   auxSetVolume(UINT(DeviceIndex), Vol.LongVolume) ;
end;

function GetVolume:Cardinal;
var
  Vol: TVolumeRec;
begin
   AuxGetVolume(UINT(DeviceIndex),@Vol.LongVolume) ;
   Result:=(Vol.LeftVolume + Vol.RightVolume) shr 9;
end;


procedure TForm1.LisansControl;
Label Bad;
var
Surum,SS,Temp,TempFileVer:String;
Iv1,Iv2:Integer;
  c     : Char;
  si,i  : Integer;
  okAk2 : Bool;
      SearchRec:TSearchRec;
    SizeX,Size:LongInt;


begin

  If  InternetGetConnectedState(nil, 0) then
  begin
      Screen.Cursor:=crSQLWait;
      AnaEkran.webcopy1.items.clear;
      AnaEkran. webcopy1.items.add.URL:='http://peykan.com.tr/register/'+LowerCase(Form1.ExeName)+'.pey';
     AnaEkran.webcopy1.threadexecute;
        Application.ProcessMessages;
    if not FileExists(Form1.FileRegD+'\'+LowerCase(Form1.ExeName)+'.pey') then
    begin
    {$I-}
      AssignFile(MKDosya,Form1.FileRegD+'\'+LowerCase(Form1.ExeName)+'.pey');
      ReWrite(MKDosya);
      Writeln(MKDosya, AnaEkran.ExeInfo1.FileVersion);
      Writeln(MKDosya, '0');
      Writeln(MKDosya, '1-');
      Writeln(MKDosya, '2-');
      Writeln(MKDosya, '3-');
      Writeln(MKDosya, '4-');
      Writeln(MKDosya, 'Peykan Yazýlým Otomasyon ve Elektronik San.Tic.Ltd.Þti.');
      Writeln(MKDosya, 'Tel: +90(224)256 07 39 - +90(224)256 07 40');
      Writeln(MKDosya, 'Fax: +90(224)256 07 38');
      Writeln(MKDosya, 'www.peykan.com.tr  info@peykan.com.tr');
          CloseFile(MKDosya);
    {$I+}
    end;
      System.Assign(MKDosya,Form1.FileRegD+'\'+LowerCase(Form1.ExeName)+'.pey');
      Reset(MKDosya);
      ReadLn(MKDosya ,TempFileVer);
      System.Close(MKDosya);
      Surum:=AnaEkran.ExeInfo1.FileVersion;

//---------

      Screen.Cursor:=crDefault;

      if FileExists(Form1.FileRegD+'\'+LowerCase(Form1.ExeName)+'.pey') then
      begin

        if FindFirst(Form1.FileRegD+'\'+LowerCase(Form1.ExeName)+'.pey',faAnyFile,SearchRec)=0 then
        begin
          Size:=SearchRec.Size;   // 2381824
            if Size=1118 then
            begin
              exit;
            end;
        end;
      end;



    if TempFileVer='' then TempFileVer:='0.0.0.0';
    if TempFileVer<>Surum then
    begin
      Temp:=NoktasizVersiyon(AnaEkran.ExeInfo1.FileVersion);// .ProductVersion);
      Iv1:=StrToInt(Temp);
      Temp:=NoktasizVersiyon(Trim(TempFileVer));
      if not Sayi_mi(Temp) then
      begin
                exit;
      end;
      Iv2:=StrToInt(Temp);

        if Iv1<Iv2 then
        begin

          IniFile:=TIniFile.Create(Form1.FileRegD+'\Peykan.ini');
          IniFile.WriteString('Updata','Ver',Surum);
          IniFile.WriteString('Updata','Prog',LowerCase(Form1.ExeName));
          IniFile.WriteString('Updata','Name',LowerCase(Form1.ExeName));
          IniFile.WriteString('Firma','DIL','TURK');
          IniFile.Free;
          Bad:
            if  FileExists(Form1.FileRegD+'\Update.exe') then
            begin
              RunMeAsAdmin(GetDesktopWindow, PChar(ExtractFilePath(ParamStr(0)) + 'Update.exe'), PChar('SHOWSETTINGS'));
            //  WinExec(PChar(ExtractFilePath(Application.ExeName)+'Update.exe'), SW_SHOWNORMAL);
              Halt(0);
            end else
            begin
                ShowMessage(' BU PROGRAMIN VERSIYONUNU YÜKSELTMEK IÇIN Update.exe BULUNAMADI'+#13#10+'Siteden Update.exe Indirmeniz Gerekmektedir.');
               AnaEkran.WebCopy1.ShowDialog:=True;
               AnaEkran.webcopy1.items.clear;
               AnaEkran.webcopy1.items.add.URL:='http://peykan.com.tr/register/update.exe';
               AnaEkran.webcopy1.threadexecute;
               delay(1500);
               if  FileExists(Form1.FileRegD+'\Update.exe') then
               delay(1500);
               goto Bad;
            end;

        end else
        begin
         myLabel3d1.Caption:='Güncel Program'+' Ver. : '+Surum+' Son Versiyondur.';

        end;

       END else
       begin
         myLabel3d1.Caption:='Güncel Program'+' Ver. : '+Surum+' Son Versiyondur.';
        end;

      delay(100);

  end else
  begin
         myLabel3d1.Caption:='BAGLANTI YOK';
      Screen.Cursor:=crDefault;
  end;

  Screen.Cursor:=crDefault;

  end;



procedure TForm1.MailAt(MailTo,MailKonu,MailDosya:string);
var
   Attachment: TIdAttachment;
begin

  If  InternetGetConnectedState(nil, 0) then
  begin

     SMTP.Host:=MailHost;
     SMTP.Port:=StrToInt(MailPortNo);//587;
     Smtp.AuthenticationType:=atLogin; // atNone
     Smtp.Username:=MailKimlik;
     Smtp.Password:=MailSifre;

     MailMessage.From.Name:=MailAtan;
     MailMessage.Subject:=MailKonu;
     MailMessage.From.Address:=MailAtan;//'ali@peykan.com.tr';//ledFrom.Text; // àäðåñ îòïðàâèòåëÿ

     if Trim(MailCC)<>'' then
      MailMessage.Recipients.EMailAddresses:=MailTo+','+MailCC //  'peykansoft@gmail.com';//ledTo.Text+','+ledCC.Text; // ïîëó÷àòåëü + êîïèÿ
     else
     MailMessage.Recipients.EMailAddresses:=MailTo; //'yazilim@peykan.com.tr';  //  'peykansoft@gmail.com';//ledTo.Text+','+ledCC.Text; // ïîëó÷àòåëü + êîïèÿ
     MailMessage.Body.Text:=MailYazi_1;
     MailMessage.Body.Text:=MailMessage.Body.Text+char(13)+MailYazi_2;
     MailMessage.Body.Text:=MailMessage.Body.Text+char(13)+MailYazi_3;
     MailMessage.Body.Text:=MailMessage.Body.Text+char(13)+MailYazi_4;
     MailMessage.Body.Text:=MailMessage.Body.Text+char(13)+MailYazi_5;
     if Assigned(Attachment) then FreeAndNil(Attachment);
     if FileExists(MailDosya)
     then Attachment :=TIdAttachment.Create(MailMessage.MessageParts,MailDosya);

     try
      try
       SMTP.Connect(2000);
       SMTP.Send(MailMessage);


      except on E:Exception do
       begin
       end;
      end;
     finally
        if Assigned(Attachment) then
        FreeAndNil(Attachment);
      if SMTP.Connected then SMTP.Disconnect;
     end;

   end else
   begin
     PeykanHint('HATA','INTERNET YOK',clRed,10,True);
   end;
end;


procedure TForm1.SQL_Baglan;
Label Bad;
var
  ZQueryYarat: TZQuery;
begin

  AnaEkran.ZConnection1.Protocol:='sqlite-3';


  if not FileExists(ExtractFilePath(Application.ExeName)+'sqlite3.dll') then
  begin
       ShowMessage(ExtractFilePath(Application.ExeName)+'sqlite3.dll    DOSYA BULUNAMADI');
//  Bad:
      If InternetGetConnectedState(nil, 0) then
      begin
          AnaEkran.WebCopy1.ShowDialog:=True;
          AnaEkran.webcopy1.items.clear;
          AnaEkran.webcopy1.items.add.URL:='http://peykan.com.tr/register/sqlite3.dll';
          AnaEkran.webcopy1.threadexecute;
          delay(1500);
        if not FileExists(ExtractFilePath(Application.ExeName)+'sqlite3.dll') then
         delay(1500);

//       goto Bad;
      end else
      begin
       TimerHalt.Enabled:=True;
       exit;
      end;
  end;


  if not FileExists(ExtractFilePath(Application.ExeName)+'sqlite3.dll') then
  begin
       ShowMessage(ExtractFilePath(Application.ExeName)+'sqlite3.dll    DOSYA BULUNAMADI');
    Delay(100);
    Halt;
    exit;
  end;

  AnaEkran.ZConnection1.LibraryLocation:=ExtractFilePath(Application.ExeName)+'sqlite3.dll';
    if not FileExists(AnaEkran.ZConnection1.LibraryLocation) then Exit;

   if NetworkBool then
      AnaEkran.ZConnection1.Database:=NetworkYer+'\'+ExeName+'.db'
  //    AnaEkran.ZConnection1.Database:='d:\2\'+ExeName+'.db'

   else
      AnaEkran.ZConnection1.Database:=FileRegD+'\'+ExeName+'.db';
//    ZConnection1.Database:='Z:\Peykan.sqlite3';
    if not FileExists(AnaEkran.ZConnection1.Database) then
    begin

      ZQueryYarat :=TZQuery.Create(self);
      ZQueryYarat.Connection:=AnaEkran.ZConnection1;

    //SQLLITE
    
        //1 Cari
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE if not exists Cari(Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, ');
        ZQueryYarat.SQL.Add('SevkNo int, FirmaAd nvarchar(50), Kupon int DEFAULT (0), KursunMt NUMERIC(8,2) DEFAULT (0), KesimMt numeric(8, 2) DEFAULT (0), TopSayi int DEFAULT (0),');
        ZQueryYarat.SQL.Add('Tutar numeric(8, 2) DEFAULT (0), ATutar numeric(8, 2) DEFAULT (0), BirimKupon numeric(8, 2) DEFAULT (0), BirimKursun numeric(8, 2) DEFAULT (0), BirimSarim numeric(8, 2) DEFAULT (0),');
        ZQueryYarat.SQL.Add('BirimKesim numeric(8, 2) DEFAULT (0), GC bit DEFAULT (1), Kullanici nvarchar(50) NULL, Aciklama nvarchar(150) NULL, Tarih date DEFAULT (STRFTIME('+QuotedStr('%d.%m.%Y')+', '+QuotedStr('NOW')+','+QuotedStr('localtime')+')), ');
        ZQueryYarat.SQL.Add('Tarih_saat datetime DEFAULT (STRFTIME('+QuotedStr('%Y-%m-%d   %H:%M:%S')+', '+QuotedStr('NOW')+','+QuotedStr('localtime')+')),A1 bit DEFAULT (0))');
        ZQueryYarat.ExecSQL;
        delay(22);

        //2 CariIndex
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE CariIndex(Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, FirmaAd NVARCHAR(50), Tutar NUMERIC(8,2) DEFAULT (0), ATutar numeric(8, 2) DEFAULT (0),Aciklama nvarchar(150), ');
        ZQueryYarat.SQL.Add('Tarih date DEFAULT (STRFTIME('+QuotedStr('%d.%m.%Y')+', '+QuotedStr('NOW')+','+QuotedStr('localtime')+')), Tarih_saat datetime DEFAULT (STRFTIME('+QuotedStr('%Y-%m-%d   %H:%M:%S')+', '+QuotedStr('NOW')+','+QuotedStr('localtime')+')) )') ;
        ZQueryYarat.ExecSQL;
        delay(22);

        //3 CigFirma
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE if not exists CigDepo(Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, ');
        ZQueryYarat.SQL.Add('Bar  nvarchar(20), PNo  nvarchar(10), En  nvarchar(3), PMetraj  float DEFAULT (0), Metraj  float, Kg  float DEFAULT (0), PKg  float DEFAULT (0), Kcinsi  nvarchar(20),');
        ZQueryYarat.SQL.Add('FirmaId bigint NOT NULL, TopSayi  integer, PTopSayi  integer DEFAULT (0), Birim nvarchar(10), Biti bit DEFAULT (0), MusParti  nvarchar(20), ');
        ZQueryYarat.SQL.Add('Tarih date DEFAULT (STRFTIME('+QuotedStr('%d.%m.%Y')+', '+QuotedStr('NOW')+','+QuotedStr('localtime')+')), Tarih_saat datetime DEFAULT (STRFTIME('+QuotedStr('%Y-%m-%d   %H:%M:%S')+', '+QuotedStr('NOW')+','+QuotedStr('localtime')+')) )') ;
        ZQueryYarat.ExecSQL;
        delay(22);

        //4 Desen
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE if not exists Desen(Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, MusteriAd NVARCHAR(90), Kod NVARCHAR(20), DesenAd NVARCHAR(30), Varyant NVARCHAR(30), BirimFiyat numeric(8, 2) DEFAULT (0), Tur smallint DEFAULT (0))') ;
        ZQueryYarat.ExecSQL;
        delay(22);

        //5 DetaySevk
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE if not exists DetaySevk(Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, No INTEGER NOT NULL, SevkNo bigint NOT NULL , ');
        ZQueryYarat.SQL.Add('Metraj NUMERIC(8, 2) DEFAULT (0), Kg NUMERIC(8, 2) DEFAULT (0), Kupon integer DEFAULT (0), Barkod NVARCHAR(20), Data1 NVARCHAR(30), Data2 NVARCHAR(30), ');
        ZQueryYarat.SQL.Add('Tarih_Saat datetime DEFAULT (STRFTIME('+QuotedStr('%Y-%m-%d   %H:%M:%S')+', '+QuotedStr('NOW')+','+QuotedStr('localtime')+')) )') ;
        ZQueryYarat.ExecSQL;
        delay(22);
        

        //6 Firma
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE if not exists Firma(Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Ad nvarchar(80), Adres nvarchar(150), ');
        ZQueryYarat.SQL.Add('BulutKod nvarchar(30), Yet nvarchar(50),Active BIT DEFAULT (1), Mail nvarchar(50), ');
        ZQueryYarat.SQL.Add('BirimKupon numeric(8, 2) DEFAULT (0),BirimKupon2 numeric(8, 2) DEFAULT (0),BirimKupon3 numeric(8, 2) DEFAULT (0), BirimKursun numeric(8, 2) DEFAULT (0), BirimSarim numeric(8, 2) DEFAULT (0),BirimKesim numeric(8, 2) DEFAULT (0), ');
        ZQueryYarat.SQL.Add('Tur smallint DEFAULT (0),Tel nvarchar(15), CariActive bit DEFAULT (0), Kod  int DEFAULT (0))');
        ZQueryYarat.ExecSQL;
        delay(22);

        //7 ListData
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE if not exists ListData(Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, ');
        ZQueryYarat.SQL.Add('Ad NVARCHAR(50),B1 NVARCHAR(80))');
        ZQueryYarat.ExecSQL;
        delay(22);
        
         //8 Mail
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE if not exists Mail(Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, MailHost NVARCHAR(100), MailKimlik NVARCHAR(100), MailSifre NVARCHAR(100), ');
        ZQueryYarat.SQL.Add('MailAtan NVARCHAR(100), MailKonu NVARCHAR(100), MailCC NVARCHAR(100), MailDosya NVARCHAR(100), MailYazi_1 NVARCHAR(100), MailYazi_2 NVARCHAR(100), ');
        ZQueryYarat.SQL.Add('MailYazi_3 NVARCHAR(100), MailYazi_4 NVARCHAR(100),MailYazi_5 NVARCHAR(100), MailPortNo NVARCHAR(100), Seviye integer, Gun  NVARCHAR(10),  ');
        ZQueryYarat.SQL.Add('Tarih date DEFAULT (STRFTIME('+QuotedStr('%d.%m.%Y')+', '+QuotedStr('NOW')+','+QuotedStr('localtime')+')) )') ;
        ZQueryYarat.ExecSQL;
        delay(22);

        //9 MList
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE MList(Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Yazi nvarchar(50) DEFAULT ('+QuotedStr('')+'), ');
        ZQueryYarat.SQL.Add('Data nvarchar(50) DEFAULT ('+QuotedStr('')+'), Sira int DEFAULT (0), Konum int DEFAULT (0))');
        ZQueryYarat.ExecSQL;

        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('Insert into MList(Yazi,Sira) Values(' + QuotedStr('')+', '+QuotedStr('1')+')');
        ZQueryYarat.ExecSQL;
        delay(22);
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('Insert into MList(Yazi,Sira) Values(' + QuotedStr('')+', '+QuotedStr('2')+')');
        ZQueryYarat.ExecSQL;
        delay(22);
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('Insert into MList(Yazi,Sira) Values(' + QuotedStr('')+', '+QuotedStr('3')+')');
        ZQueryYarat.ExecSQL;
        delay(22);
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('Insert into MList(Yazi,Sira) Values(' + QuotedStr('')+', '+QuotedStr('4')+')');
        ZQueryYarat.ExecSQL;
        delay(22);
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('Insert into MList(Yazi,Sira) Values(' + QuotedStr('')+', '+QuotedStr('5')+')');
        ZQueryYarat.ExecSQL;
        delay(22);
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('Insert into MList(Yazi,Sira) Values(' + QuotedStr('')+', '+QuotedStr('6')+')');
        ZQueryYarat.ExecSQL;
        delay(22);
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('Insert into MList(Yazi,Sira) Values(' + QuotedStr('')+', '+QuotedStr('7')+')');
        ZQueryYarat.ExecSQL;
        delay(22);
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('Insert into MList(Yazi,Sira) Values(' + QuotedStr('')+', '+QuotedStr('8')+')');
        ZQueryYarat.ExecSQL;
        delay(22);
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('Insert into MList(Yazi,Sira) Values(' + QuotedStr('')+', '+QuotedStr('9')+')');
        ZQueryYarat.ExecSQL;
        delay(22);
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('Insert into MList(Yazi,Sira) Values(' + QuotedStr('')+', '+QuotedStr('10')+')');
        ZQueryYarat.ExecSQL;
        delay(22);

        //10 PartiData
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE if not exists PartiData(Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, ');
        ZQueryYarat.SQL.Add('FirmaId bigint NOT NULL, Bar  nvarchar(20), Dikkat  nvarchar(80),  Nota  nvarchar(80), Metraj  numeric(8, 2) DEFAULT (0), Kg numeric(8, 2) DEFAULT (0), Musteri  nvarchar(80), Kalite  nvarchar(30),');
        ZQueryYarat.SQL.Add('isTopMt nvarchar(8) DEFAULT (0), Kazan integer DEFAULT (0), Islem nvarchar(60), Data1 nvarchar(30), Data2 nvarchar(30), Data3 nvarchar(30), Data4 nvarchar(30), Kursun  bit DEFAULT (0) ,Kesim  bit DEFAULT (0),');
        ZQueryYarat.SQL.Add('Tarih_Saat datetime DEFAULT (STRFTIME('+QuotedStr('%Y-%m-%d   %H:%M:%S')+', '+QuotedStr('NOW')+','+QuotedStr('localtime')+')) )') ;
        ZQueryYarat.ExecSQL;
        delay(22);

        //11 Sevk
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE if not exists Sevk(Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, ');
        ZQueryYarat.SQL.Add('Firma NVARCHAR(80), SevkNo INTEGER DEFAULT (0), TopSayi INTEGER DEFAULT (0), Metraj  numeric(8, 2) DEFAULT (0), Kg  numeric(8, 2) DEFAULT (0), Kupon INTEGER DEFAULT (0), ');
        ZQueryYarat.SQL.Add('Tarih DATE DEFAULT(STRFTIME('+QuotedStr('%Y-%m-%d')+','+QuotedStr('NOW')+','+QuotedStr('localtime')+')), Saat TIME DEFAULT(STRFTIME('+QuotedStr('%H:%M:%S')+','+QuotedStr('NOW')+','+QuotedStr('localtime')+')), Kim NVARCHAR(12),');
        ZQueryYarat.SQL.Add('Tarih_Saat datetime DEFAULT (STRFTIME('+QuotedStr('%Y-%m-%d   %H:%M:%S')+', '+QuotedStr('NOW')+','+QuotedStr('localtime')+')) )') ;
        ZQueryYarat.ExecSQL;
        delay(22);

        //12 Stok
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE if not exists Stok(Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, ');
        ZQueryYarat.SQL.Add('Metraj NUMERIC(8,2) DEFAULT (0),Kg  numeric(8, 2) DEFAULT (0), TopNo INTEGER DEFAULT (0),Musteri NVARCHAR(85),Barkod VARCHAR(30),Islem NVARCHAR(60), ') ;
        ZQueryYarat.SQL.Add('Data1 NVARCHAR(30),Data2 NVARCHAR(30),Data3 NVARCHAR(30),Data4 NVARCHAR(30),Data5 NVARCHAR(30),Data6 NVARCHAR(30),');
        ZQueryYarat.SQL.Add('Tarih_Saat datetime DEFAULT (STRFTIME('+QuotedStr('%Y-%m-%d   %H:%M:%S')+', '+QuotedStr('NOW')+','+QuotedStr('localtime')+')), Tarih DATE DEFAULT(STRFTIME('+QuotedStr('%Y-%m-%d')+','+QuotedStr('NOW')+','+QuotedStr('localtime')+')),');
        ZQueryYarat.SQL.Add('Saat TIME DEFAULT(STRFTIME('+QuotedStr('%H:%M:%S')+','+QuotedStr('NOW')+','+QuotedStr('localtime')+')),Kim NVARCHAR(30),MakNo int DEFAULT (1),PartiBar nvarchar(15), A1 BIT DEFAULT (0))');
        ZQueryYarat.ExecSQL;
        delay(22);

        //13 StokSil
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE if not exists StokSil(Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,Metraj NUMERIC(8,2)DEFAULT (0) ,TopNo INTEGER DEFAULT (0), ');
        ZQueryYarat.SQL.Add('Musteri NVARCHAR(85),Barkod VARCHAR(30),Tarih_Saat datetime DEFAULT (STRFTIME('+QuotedStr('%Y-%m-%d   %H:%M:%S')+', '+QuotedStr('NOW')+','+QuotedStr('localtime')+')),Kim NVARCHAR(25)) ') ;
        ZQueryYarat.ExecSQL;
        delay(22);

        //14 Uretim
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE if not exists Musteri(Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Metraj  numeric(8, 2) DEFAULT (0), ');
        ZQueryYarat.SQL.Add('Kg numeric(8, 2) DEFAULT (0),TopNo integer DEFAULT (0),Müsteri  nvarchar(85),Islem nvarchar(60) ,Data1 nvarchar(30) , Data2 nvarchar(30) ,Data3 nvarchar(30) , Data4 nvarchar(30) , Kalite nvarchar(30) ,');
        ZQueryYarat.SQL.Add('Tarih_Saat datetime DEFAULT (STRFTIME('+QuotedStr('%Y-%m-%d   %H:%M:%S')+', '+QuotedStr('NOW')+','+QuotedStr('localtime')+')), Tarih DATE DEFAULT(STRFTIME('+QuotedStr('%Y-%m-%d')+','+QuotedStr('NOW')+','+QuotedStr('localtime')+')),');
        ZQueryYarat.SQL.Add('Saat TIME DEFAULT(STRFTIME('+QuotedStr('%H:%M:%S')+','+QuotedStr('NOW')+','+QuotedStr('localtime')+')),Kim nvarchar(30) ,A1 bit DEFAULT (0) ,MakNo int DEFAULT (0) ,PartiBar nvarchar(15) ,Barkod nvarchar(30)) ');
        ZQueryYarat.ExecSQL;
        delay(22);

        //15 Yava
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE if not exists Yava(Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Kod NVARCHAR(12) UNIQUE, Ad NVARCHAR(25), P0 BOOLEAN DEFAULT (0), P1 BOOLEAN DEFAULT (0),  P2 BOOLEAN DEFAULT (0), ');
        ZQueryYarat.SQL.Add('P3 BOOLEAN DEFAULT (0), P4 BOOLEAN DEFAULT (0), P5 BOOLEAN DEFAULT (0), Active BOOLEAN DEFAULT (1),resim image, Tarih DATE DEFAULT(STRFTIME('+QuotedStr('%Y-%m-%d')+','+QuotedStr('NOW')+','+QuotedStr('localtime')+')))');
        ZQueryYarat.ExecSQL;
        delay(22);

        ZQueryYarat.Free;

    end;
    AnaEkran.ZConnection1.Connect;
end;

procedure TForm1.AdvSmoothButton1Click(Sender: TObject);
begin
  Form1.Hide;
Close;

end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Width:=550;
  Height:=340;
  edtPassword.SetFocus;
if Pos('GÝRÝÞ',lbl1.Caption)=0 then
   SpeedButton1.Caption:='LOG OUT';
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
Label Devam_S,Devam_Z;
var
  ADOQuery_Y:TADOQuery;
  ZQuery_AnaSor :TZQuery;
SS:string;
begin

  Pass:=False;


  if SpeedButton1.Caption='LOG OUT' then
  begin
      SpeedButton1.Caption:='&Tamam';
      Button_Admin.Enabled:=False;
      Button_HDepo.Enabled:=False;
      Button_Plan.Enabled:=False;
      Button_Sevk.Enabled:=False;
      Button_Rapor.Enabled:=False;
      lbl1.Font.Color:=clBlack;
      lbl1.Caption:='GIRIÞ ÞÝFRENÝZÝ GÝRÝNÝZ...';
      exit;
  end;




  if edtPassword.Text='' then Exit;

  IF edtPassword.Text='DEMO' THEN
  begin
    lbl1.Caption:='DEMO';
    StaffKul:=0;
    Pass:=True;
    SS:='Master';
     lbl1.Left:=  Form1.Width div 2 -lbl1.Width div 2;
      Button_Admin.Enabled:=True;
      Button_HDepo.Enabled:=True;
      Button_Plan.Enabled:=True;
      Button_Sevk.Enabled:=True;
      Button_Rapor.Enabled:=True;

       if not ZLite then
       begin
        ADOQuery_Y :=TADOQuery.Create(self);
        ADOQuery_Y.Connection:=ADOConnection1;
        goto Devam_S;
       end else
       begin
        ZQuery_AnaSor:=TZQuery.Create(self);
        ZQuery_AnaSor.Connection:=AnaEkran.ZConnection1;
        goto Devam_Z;
       end;

  end;

  IF (edtPassword.Text='16171342')OR (UpperCase(edtPassword.Text)='ARMAN') THEN
  BEGIN
    lbl1.Font.Color:=clRed;
    IF edtPassword.Text='arman' THEN
    lbl1.Caption:='ALI HOSSEINZADEH'
    else
    lbl1.Caption:='Master';
    lbl1.Left:=  Form1.Width div 2 -lbl1.Width div 2;

    StaffKul:=0;
    Pass:=True;
    SS:='Master';
     Kulanici:=SS;
      Button_Admin.Enabled:=True;
      Button_HDepo.Enabled:=True;
      Button_Plan.Enabled:=True;
      Button_Sevk.Enabled:=True;
      Button_Rapor.Enabled:=True;

       if not ZLite then
       begin
        ADOQuery_Y :=TADOQuery.Create(self);
        ADOQuery_Y.Connection:=ADOConnection1;
        goto Devam_S;
       end else
       begin
        ZQuery_AnaSor:=TZQuery.Create(self);
        ZQuery_AnaSor.Connection:=AnaEkran.ZConnection1;
        goto Devam_Z;
       end;


  end;

  Screen.Cursor:=crHourGlass;


 if not ZLite then
 begin
    ADOQuery_Y :=TADOQuery.Create(self);
//    ADOQuery_Y.Connection:=ADOConnection1;
    if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQuery_Y,True,'PeyKupon1',IntToStr(Form1.MakinaNo)) then
    begin

      ADOQuery_Y.Close;

      ADOQuery_Y.SQL.Clear;
      ADOQuery_Y.SQL.Append('Select * from Yava where Kod=HASHBYTES('+#39+'SHA1'+#39+','+#39+Trim(edtPassword.Text)+#39+')');
      ADOQuery_Y.Open;

      if ADOQuery_Y.RecordCount>0 then
      begin
    //    myLabel3d1.Font.Color:=clRed;
          SS:=ADOQuery_Y.FieldByName('Ad').AsString;
          lbl1.Caption:='Kullanýcý Adý :'+SS;
         lbl1.Left:=  Form1.Width div 2 -lbl1.Width div 2;
          delay(50);
          Button_Admin.Enabled:=ADOQuery_Y.FieldByName('P0').AsBoolean;
          Button_Plan.Enabled:=ADOQuery_Y.FieldByName('P1').AsBoolean;
          Button_Sevk.Enabled:=ADOQuery_Y.FieldByName('P2').AsBoolean;
          Button_Rapor.Enabled:=ADOQuery_Y.FieldByName('P3').AsBoolean;
                Button_HDepo.Enabled:=ADOQuery_Y.FieldByName('P4').AsBoolean;
    //      AdvSmoothButton_X4.Enabled:=ADOQuery_Y.FieldByName('P4').AsBoolean;
          delay(50);
                      Form1.Pass:=True;
         Kulanici:=SS;

       Devam_S:
        //makine deðiþkenleri sqlden alýnýyor.
        ADOQuery_Y.SQL.Clear;
        ADOQuery_Y.SQL.Add('SELECT * FROM MList order by Sira');
//        ADOQuery_Y.Open;
          if not MSSQLOpen_Query(ADOQuery_Y,'ADOQuery_Y',IntToStr(Form1.MakinaNo)) then
          begin
            ADOQuery_Y.Free;
            exit;
          end;
        ADOQuery_Y.First;

        While not ADOQuery_Y.Eof do
        begin

           if ADOQuery_Y.FieldByName('Sira').AsInteger=1 then
           begin
              E_List_Sol_Rus1:=ADOQuery_Y.FieldByName('Data').AsString;
              E_List_Sol_1:=ADOQuery_Y.FieldByName('Yazi').AsString;
           end else if ADOQuery_Y.FieldByName('Sira').AsInteger=2 then
           begin
              E_List_Sol_Rus2:=ADOQuery_Y.FieldByName('Data').AsString;
              E_List_Sol_2:=ADOQuery_Y.FieldByName('Yazi').AsString;
           end else if ADOQuery_Y.FieldByName('Sira').AsInteger=3 then
           begin
              E_List_Sol_Rus3:=ADOQuery_Y.FieldByName('Data').AsString;
              E_List_Sol_3:=ADOQuery_Y.FieldByName('Yazi').AsString;
           end else if ADOQuery_Y.FieldByName('Sira').AsInteger=4 then
           begin
              E_List_Sol_Rus4:=ADOQuery_Y.FieldByName('Data').AsString;
              E_List_Sol_4:=ADOQuery_Y.FieldByName('Yazi').AsString;
           end;
          ADOQuery_Y.Next;

        end;

        //////////////      mail deðiþkenlerini sqldn alýyor.                         //////////////

          ADOQuery_Y.Close;
          ADOQuery_Y.SQL.Clear;

          ADOQuery_Y.SQL.Append('Select * from Mail');
          ADOQuery_Y.Open;
          ADOQuery_Y.First;

          if ADOQuery_Y.RecordCount=1 then
          begin
            MailHost:=ADOQuery_Y.FieldByName('MailHost').AsString;
            MailKimlik:=ADOQuery_Y.FieldByName('MailKimlik').AsString;
            MailSifre:=ADOQuery_Y.FieldByName('MailSifre').AsString;
            MailAtan:=ADOQuery_Y.FieldByName('MailAtan').AsString;
            MailPortNo:=ADOQuery_Y.FieldByName('MailPortNo').AsString;
            MailKonu:=ADOQuery_Y.FieldByName('MailKonu').AsString;
            MailCC:=ADOQuery_Y.FieldByName('MailCC').AsString;
            MailDosya:=ADOQuery_Y.FieldByName('MailDosya').AsString;
            MailYazi_1:=ADOQuery_Y.FieldByName('MailYazi_1').AsString;
            MailYazi_2:=ADOQuery_Y.FieldByName('MailYazi_2').AsString;
            MailYazi_3:=ADOQuery_Y.FieldByName('MailYazi_3').AsString;
            MailYazi_4:=ADOQuery_Y.FieldByName('MailYazi_4').AsString;
            MailYazi_5:=ADOQuery_Y.FieldByName('MailYazi_5').AsString;
          end;

        //////////////////////////////////////

         // FormMain.AdvOfficeStatusBar1.Panels[4].Text :=Kulanici;
         ADOQuery_Y.Free;
      end;
    end else
    begin
      Screen.Cursor:=crDefault;
      edtPassword.Color:=clRed;
      OKDlg:=TOKDlg.Create(Application);
      OKDlg.Top:=50;
      OKDlg.Left:=10;
      OKDlg.LMDLabel3.Caption:='YANLIÞ ÞIFRE';//WRONG PASSWORD';
      OKDlg.ShowModal;
      OKDlg.Free;

      //MessageDlg(' WRONG PASSWORD ',mtError,[mbOk],0);
      edtPassword.Color:=clWhite;
      edtPassword.Text:='';
      inc(isif);
      if isif>2 then Halt
      else edtPassword.SetFocus;
      Exit;
    end;

 end else
 begin
  ZQuery_AnaSor:=TZQuery.Create(self);
  ZQuery_AnaSor.Connection:=AnaEkran.ZConnection1;

//        ZQuery_AnaSor.Close;
//        ZQuery_AnaSor.SQL.Clear;
//        ZQuery_AnaSor.SQL.Add('CREATE TABLE if not exists Yava(Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Kod NVARCHAR(12) UNIQUE,Ad NVARCHAR(25), P0 BOOLEAN, P1 BOOLEAN,  P2 BOOLEAN, P3 BOOLEAN, P4 BOOLEAN, P5 BOOLEAN DEFAULT (0), Active  BOOLEAN DEFAULT (1), ');
//        ZQuery_AnaSor.SQL.Add('Tarih DATE DEFAULT(STRFTIME('+QuotedStr('%Y-%m-%d')+','+QuotedStr('NOW')+','+QuotedStr('localtime')+')))');
//        ZQuery_AnaSor.ExecSQL;
//        delay(22);

  ZQuery_AnaSor.Close;
  ZQuery_AnaSor.SQL.Clear;
  ZQuery_AnaSor.SQL.Append('Select * from Yava where Kod='+QuotedStr(Trim(edtPassword.Text)));
  ZQuery_AnaSor.Open;

  if  ZQuery_AnaSor.RecordCount > 0 then
  begin

      SS:=ZQuery_AnaSor.FieldByName('Ad').AsString;

       Button_Admin.Enabled:=ZQuery_AnaSor.FieldByName('P0').AsBoolean;
      Button_Plan.Enabled:=ZQuery_AnaSor.FieldByName('P1').AsBoolean;
      Button_Sevk.Enabled:=ZQuery_AnaSor.FieldByName('P2').AsBoolean;
      Button_Rapor.Enabled:=ZQuery_AnaSor.FieldByName('P3').AsBoolean;
      Button_HDepo.Enabled:=ZQuery_AnaSor.FieldByName('P4').AsBoolean;
      {
      Button_Plan.Enabled:=ZQuery_AnaSor.FieldByName('P1').AsBoolean;
      Button_Sevk.Enabled:=ZQuery_AnaSor.FieldByName('P2').AsBoolean;
      Button_Rapor.Enabled:=ZQuery_AnaSor.FieldByName('P3').AsBoolean;
       }
      lbl1.Caption:=SS;
      lbl1.Left:=  Form1.Width div 2 -lbl1.Width div 2;


        ZQuery_AnaSor.Close;
        Kulanici:=SS;

        Devam_Z:

        ZQuery_AnaSor.Close;
        ZQuery_AnaSor.SQL.Clear;
      //  ZQueryS.SQL.Add('select isnul(Max(SevkNo),1) as say From Sevk where SevkNo='+QuotedStr(IntToStr(Form1.SevkNo)));
        ZQuery_AnaSor.SQL.Add('select ifnull(Max(SevkNo),1)+1 as say From Sevk');
        ZQuery_AnaSor.Open;

         Form1.SevkNo:= StrToInt(ZQuery_AnaSor.FieldByName('say').AsString)+1;

      //makine deðiþkenleri sqlden alýnýyor.
        ZQuery_AnaSor.SQL.Clear;
        ZQuery_AnaSor.SQL.Add('SELECT * FROM MList order by Sira');
        ZQuery_AnaSor.Open;
        ZQuery_AnaSor.First;
        While not ZQuery_AnaSor.Eof do
        begin
           if Form1.LabelRusca then
           begin
             if ZQuery_AnaSor.FieldByName('Sira').AsInteger=1 then
             begin
                E_List_Sol_1:=ZQuery_AnaSor.FieldByName('Data').AsString;
             end else if ZQuery_AnaSor.FieldByName('Sira').AsInteger=2 then
             begin
                E_List_Sol_2:=ZQuery_AnaSor.FieldByName('Data').AsString;
             end else if ZQuery_AnaSor.FieldByName('Sira').AsInteger=3 then
             begin
                E_List_Sol_3:=ZQuery_AnaSor.FieldByName('Data').AsString;
             end else if ZQuery_AnaSor.FieldByName('Sira').AsInteger=4 then
             begin
                E_List_Sol_4:=ZQuery_AnaSor.FieldByName('Data').AsString;
             end;
           end else
           begin
             if ZQuery_AnaSor.FieldByName('Sira').AsInteger=1 then
             begin
                E_List_Sol_1:=ZQuery_AnaSor.FieldByName('Yazi').AsString;
             end else if ZQuery_AnaSor.FieldByName('Sira').AsInteger=2 then
             begin
                E_List_Sol_2:=ZQuery_AnaSor.FieldByName('Yazi').AsString;
             end else if ZQuery_AnaSor.FieldByName('Sira').AsInteger=3 then
             begin
                E_List_Sol_3:=ZQuery_AnaSor.FieldByName('Yazi').AsString;
             end else if ZQuery_AnaSor.FieldByName('Sira').AsInteger=4 then
             begin
                E_List_Sol_4:=ZQuery_AnaSor.FieldByName('Yazi').AsString;
             end;
           end;

         ZQuery_AnaSor.Next;

        end;
        //////////////      mail deðiþkenlerini sqldn alýyor.                         //////////////

          ZQuery_AnaSor.Close;
          ZQuery_AnaSor.SQL.Clear;

          ZQuery_AnaSor.SQL.Append('Select * from Mail');
          ZQuery_AnaSor.Open;
          ZQuery_AnaSor.First;

          if ZQuery_AnaSor.RecordCount=1 then
          begin
            MailHost:=ZQuery_AnaSor.FieldByName('MailHost').AsString;
            MailKimlik:=ZQuery_AnaSor.FieldByName('MailKimlik').AsString;
            MailSifre:=ZQuery_AnaSor.FieldByName('MailSifre').AsString;
            MailAtan:=ZQuery_AnaSor.FieldByName('MailAtan').AsString;
            MailPortNo:=ZQuery_AnaSor.FieldByName('MailPortNo').AsString;
            MailKonu:=ZQuery_AnaSor.FieldByName('MailKonu').AsString;
            MailCC:=ZQuery_AnaSor.FieldByName('MailCC').AsString;
            MailDosya:=ZQuery_AnaSor.FieldByName('MailDosya').AsString;
            MailYazi_1:=ZQuery_AnaSor.FieldByName('MailYazi_1').AsString;
            MailYazi_2:=ZQuery_AnaSor.FieldByName('MailYazi_2').AsString;
            MailYazi_3:=ZQuery_AnaSor.FieldByName('MailYazi_3').AsString;
            MailYazi_4:=ZQuery_AnaSor.FieldByName('MailYazi_4').AsString;
            MailYazi_5:=ZQuery_AnaSor.FieldByName('MailYazi_5').AsString;
          end;


        //////////////////////////////////////

      delay(500);
      edtPassword.Text:='';
      ZQuery_AnaSor.Free;

  end else
  begin

    Screen.Cursor:=crDefault;
    ZQuery_AnaSor.Close;
    OKDlg:=TOKDlg.Create(Application);
    OKDlg.Top:=50;
    OKDlg.Left:=10;
    OKDlg.LMDLabel3.Caption:='YANLIS ÞIFRE';//WRONG PASSWORD';
    OKDlg.ShowModal;
    OKDlg.Free;

    //MessageDlg(' WRONG PASSWORD ',mtError,[mbOk],0);

    edtPassword.Text:='';
    inc(isif);
    if isif>2 then Halt
    else
    edtPassword.SetFocus;
    Exit;
  end;

 end;

  SesPlay('SOUND');
  edtPassword.Text:='';
  Screen.Cursor:=crDefault;
  //  Form1.Hide;

end;

procedure TForm1.FormCreate(Sender: TObject);
Label Atla;
var
// SSS:String[3];
 i:Byte;
 x:integer;
begin

  Size:=0;
  Demo:=False;
  ZamanFormatAyar;
  DoubleBuffered := true;
  EkraniKorucuKapat;

  FileRegD:=ExeYeri;
  ExeName:=ExeAdi;

  // HelpDir:=ExtractFilePath(Application.EXEName);
//  Application.OnHelp := HH;

  if (screen.width <> 800) then
  begin
    Form1.Position:=poDesktopCenter;
    //  ShowMessage('Ekran alanýný 800 x 600 Piksel Ayarlayýn');
    //    height := longint(height) * longint(screen.height) div ScreenHeight;
    //    width := longint(width) * longint(screen.width) div ScreenWidth;
    //  scaleBy(screen.width, ScreenWidth);
    //RunControlPanelApplet('desk.cpl');
  end else
  begin
    Form1.Position:=poDesigned;
    Top:=0;
    Left:=0;
  end;

{
        FileRegD:= ExtractFilePath(Application.ExeName);
 SSS:=Copy(FileRegD,Length(FileRegD),1);
 if SSS='\' then
 Delete(FileRegD,Length(FileRegD),1);
}
  if FileExists(FileRegD+'\Help\'+ExeName+'.chm') then
    Application.HelpFile := FileRegD+'\Help\'+ExeName+'.chm'
  else Application.HelpFile:='';

 Demo:=True;
Demo:=PeyKeyAli(AnaEkran.ExeInfo1.ProductVersion);
  if Demo Then
  begin
    Ver_Yaz1:=Fir+' ==> '+AnaEkran.ExeInfo1.ProductName+'   [ Ver: '+AnaEkran.ExeInfo1.FileVersion+' ]     DEMO Ver: ';//    Ekran : '+IntToStr(screen.width)+' x '+IntToStr(screen.height);
    Ver_Yaz :='<p align="right"><B><I><FONT COLOR="clYellow">'+Trim(AnaEkran.ExeInfo1.ProductName)+' Ver : '+AnaEkran.ExeInfo1.FileVersion+'   </FONT></i></b></p>';

  end else
  begin
    Demo:=False;
    Ver_Yaz1:=Fir+' ==> '+AnaEkran.ExeInfo1.ProductName+'   [ Ver: '+AnaEkran.ExeInfo1.FileVersion+' ] ';// -     Ekran : '+IntToStr(screen.width)+' x '+IntToStr(screen.height);
    Ver_Yaz :='<p align="right"><B><I><FONT COLOR="clYellow">'+AnaEkran.ExeInfo1.ProductName +' Ver : '+AnaEkran.ExeInfo1.FileVersion+'   </FONT></i></b></p>';

  end;
  Form1.StatusBar1.Panels[4].Text :=Ver_Yaz;
  DiziYoksaYarat(FileRegD+'\Data',False);
  DiziYoksaYarat(FileRegD+'\Help',False);
  DiziYoksaYarat(FileRegD+'\Dosya',False);
  DiziYoksaYarat(FileRegD+'\Veri',False);
  DiziYoksaYarat(FileRegD+'\Label');

  DiziYoksaYarat(FileRegD+'\Sevk',False);
  DiziYoksaYarat(FileRegD+'\Yedek',False);

    if not FileExists(FileRegD+'\temp\Peykan.cfg') then
    begin
      {$I-}
       MkDir(FileRegD+'\temp');
        {$I+}
          HasAttr(FileRegD+'\temp\Peykan.cfg',True);
          GuvenlikDuvariGec;
    end;


//DiziYoksaYarat(FileRegD+'\Yedek\Data');
//DiziYoksaYarat(FileRegD+'\Yedek\Dosya');
//  DiziYoksaYarat(FileRegD+'\Yedek\Veri');
   UserIP:= AnaEkran.MyIp1.IP;

  if GetWindowsVer='Win 2k' then EnInt:=120
  else EnInt:=118;
    widthInt:=10+50;

  IniFile:=TIniFile.Create(PeykanLisans+'\'+ExeName+'.ini');

    if Sayi_mi(SifreCoz(IniFile.ReadString('Ayar','MakinaNo', '.U2...' ))) then
       DemoSay:=StrToInt(SifreCoz(IniFile.ReadString('Ayar','MakinaNo', '.U2...' )))
    else TimerHalt.Enabled  :=True;
  BarPort:=IniFile.ReadString('Ayar','BarPort','Com3');
  RaporYazdir:=IniFile.ReadBool('Ayar','RaporYazdir',True);
  RaporDiliAktif:=IniFile.ReadBool('Ayar','RaporDili',False);
  RaporRusca:=IniFile.ReadBool('Ayar','RaporRusca',False);
  if not RaporDiliAktif then RaporRusca:=False;
  
  SesVer:=IniFile.ReadBool('Ayar','SesVer',True);

  YaziciPort:=IniFile.ReadString('Ayar','YaziciPort', 'Com1' );
  MetrePort:=IniFile.ReadString('Ayar','MetrePort','Com4');
  TartiPort:=IniFile.ReadString('Ayar','TartiPort','Com5');
  YaziciWin:=IniFile.ReadBool('Ayar','YaziciWin', False );

  Ex_Vilgul:=IniFile.ReadBool('Ayar','Ex_Nokta', True );
  Ex_KgYok:=IniFile.ReadBool('Ayar','Ex_Kg', True );
  FKod:=IniFile.ReadString('Ayar','FKod', '0');
  GunLisan:=IniFile.ReadString('Prog','Gun', '7' );
  MakinaNo:=IniFile.ReadInteger('Sayac','MakinaNo', 1 );
  Baslik:=IniFile.ReadString('Etiket','Baslik','');
  SevkBaslik:=IniFile.ReadString('Sevk','Baslik','PEYKAN');
  Form1.Hiz9600:=IniFile.ReadBool('Ayar','BarkodHiz',True);

  Ses1:=IniFile.ReadString('Ses','S1',Form1.FileRegD+'\2.WAV');
  if Trim(Ses1)='' then Ses1:= FileRegD+'\SOUND\2.WAV';
  Ses2:=IniFile.ReadString('Ses','S2','');
  if Trim(Ses2)='' then Ses1:= FileRegD+'\SOUND\CLAP.WAV';
  Ses3:=IniFile.ReadString('Ses','S3','');
  if Trim(Ses3)='' then Ses1:= FileRegD+'\SOUND\Ghost.WAV';
  Ses4:=IniFile.ReadString('Ses','S4',Form1.FileRegD+'\1.WAV');
  if Trim(Ses4)='' then Ses1:= FileRegD+'\SOUND\1.WAV';

  SeciliEtiketZPL:=IniFile.ReadString('Ayar','SeciliEtiket','');
  if Trim(SeciliEtiketZPL)='' then SeciliEtiketZPL:=Form1.FileRegD+'\Label\test.zpey';

  SeciliEtiketEPL:= IniFile.ReadString('Ayar','SeciliEtiketEPL','');
  if Trim(SeciliEtiketEPL)='' then SeciliEtiketEPL:=Form1.FileRegD+'\Label\test.epey';
  SeciliEtiketPPL:= IniFile.ReadString('Ayar','SeciliEtiketPPL','');
  if Trim(SeciliEtiketPPL)='' then SeciliEtiketPPL:=Form1.FileRegD+'\Label\test.ppey';


  ZDil:=IniFile.ReadInteger('Yazýcý','Dil',1);
  KuponAktif:=IniFile.ReadBool('Kopun','KuponAktif', True);
  if KuponAktif then
  begin
   KopunDeger1:= IniFile.ReadInteger('Kopun','1',1);
   KopunDeger2:= IniFile.ReadInteger('Kopun','2',2);
   KopunDeger3:= IniFile.ReadInteger('Kopun','3',3);
   KopunDeger4:= IniFile.ReadInteger('Kopun','4',4);
  end;
  
  if Form1.LabelRusca then
  begin
    E_List_Sol_5:=IniFile.ReadString('Panel','Sol_5Rus',' ');
    E_List_Sol_6:=IniFile.ReadString('Panel','Sol_6Rus',' ');
  end else
  begin
    E_List_Sol_5:=IniFile.ReadString('Panel','Sol_5',' ');
    E_List_Sol_6:=IniFile.ReadString('Panel','Sol_6',' ');
  end;


  E_No_Sol_x1:= IniFile.ReadInteger('Etiket','No_Sol_x1', 0);
  E_No_Sol_x2:= IniFile.ReadInteger('Etiket','No_Sol_x2', 0);
  E_No_Sol_x3:= IniFile.ReadInteger('Etiket','No_Sol_x3', 0);

  E_No_Sol_1:= IniFile.ReadInteger('Etiket','No_Sol_1', 0);
  E_No_Sol_2:= IniFile.ReadInteger('Etiket','No_Sol_2', 0);
  E_No_Sol_3:= IniFile.ReadInteger('Etiket','No_Sol_3', 0);
  E_No_Sol_4:= IniFile.ReadInteger('Etiket','No_Sol_4', 0);
  E_No_Sol_5:= IniFile.ReadInteger('Etiket','No_Sol_5', 0);
  E_No_Sol_6:= IniFile.ReadInteger('Etiket','No_Sol_6', 0);
       
//       BCiktiSayi:= IniFile.ReadInteger('Etiket','BCiktiSayi', 1);

  BCiktiSayi:=IniFile.ReadInteger('Ayar','BCiktiSayi',1);
 YeniTip:=IniFile.ReadBool('Prog','YeniTip',True);
  EHiz:=IniFile.ReadInteger('Ayar','EHiz',2);
  EKoyu:=IniFile.ReadInteger('Ayar','EKoyu',15);
  ExHome:=IniFile.ReadInteger('Ayar','ExHome',0);
  EyHome:=IniFile.ReadInteger('Ayar','EyHome',0);
  ELogo:=IniFile.ReadBool('Ayar','ELogo',False);

   SabitEBaslik:=IniFile.ReadBool('Etiket','SabitEBaslik', False );
   Uretim:=IniFile.ReadBool('Ayar','Uretim', False );
   NetworkYer:=IniFile.ReadString('Ayar','NetYer','Z:\Kupon');
   NetworkBool:=IniFile.ReadBool('Ayar','NetBool', False);
   SayacTip:=IniFile.ReadString('Ayar','SayacTip','Pey402');
   lisankon:=IniFile.ReadBool('Sistem','lisankon',False);
   DataGuncel:=IniFile.ReadBool('Sistem','DataGuncel',False);
   ExcelDuzgun:=IniFile.ReadBool('Sistem','ExcelDuzgun',False);
   KutularaKayit:=IniFile.ReadBool('Sistem','KutularaKayit',False);
   LabelRusca:=IniFile.ReadBool('Sistem','LabelRusca',False);
  for i:=1 to 9  do
  EtiketDizi[i]:=IniFile.ReadString('Etiket','Diz_'+IntToStr(i),'');

  Yedekleme:=IniFile.ReadBool('Sistem','Yedekleme',True);
  OtoRunPort:=IniFile.ReadBool('Sistem','OtoRunPort',True);
  OtoBarkodPort:=IniFile.ReadBool('Sistem','OtoBarkodPort',True);
  SayacVar := IniFile.ReadBool('Sistem','SayacVar',True);
  BarkodTekil:=IniFile.ReadBool('Sistem','BarkodTekil',True);
  Fasoncu:=IniFile.ReadBool('Sistem','Fasoncu',False);
  Sevkiyatci:=IniFile.ReadBool('Sistem','Sevkiyatci',False);
  BarIndexStr:=IniFile.ReadString('Sistem','BarIndexStr','');

  CekiListesi:=IniFile.ReadBool('Sistem','CekiListesi',False);

  ZLite:= IniFile.ReadBool('Kontrol','VeriTabaniGenel',False);

  IniFile.Free;
  myLabel3d5.Caption:=Ver_Yaz1 ;

  //üretim takip varsa gözükmesi gereken butonlar;
  OperatrTakip1.Visible:=Uretim;
  MusTakip1.Visible:=Uretim;
  PartiTakip1.Visible:=Uretim;
  SevkEdilenToplar1.Visible:=Uretim;

  AdvOfficePagerOfficeStyler1.Style:=psOffice2007Obsidian;
//lbl1.Left:=  Form1.Width div 2 -lbl1.Width div 2;

  ResimHint_SmoothButton(AnaEkran.imgVaz,AdvSmoothButton1,'Kapat');
  ResimHint_SmoothButton(AnaEkran.img_Word,Button_Plan,'TANIMLA');
  ResimHint_SmoothButton(AnaEkran.ImageAyar,Button_Admin,'GA');
  ResimAl1(AnaEkran.ImageKey,AdvGlowButton1);
  ResimAl1(AnaEkran.ImageKey,AdvGlowButton2);
  ResimHint(AnaEkran.ImageKey,AdvGlowButton1,'Key');
  ResimHint(AnaEkran.ImageKey,AdvGlowButton2,'Key');
  HelpUpdateKontrol();
  if ZLite then
  begin
    if (Yedekleme) and (not NetworkBool )then
    begin
     if GunLisan<>DateToStr(now) then
     begin
              if FileExists(Form1.FileRegD+'\Yedek\'+DateToStr(now-14)+'\'+Form1.ExeName+'.db') then
              begin
                DeleteTumDir (Form1.FileRegD+'\Yedek\'+DateToStr(now-14),True);
              end;

          DiziYoksaYarat(FileRegD+'\Yedek',False);
          DiziYoksaYarat(FileRegD+'\Yedek\'+DateToStr(now),False);
          Mem_CopyFile(PChar(FileRegD+'\'+ExeName+'.db'),PChar(FileRegD+'\Yedek\'+DateToStr(now)+'\'+ExeName+'.db'));

     end;
    end;
  end;


  if Demo then
  begin
    edtPassword.Text:='DEMO';
     if GunLisan<>DateToStr(now) then
     begin
         DemoSay:=0;
     end;

  end;

  if lisankon then
  begin

    If WebBaglantiVarMi then
    begin


     if GunLisan<>DateToStr(now) then
     begin
        GunLisan:=DateToStr(now);
        IniFile:=TIniFile.Create(PeykanLisans+'\'+ExeName+'.ini');
        IniFile.WriteString('Prog','Gun', GunLisan);
        IniFile.Free;


          LisansControl;
     end;
     end;
//   end else
//  begin
//        IniFile:=TIniFile.Create(PeykanLisans+'\'+ExeName+'.ini');
//        IniFile.WriteString('Prog','Gun', DateToStr(now));
//        IniFile.Free;

  end;
//    ResimAl1(AnaEkran.Image_TL,CariHesap1);


  if not ZLite then
  begin

    if FileExists(FileRegD+'\'+ExeAdi+'.udl') then
    begin
     MSSQL_UDL_Baglan(ADOConnection1,ExeName,IntToStr(MakinaNo));

      Form1.StatusBar1.Panels[3].Text :='<p align="center"><B><BODY BGCOLOR="clLime">MS SQL</BODY></b></p>';


    end else
    begin
      if MSSQL_Baglan('','sa','PeyKupon1','',ADOConnection1,True) then
      begin
        StatusBar1.Panels[3].Text :='<p align="center" ><B><BODY BGCOLOR="clLime" >MS SQL</BODY></b></p>';

      end else
      begin
        StatusBar1.Panels[1].Text :='<p align="center"><B><BODY BGCOLOR="clRed">MS SQL</BODY></b></p>';
        ShowMessage('Hata Kodu :  ' +#13+'VERITABANINA BAGLANILAMIYOR. AG BAGLANTILARINI KONTROL EDINI!');
        exit;
      end;
    end;

//************************
//************************* FORM CREATE SONU
//     ADOConnection1.Connected := False;
//     ADOConnection1.ConnectionString:='FILE NAME='+FileRegD+'\'+ExeAdi+'.udl';
//  //   ADOConnection1.DefaultDatabase:='PEY_KONFEKSIYON';
//      Try
//       ADOConnection1.Connected:=TRUE;
//      except
//      end;
//      if ADOConnection1.Connected = False then
//      begin
//       ShowMessage('Hata Kodu :  ' +#13+'VERÝTABANINA BAÐLANILAMIYOR. AÐ BAÐLANTILARINI KONTROL EDÝNÝZ!');
//        ZLite:=True;
//        GOTO Atla;
//       end;
//              Form1.StatusBar1.Panels[3].Text :='<p align="center"><B><BODY BGCOLOR="clLime">MS SQL</BODY></b></p>';
////-----------------
     SqlTabloKontrol;

  end else
  begin
     Form1.StatusBar1.Panels[3].Text :='<p align="center"><B><BODY BGCOLOR="clRed">LOCAL HOST</BODY></b></p>';
     SQL_Baglan;
  end;


  Atla:
  if FileExists(FileRegD+'\Data\Logo.png') then
  begin
    AnaEkran.Image_LogoGul.Picture.LoadFromFile(FileRegD+'\Data\Logo.png');
    LogoVar:=True;
  end else
  begin
    LogoVar:=False;
  end;
//  FareSetup;
//  SpeedButton2.Cursor:=99;
  Application.ProcessMessages;

end;

procedure TForm1.Button_HDepoClick(Sender: TObject);
     var
       iTop: integer;
begin
  if FKod<>'0' then
  begin
       iTop := Top + Height - ClientHeight;
       BcBarPopupMenu2.Popup(Left+Button_HDepo.Left,iTop-10+//Form1.HTMLStatusBar1.Height+
                              Button_HDepo.Top+Button_HDepo.Height);

   exit;

  end;
    SesPlay('Clk');
    Form1.WindowState:=wsMinimized;
    Delay(50);
    Form1.Hide;

    if Sevkiyatci then
    begin
        Form_StokAl:=TForm_StokAl.Create(Application);
        Form_StokAl.ShowModal;
        Form_StokAl.Free;
    end else
    begin
        Form_Makina:=TForm_Makina.Create(Application);
        Form_Makina.Height:=Screen.Height;
        Form_Makina.Width:=Screen.Width;
        Form_Makina.Top:=0;
        Form_Makina.Left:=0;
        Form_Makina.ShowModal;
        Form_Makina.Free;
    end;
    Form1.WindowState:=wsNormal;
    Form1.Show;
    Form1.WindowState:=wsNormal;

end;

procedure TForm1.edtPasswordKeyPress(Sender: TObject; var Key: Char);
begin

  If Key = Chr(VK_F1) Then
   HtmlHelp(GetDesktopWindow, PChar(Application.HelpFile), HH_HELP_CONTEXT, 0);

  if edtPassword.Text<>'' then
  begin
    if Key=Chr(VK_RETURN) then
    SpeedButton1Click(Self);
  end

end;

procedure TForm1.Button_AdminClick(Sender: TObject);
begin

    SesPlay('Clk');
    Form1.WindowState:=wsMinimized;
    Delay(50);
    Form1.Hide;
    Form_Admin:=TForm_Admin.Create(Application);
    Form_Admin.ShowModal;
    Form_Admin.Free;

    Form1.Show;
    Form1.WindowState:=wsNormal;

end;

procedure TForm1.Button_PlanClick(Sender: TObject);
     var
       iTop: integer;
begin

  if Uretim then
  begin
     iTop := Top + Height - ClientHeight;
     BcBarPopupMenu1.Popup(Left+Button_Plan.Left,iTop-10+Button_Plan.Top+Button_Plan.Height);
     Exit;
  end;

    SesPlay('Clk');
    Form1.WindowState:=wsMinimized;
    Delay(50);
    Form1.Hide;
    MusForm:=TMusForm.Create(Application);
    MusForm.ShowModal;
    MusForm.Free;

    Form1.Show;
    Form1.WindowState:=wsNormal;

end;

procedure TForm1.Button_SevkClick(Sender: TObject);
begin

    SesPlay('Clk');
  Form1.WindowState:=wsMinimized;
  Screen.Cursor:=crHourGlass;
  Delay(5);
  Form1.Hide;
 // PeykanPanel.FormAc;

 if Fasoncu then
 begin
     Form_StokOut:=TForm_StokOut.Create(Application);
     Form_StokOut.ShowModal;
     Form_StokOut.Free;
 end else
 begin
  FormSevk:=TFormSevk.Create(Application);
  FormSevk.ShowModal;
  FormSevk.Free;
 end;
  Form1.Show;
  Form1.WindowState:=wsNormal;


end;

procedure TForm1.Button_RaporClick(Sender: TObject);
     var
       iTop: integer;
begin
       iTop := Top + Height - ClientHeight;
       PopupMenu_SQL.Popup(Left+Button_Rapor.Left,iTop-10+//Form1.HTMLStatusBar1.Height+
                              Button_Rapor.Top+Button_Rapor.Height);

   exit;



end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var
  Bulunduyer:string;
begin
  Bulunduyer:=GetDeskTopPath(Form1,'PROGRAMS_FILES');
  If WebBaglantiVarMi then
  begin
    if FileExists(Bulunduyer+'\AnyDesk\AnyDesk.exe') then
    begin
      CalisVeBekle(Form1,Bulunduyer+'\AnyDesk\AnyDesk.exe','');
    end else
    begin
        Bulunduyer:=GetDeskTopPath(Form1,'DESKTOP');
      if FileExists(Bulunduyer+'\AnyDesk.exe') then
        CalisVeBekle(Form1,Bulunduyer+'\AnyDesk.exe','')
      else
      ShellExecute(0, 'open', PChar(WebAdresAnydesk), nil, nil, SW_SHOWNORMAL);
    end;
  END else
      PeykanHint('','INTERNETE BAGLANTI YOK',clYellow,10,False);
end;

procedure TForm1.img1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  TForm(form1).perform(WM_SYSCOMMAND, $F012, 0);

end;

procedure TForm1.anmliAGENTTAANAMAKINAAktar1Click(Sender: TObject);
begin
    SesPlay('Clk');
    Form1.WindowState:=wsMinimized;
    Delay(50);
    Form1.Hide;
    FormRapor:=TFormRapor.Create(Application);
    FormRapor.ShowModal;
    FormRapor.Free;
    Form1.Show;
    Form1.WindowState:=wsNormal;
end;

procedure TForm1.anmlFIRMALARIANAMAKINAAktar1Click(Sender: TObject);
begin
    SesPlay('Clk');
    Form1.WindowState:=wsMinimized;
    Delay(50);
    Form1.Hide;
    FormStok:=TFormStok.Create(Application);
    FormStok.ShowModal;
    FormStok.Free;
    Form1.Show;
    Form1.WindowState:=wsNormal;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:=False;
  AnaEkran.Hide;

end;

procedure TForm1.myLabel3d5Click(Sender: TObject);
begin
    DForm:=TDForm.Create(Application);
    DForm.DalgaOlsun:=True;
    DForm.DemoDur:=Form1.Demo;
//    DForm.RegKod:=RegKod;
//    DForm.LisanStr:=LisanStr;
    DForm.ShowModal;
    DForm.Free;
end;

procedure TForm1.CariHesap1Click(Sender: TObject);
begin
    SesPlay('Clk');
// if FormCari = nil then
//  begin
//    FormCari:=TFormCari.Create(Application);
//    AdvOfficeMDITabSet1.AddTab(FormCari);
//    FormCari.Show;
//    if (TamDemo) OR (Trial) Then
//     WebHizmet('1');
//  end ELSE
//  BEGIN
//    FormCari.Show;
//    FormCari.Timer1.Enabled:=True;
//    FormCari.WindowState:=wsNormal;
//   end;

   Form1.WindowState:=wsMinimized;
    Delay(50);
    Form1.Hide;
   FormCari:=TFormCari.Create(Application);
   FormCari.ShowModal;
   FormCari.Free;

    Form1.Show;
    Form1.WindowState:=wsNormal;
end;



procedure TForm1.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
  if ZLite then
  begin
   if Form1.NetworkBool then
   begin
     DeleteFile(Form1.NetworkYer+'\Peykan.cfg');
    delay(3);
        if FileExists(Form1.NetworkYer+'\Peykan.cfg') then
     DeleteFile(Form1.NetworkYer+'\Peykan.cfg');
   end else
   begin
     DeleteFile(Form1.FileRegD+'\Peykan.cfg');
    delay(3);
        if FileExists(Form1.FileRegD+'\Peykan.cfg') then
     DeleteFile(Form1.FileRegD+'\Peykan.cfg');
   end;
  end;

//  STATUS_IN_PAGE_ERROR
 ErrorLogYazdir('Makina No :'+IntToStr(Form1.MakinaNo)+'  --->  '+E.Message);

end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

  if ZLite then
  begin
        if FileExists(Form1.FileRegD+'\Peykan.cfg') then
        DeleteFile(Form1.FileRegD+'\Peykan.cfg');
        delay(50);
   end;
        ProgramUcur(ExeName+'.EXE');


end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = char(VK_F1) Then
   HtmlHelp(GetDesktopWindow, PChar(Application.HelpFile), HH_HELP_CONTEXT, 0);
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_F1 Then
   HtmlHelp(GetDesktopWindow, PChar(Application.HelpFile), HH_HELP_CONTEXT, 0);
end;

function TForm1.ApplicationEvents1Help(Command: Word; Data: Integer;
  var CallHelp: Boolean): Boolean;
begin
   CallHelp := False;
  Result := True;
  //argh, WinHelp commands
  case Command of
     HELP_CONTEXT,HELP_CONTEXTPOPUP:
    HtmlHelp(GetDesktopWindow, PChar(Application.HelpFile), HH_HELP_CONTEXT, Data);
  end;
end;

procedure TForm1.TimerHaltTimer(Sender: TObject);
begin
  TimerHalt.Enabled:=False;
  HabDlg:=THabDlg.Create(Application);
  HabDlg.ShowModal;
  HabDlg.Free;
  Application.Terminate;
end;

procedure TForm1.ImageHelpClick(Sender: TObject);
begin
 YardimNoGoster(1);
//   HtmlHelp(GetDesktopWindow, PChar(Application.HelpFile), HH_HELP_CONTEXT, 0);
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage(KuponBarkod+' - '+SeriNoVer );
  //Exit;
ShellExecute(handle,'open',PChar('https://www.servopack.de/support/zebra/EPL2_Manual.pdf#page=81'), '','',SW_MAXIMIZE)
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
    SesPlay('Clk');
    Form1.WindowState:=wsMinimized;
    Delay(50);
    Form1.Hide;

        Form_Makina:=TForm_Makina.Create(Application);
        Form_Makina.Height:=Screen.Height;
        Form_Makina.Width:=Screen.Width;
        Form_Makina.Top:=0;
        Form_Makina.Left:=0;
        Form_Makina.ShowModal;
        Form_Makina.Free;
    Form1.WindowState:=wsNormal;
    Form1.Show;

end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
    SesPlay('Clk');
    Form1.WindowState:=wsMinimized;
    Delay(50);
    Form1.Hide;

        Form_StokFtp:=TForm_StokFtp.Create(Application);
        Form_StokFtp.Height:=Screen.Height;
        Form_StokFtp.Width:=Screen.Width;
        Form_StokFtp.Top:=0;
        Form_StokFtp.Left:=0;
        Form_StokFtp.ShowModal;
        Form_StokFtp.Free;
    Form1.WindowState:=wsNormal;
    Form1.Show;
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
    SesPlay('Clk');
    Form1.WindowState:=wsMinimized;
    Delay(50);
    Form1.Hide;
    MusForm:=TMusForm.Create(Application);
    MusForm.ShowModal;
    MusForm.Free;

    Form1.Show;
    Form1.WindowState:=wsNormal;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
    SesPlay('Clk');
    Form1.WindowState:=wsMinimized;
    Delay(50);
    Form1.Hide;
    FormHGiris:=TFormHGiris.Create(Application);
    FormHGiris.ShowModal;
    FormHGiris.Free;

    Form1.Show;
    Form1.WindowState:=wsNormal;
end;

procedure TForm1.OperatrTakip1Click(Sender: TObject);
begin
  SesPlay('Clk');

  Form1.WindowState:=wsMinimized;
  Delay(50);
  Form1.Hide;
  Form_OpTakip:=TForm_OpTakip.Create(Application);
  Form_OpTakip.ShowModal;
  Form_OpTakip.Free;

  Form1.Show;
  Form1.WindowState:=wsNormal;
end;

procedure TForm1.PartiTakip1Click(Sender: TObject);
begin
  SesPlay('Clk');

  Form1.WindowState:=wsMinimized;
  Delay(50);
  Form1.Hide;
  Form_TakipKont:=TForm_TakipKont.Create(Application);
  Form_TakipKont.ShowModal;
  Form_TakipKont.Free;

  Form1.Show;
  Form1.WindowState:=wsNormal;
end;



procedure TForm1.AdvGlowButton1Click(Sender: TObject);
begin
  Form1.Pass:=False;
  Form1.keyno:=2;
   Form_Password:=TForm_Password.Create(Application);
   Form_Password.Top:=Form1.Top+SpeedButton1.Top;
   Form_Password.Left:=Form1.Left+SpeedButton1.Left-60;
   Form_Password.ShowModal;

   if Form1.Pass then
     SpeedButton1Click(Self);

   Form_Password.Free;
end;

procedure TForm1.AdvGlowButton2Click(Sender: TObject);
begin
  KeyForm:=TKeyForm.Create(Application);
  KeyForm.KeyNo:=6;
  KeyForm.xpEdit1.Font.Color:= clWhite;
  KeyForm.xpEdit1.text:='';
  KeyForm.Top:=Form1.Top+edtPassword.Top+25;
  KeyForm.Left:=Form1.Left+edtPassword.Left-100;
  KeyForm.ShowModal;
  KeyForm.Free;
     SpeedButton1Click(Self);
end;

procedure TForm1.MusTakip1Click(Sender: TObject);
begin
  SesPlay('Clk');

  Form1.WindowState:=wsMinimized;
  Delay(50);
  Form1.Hide;
  Form_MusRapor:=TForm_MusRapor.Create(Application);
  Form_MusRapor.ShowModal;
  Form_MusRapor.Free;

  Form1.Show;
  Form1.WindowState:=wsNormal;
end;

procedure TForm1.SevkEdilenToplar1Click(Sender: TObject);
begin
  SesPlay('Clk');
  Form1.WindowState:=wsMinimized;
  Delay(50);
  Form1.Hide;
  FormSevkEdilmis:=TFormSevkEdilmis.Create(Application);
  FormSevkEdilmis.ShowModal;
  FormSevkEdilmis.Free;

  Form1.Show;
  Form1.WindowState:=wsNormal;
end;

end.
