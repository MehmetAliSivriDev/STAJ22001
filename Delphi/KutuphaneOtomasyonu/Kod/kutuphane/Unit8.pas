unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, AdvCGrid, AdvGlowButton, StdCtrls,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, peykan_Grid,
  ADODB;

type
  TForm8 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BGeriDon: TAdvGlowButton;
    GCezaListesi: TAdvColumnGrid;
    TimerData: TTimer;
    procedure BGeriDonClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure TimerDataTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  ZQuery8: TZQuery;
  ADOQuery8 : TADOQuery;

implementation

uses
  Unit2, Unit1;

{$R *.dfm}

procedure TForm8.BGeriDonClick(Sender: TObject);
begin
  Form2.Show;
  Form8.Close;
end;

procedure TForm8.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  ZQuery8.Free;
  ADOQuery8.Free;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
  ZQuery8 := TZQuery.Create(self);
  ZQuery8.Connection := Form1.ZConnection1;

  ADOQuery8 := TADOQuery.Create(self);
  ADOQuery8.Connection := Form1.ADOConnection1;

  TimerData.Enabled := True;
end;

procedure TForm8.TimerDataTimer(Sender: TObject);
var
  Sira: Integer;
begin

  TimerData.Enabled := False;

  GCezaListesi.ClearAll;
  Sira := 0;

  GCezaListesi.Cells[0, Sira] := 'id';
  GCezaListesi.Cells[1, Sira] := 'Sýra';
  GCezaListesi.Cells[2, Sira] := 'Ad';
  GCezaListesi.Cells[3, Sira] := 'Soyad';
  GCezaListesi.Cells[4, Sira] := 'Geciktirilen Süre';
  GCezaListesi.Cells[5, Sira] := 'Para Tutarý';

  if not Form1.ZLite then
  begin

      if Form2.kullanici_eposta = 'admin' then
      begin
        ADOQuery8.Close;
        ADOQuery8.SQL.Clear;
        ADOQuery8.SQL.Add('SELECT c.id,k.ad,k.soyad,c.geciktirilen_sure,c.para_tutari FROM ceza c , kullanici k ');
        ADOQuery8.Open;
      end
      else
      begin
        ADOQuery8.Close;
        ADOQuery8.SQL.Clear;
        ADOQuery8.SQL.Add('SELECT c.id,k.ad,k.soyad,c.geciktirilen_sure,c.para_tutari FROM ceza c , kullanici k WHERE k.epsota = ' + QuotedStr(Form2.kullanici_eposta));
        ADOQuery8.Open;
      end;

      ADOQuery8.First;
      if ADOQuery8.RecordCount = 0 then
        ShowMessage('Veri Yok');
      while not ADOQuery8.Eof do
      begin
        Application.ProcessMessages;
        inc(Sira);

        GCezaListesi.Cells[0, Sira] := ADOQuery8.FieldByName('id').AsString;
        GCezaListesi.Cells[1, Sira] := IntToStr(Sira);
        GCezaListesi.Cells[2, Sira] := ADOQuery8.FieldByName('ad').AsString;
        GCezaListesi.Cells[3, Sira] := ADOQuery8.FieldByName('soyad').AsString;
        GCezaListesi.Cells[4, Sira] := ADOQuery8.FieldByName('geciktirilen_sure').AsString;
        GCezaListesi.Cells[5, Sira] := ADOQuery8.FieldByName('para_tutari').AsString;

        ADOQuery8.Next;
      end;
      GCezaListesi.RowCount := ADOQuery8.RecordCount + 1;
      AdvGridEnAyar(GCezaListesi, 1);
      ADOQuery8.Close;

  end else
  begin

      if Form2.kullanici_eposta = 'admin' then
      begin
        ZQuery8.Close;
        ZQuery8.SQL.Clear;
        ZQuery8.SQL.Add('SELECT c.id,k.ad,k.soyad,c.geciktirilen_sure,c.para_tutari FROM ceza c , kullanici k ');
        ZQuery8.Open;
      end
      else
      begin
        ZQuery8.Close;
        ZQuery8.SQL.Clear;
        ZQuery8.SQL.Add('SELECT c.id,k.ad,k.soyad,c.geciktirilen_sure,c.para_tutari FROM ceza c , kullanici k WHERE k.epsota = ' + QuotedStr(Form2.kullanici_eposta));
        ZQuery8.Open;
      end;

      ZQuery8.First;
      if ZQuery8.RecordCount = 0 then
        ShowMessage('Veri Yok');
      while not ZQuery8.Eof do
      begin
        Application.ProcessMessages;
        inc(Sira);

        GCezaListesi.Cells[0, Sira] := ZQuery8.FieldByName('id').AsString;
        GCezaListesi.Cells[1, Sira] := IntToStr(Sira);
        GCezaListesi.Cells[2, Sira] := ZQuery8.FieldByName('ad').AsString;
        GCezaListesi.Cells[3, Sira] := ZQuery8.FieldByName('soyad').AsString;
        GCezaListesi.Cells[4, Sira] := ZQuery8.FieldByName('geciktirilen_sure').AsString;
        GCezaListesi.Cells[5, Sira] := ZQuery8.FieldByName('para_tutari').AsString;

        ZQuery8.Next;
      end;
      GCezaListesi.RowCount := ZQuery8.RecordCount + 1;
      AdvGridEnAyar(GCezaListesi, 1);
      ZQuery8.Close;

  end;

end;

end.

