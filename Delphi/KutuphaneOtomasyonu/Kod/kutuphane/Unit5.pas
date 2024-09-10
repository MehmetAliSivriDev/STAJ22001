unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, StdCtrls, ExtCtrls, CurvyControls, Grids, AdvObj,
  BaseGrid, AdvGrid, AdvCGrid, DB, ZAbstractRODataset, ZAbstractDataset,peykan_Unit,StrUtils,
  ZDataset, peykan_Grid, ADODB;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BGeriDon: TAdvGlowButton;
    Panel2: TPanel;
    BEkleMenu: TAdvGlowButton;
    BKitapEkle: TAdvGlowButton;
    Label5: TLabel;
    EKitapAd: TCurvyEdit;
    ESayfaSayisi: TCurvyEdit;
    CYazar: TCurvyCombo;
    Label2: TLabel;
    Label3: TLabel;
    EBaskiSayisi: TCurvyEdit;
    CYayinEvi: TCurvyCombo;
    Label4: TLabel;
    Label6: TLabel;
    EIsbn: TCurvyEdit;
    Label7: TLabel;
    Label8: TLabel;
    Timer1: TTimer;
    EKatNo: TCurvyEdit;
    EKitaplikNo: TCurvyEdit;
    ERafNo: TCurvyEdit;
    Label9: TLabel;
    Label10: TLabel;
    GKitaplarListesi: TAdvColumnGrid;
    TimerData: TTimer;
    BVeriSil: TAdvGlowButton;
    LSeciliKitap: TLabel;
    Memo2: TMemo;
    Memo1: TMemo;
    BBarkodMenuAc: TAdvGlowButton;
    BCiktiAl: TAdvGlowButton;
    Panel3: TPanel;
    BSearch: TAdvGlowButton;
    EArama: TCurvyEdit;
    procedure BEkleMenuClick(Sender: TObject);
    procedure BGeriDonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure TimerDataTimer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure GKitaplarListesiClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure BVeriSilClick(Sender: TObject);
    procedure BKitapEkleClick(Sender: TObject);
    procedure BBarkodMenuAcClick(Sender: TObject);
    procedure BCiktiAlClick(Sender: TObject);
    function  etiketDeiskenMi():Boolean;
    procedure EAramaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  ZQuery5 : TZQuery;
  ADOQuery5: TADOQuery;
  seciliID : string;
  seciliKitap_adi,seciliKitap_baski,seciliKitap_isbn : string;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure TForm5.BEkleMenuClick(Sender: TObject);
begin
  Panel2.Visible:= not Panel2.Visible;
  TimerData.Enabled := True;
end;

procedure TForm5.BGeriDonClick(Sender: TObject);
begin

  Form2.Show;
  Form5.Close;

end;

procedure TForm5.FormCreate(Sender: TObject);
begin
    if FileExists(Form1.FileRegD + '\Label\label1.zpey') then
      begin
        SifreliDosya_Ac(Form1.FileRegD + '\Label\label1.zpey',Memo2,True);
      end else
      PeykanHint('','Etiket Secili Yok',clRed,10,false);

    ZQuery5 :=TZQuery.Create(self);
    ZQuery5.Connection:=Form1.ZConnection1;

    ADOQuery5 := TADOQuery.Create(self);
    ADOQuery5.Connection := Form1.ADOConnection1;

    Timer1.Enabled := True;
end;

procedure TForm5.Timer1Timer(Sender: TObject);
begin
    Timer1.Enabled := False;
    SeciliID := '';

    if (Form2.kullanici_eposta = 'admin') then
    begin
         BEkleMenu.Visible := True;
         BVeriSil.Visible := True;
         BBarkodMenuAc.Visible := True;
         BCiktiAl.Visible := True;
    end;

    TimerData.Enabled := True;

    if not Form1.ZLite then
    begin

        ADOQuery5.Close;
        ADOQuery5.SQL.Clear;
        ADOQuery5.SQL.Add('SELECT * FROM yazar');
        ADOQuery5.Open;

        ADOQuery5.First;
        if ADOQuery5.RecordCount=0 then ShowMessage('Veri Yok');
        While not ADOQuery5.Eof do
        begin
          Application.ProcessMessages;
          CYazar.Items.Add(ADOQuery5.FieldByName('id').AsString + '-' + ADOQuery5.FieldByName('ad').AsString);
          ADOQuery5.Next;
        end;

        ADOQuery5.Close;
        ADOQuery5.SQL.Clear;
        ADOQuery5.SQL.Add('SELECT * FROM yayinevi');
        ADOQuery5.Open;

        ADOQuery5.First;
        if ADOQuery5.RecordCount=0 then ShowMessage('Veri Yok');
        While not ADOQuery5.Eof do
        begin
          Application.ProcessMessages;
          CYayinEvi.Items.Add(ADOQuery5.FieldByName('id').AsString + '-' + ADOQuery5.FieldByName('yayinevi_ad').AsString);
          ADOQuery5.Next;
        end;

        ADOQuery5.Close;

    end else
    begin

       ZQuery5.Close;
       ZQuery5.SQL.Clear;
       ZQuery5.SQL.Add('SELECT * FROM yazar');
       ZQuery5.Open;

       ZQuery5.First;
       if ZQuery5.RecordCount=0 then ShowMessage('Veri Yok');
       While not ZQuery5.Eof do
       begin
          Application.ProcessMessages;
          CYazar.Items.Add(ZQuery5.FieldByName('id').AsString + '-' + ZQuery5.FieldByName('ad').AsString);
          ZQuery5.Next;
       end;

       ZQuery5.Close;
       ZQuery5.SQL.Clear;
       ZQuery5.SQL.Add('SELECT * FROM yayinevi');
       ZQuery5.Open;

       ZQuery5.First;
       if ZQuery5.RecordCount=0 then ShowMessage('Veri Yok');
       While not ZQuery5.Eof do
       begin
          Application.ProcessMessages;
          CYayinEvi.Items.Add(ZQuery5.FieldByName('id').AsString + '-' + ZQuery5.FieldByName('yayinevi_ad').AsString);
          ZQuery5.Next;
       end;

       ZQuery5.Close;

    end;


end;

procedure TForm5.TimerDataTimer(Sender: TObject);
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

        ADOQuery5.Close;
        ADOQuery5.SQL.Clear;
        ADOQuery5.SQL.Add('SELECT k.id,k.kitap_adi,y.ad,k.sayfa_sayisi,ya.yayinevi_ad,k.baski_sayisi,k.isbn_no,k.kat_no,k.kitaplýk_no,k.raf_no');
        ADOQuery5.SQL.Add('FROM kitap k, yazar y, yayinevi ya');
        ADOQuery5.SQL.Add('WHERE k.yazar_id = y.id AND k.yayinevi_id = ya.id');
        ADOQuery5.Open;

        ADOQuery5.First;
        if ADOQuery5.RecordCount=0 then ShowMessage('Veri Yok');
        While not ADOQuery5.Eof do
        begin
            Application.ProcessMessages;
            inc(Sira);

           GKitaplarListesi.Cells[0,Sira]:=ADOQuery5.FieldByName('id').AsString;
           GKitaplarListesi.Cells[1,Sira]:= IntToStr(Sira);
           GKitaplarListesi.Cells[2,Sira]:=ADOQuery5.FieldByName('kitap_adi').AsString;
           GKitaplarListesi.Cells[3,Sira]:=ADOQuery5.FieldByName('ad').AsString;
           GKitaplarListesi.Cells[4,Sira]:=ADOQuery5.FieldByName('sayfa_sayisi').AsString;
           GKitaplarListesi.Cells[5,Sira]:=ADOQuery5.FieldByName('yayinevi_ad').AsString;
           GKitaplarListesi.Cells[6,Sira]:=ADOQuery5.FieldByName('baski_sayisi').AsString;
           GKitaplarListesi.Cells[7,Sira]:=ADOQuery5.FieldByName('isbn_no').AsString;
           GKitaplarListesi.Cells[8,Sira]:=ADOQuery5.FieldByName('kat_no').AsString;
           GKitaplarListesi.Cells[9,Sira]:=ADOQuery5.FieldByName('kitaplýk_no').AsString;
           GKitaplarListesi.Cells[10,Sira]:=ADOQuery5.FieldByName('raf_no').AsString;

         ADOQuery5.Next;
        end;
        GKitaplarListesi.RowCount := ADOQuery5.RecordCount + 1;
        AdvGridEnAyar(GKitaplarListesi,2);
        ADOQuery5.Close;

    end else
    begin

        ZQuery5.Close;
        ZQuery5.SQL.Clear;
        ZQuery5.SQL.Add('SELECT k.id,k.kitap_adi,y.ad,k.sayfa_sayisi,ya.yayinevi_ad,k.baski_sayisi,k.isbn_no,k.kat_no,k.kitaplýk_no,k.raf_no');
        ZQuery5.SQL.Add('FROM kitap k, yazar y, yayinevi ya');
        ZQuery5.SQL.Add('WHERE k.yazar_id = y.id AND k.yayinevi_id = ya.id');
        ZQuery5.Open;

        ZQuery5.First;
        if ZQuery5.RecordCount=0 then ShowMessage('Veri Yok');
        While not ZQuery5.Eof do
        begin
            Application.ProcessMessages;
            inc(Sira);

           GKitaplarListesi.Cells[0,Sira]:=ZQuery5.FieldByName('id').AsString;
           GKitaplarListesi.Cells[1,Sira]:= IntToStr(Sira);
           GKitaplarListesi.Cells[2,Sira]:=ZQuery5.FieldByName('kitap_adi').AsString;
           GKitaplarListesi.Cells[3,Sira]:=ZQuery5.FieldByName('ad').AsString;
           GKitaplarListesi.Cells[4,Sira]:=ZQuery5.FieldByName('sayfa_sayisi').AsString;
           GKitaplarListesi.Cells[5,Sira]:=ZQuery5.FieldByName('yayinevi_ad').AsString;
           GKitaplarListesi.Cells[6,Sira]:=ZQuery5.FieldByName('baski_sayisi').AsString;
           GKitaplarListesi.Cells[7,Sira]:=ZQuery5.FieldByName('isbn_no').AsString;
           GKitaplarListesi.Cells[8,Sira]:=ZQuery5.FieldByName('kat_no').AsString;
           GKitaplarListesi.Cells[9,Sira]:=ZQuery5.FieldByName('kitaplýk_no').AsString;
           GKitaplarListesi.Cells[10,Sira]:=ZQuery5.FieldByName('raf_no').AsString;

         ZQuery5.Next;
        end;
        GKitaplarListesi.RowCount := ZQuery5.RecordCount + 1;
        AdvGridEnAyar(GKitaplarListesi,2);
        ZQuery5.Close;

    end;

end;

procedure TForm5.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    ZQuery5.Free;
    ADOQuery5.Free;
end;

procedure TForm5.GKitaplarListesiClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
   if ARow>0 then
   begin
      seciliID  :=  GKitaplarListesi.Cells[0,ARow];
      seciliKitap_adi :=  GKitaplarListesi.Cells[2,ARow];
      seciliKitap_baski := GKitaplarListesi.Cells[6,ARow];
      seciliKitap_isbn := GKitaplarListesi.Cells[7,ARow];
      LSeciliKitap.Caption := 'Seçili Kitap:';
      LSeciliKitap.Caption := LSeciliKitap.Caption + ' ' + GKitaplarListesi.Cells[1,ARow] + ' - ' + GKitaplarListesi.Cells[2,ARow];
   end;
end;

procedure TForm5.BVeriSilClick(Sender: TObject);
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

           SQL := 'DELETE FROM kitap WHERE id = ' + seciliID;

           Form1.ADOCommand1.CommandText := SQL;
           Form1.ADOCommand1.Execute;

       end else
       begin
       
           ZQuery5.Close;
           ZQuery5.SQL.Clear;
           ZQuery5.SQL.Add('DELETE FROM kitap WHERE id = ' + seciliID);
           ZQuery5.ExecSQL;

       end;

       ShowMessage('Veri Baþarýyla Silindi');

       seciliID := '';
       LSeciliKitap.Caption := 'Seçili Kitap :';

       TimerData.Enabled := True;

  end;
end;

procedure TForm5.BKitapEkleClick(Sender: TObject);
var
  yazarID : string;
  yayineviID : string;
  SQL : string;
begin

  SQL := '';

  if (EKitapAd.Text = '') or (ESayfaSayisi.Text = '') or (EBaskiSayisi.Text = '') or (EIsbn.Text = '')
  or (EKatNo.Text = '') or (EKitaplikNo.Text = '') or (ERafNo.Text = '') then
  begin
       ShowMessage('Lütfen Tüm Alanlarý Doldurun');
  end
  else
  begin
       yazarID := Copy(CYazar.Text,1,Pos('-',CYazar.Text)-1);
       yayineviID := Copy(CYayinEvi.Text,1,Pos('-',CYayinEvi.Text)-1);

       if not Form1.ZLite then
       begin

          SQL := 'INSERT INTO kitap (kitap_adi,yazar_id,sayfa_sayisi,yayinevi_id,baski_sayisi,isbn_no,kat_no,kitaplýk_no,raf_no)';
          SQL := SQL + 'VALUES ('+ QuotedStr(EKitapAd.Text) + ',' + QuotedStr(yazarID) + ',' + QuotedStr(ESayfaSayisi.Text) + ',' + QuotedStr(yayineviID) + ',';
          SQL := SQL + QuotedStr(EBaskiSayisi.Text) + ',' + QuotedStr(EIsbn.Text) + ',' + QuotedStr(EKatNo.Text) + ',';
          SQL := SQL + QuotedStr(EKitaplikNo.Text) + ',' + QuotedStr(ERafNo.Text) + ')';

          Form1.ADOCommand1.CommandText := SQL;
          Form1.ADOCommand1.Execute;

       end else
       begin
           ZQuery5.Close;
           ZQuery5.SQL.Clear;
           ZQuery5.SQL.Add('INSERT INTO kitap (kitap_adi,yazar_id,sayfa_sayisi,yayinevi_id,baski_sayisi,isbn_no,kat_no,kitaplýk_no,raf_no)');
           ZQuery5.SQL.Add('VALUES ('+ QuotedStr(EKitapAd.Text) + ',' + QuotedStr(yazarID) + ',' + QuotedStr(ESayfaSayisi.Text) + ',' + QuotedStr(yayineviID) + ',');
           ZQuery5.SQL.Add(QuotedStr(EBaskiSayisi.Text) + ',' + QuotedStr(EIsbn.Text) + ',' + QuotedStr(EKatNo.Text) + ',');
           ZQuery5.SQL.Add(QuotedStr(EKitaplikNo.Text) + ',' + QuotedStr(ERafNo.Text) + ')');
           ZQuery5.ExecSQL;
       end;

       ShowMessage('Kitap Baþarýyla Oluþturuldu.');

       EKitapAd.Text := '';
       ESayfaSayisi.Text := '';
       EBaskiSayisi.Text := '';
       EIsbn.Text := '';
       EKatNo.Text := '';
       EKitaplikNo.Text := '';
       ERafNo.Text := '';

       TimerData.Enabled := True;

  end;
end;

procedure TForm5.BBarkodMenuAcClick(Sender: TObject);
begin
    Memo1.Visible := not Memo1.Visible;
    Memo2.Visible := not Memo2.Visible;
end;


function  TForm5.etiketDeiskenMi():Boolean;
 var
   i,MLi:Integer;
   S1,S2,DosyaStr:String;

begin
     Screen.Cursor:=crHourGlass;
     Memo1.Clear;
     Result := False;


  For MLi:=0 to Memo2.Lines.Count do
  begin
         DosyaStr:=Memo2.Lines.Strings[MLi];

     if Pos('{',DosyaStr)<>0 then
     begin
        if Pos('{V00}',DosyaStr)<>0 then
        begin
           S1:=Copy(DosyaStr,1,Pos('{V00}',DosyaStr)-1);
           S2:=Copy(DosyaStr,Pos('{V00}',DosyaStr)+5,Length(DosyaStr));
           DosyaStr:=S1 + ' ' + seciliID + ' ' +S2;
           Result := True;
        end;

        if Pos('{V01}',DosyaStr)<>0 then
        begin
           S1:=Copy(DosyaStr,1,Pos('{V01}',DosyaStr)-1);
           S2:=Copy(DosyaStr,Pos('{V01}',DosyaStr)+5,Length(DosyaStr));
           DosyaStr:=S1 + ' ' + seciliID + ' ' +S2;
           Result := True;
        end;

        if Pos('{V02}',DosyaStr)<>0 then      //
        begin
           S1:=Copy(DosyaStr,1,Pos('{V02}',DosyaStr)-1);
           S2:=Copy(DosyaStr,Pos('{V02}',DosyaStr)+5,Length(DosyaStr));
           DosyaStr:=S1 + ' ' + seciliKitap_adi + ' ' +S2;
           Result := True;
        end;

        if Pos('{V03}',DosyaStr)<>0 then      //
        begin
           S1:=Copy(DosyaStr,1,Pos('{V03}',DosyaStr)-1);
           S2:=Copy(DosyaStr,Pos('{V03}',DosyaStr)+5,Length(DosyaStr));
           DosyaStr:=S1 + ' ' + seciliKitap_baski + ' ' +S2;
           Result := True;
        end;

        if Pos('{V04}',DosyaStr)<>0 then      //
        begin
           S1:=Copy(DosyaStr,1,Pos('{V04}',DosyaStr)-1);
           S2:=Copy(DosyaStr,Pos('{V04}',DosyaStr)+5,Length(DosyaStr));
           DosyaStr:=S1 + ' ' + seciliKitap_isbn + ' ' +S2;
           Result := True;
        end;

        DosyaStr:=EtiketDeiskenPey(DosyaStr,StrToInt(Form1.ECiktiSayisi),StrToInt(Form1.EHiz),StrToInt(Form1.EKoyu),0,0,0,0,0,0)

     end;



    if (Pos('^FX',DosyaStr)=0) and (Length(DosyaStr)<>0) then
    Memo1.Lines.Add(DosyaStr);
  end;

     Screen.Cursor:=crDefault;
end;

procedure TForm5.BCiktiAlClick(Sender: TObject);
begin

  BCiktiAl.Enabled:= False;
  if NOT EtiketDeiskenMi() then
  BEGIN
    ShowMessage('ETIKET FORMATI YANLIÞ');
    BCiktiAl.Enabled:=True;
    EXIT;
  end;

//  if not Form1.YaziciWin then
//  begin
   /// KAYIT BITTI YER

//    if Memo1.Lines.Count<1 then
//    begin
//       AdvGlowButton2.Enabled:=True;
//       Screen.Cursor:=crDefault;
//       Exit;
//    end;

//  TextFileKayit(Form1.FileRegD + '\temp\',Memo1.Text,'MemoBlankEtiket','txt');
//    if Form1.YaziciPort='USB' then
//    begin
//      Printer.Title:='ETIKET';
      MemoPeyPrintYap(Memo1,'');
      BCiktiAl.Enabled := True;
//    end else if Form1.YaziciPort='LPT1' then
//      CopyFile(PChar(Form1.FileRegD + '\temp\MemoBlankEtiket.txt'),'LPT1',TRUE)
//    else
//      Form1.PZpl1.AnaDosyaYaz(Memo1);

//  end;
end;


procedure TForm5.EAramaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

    if (Key=13) then BSearchClick(Self);



end;

procedure TForm5.BSearchClick(Sender: TObject);
var
  Sira : Integer;
begin

    Sira := 0;

    if not Form1.ZLite then
    begin

        ADOQuery5.Close;
        ADOQuery5.SQL.Clear;
        ADOQuery5.SQL.Add('SELECT k.id,k.kitap_adi,y.ad,k.sayfa_sayisi,ya.yayinevi_ad,k.baski_sayisi,k.isbn_no,k.kat_no,k.kitaplýk_no,k.raf_no');
        ADOQuery5.SQL.Add('FROM kitap k, yazar y, yayinevi ya');
        ADOQuery5.SQL.Add('WHERE k.yazar_id = y.id AND k.yayinevi_id = ya.id AND k.kitap_adi LIKE ' + QuotedStr('%'+ EArama.Text +'%'));
        ADOQuery5.Open;

        ADOQuery5.First;
        if ADOQuery5.RecordCount=0 then ShowMessage('Veri Yok');
        While not ADOQuery5.Eof do
        begin
            Application.ProcessMessages;
            inc(Sira);

           GKitaplarListesi.Cells[0,Sira]:=ADOQuery5.FieldByName('id').AsString;
           GKitaplarListesi.Cells[1,Sira]:= IntToStr(Sira);
           GKitaplarListesi.Cells[2,Sira]:=ADOQuery5.FieldByName('kitap_adi').AsString;
           GKitaplarListesi.Cells[3,Sira]:=ADOQuery5.FieldByName('ad').AsString;
           GKitaplarListesi.Cells[4,Sira]:=ADOQuery5.FieldByName('sayfa_sayisi').AsString;
           GKitaplarListesi.Cells[5,Sira]:=ADOQuery5.FieldByName('yayinevi_ad').AsString;
           GKitaplarListesi.Cells[6,Sira]:=ADOQuery5.FieldByName('baski_sayisi').AsString;
           GKitaplarListesi.Cells[7,Sira]:=ADOQuery5.FieldByName('isbn_no').AsString;
           GKitaplarListesi.Cells[8,Sira]:=ADOQuery5.FieldByName('kat_no').AsString;
           GKitaplarListesi.Cells[9,Sira]:=ADOQuery5.FieldByName('kitaplýk_no').AsString;
           GKitaplarListesi.Cells[10,Sira]:=ADOQuery5.FieldByName('raf_no').AsString;

         ADOQuery5.Next;
        end;
        GKitaplarListesi.RowCount := ADOQuery5.RecordCount + 1;
        AdvGridEnAyar(GKitaplarListesi,2);
        ADOQuery5.Close;

    end else
    begin

        ZQuery5.Close;
        ZQuery5.SQL.Clear;
        ZQuery5.SQL.Add('SELECT k.id,k.kitap_adi,y.ad,k.sayfa_sayisi,ya.yayinevi_ad,k.baski_sayisi,k.isbn_no,k.kat_no,k.kitaplýk_no,k.raf_no');
        ZQuery5.SQL.Add('FROM kitap k, yazar y, yayinevi ya');
        ZQuery5.SQL.Add('WHERE k.yazar_id = y.id AND k.yayinevi_id = ya.id AND k.kitap_adi LIKE ' + QuotedStr('%'+ EArama.Text +'%'));
        ZQuery5.Open;

        ZQuery5.First;
        if ZQuery5.RecordCount=0 then ShowMessage('Veri Yok');
        While not ZQuery5.Eof do
        begin
            Application.ProcessMessages;
            inc(Sira);

           GKitaplarListesi.Cells[0,Sira]:=ZQuery5.FieldByName('id').AsString;
           GKitaplarListesi.Cells[1,Sira]:= IntToStr(Sira);
           GKitaplarListesi.Cells[2,Sira]:=ZQuery5.FieldByName('kitap_adi').AsString;
           GKitaplarListesi.Cells[3,Sira]:=ZQuery5.FieldByName('ad').AsString;
           GKitaplarListesi.Cells[4,Sira]:=ZQuery5.FieldByName('sayfa_sayisi').AsString;
           GKitaplarListesi.Cells[5,Sira]:=ZQuery5.FieldByName('yayinevi_ad').AsString;
           GKitaplarListesi.Cells[6,Sira]:=ZQuery5.FieldByName('baski_sayisi').AsString;
           GKitaplarListesi.Cells[7,Sira]:=ZQuery5.FieldByName('isbn_no').AsString;
           GKitaplarListesi.Cells[8,Sira]:=ZQuery5.FieldByName('kat_no').AsString;
           GKitaplarListesi.Cells[9,Sira]:=ZQuery5.FieldByName('kitaplýk_no').AsString;
           GKitaplarListesi.Cells[10,Sira]:=ZQuery5.FieldByName('raf_no').AsString;

         ZQuery5.Next;
        end;
        GKitaplarListesi.RowCount := ZQuery5.RecordCount + 1;
        AdvGridEnAyar(GKitaplarListesi,2);
        ZQuery5.Close;

    end;
end;

end.
