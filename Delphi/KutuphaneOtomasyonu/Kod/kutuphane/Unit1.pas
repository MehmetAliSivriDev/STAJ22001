unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvGlassButton, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset,peykan_Unit,StrUtils,
  AdvGlowButton, ExtCtrls, ComCtrls, AdvOfficeStatusBar, VrControls,IniFiles,
  ADODB, AdvSmoothButton, VrSystem, VrDesign, Mylabel;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    EEposta: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    ESifre: TEdit;
    BGirisYap: TAdvGlassButton;
    LKayit: TLabel;
    ZConnection1: TZConnection;
    Panel1: TPanel;
    BClose: TAdvGlowButton;
    StatusBar1: TAdvOfficeStatusBar;
    Label4: TLabel;
    VrBitmapList1: TVrBitmapList;
    ADOConnection1: TADOConnection;
    ADOCommand1: TADOCommand;
    ADOQuery1: TADOQuery;
    BAyarlar: TAdvGlowButton;
    procedure LKayitClick(Sender: TObject);
    procedure BGirisYapClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SQL_Baglan;
    procedure BCloseClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure EEpostaExit(Sender: TObject);
    procedure SqlYarat(TabloKod:Byte;Tablo_adi : String);
    procedure SqlTabloKontrol;
    procedure BAyarlarClick(Sender: TObject);
  private
    { Private declarations }
  public
     FileRegD,ExeName: string;
     ZLite : Boolean;
     EHiz,EKoyu,ECiktiSayisi : string;
     
  end;

var
  Form1: TForm1;
  ZQuery1 : TZQuery;
  IniFile : TIniFile;
  ADOQuery1 : TADOQuery;
  kullanici_eposta : string;


implementation
uses
  Unit3,Unit2,Unit11;

{$R *.dfm}

procedure TForm1.SqlYarat(TabloKod:Byte;Tablo_adi : String);
var
  ADOQuery_Yarat : TADOQuery;
begin

  ADOQuery_Yarat := TADOQuery.Create(Self);
  if MSSQLKontrol_Query(ADOConnection1,ADOQuery_Yarat,True,ExeName,'') then
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
        //Kullanýcý
        1:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'kullanici'+
          '('+
          'id INTEGER PRIMARY KEY IDENTITY NOT NULL,'+
          'ad VARCHAR(50) NOT NULL,'+
          'soyad VARCHAR(50) NOT NULL,'+
          'dogum_yeri VARCHAR(50),'+
          'dogum_tarihi DATE DEFAULT (GETDATE()),'+
          'tel VARCHAR(10),'+
          'adres TEXT,'+
          'epsota VARCHAR(300) NOT NULL,'+
          'sifre VARCHAR(50) NOT NULL,'+
          'tc_no VARCHAR(11),'+
          'aktifMi INTEGER NOT NULL,'+
          'yetkili INTEGER DEFAULT(0)'+
          ')';

        //Yazar
        2:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'yazar'+
          '('+
          'id INTEGER PRIMARY KEY IDENTITY NOT NULL,'+
          'ad VARCHAR(50) NOT NULL,'+
          'soyad VARCHAR(50) NOT NULL,'+
          'dogum_tarihi DATE DEFAULT (GETDATE()),'+
          'dogum_yeri VARCHAR(50),'+
          'aciklama TEXT'+
          ')';

        //Yayýnevi
        3:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'yayinevi'+
          '('+
          'id INTEGER PRIMARY KEY IDENTITY NOT NULL,'+
          'yayinevi_ad VARCHAR(100) NOT NULL,'+
          'kurulus_tarihi DATE DEFAULT (GETDATE()),'+
          'adres TEXT NOT NULL,'+
          'tel VARCHAR(11) NOT NULL'+
          ')';


        //Ödünç Alma
        4:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'odunc_alma'+
          '('+
          'id INTEGER PRIMARY KEY IDENTITY NOT NULL,'+
          'kitap_id INTEGER NOT NULL,'+
          'kullanici_id INTEGER NOT NULL,'+
          'odunc_alinan_tarih DATE DEFAULT (GETDATE()),'+
          'teslim_edilen_tarih DATE DEFAULT (GETDATE())'+
          ')';


        //Ceza
        5:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'ceza'+
          '('+
          'id INTEGER PRIMARY KEY IDENTITY NOT NULL,'+
          'kullanici_id INTEGER NOT NULL,'+
          'geciktirilen_sure INTEGER NOT NULL,'+
          'para_tutari INTEGER NOT NULL'+
          ')';


        //Kitap
        6:
          ADOCommand1.CommandText :=
          'CREATE TABLE '+'kitap'+
          '('+
          'id INTEGER PRIMARY KEY IDENTITY NOT NULL,'+
          'kitap_adi VARCHAR(100) NOT NULL,'+
          'yazar_id INTEGER NOT NULL,'+
          'sayfa_sayisi INTEGER,'+
          'yayinevi_id INTEGER NOT NULL,'+
          'baski_sayisi INTEGER,'+
          'isbn_no VARCHAR(11) NOT NULL,'+
          'kat_no INTEGER,'+
          'kitaplýk_no VARCHAR(10) NOT NULL,'+
          'raf_no INTEGER NOT NULL'+
          ')';



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
    SqlYarat(1,'kullanici');
    SqlYarat(2,'yazar');
    SqlYarat(3,'yayinevi');
    SqlYarat(4,'odunc_alma');
    SqlYarat(5,'ceza');
    SqlYarat(6,'kitap');
end;



procedure TForm1.SQL_Baglan;
Label Bad;
var
  ZQueryYarat: TZQuery;


begin

  ZConnection1.Protocol:='sqlite-3';


  if not FileExists(ExtractFilePath(Application.ExeName)+'sqlite3.dll') then
  begin
       ShowMessage(ExtractFilePath(Application.ExeName)+'sqlite3.dll    DOSYA BULUNAMADI');
    Delay(100);
    Halt;
    exit;
  end;

  ZConnection1.LibraryLocation:=ExtractFilePath(Application.ExeName)+'sqlite3.dll';
    if not FileExists(ZConnection1.LibraryLocation) then Exit;
      ZConnection1.Database:=FileRegD+'\'+ExeName+'.db';
//    ZConnection1.Database:='Z:\Peykan.sqlite3';
    if not FileExists(ZConnection1.Database) then
    begin

      ZQueryYarat :=TZQuery.Create(self);
      ZQueryYarat.Connection:=ZConnection1;

    //SQLLITE

        //1 Kullanýcý
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE kullanici(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, ');
        ZQueryYarat.SQL.Add('ad VARCHAR(50) NOT NULL, soyad VARCHAR(50) NOT NULL, dogum_yeri VARCHAR(50),dogum_tarihi DATE DEFAULT (STRFTIME ('+QuotedStr('%Y-%m-%d')+ ')), tel VARCHAR(10), adres TEXT,');
        ZQueryYarat.SQL.Add('epsota VARCHAR(300) NOT NULL,sifre VARCHAR(50) NOT NULL, tc_no VARCHAR(11), aktifMi INTEGER NOT NULL, yetki INTEGER DEFAULT(0))');
        ZQueryYarat.ExecSQL;
        delay(22);

        //2 Yazar
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE yazar(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,');
        ZQueryYarat.SQL.Add('ad VARCHAR(50) NOT NULL,soyad VARCHAR(50) NOT NULL,dogum_tarihi DATE DEFAULT (STRFTIME ('+QuotedStr('%Y-%m-%d')+ ')) NOT NULL,');
        ZQueryYarat.SQL.Add('dogum_yeri VARCHAR(50),aciklama TEXT )') ;
        ZQueryYarat.ExecSQL;
        delay(22);

        //3 Yayýnevi
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE yayinevi(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, ');
        ZQueryYarat.SQL.Add('yayinevi_ad VARCHAR(100) NOT NULL,kurulus_tarihi DATE DEFAULT (STRFTIME ('+QuotedStr('%Y-%m-%d')+ ')),');
        ZQueryYarat.SQL.Add('adres TEXT NOT NULL,tel VARCHAR(11) NOT NULL )') ;
        ZQueryYarat.ExecSQL;
        delay(22);

        //4 Odunc Alma
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE odunc_alma(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, ');
        ZQueryYarat.SQL.Add('kitap_id INTEGER NOT NULL, kullanici_id INTEGER NOT NULL, odunc_alinan_tarih DATE DEFAULT (STRFTIME ('+QuotedStr('%Y-%m-%d')+ ')) NOT NULL, teslim_edilen_tarih DATE DEFAULT (STRFTIME ('+QuotedStr('%Y-%m-%d')+ '))) ');
        ZQueryYarat.ExecSQL;
        delay(22);


        //5 Ceza
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE ceza(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, ');
        ZQueryYarat.SQL.Add('kullanici_id INTEGER NOT NULL, geciktirilen_sure INTEGER NOT NULL, para_tutari INTEGER NOT NULL ) ');
        ZQueryYarat.ExecSQL;
        delay(22);

        //6 Kitap
        ZQueryYarat.Close;
        ZQueryYarat.SQL.Clear;
        ZQueryYarat.SQL.Add('CREATE TABLE kitap(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, ');
        ZQueryYarat.SQL.Add('kitap_adi VARCHAR(100) NOT NULL,yazar_id INTEGER NOT NULL,sayfa_sayisi INTEGER,yayinevi_id INTEGER NOT NULL,');
        ZQueryYarat.SQL.Add('baski_sayisi INTEGER,isbn_no VARCHAR(11) NOT NULL,kat_no INTEGER,kitaplýk_no VARCHAR(10) NOT NULL,raf_no INTEGER NOT NULL  )');
        ZQueryYarat.ExecSQL;
        delay(22);

        ZQueryYarat.Free;

    end;
    ZConnection1.Connect;
end;



procedure TForm1.LKayitClick(Sender: TObject);
begin

  Application.CreateForm(TForm3, Form3);
  Form3.Show;
  Form1.Hide;

end;

procedure TForm1.BGirisYapClick(Sender: TObject);
begin

  ZQuery1 :=TZQuery.Create(self);
  ZQuery1.Connection:=Form1.ZConnection1;

  ADOQuery1 := TADOQuery.Create(self);
  ADOQuery1.Connection := Form1.ADOConnection1;

  if (EEposta.Text = 'admin') and  (ESifre.Text = '1342') then
  begin
       ShowMessage('Admin Giriþi Gerçekleþtirildi.');

       IniFile:=TIniFile.Create(Form1.FileRegD+'\'+ExeName+'.ini');
       IniFile.WriteString('KullaniciAyarlari', 'eposta',EEposta.Text);
       IniFile.Free;;

       Application.CreateForm(TForm2, Form2);
       Form2.kullanici_eposta := 'admin';
       Form2.kullanici_ad := 'admin';
       Form2.kullanici_soyad := 'admin';
       Form2.kullanici_id := 'admin';
       Form2.Show;
       Form1.Hide;
  end
  else
  begin
        if (EEposta.Text = '') or (ESifre.Text = '') then
        begin
          ShowMessage('Lütfen Tüm Boþluklarý Doldurun');
        end
        else
        begin

          if (AnsiContainsText(EEposta.Text,'@')) and (AnsiContainsText(EEposta.Text,'.com')) then
          begin

               if not ZLite then
               begin
                 ADOQuery1.Close;
                 ADOQuery1.SQL.Clear;
                 ADOQuery1.SQL.Add('SELECT * FROM kullanici where epsota = '+QuotedStr(EEposta.Text) + 'and sifre = ' + QuotedStr(ESifre.Text) );
                 ADOQuery1.Open;
                 if ADOQuery1.RecordCount > 0 then
                 begin
                        Application.CreateForm(TForm2, Form2);
                        Form2.kullanici_eposta := EEposta.Text;
                        Form2.kullanici_ad := ADOQuery1.FieldByName('ad').AsString;
                        Form2.kullanici_soyad := ADOQuery1.FieldByName('soyad').AsString;
                        Form2.kullanici_id := ADOQuery1.FieldByName('id').AsString;

                        IniFile:=TIniFile.Create(Form1.FileRegD+'\'+ExeName+'.ini');
                        IniFile.WriteString('KullaniciAyarlari', 'eposta',EEposta.Text);
                        IniFile.Free;

                        Form2.Show;
                        Form1.Hide;
                 end else
                 begin
                      ShowMessage('EPosta veya Þifre Hatalý');
                 end;
               end else
               begin
                  ZQuery1.Close;
                  ZQuery1.SQL.Clear;
                  ZQuery1.SQL.Add('SELECT * FROM kullanici where epsota = '+QuotedStr(EEposta.Text) + 'and sifre = ' + QuotedStr(ESifre.Text) );
                  ZQuery1.Open;

                  if ZQuery1.RecordCount > 0 then
                  begin
                      Application.CreateForm(TForm2, Form2);
                      Form2.kullanici_eposta := EEposta.Text;
                      Form2.kullanici_ad := ZQuery1.FieldByName('ad').AsString;
                      Form2.kullanici_soyad := ZQuery1.FieldByName('soyad').AsString;
                      Form2.kullanici_id := ZQuery1.FieldByName('id').AsString;

                      IniFile:=TIniFile.Create(Form1.FileRegD+'\'+ExeName+'.ini');
                      IniFile.WriteString('KullaniciAyarlari', 'eposta',EEposta.Text);
                      IniFile.Free;

                      Form2.Show;
                      Form1.Hide;
                  end
                  else
                  begin
                      ShowMessage('EPosta veya Þifre Hatalý');
                  end;
               end;
          end
          else
          begin
            ShowMessage('Lütfen Geçerli Bir EPosta Giriniz ("@" ve ".com" içermeli)');
          end;

        end;
  end;




end;

procedure TForm1.FormCreate(Sender: TObject);
var
  time : string;
begin
  time := FormatDateTime('yyyy-mm-dd', Now);
  FileRegD:=ExeYeri;
  ExeName:=ExeAdi;

  IniFile:=TIniFile.Create(Form1.FileRegD+'\'+ExeName+'.ini');
  ZLite:= IniFile.ReadBool('Kontrol','VeriTabaniGenel',False);
  kullanici_eposta:=IniFile.ReadString('KullaniciAyarlari','eposta','');
  EHiz:=IniFile.ReadString('Ayar','EHiz','2');
  EKoyu:=IniFile.ReadString('Ayar','EKoyu','10');
  ECiktiSayisi:=IniFile.ReadString('Ayar','ECiktiSayisi','1');
  IniFile.Free;

  EEposta.Text := kullanici_eposta;

  if not ZLite then
  begin

    if FileExists(FileRegD+'\'+ExeAdi+'.udl') then
    begin
     MSSQL_UDL_Baglan(ADOConnection1,ExeName,'');

      Form1.StatusBar1.Panels[1].Text :='<p align="center"><B><BODY BGCOLOR="clLime">MS SQL</BODY></b></p>';


    end else
    begin
      ShowMessage('UDL Dosyasý Bulunamadý');
    end;

//************************
//************************* FORM CREATE SONU
    SqlTabloKontrol;

  end else
  begin

     StatusBar1.Panels[1].Text :='<p align="center"><B><BODY BGCOLOR="clRed">LOCAL HOST</BODY></b></p>';
     SQL_Baglan;
  end;
  StatusBar1.Panels[0].Text :='<p align="center"><B><BODY BGCOLOR="clWhite">'+ time +'</BODY></b></p>';
  StatusBar1.Panels[2].Text :='<p align="center"><B><BODY BGCOLOR="clGreen">MEHMET ALÝ SÝVRÝ</BODY></b></p>';
end;

procedure TForm1.BCloseClick(Sender: TObject);
begin
close;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  ZQuery1.Free;
  ADOQuery1.Free;
end;

procedure TForm1.EEpostaExit(Sender: TObject);
begin
  if MailAdresHatali(EEposta.Text) or (EEposta.Text = 'admin') then
  begin
    EEposta.Color := clWhite;
  end
  else
  begin
    EEposta.Color := clRed;
  end;

end;

procedure TForm1.BAyarlarClick(Sender: TObject);
begin
    Application.CreateForm(TForm11, Form11);
    Form11.Show;
    Form1.Hide;
end;

end.
