unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, CurvyControls, AdvGlowButton, StdCtrls, ExtCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, AdvObj, BaseGrid,
  AdvGrid, AdvCGrid, peykan_Grid, ADODB;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BGeriDon: TAdvGlowButton;
    BEkleMenu: TAdvGlowButton;
    Panel2: TPanel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    BYazarEkle: TAdvGlowButton;
    EYazarAd: TCurvyEdit;
    EAciklama: TCurvyEdit;
    DDogumTarihi: TDateTimePicker;
    EYazarSoyad: TCurvyEdit;
    EDogumYeri: TCurvyEdit;
    Timer1: TTimer;
    LSeciliYazar: TLabel;
    BVeriSil: TAdvGlowButton;
    TimerData: TTimer;
    GYazarListesi: TAdvColumnGrid;
    procedure BEkleMenuClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BGeriDonClick(Sender: TObject);
    procedure TimerDataTimer(Sender: TObject);
    procedure GYazarListesiClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure BYazarEkleClick(Sender: TObject);
    procedure BVeriSilClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  ZQuery6 : TZQuery;
  ADOQuery6 : TADOQuery;
  seciliID : string;

implementation

uses
  Unit2, Unit1;

{$R *.dfm}

procedure TForm6.BEkleMenuClick(Sender: TObject);
begin
    Panel2.Visible:= not Panel2.Visible;
    TimerData.Enabled := True;
end;

procedure TForm6.Timer1Timer(Sender: TObject);
begin
    Timer1.Enabled := False;
    seciliID := '';

    if (Form2.kullanici_eposta = 'admin') then
    begin
         BEkleMenu.Visible := True;
         BVeriSil.Visible := True;
    end;

    TimerData.Enabled := True;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
    ZQuery6 :=TZQuery.Create(self);
    ZQuery6.Connection:=Form1.ZConnection1;

    ADOQuery6 := TADOQuery.Create(self);
    ADOQuery6.Connection := Form1.ADOConnection1;

    Timer1.Enabled := True;
end;

procedure TForm6.BGeriDonClick(Sender: TObject);
begin
  Form2.Show;
  Form6.Close;
end;

procedure TForm6.TimerDataTimer(Sender: TObject);
var
  Sira : Integer;
begin
    TimerData.Enabled := False;

    GYazarListesi.ClearAll;
    Sira:=0;

    GYazarListesi.Cells[0,Sira]:='id';
    GYazarListesi.Cells[1,Sira]:='Sýra';
    GYazarListesi.Cells[2,Sira]:='Yazar Ad';
    GYazarListesi.Cells[3,Sira]:='Yazar Soyad';
    GYazarListesi.Cells[4,Sira]:='Doðum Tarihi';
    GYazarListesi.Cells[5,Sira]:='Doðum Yeri';
    GYazarListesi.Cells[6,Sira]:='Açýklama';

    if not Form1.ZLite then
    begin

        ADOQuery6.Close;
        ADOQuery6.SQL.Clear;
        ADOQuery6.SQL.Add('SELECT * FROM yazar');
        ADOQuery6.Open;

        ADOQuery6.First;
        if ADOQuery6.RecordCount=0 then ShowMessage('Veri Yok');
        While not ADOQuery6.Eof do
        begin
            Application.ProcessMessages;
            inc(Sira);

           GYazarListesi.Cells[0,Sira]:=ADOQuery6.FieldByName('id').AsString;
           GYazarListesi.Cells[1,Sira]:= IntToStr(Sira);
           GYazarListesi.Cells[2,Sira]:=ADOQuery6.FieldByName('ad').AsString;
           GYazarListesi.Cells[3,Sira]:=ADOQuery6.FieldByName('soyad').AsString;
           GYazarListesi.Cells[4,Sira]:=ADOQuery6.FieldByName('dogum_tarihi').AsString;
           GYazarListesi.Cells[5,Sira]:=ADOQuery6.FieldByName('dogum_yeri').AsString;
           GYazarListesi.Cells[6,Sira]:=ADOQuery6.FieldByName('aciklama').AsString;

         ADOQuery6.Next;
        end;
        GYazarListesi.RowCount := ADOQuery6.RecordCount + 1;
        AdvGridEnAyar(GYazarListesi,2);
        ADOQuery6.Close;

    end else
    begin

        ZQuery6.Close;
        ZQuery6.SQL.Clear;
        ZQuery6.SQL.Add('SELECT * FROM yazar');
        ZQuery6.Open;

        ZQuery6.First;
        if ZQuery6.RecordCount=0 then ShowMessage('Veri Yok');
        While not ZQuery6.Eof do
        begin
            Application.ProcessMessages;
            inc(Sira);

           GYazarListesi.Cells[0,Sira]:=ZQuery6.FieldByName('id').AsString;
           GYazarListesi.Cells[1,Sira]:= IntToStr(Sira);
           GYazarListesi.Cells[2,Sira]:=ZQuery6.FieldByName('ad').AsString;
           GYazarListesi.Cells[3,Sira]:=ZQuery6.FieldByName('soyad').AsString;
           GYazarListesi.Cells[4,Sira]:=ZQuery6.FieldByName('dogum_tarihi').AsString;
           GYazarListesi.Cells[5,Sira]:=ZQuery6.FieldByName('dogum_yeri').AsString;
           GYazarListesi.Cells[6,Sira]:=ZQuery6.FieldByName('aciklama').AsString;

         ZQuery6.Next;
        end;
        GYazarListesi.RowCount := ZQuery6.RecordCount + 1;
        AdvGridEnAyar(GYazarListesi,2);
        ZQuery6.Close;

    end;

end;

procedure TForm6.GYazarListesiClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
   if ARow>0 then
   begin
      seciliID  :=  GYazarListesi.Cells[0,ARow];
      LSeciliYazar.Caption := 'Seçili Yazar:';
      LSeciliYazar.Caption := LSeciliYazar.Caption + ' ' + GYazarListesi.Cells[1,ARow] + ' - ' + GYazarListesi.Cells[2,ARow];
   end;
end;

procedure TForm6.BYazarEkleClick(Sender: TObject);
var
  SQL : string;
begin

  SQL := '';

  if (EYazarAd.Text = '') or (EYazarSoyad.Text = '') or (EDogumYeri.Text = '') or (EAciklama.Text = '') then
  begin
       ShowMessage('Lütfen Tüm Alanlarý Doldurun');
  end
  else
  begin

       if not Form1.ZLite then
       begin

          SQL := 'INSERT INTO yazar (ad,soyad,dogum_tarihi,dogum_yeri,aciklama)';
          SQL := SQL + 'VALUES ('+ QuotedStr(EYazarAd.Text) + ',' + QuotedStr(EYazarSoyad.Text) + ',' + QuotedStr(FormatDateTime('yyyy-mm-dd',DDogumTarihi.Date)) + ',';
          SQL := SQL + QuotedStr(EDogumYeri.Text) + ',' + QuotedStr(EAciklama.Text) + ')';

          Form1.ADOCommand1.CommandText := SQL;
          Form1.ADOCommand1.Execute;

       end else
       begin

          ZQuery6.Close;
          ZQuery6.SQL.Clear;
          ZQuery6.SQL.Add('INSERT INTO yazar (ad,soyad,dogum_tarihi,dogum_yeri,aciklama)');
          ZQuery6.SQL.Add('VALUES ('+ QuotedStr(EYazarAd.Text) + ',' + QuotedStr(EYazarSoyad.Text) + ',' + QuotedStr(FormatDateTime('yyyy-mm-dd',DDogumTarihi.Date)) + ',' );
          ZQuery6.SQL.Add(QuotedStr(EDogumYeri.Text) + ',' + QuotedStr(EAciklama.Text) + ')');
          ZQuery6.ExecSQL;

       end;

       ShowMessage('Yazar Baþarýyla Oluþturuldu.');

       EYazarAd.Text := '';
       EYazarSoyad.Text := '';
       EDogumYeri.Text := '';
       EAciklama.Text := '';

       TimerData.Enabled := True;

  end;
end;

procedure TForm6.BVeriSilClick(Sender: TObject);
var
  SQL : string;
begin

  SQL := '';

  if (seciliID = '') then
  begin
      ShowMessage('Lütfen Bir Veri Seçiniz');
  end
  else
  begin

       if not Form1.ZLite then
       begin

          SQL := 'DELETE FROM yazar WHERE id = ' + seciliID;

          Form1.ADOCommand1.CommandText := SQL;
          Form1.ADOCommand1.Execute;

       end else
       begin

          ZQuery6.Close;
          ZQuery6.SQL.Clear;
          ZQuery6.SQL.Add('DELETE FROM yazar WHERE id = ' + seciliID);
          ZQuery6.ExecSQL;

       end;

       ShowMessage('Veri Baþarýyla Silindi');

       seciliID := '';
       LSeciliYazar.Caption := 'Seçili Yazar :';

       TimerData.Enabled := True;

  end;
end;

procedure TForm6.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    ZQuery6.Free;
    ADOQuery6.Free;
end;

end.
