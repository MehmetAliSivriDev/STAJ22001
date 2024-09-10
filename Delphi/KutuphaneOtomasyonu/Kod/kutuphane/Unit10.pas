unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, AdvCGrid, AdvGlowButton,peykan_Grid,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls, DateUtils,
  CurvyControls, ADODB;

type
  TForm10 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    LSeciliKitap: TLabel;
    BGeriDon: TAdvGlowButton;
    BKitabiTeslimEt: TAdvGlowButton;
    GOduncAlinanlarListesi: TAdvColumnGrid;
    TimerData: TTimer;
    EKitapID: TCurvyEdit;
    ADOQuery1: TADOQuery;
    procedure BGeriDonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TimerDataTimer(Sender: TObject);
    procedure GOduncAlinanlarListesiClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure BKitabiTeslimEtClick(Sender: TObject);
    procedure EKitapIDChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  ZQuery10 : TZQuery;
  ADOQuery10 : TADOQuery;
  seciliID : string;
  odunc_alinan_tarih : string;
  kitap_id : string;

implementation
uses
  Unit2, Unit1;

{$R *.dfm}

procedure TForm10.BGeriDonClick(Sender: TObject);
begin
  Form2.Show;
  Form10.Close;
end;

procedure TForm10.FormCreate(Sender: TObject);
begin
    ZQuery10 := TZQuery.Create(self);
    ZQuery10.Connection:=Form1.ZConnection1;

    ADOQuery10 := TADOQuery.Create(self);
    ADOQuery10.Connection := Form1.ADOConnection1;

    TimerData.Enabled := True;
end;

procedure TForm10.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    ZQuery10.Free;
end;

procedure TForm10.TimerDataTimer(Sender: TObject);
var
  Sira : Integer;
begin
    TimerData.Enabled := False;

    GOduncAlinanlarListesi.ClearAll;
    Sira:=0;

    GOduncAlinanlarListesi.Cells[0,Sira]:='id';
    GOduncAlinanlarListesi.Cells[1,Sira]:='Sýra';
    GOduncAlinanlarListesi.Cells[2,Sira]:='Ad';
    GOduncAlinanlarListesi.Cells[3,Sira]:='Soyad';
    GOduncAlinanlarListesi.Cells[4,Sira]:='Kitap Adý';
    GOduncAlinanlarListesi.Cells[5,Sira]:='Ödünç Alýnan Tarih';
    GOduncAlinanlarListesi.Cells[6,Sira]:='Teslim Edilen Tarih';


    if not Form1.ZLite then
    begin

        ADOQuery10.Close;
        ADOQuery10.SQL.Clear;
        ADOQuery10.SQL.Add('SELECT ki.id,k.ad,k.soyad,ki.kitap_adi,o.odunc_alinan_tarih,o.teslim_edilen_tarih');
        ADOQuery10.SQL.Add('FROM odunc_alma o, kullanici k, kitap ki');
        ADOQuery10.SQL.Add('WHERE o.kullanici_id = k.id AND o.kitap_id = ki.id AND o.kullanici_id = ' + QuotedStr(Form2.kullanici_id));
        ADOQuery10.Open;

        ADOQuery10.First;
        if ADOQuery10.RecordCount=0 then ShowMessage('Veri Yok');
        While not ADOQuery10.Eof do
        begin
            Application.ProcessMessages;
            inc(Sira);

           GOduncAlinanlarListesi.Cells[0,Sira]:=ADOQuery10.FieldByName('id').AsString;
           GOduncAlinanlarListesi.Cells[1,Sira]:= IntToStr(Sira);
           GOduncAlinanlarListesi.Cells[2,Sira]:=ADOQuery10.FieldByName('ad').AsString;
           GOduncAlinanlarListesi.Cells[3,Sira]:=ADOQuery10.FieldByName('soyad').AsString;
           GOduncAlinanlarListesi.Cells[4,Sira]:=ADOQuery10.FieldByName('kitap_adi').AsString;
           GOduncAlinanlarListesi.Cells[5,Sira]:=ADOQuery10.FieldByName('odunc_alinan_tarih').AsString;
           GOduncAlinanlarListesi.Cells[6,Sira]:=ADOQuery10.FieldByName('teslim_edilen_tarih').AsString;

         ADOQuery10.Next;
        end;
        GOduncAlinanlarListesi.RowCount := ADOQuery10.RecordCount + 1;
        AdvGridEnAyar(GOduncAlinanlarListesi,2);
        ADOQuery10.Close;

    end else
    begin

        ZQuery10.Close;
        ZQuery10.SQL.Clear;
        ZQuery10.SQL.Add('SELECT ki.id,k.ad,k.soyad,ki.kitap_adi,o.odunc_alinan_tarih,o.teslim_edilen_tarih');
        ZQuery10.SQL.Add('FROM odunc_alma o, kullanici k, kitap ki');
        ZQuery10.SQL.Add('WHERE o.kullanici_id = k.id AND o.kitap_id = ki.id AND o.kullanici_id = ' + QuotedStr(Form2.kullanici_id));
        ZQuery10.Open;

        ZQuery10.First;
        if ZQuery10.RecordCount=0 then ShowMessage('Veri Yok');
        While not ZQuery10.Eof do
        begin
            Application.ProcessMessages;
            inc(Sira);

           GOduncAlinanlarListesi.Cells[0,Sira]:=ZQuery10.FieldByName('id').AsString;
           GOduncAlinanlarListesi.Cells[1,Sira]:= IntToStr(Sira);
           GOduncAlinanlarListesi.Cells[2,Sira]:=ZQuery10.FieldByName('ad').AsString;
           GOduncAlinanlarListesi.Cells[3,Sira]:=ZQuery10.FieldByName('soyad').AsString;
           GOduncAlinanlarListesi.Cells[4,Sira]:=ZQuery10.FieldByName('kitap_adi').AsString;
           GOduncAlinanlarListesi.Cells[5,Sira]:=ZQuery10.FieldByName('odunc_alinan_tarih').AsString;
           GOduncAlinanlarListesi.Cells[6,Sira]:=ZQuery10.FieldByName('teslim_edilen_tarih').AsString;

         ZQuery10.Next;
        end;
        GOduncAlinanlarListesi.RowCount := ZQuery10.RecordCount + 1;
        AdvGridEnAyar(GOduncAlinanlarListesi,2);
        ZQuery10.Close;

    end;

    EKitapID.SetFocus;
end;

procedure TForm10.GOduncAlinanlarListesiClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
   if ARow>0 then
   begin
      seciliID :=  GOduncAlinanlarListesi.Cells[0,ARow];
      odunc_alinan_tarih :=  GOduncAlinanlarListesi.Cells[5,ARow];
      LSeciliKitap.Caption := 'Seçili Kitap:';
      LSeciliKitap.Caption := LSeciliKitap.Caption + ' ' + GOduncAlinanlarListesi.Cells[1,ARow] + ' - ' + GOduncAlinanlarListesi.Cells[2,ARow];
   end;
end;

procedure TForm10.BKitabiTeslimEtClick(Sender: TObject);
var
  time : string;
  gun_farki : Integer;
  para_tutari : Integer;
  geciktirilen_sure :  Integer;
  SQL : string;
begin

  SQL := '';

  if not Form1.ZLite then
  begin

      ADOQuery10.Close;
      ADOQuery10.SQL.Clear;
      ADOQuery10.SQL.Add('SELECT Convert(DateTime,odunc_alinan_tarih,104) as xOdunc_alinan_tarih FROM odunc_alma where kitap_id = ' + seciliID + ' AND teslim_edilen_tarih is NULL');
      ADOQuery10.Open;

      ADOQuery10.First;
      if ADOQuery10.RecordCount=0 then ShowMessage('Odunc Alýnan Tarih Bulunamadý');
      While not ADOQuery10.Eof do
      begin
        Application.ProcessMessages;

        odunc_alinan_tarih := ADOQuery10.FieldByName('xOdunc_alinan_tarih').AsString;

        ADOQuery10.Next;
      end;


      para_tutari := 0;
      time := FormatDateTime('dd.mm.yyyy', Now);
      gun_farki :=  DaysBetween(StrToDate(time), StrToDate(odunc_alinan_tarih));

      if seciliID = '' then
      begin
          ShowMessage('Lütfen Bir Kitap Seçiniz');
      end
      else
      begin

          if (Abs(gun_farki) > 14) then
          begin
              para_tutari :=   Abs(gun_farki) * 5;
              geciktirilen_sure := Abs(gun_farki - 14);

              SQL := 'INSERT INTO ceza (kullanici_id,geciktirilen_sure, para_tutari)';
              SQL := SQL + 'VALUES ('+ QuotedStr(Form2.kullanici_id) + ',' +  QuotedStr(IntToStr(geciktirilen_sure)) + ',' + QuotedStr(IntToStr(para_tutari)) + ')';

              Form1.ADOCommand1.CommandText := SQL;
              Form1.ADOCommand1.Execute;

              ShowMessage('Teslim Süresini Geçtiniz Ceza Miktarý :' + IntToStr(para_tutari) + ' TL')
          end;

          SQL := 'UPDATE odunc_alma SET teslim_edilen_tarih = ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(time))) + ' WHERE kitap_id = ' + seciliID + ' AND teslim_edilen_tarih is NULL';

          Form1.ADOCommand1.CommandText := SQL;
          Form1.ADOCommand1.Execute;

          ShowMessage('Kitap Baþarýyla Teslim Edildi.');

          TimerData.Enabled := True;
          LSeciliKitap.Caption := 'Seçili Kitap:';
          EKitapID.Text := '';

      end;

  end else
  begin

      ZQuery10.Close;
      ZQuery10.SQL.Clear;
      ZQuery10.SQL.Add('SELECT * FROM odunc_alma where kitap_id = ' + seciliID + ' AND teslim_edilen_tarih is NULL');
      ZQuery10.Open;

      ZQuery10.First;
      if ZQuery10.RecordCount=0 then ShowMessage('Odunc Alýnan Tarih Bulunamadý');
      While not ZQuery10.Eof do
      begin
        Application.ProcessMessages;

        odunc_alinan_tarih := ZQuery10.FieldByName('odunc_alinan_tarih').AsString;

        ZQuery10.Next;
      end;


      para_tutari := 0;
      time := FormatDateTime('dd.mm.yyyy', Now);
      gun_farki :=  DaysBetween(StrToDate(time), StrToDate(odunc_alinan_tarih));

      if seciliID = '' then
      begin
          ShowMessage('Lütfen Bir Kitap Seçiniz');
      end
      else
      begin

          if (Abs(gun_farki) > 14) then
          begin
              para_tutari :=   Abs(gun_farki) * 5;
              geciktirilen_sure := Abs(gun_farki - 14);

              ZQuery10.Close;
              ZQuery10.SQL.Clear;
              ZQuery10.SQL.Add('INSERT INTO ceza (kullanici_id,geciktirilen_sure, para_tutari)');
              ZQuery10.SQL.Add('VALUES ('+ QuotedStr(Form2.kullanici_id) + ',' +  QuotedStr(IntToStr(geciktirilen_sure)) + ',' + QuotedStr(IntToStr(para_tutari)) + ')');
              ZQuery10.ExecSQL;
              ShowMessage('Teslim Süresini Geçtiniz Ceza Miktarý :' + IntToStr(para_tutari) + ' TL')
          end;

          ZQuery10.Close;
          ZQuery10.SQL.Clear;
          ZQuery10.SQL.Add('UPDATE odunc_alma SET teslim_edilen_tarih = ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(time))) + ' WHERE kitap_id = ' + seciliID + ' AND teslim_edilen_tarih is NULL' );
          ZQuery10.ExecSQL;

          ShowMessage('Kitap Baþarýyla Teslim Edildi.');

          TimerData.Enabled := True;
          LSeciliKitap.Caption := 'Seçili Kitap:';
          EKitapID.Text := '';

      end;

  end;

end;

procedure TForm10.EKitapIDChange(Sender: TObject);
begin
    seciliID := EKitapID.Text;
    LSeciliKitap.Caption := 'Seçili Kitap:' + EKitapID.Text;

end;

end.
