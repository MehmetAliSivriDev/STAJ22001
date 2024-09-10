unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlassButton, StdCtrls, DB, ZAbstractRODataset, IniFiles,
  ZAbstractDataset, ZDataset, AdvOfficeStatusBar, AdvGlowButton, ExtCtrls,peykan_Unit,
  ADODB;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    LGiris: TLabel;
    EEposta: TEdit;
    ESifre: TEdit;
    BKayitOl: TAdvGlassButton;
    ESifreTekrar: TEdit;
    Label4: TLabel;
    EAd: TEdit;
    ESoyad: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    BClose: TAdvGlowButton;
    Label7: TLabel;
    procedure LGirisClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BKayitOlClick(Sender: TObject);
    procedure BCloseClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  ZQuery3: TZQuery;
  ADOQuery3 : TADOQuery;

implementation
uses
  Unit1, StrUtils;

{$R *.dfm}

procedure TForm3.LGirisClick(Sender: TObject);
begin
    Form1.Show;
    Form3.Close;
end;

procedure TForm3.FormCreate(Sender: TObject);
var
  time : string;

begin
  ZQuery3 :=TZQuery.Create(self);
  ZQuery3.Connection:=Form1.ZConnection1;

  ADOQuery3 := TADOQuery.Create(self);
  ADOQuery3.Connection := Form1.ADOConnection1;

end;

procedure TForm3.BKayitOlClick(Sender: TObject);
var
  SQL : string;
begin

  SQL := '';

  if (EEposta.Text = '') or not (Pos('@' ,EEposta.Text) > 0) then
  begin
     ShowMessage('Lütfen geçerli bir eposta giriniz.');
  end
  else if  not (ESifre.Text = '') or  not (ESifreTekrar.Text = '')  and (ESifre.Text = ESifreTekrar.Text) then
  begin

    if not Form1.ZLite then
    begin

        ADOQuery3.Close;
        ADOQuery3.SQL.Clear;
        ADOQuery3.SQL.Add('SELECT * FROM kullanici where epsota = '+QuotedStr(EEposta.Text));
        ADOQuery3.Open;
        if ADOQuery3.RecordCount >0 then
        begin
             ShowMessage('EPosta zaten kayýtlý');
        end
        else
        begin

             SQL := 'INSERT INTO kullanici (ad,soyad,epsota,sifre,aktifMi,dogum_tarihi)';
             SQL := SQL + ' VALUES ('+ QuotedStr(EAd.Text) + ',' + QuotedStr(ESoyad.Text) + ',' + QuotedStr(EEposta.Text) + ',' + QuotedStr(ESifre.Text)+',1' + ', NULL)';

             Form1.ADOCommand1.CommandText := SQL;
             Form1.ADOCommand1.Execute;
             ShowMessage('Kayýt Baþarýyla Oluþturuldu.');

             Form1.Show;
             Form3.Close;

        end;

    end else
    begin

        ZQuery3.Close;
        ZQuery3.SQL.Clear;
        ZQuery3.SQL.Add('SELECT * FROM kullanici where epsota = '+QuotedStr(EEposta.Text));
        ZQuery3.Open;
        if ZQuery3.RecordCount >0 then
        begin
             ShowMessage('EPosta zaten kayýtlý');
        end
        else
        begin

             ZQuery3.Close;
             ZQuery3.SQL.Clear;
             ZQuery3.SQL.Add('INSERT INTO kullanici (ad,soyad,epsota,sifre,aktifMi,dogum_tarihi)');
             ZQuery3.SQL.Add('VALUES ('+ QuotedStr(EAd.Text) + ',' + QuotedStr(ESoyad.Text) + ',' + QuotedStr(EEposta.Text) + ',' + QuotedStr(ESifre.Text)+',1,' + QuotedStr('NULL')+')');
             ZQuery3.ExecSQL;

             ShowMessage('Kayýt Baþarýyla Oluþturuldu.');

             Form1.Show;
             Form3.Close;

        end;
        
    end;
  end
  else
  begin
    ShowMessage('Þifreler uyuþmuyor');
  end;




end;

procedure TForm3.BCloseClick(Sender: TObject);
begin
    Form1.Show;
    Form3.Close;
end;

procedure TForm3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  ZQuery3.Free;
  ADOQuery3.Free;
end;

end.
