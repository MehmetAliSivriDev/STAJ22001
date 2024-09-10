unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, AdvCGrid, AdvGlowButton,peykan_Grid,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls, StdCtrls,
  CurvyControls, ADODB;

type
  TForm9 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    LSeciliKitap: TLabel;
    BGeriDon: TAdvGlowButton;
    BKitabiOduncAl: TAdvGlowButton;
    GKitaplarListesi: TAdvColumnGrid;
    TimerData: TTimer;
    EKitapID: TCurvyEdit;
    procedure BGeriDonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TimerDataTimer(Sender: TObject);
    procedure GKitaplarListesiClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure BKitabiOduncAlClick(Sender: TObject);
    procedure EKitapIDChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  ZQuery9 : TZQuery;
  ADOQuery9 : TADOQuery;
  seciliID : string;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure TForm9.BGeriDonClick(Sender: TObject);
begin
  Form2.Show;
  Form9.Close;

end;

procedure TForm9.FormCreate(Sender: TObject);
begin
    ZQuery9 :=TZQuery.Create(self);
    ZQuery9.Connection:=Form1.ZConnection1;

    ADOQuery9 := TADOQuery.Create(self);
    ADOQuery9.Connection := Form1.ADOConnection1;

    TimerData.Enabled := True;

end;

procedure TForm9.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
     ZQuery9.Free;
end;

procedure TForm9.TimerDataTimer(Sender: TObject);
var
  Sira : Integer;
begin
    TimerData.Enabled := False;

    GKitaplarListesi.ClearAll;
    Sira:=0;

    GKitaplarListesi.Cells[0,Sira]:='id';
    GKitaplarListesi.Cells[1,Sira]:='Sýra';
    GKitaplarListesi.Cells[2,Sira]:='Kitap Adý';
    GKitaplarListesi.Cells[3,Sira]:='Yazar Adý';
    GKitaplarListesi.Cells[4,Sira]:='Sayfa Sayýsý';
    GKitaplarListesi.Cells[5,Sira]:='Yayinevi Adý';
    GKitaplarListesi.Cells[6,Sira]:='Baský Sayýsý';
    GKitaplarListesi.Cells[7,Sira]:='ISBN No';
    GKitaplarListesi.Cells[8,Sira]:='Kat No';
    GKitaplarListesi.Cells[9,Sira]:='Kitaplýk No';
    GKitaplarListesi.Cells[10,Sira]:='Raf No';

    if not Form1.ZLite then
    begin

        ADOQuery9.Close;
        ADOQuery9.SQL.Clear;
        ADOQuery9.SQL.Add('SELECT k.id,k.kitap_adi,y.ad,k.sayfa_sayisi,ya.yayinevi_ad,k.baski_sayisi,k.isbn_no,k.kat_no,k.kitaplýk_no,k.raf_no');
        ADOQuery9.SQL.Add('FROM kitap k, yazar y, yayinevi ya');
        ADOQuery9.SQL.Add('WHERE k.yazar_id = y.id AND k.yayinevi_id = ya.id');
        ADOQuery9.Open;

        ADOQuery9.First;
        if ADOQuery9.RecordCount=0 then ShowMessage('Veri Yok');
        While not ADOQuery9.Eof do
        begin
            Application.ProcessMessages;
            inc(Sira);

           GKitaplarListesi.Cells[0,Sira]:=ADOQuery9.FieldByName('id').AsString;
           GKitaplarListesi.Cells[1,Sira]:= IntToStr(Sira);
           GKitaplarListesi.Cells[2,Sira]:=ADOQuery9.FieldByName('kitap_adi').AsString;
           GKitaplarListesi.Cells[3,Sira]:=ADOQuery9.FieldByName('ad').AsString;
           GKitaplarListesi.Cells[4,Sira]:=ADOQuery9.FieldByName('sayfa_sayisi').AsString;
           GKitaplarListesi.Cells[5,Sira]:=ADOQuery9.FieldByName('yayinevi_ad').AsString;
           GKitaplarListesi.Cells[6,Sira]:=ADOQuery9.FieldByName('baski_sayisi').AsString;
           GKitaplarListesi.Cells[7,Sira]:=ADOQuery9.FieldByName('isbn_no').AsString;
           GKitaplarListesi.Cells[8,Sira]:=ADOQuery9.FieldByName('kat_no').AsString;
           GKitaplarListesi.Cells[9,Sira]:=ADOQuery9.FieldByName('kitaplýk_no').AsString;
           GKitaplarListesi.Cells[10,Sira]:=ADOQuery9.FieldByName('raf_no').AsString;

         ADOQuery9.Next;
        end;
        GKitaplarListesi.RowCount := ADOQuery9.RecordCount + 1;
        AdvGridEnAyar(GKitaplarListesi,2);
        ADOQuery9.Close;

    end else
    begin

        ZQuery9.Close;
        ZQuery9.SQL.Clear;
        ZQuery9.SQL.Add('SELECT k.id,k.kitap_adi,y.ad,k.sayfa_sayisi,ya.yayinevi_ad,k.baski_sayisi,k.isbn_no,k.kat_no,k.kitaplýk_no,k.raf_no');
        ZQuery9.SQL.Add('FROM kitap k, yazar y, yayinevi ya');
        ZQuery9.SQL.Add('WHERE k.yazar_id = y.id AND k.yayinevi_id = ya.id');
        ZQuery9.Open;

        ZQuery9.First;
        if ZQuery9.RecordCount=0 then ShowMessage('Veri Yok');
        While not ZQuery9.Eof do
        begin
            Application.ProcessMessages;
            inc(Sira);

           GKitaplarListesi.Cells[0,Sira]:=ZQuery9.FieldByName('id').AsString;
           GKitaplarListesi.Cells[1,Sira]:= IntToStr(Sira);
           GKitaplarListesi.Cells[2,Sira]:=ZQuery9.FieldByName('kitap_adi').AsString;
           GKitaplarListesi.Cells[3,Sira]:=ZQuery9.FieldByName('ad').AsString;
           GKitaplarListesi.Cells[4,Sira]:=ZQuery9.FieldByName('sayfa_sayisi').AsString;
           GKitaplarListesi.Cells[5,Sira]:=ZQuery9.FieldByName('yayinevi_ad').AsString;
           GKitaplarListesi.Cells[6,Sira]:=ZQuery9.FieldByName('baski_sayisi').AsString;
           GKitaplarListesi.Cells[7,Sira]:=ZQuery9.FieldByName('isbn_no').AsString;
           GKitaplarListesi.Cells[8,Sira]:=ZQuery9.FieldByName('kat_no').AsString;
           GKitaplarListesi.Cells[9,Sira]:=ZQuery9.FieldByName('kitaplýk_no').AsString;
           GKitaplarListesi.Cells[10,Sira]:=ZQuery9.FieldByName('raf_no').AsString;

         ZQuery9.Next;
        end;
        GKitaplarListesi.RowCount := ZQuery9.RecordCount + 1;
        AdvGridEnAyar(GKitaplarListesi,2);
        ZQuery9.Close;

    end;

    EKitapID.SetFocus;
end;

procedure TForm9.GKitaplarListesiClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
   if ARow>0 then
   begin
      seciliID :=  GKitaplarListesi.Cells[0,ARow];
      EKitapID.Text := seciliID;
      LSeciliKitap.Caption := 'Seçili Kitap:';
      LSeciliKitap.Caption := LSeciliKitap.Caption + ' ' + GKitaplarListesi.Cells[1,ARow] + ' - ' + GKitaplarListesi.Cells[2,ARow];
   end;
end;

procedure TForm9.BKitabiOduncAlClick(Sender: TObject);
var
  time : string;
  alabilirMi : Boolean;
  SQL : string;
begin

  time := FormatDateTime('yyyy-mm-dd', Now);
  alabilirMi := True;

  if not Form1.ZLite then
  begin

      ADOQuery9.Close;
      ADOQuery9.SQL.Clear;
      ADOQuery9.SQL.Add('SELECT * FROM odunc_alma WHERE kullanici_id = ' + Form2.kullanici_id);
      ADOQuery9.Open;

      ADOQuery9.First;
      While not ADOQuery9.Eof do
      begin
         if (ADOQuery9.FieldByName('teslim_edilen_tarih').AsString = '') then
         begin
              alabilirMi := False;
         end;

         ADOQuery9.Next;
      end;

      if alabilirMi = True then
      begin
            if seciliID = '' then
            begin
                 ShowMessage('Lütfen Bir Kitap Seçiniz');
            end
            else
            begin

                 SQL := 'INSERT INTO odunc_alma (kitap_id,kullanici_id,odunc_alinan_tarih, teslim_edilen_tarih)';
                 SQL := SQL + 'VALUES ('+ QuotedStr(seciliID) + ',' +  QuotedStr(Form2.kullanici_id) + ',' + QuotedStr(time) + ', NULL)';

                 Form1.ADOCommand1.CommandText := SQL;
                 Form1.ADOCommand1.Execute;

                 ShowMessage('Kitap Baþarýyla Ödünç Alýndý.');
                 seciliID := '';
                 LSeciliKitap.Caption := 'Seçili Kitap:';
                 EKitapID.Text := '';

            end;
      end
      else
      begin
        ShowMessage('Önce Aldýðýnýz Kitabý Teslim Etmelisiniz.');
      end;

  end else
  begin

      ZQuery9.Close;
      ZQuery9.SQL.Clear;
      ZQuery9.SQL.Add('SELECT * FROM odunc_alma WHERE kullanici_id = ' + Form2.kullanici_id);
      ZQuery9.Open;

      ZQuery9.First;
      While not ZQuery9.Eof do
      begin
         if (ZQuery9.FieldByName('teslim_edilen_tarih').AsString = '') then
         begin
              alabilirMi := False;
         end;

         ZQuery9.Next;
      end;

      if alabilirMi = True then
      begin
            if seciliID = '' then
            begin
                 ShowMessage('Lütfen Bir Kitap Seçiniz');
            end
            else
            begin
                 ZQuery9.Close;
                 ZQuery9.SQL.Clear;
                 ZQuery9.SQL.Add('INSERT INTO odunc_alma (kitap_id,kullanici_id,odunc_alinan_tarih, teslim_edilen_tarih)');
                 ZQuery9.SQL.Add('VALUES ('+ QuotedStr(seciliID) + ',' +  QuotedStr(Form2.kullanici_id) + ',' + QuotedStr(time) + ', NULL)');
                 ZQuery9.ExecSQL;

                 ShowMessage('Kitap Baþarýyla Ödünç Alýndý.');
                 seciliID := '';
                 LSeciliKitap.Caption := 'Seçili Kitap:';
                 EKitapID.Text := '';

            end;
      end
      else
      begin
        ShowMessage('Önce Aldýðýnýz Kitabý Teslim Etmelisiniz.');
      end;

  end;

end;
procedure TForm9.EKitapIDChange(Sender: TObject);
begin
    seciliID := EKitapID.Text;
    LSeciliKitap.Caption := 'Seçili Kitap:' + EKitapID.Text;
end;

end.
