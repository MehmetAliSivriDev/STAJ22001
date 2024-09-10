unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, CurvyControls, AdvGlowButton, StdCtrls, ExtCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, AdvObj, BaseGrid,
  AdvGrid, AdvCGrid, peykan_Grid, ADODB;

type
  TForm7 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BGeriDon: TAdvGlowButton;
    BEkleMenu: TAdvGlowButton;
    Panel2: TPanel;
    Label5: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    BYayineviEkle: TAdvGlowButton;
    EYayineviAd: TCurvyEdit;
    ETelefon: TCurvyEdit;
    DKurulusTarihi: TDateTimePicker;
    EAdres: TCurvyEdit;
    Timer1: TTimer;
    LSeciliYayinevi: TLabel;
    BVeriSil: TAdvGlowButton;
    TimerData: TTimer;
    GYayineviListesi: TAdvColumnGrid;
    procedure BGeriDonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BEkleMenuClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BYayineviEkleClick(Sender: TObject);
    procedure GYayineviListesiClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure BVeriSilClick(Sender: TObject);
    procedure TimerDataTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  ZQuery7 : TZQuery;
  ADOQuery7 : TADOQuery;
  seciliID : string;

implementation

uses Unit2, Unit1;
//uses
//  Unit1,Unit2;

{$R *.dfm}

procedure TForm7.BGeriDonClick(Sender: TObject);
begin
  Form2.Show;
  Form7.Close;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
    ZQuery7 :=TZQuery.Create(self);
    ZQuery7.Connection:=Form1.ZConnection1;

    ADOQuery7 := TADOQuery.Create(self);
    ADOQuery7.Connection := Form1.ADOConnection1;
    Timer1.Enabled := True;

end;


procedure TForm7.Timer1Timer(Sender: TObject);
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

procedure TForm7.BEkleMenuClick(Sender: TObject);
begin
    Panel2.Visible:= not Panel2.Visible;
    TimerData.Enabled := True;
end;

procedure TForm7.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

  ZQuery7.Free;
  ADOQuery7.Free;

end;

procedure TForm7.BYayineviEkleClick(Sender: TObject);
var
  SQL : string;
begin

  if (EYayineviAd.Text = '') or (EAdres.Text = '') or (ETelefon.Text = '') then
  begin
       ShowMessage('Lütfen Tüm Alanlarý Doldurun');
  end
  else
  begin

       if not Form1.ZLite then
       begin

           SQL := 'INSERT INTO yayinevi (yayinevi_ad,kurulus_tarihi,adres,tel)';
           SQL := SQL + 'VALUES ('+ QuotedStr(EYayineviAd.Text) + ',' + QuotedStr(FormatDateTime('yyyy-mm-dd',DKurulusTarihi.Date)) + ',' + QuotedStr(EAdres.Text) + ',' + QuotedStr(ETelefon.Text) + ')';

           Form1.ADOCommand1.CommandText := SQL;
           Form1.ADOCommand1.Execute;

       end else
       begin

           ZQuery7.Close;
           ZQuery7.SQL.Clear;
           ZQuery7.SQL.Add('INSERT INTO yayinevi (yayinevi_ad,kurulus_tarihi,adres,tel)');
           ZQuery7.SQL.Add('VALUES ('+ QuotedStr(EYayineviAd.Text) + ',' + QuotedStr(FormatDateTime('yyyy-mm-dd',DKurulusTarihi.Date)) + ',' + QuotedStr(EAdres.Text) + ',' + QuotedStr(ETelefon.Text) + ')');
           ZQuery7.ExecSQL;

       end;

       ShowMessage('Yayýnevi Baþarýyla Oluþturuldu.');

       EYayineviAd.Text := '';
       EAdres.Text := '';
       ETelefon.Text := '';

       TimerData.Enabled := True;

  end;


end;

procedure TForm7.GYayineviListesiClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin

   if ARow>0 then
   begin
      seciliID  :=  GYayineviListesi.Cells[0,ARow];
      LSeciliYayinevi.Caption := 'Seçili Yayýnevi:';
      LSeciliYayinevi.Caption := LSeciliYayinevi.Caption + ' ' + GYayineviListesi.Cells[1,ARow] + ' - ' + GYayineviListesi.Cells[2,ARow];
   end;

end;

procedure TForm7.BVeriSilClick(Sender: TObject);
var
  SQL : string;
begin

  if (seciliID = '') then
  begin
      ShowMessage('Lütfen Bir Veri Seçiniz');
  end
  else
  begin

       if not Form1.ZLite then
       begin

          SQL := 'DELETE FROM yayinevi WHERE id = ' + seciliID;
          Form1.ADOCommand1.CommandText := SQL;
          Form1.ADOCommand1.Execute;

       end else
       begin

          ZQuery7.Close;
          ZQuery7.SQL.Clear;
          ZQuery7.SQL.Add('DELETE FROM yayinevi WHERE id = ' + seciliID);
          ZQuery7.ExecSQL;

       end;

       ShowMessage('Veri Baþarýyla Silindi');

       seciliID := '';
       LSeciliYayinevi.Caption := 'Seçili Yayýnevi :';

       TimerData.Enabled := True;

  end;

end;

procedure TForm7.TimerDataTimer(Sender: TObject);
var
  Sira : Integer;
begin
    TimerData.Enabled := False;

    GYayineviListesi.ClearAll;
    Sira:=0;

    GYayineviListesi.Cells[0,Sira]:='id';
    GYayineviListesi.Cells[1,Sira]:='Sýra';
    GYayineviListesi.Cells[2,Sira]:='Yayinevi Ad';
    GYayineviListesi.Cells[3,Sira]:='Kuruluþ Tarihi';
    GYayineviListesi.Cells[4,Sira]:='Adres';
    GYayineviListesi.Cells[5,Sira]:='Telefon';


    if not Form1.ZLite then
    begin

        ADOQuery7.Close;
        ADOQuery7.SQL.Clear;
        ADOQuery7.SQL.Add('SELECT * FROM yayinevi');
        ADOQuery7.Open;

        ADOQuery7.First;
        if ADOQuery7.RecordCount=0 then ShowMessage('Veri Yok');
        While not ADOQuery7.Eof do
        begin
            Application.ProcessMessages;
            inc(Sira);

           GYayineviListesi.Cells[0,Sira]:=ADOQuery7.FieldByName('id').AsString;
           GYayineviListesi.Cells[1,Sira]:= IntToStr(Sira);
           GYayineviListesi.Cells[2,Sira]:=ADOQuery7.FieldByName('yayinevi_ad').AsString;
           GYayineviListesi.Cells[3,Sira]:=ADOQuery7.FieldByName('kurulus_tarihi').AsString;
           GYayineviListesi.Cells[4,Sira]:=ADOQuery7.FieldByName('adres').AsString;
           GYayineviListesi.Cells[5,Sira]:=ADOQuery7.FieldByName('tel').AsString;

         ADOQuery7.Next;
        end;
        GYayineviListesi.RowCount := ADOQuery7.RecordCount + 1;
        AdvGridEnAyar(GYayineviListesi,1);
        ADOQuery7.Close;

    end else
    begin

        ZQuery7.Close;
        ZQuery7.SQL.Clear;
        ZQuery7.SQL.Add('SELECT * FROM yayinevi');
        ZQuery7.Open;

        ZQuery7.First;
        if ZQuery7.RecordCount=0 then ShowMessage('Veri Yok');
        While not ZQuery7.Eof do
        begin
            Application.ProcessMessages;
            inc(Sira);

           GYayineviListesi.Cells[0,Sira]:=ZQuery7.FieldByName('id').AsString;
           GYayineviListesi.Cells[1,Sira]:= IntToStr(Sira);
           GYayineviListesi.Cells[2,Sira]:=ZQuery7.FieldByName('yayinevi_ad').AsString;
           GYayineviListesi.Cells[3,Sira]:=ZQuery7.FieldByName('kurulus_tarihi').AsString;
           GYayineviListesi.Cells[4,Sira]:=ZQuery7.FieldByName('adres').AsString;
           GYayineviListesi.Cells[5,Sira]:=ZQuery7.FieldByName('tel').AsString;

         ZQuery7.Next;
        end;
        GYayineviListesi.RowCount := ZQuery7.RecordCount + 1;
        AdvGridEnAyar(GYayineviListesi,1);
        ZQuery7.Close;

    end;

end;

end.
