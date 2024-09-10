unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, ComCtrls, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  StdCtrls, CurvyControls, cxDBEdit, AdvGlassButton, dxGDIPlusClasses, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ADODB;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    BClose: TAdvGlowButton;
    CurvyPanel1: TCurvyPanel;
    EAd: TCurvyEdit;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    ESoyad: TCurvyEdit;
    Label3: TLabel;
    DDogumTarihi: TDateTimePicker;
    Label4: TLabel;
    EDogumYeri: TCurvyEdit;
    Label5: TLabel;
    ETelefon: TCurvyEdit;
    Label6: TLabel;
    EAdres: TCurvyEdit;
    Label7: TLabel;
    ETCKimlik: TCurvyEdit;
    Label8: TLabel;
    BUpdate: TAdvGlassButton;
    Timer1: TTimer;
    Label9: TLabel;
    procedure BCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BUpdateClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private

  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  ZQuery4 : TZQuery;
  ADOQuery4 : TADOQuery;

implementation
uses
  Unit2, Unit1;

{$R *.dfm}

procedure TForm4.BCloseClick(Sender: TObject);
begin

  Form2.Show;
  Form4.Close;

end;

procedure TForm4.FormCreate(Sender: TObject);
begin
    ZQuery4 :=TZQuery.Create(self);
    ZQuery4.Connection:=Form1.ZConnection1;

    ADOQuery4 := TADOQuery.Create(self);
    ADOQuery4.Connection := Form1.ADOConnection1;

    Timer1.Enabled := True;
end;

procedure TForm4.Timer1Timer(Sender: TObject);
var
  tarih : TDate;
begin
    Timer1.Enabled := False;

    if not Form1.ZLite then
    begin

        ADOQuery4.Close;
        ADOQuery4.SQL.Clear;
        ADOQuery4.SQL.Add('SELECT ad,soyad,dogum_yeri,tel,adres,tc_no, Convert(DateTime,dogum_tarihi,104) as xDogum_tarihi FROM kullanici where epsota = '+QuotedStr(Form2.kullanici_eposta));
        ADOQuery4.Open;


        if ADOQuery4.RecordCount > 0 then
        begin

            tarih :=  StrToDate(ADOQuery4.FieldByName('xDogum_tarihi').AsString);

            DDogumTarihi.Date := StrToDate(FormatDateTime('dd.mm.yyyy', tarih));
            EAd.Text := ADOQuery4.FieldByName('ad').AsString;
            ESoyad.Text := ADOQuery4.FieldByName('soyad').AsString;
            EDogumYeri.Text := ADOQuery4.FieldByName('dogum_yeri').AsString;
            ETelefon.Text := ADOQuery4.FieldByName('tel').AsString;
            EAdres.Text := ADOQuery4.FieldByName('adres').AsString;
            ETCKimlik.Text := ADOQuery4.FieldByName('tc_no').AsString;

        end;


    end else
    begin

        ZQuery4.Close;
        ZQuery4.SQL.Clear;
        ZQuery4.SQL.Add('SELECT * FROM kullanici where epsota = '+QuotedStr(Form2.kullanici_eposta));
        ZQuery4.Open;


        if ZQuery4.RecordCount > 0 then
        begin

            DDogumTarihi.Date := ZQuery4.FieldByName('dogum_tarihi').AsDateTime;
            EAd.Text := ZQuery4.FieldByName('ad').AsString;
            ESoyad.Text := ZQuery4.FieldByName('soyad').AsString;
            EDogumYeri.Text := ZQuery4.FieldByName('dogum_yeri').AsString;
            ETelefon.Text := ZQuery4.FieldByName('tel').AsString;
            EAdres.Text := ZQuery4.FieldByName('adres').AsString;
            ETCKimlik.Text := ZQuery4.FieldByName('tc_no').AsString;

        end;
    end;


end;

procedure TForm4.BUpdateClick(Sender: TObject);
var
  SQL : string;
begin

    SQL := '';

    if not Form1.ZLite then
    begin

        SQL := 'UPDATE kullanici SET ad =' + QuotedStr(EAd.Text) + ', soyad =' + QuotedStr(ESoyad.Text) + ', dogum_yeri =' + QuotedStr(EDogumYeri.Text);
        SQL := SQL + ', dogum_tarihi =' + QuotedStr(FormatDateTime('yyyy-mm-dd',DDogumTarihi.Date)) + ', tel =' + QuotedStr(ETelefon.Text) + ', adres =' + QuotedStr(EAdres.Text);
        SQL := SQL + ', tc_no =' + QuotedStr(ETCKimlik.Text) + ' WHERE epsota =' + QuotedStr(Form2.kullanici_eposta);

        Form1.ADOCommand1.CommandText := SQL;
        Form1.ADOCommand1.Execute;

    end else
    begin

        ZQuery4.Close;
        ZQuery4.SQL.Clear;
        ZQuery4.SQL.Add('UPDATE kullanici SET ad =' + QuotedStr(EAd.Text) + ', soyad =' + QuotedStr(ESoyad.Text) + ', dogum_yeri =' + QuotedStr(EDogumYeri.Text));
        ZQuery4.SQL.Add(', dogum_tarihi =' + QuotedStr(FormatDateTime('yyyy-mm-dd',DDogumTarihi.Date)) + ', tel =' + QuotedStr(ETelefon.Text) + ', adres =' + QuotedStr(EAdres.Text));
        ZQuery4.SQL.Add(', tc_no =' + QuotedStr(ETCKimlik.Text) + ' WHERE epsota =' + QuotedStr(Form2.kullanici_eposta));
        ZQuery4.ExecSQL;

    end;

    ShowMessage('Bilgileriniz Baþarý ile Güncellendi');
    Form2.Show;
    Form4.Close;

end;

procedure TForm4.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  ZQuery4.Free;
  ADOQuery4.Free;
end;

end.
