unit UnitKatTanim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, cxTextEdit, AdvFontCombo, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  VrControls, VrDesign, StdCtrls, Mylabel, ComCtrls, AdvGlowButton,
  ExtCtrls,peykan_Unit,ADODB;

type
  TForm_KategoriT = class(TForm)
    Panel1: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowHelp: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    Panel_Po: TPanel;
    Panel2: TPanel;
    stat1: TStatusBar;
    Panel3: TPanel;
    myLabel3d3: TmyLabel3d;
    myLabel3d2: TmyLabel3d;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel4: TPanel;
    myLabel3d1: TmyLabel3d;
    Panel5: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableKod: TcxGridDBColumn;
    cxGrid1DBTableUrunAd: TcxGridDBColumn;
    cxGrid1DBTableGurup: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    myLabel3d4: TmyLabel3d;
    ComboBox_Ka: TAdvOfficeComboBox;
    DataSource1: TDataSource;
    Timer1: TTimer;
    Timer2: TTimer;
    Label1: TLabel;
    AdvGlowButton4: TAdvGlowButton;
    LMevcutAlan: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure RadioButtonEChange(Sender: TObject);
    procedure ComboBox_KaChange(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_KategoriT: TForm_KategoriT;
  ADOQuery_K,ADOQueryK_Islem:TADOQuery;
  GrupTur,GrupID:string;

implementation

uses MainUnit, UnitAna, Unit1;

{$R *.dfm}

procedure TForm_KategoriT.FormActivate(Sender: TObject);
begin
  Left:=0;
  Top:=0;
  Width:=FormMain.width-FormMain.widthInt;
  Height:=FormMain.Height-FormMain.EnInt;
end;

procedure TForm_KategoriT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  ADOQuery_K.Free;
  ADOQueryK_Islem.Free;
  Form_KategoriT:=Nil;
end;

procedure TForm_KategoriT.FormCreate(Sender: TObject);
begin
  ResimAl1(AnaForm.image_Close,AdvGlowButton1);
  ResimAl1(AnaForm.image_2,AdvGlowButton3);
  ResimAl1(AnaForm.image_Duz,AdvGlowButton2);
  ResimAl1(AnaForm.image_4,AdvGlowHelp);
  ResimAl1(AnaForm.ImageSil,AdvGlowButton4);
  ResimHint(AnaForm.image_Vaz,AdvGlowButton4,'Sil',False);
  ResimHint(AnaForm.image_Vaz,AdvGlowButton3,'S',False);
  ResimHint(AnaForm.image_Close,AdvGlowButton1,'K',False);
  ResimHint(AnaForm.img5,AdvGlowButton2,'Duzenle',False);
  ResimHint(AnaForm.ImageHelp,AdvGlowHelp,'Help',False);


  ADOQuery_K :=TADOQuery.Create(self);
  ADOQuery_K.Connection:=Form1.ADOConnection1;

  ADOQueryK_Islem :=TADOQuery.Create(self);
  ADOQueryK_Islem.Connection:=Form1.ADOConnection1;

  Timer1.Enabled:=True;
  Timer2.Enabled:=True;
end;

procedure TForm_KategoriT.AdvGlowButton1Click(Sender: TObject);
begin
  close;
end;

procedure TForm_KategoriT.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:=False;

  LMevcutAlan.Caption := 'Departman : ';
  if Form1.Alan = 'E' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Elektronik'
  else if Form1.Alan = 'O' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Otomasyon'
  else if Form1.Alan = 'B' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Barkod'
  else if Form1.Alan = 'D' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Demirbaþ';

  if Form1.Alan = 'E' then GrupTur:='E'
  else if Form1.Alan = 'O' then GrupTur:='O'
  else if Form1.Alan = 'B' then GrupTur:='B'
  else GrupTur:='D';

  if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQuery_K,True,'PeyMar','') then
  begin
    ADOQuery_K.Close;
    ADOQuery_K.SQL.Clear;
    SQL:='Select Id, KAd, Aciklama,Kato, ';
    SQL:= SQL + 'case Tur when '+QuotedStr('D')+' then '+QuotedStr('Demirbas')+' when '+QuotedStr('E')+' then '+QuotedStr('Elektronik')+' when '+QuotedStr('O')+' then '+QuotedStr('Otomasyon')+' when '+QuotedStr('B')+' then '+QuotedStr('Barkod')+' end as Tur ';
    SQL:= SQL +'FROM UrunK WHERE Tur='+QuotedStr(Trim(GrupTur))+' ORDER BY KAd ASC';
    ADOQuery_K.SQL.Add(SQL);
    ADOQuery_K.Open;

    DataSource1.DataSet:=ADOQuery_K;
    cxGrid1DBTableView1.DataController.DataSource:=DataSource1;
  end;
end;

procedure TForm_KategoriT.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled:=False;

  if Form1.Alan = 'E' then GrupTur:='E'
  else if Form1.Alan = 'O' then GrupTur:='O'
  else if Form1.Alan = 'B' then GrupTur:='B'
  else GrupTur:='D';

  ComboBox_Ka.Items.Clear;

  ADOQueryK_Islem.Close;
  ADOQueryK_Islem.SQL.Clear;
  ADOQueryK_Islem.SQL.Add('SELECT GAd FROM UrunG WHERE Tur='+QuotedStr(GrupTur));
  ADOQueryK_Islem.Open;
  ADOQueryK_Islem.First;
  while not ADOQueryK_Islem.Eof do
  begin
    ComboBox_Ka.Items.Add(ADOQueryK_Islem.FieldByName('GAd').AsString);
    ADOQueryK_Islem.Next;
  end;

end;

procedure TForm_KategoriT.RadioButtonEChange(Sender: TObject);
begin
  Timer1.Enabled:=True;
  Timer2.Enabled:=True;
end;

procedure TForm_KategoriT.ComboBox_KaChange(Sender: TObject);
begin
  ADOQueryK_Islem.Close;
  ADOQueryK_Islem.SQL.Clear;
  ADOQueryK_Islem.SQL.Add('SELECT Id FROM UrunG WHERE GAd='+QuotedStr(Trim(ComboBox_Ka.Text)));
  ADOQueryK_Islem.Open;
  if ADOQueryK_Islem.RecordCount > 0 then GrupID:=ADOQueryK_Islem.FieldByName('Id').AsString;

end;

procedure TForm_KategoriT.AdvGlowButton3Click(Sender: TObject);
begin
  if Trim(Edit1.Text)='' then
  begin
    PeykanHint('HATA','KATEGORÝ ADI GIRILMEMIS. Lütfen Kontrol Ediniz.',clRed,30,True);
    Exit;
  end;

  if Form1.Alan = 'E' then GrupTur:='E'
  else if Form1.Alan = 'O' then GrupTur:='O'
  else if Form1.Alan = 'B' then GrupTur:='B'
  else GrupTur:='D';
  if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQuery_K,True,'PeyMar','') then
  begin
    ADOQueryK_Islem.Close;
    ADOQueryK_Islem.SQL.Clear;
    ADOQueryK_Islem.SQL.Add('SELECT Id FROM UrunK WHERE KAd='+QuotedStr(Trim(Edit1.Text))+ ' AND Tur='+QuotedStr(Trim(GrupTur)));
    ADOQueryK_Islem.Open;
    if ADOQueryK_Islem.RecordCount>0 then
    begin
      PeykanHint('HATA','BU KATEGORI ÖNCEDEN TANITILMIS. Lütfen Kontrol Ediniz.',clRed,30,True);
       Exit;
    end;
    SQL:='INSERT INTO UrunK (KAd,Aciklama,Kullanici,Kato,Tur) VALUES('
          +QuotedStr(Trim(Edit1.Text))+', '
          +QuotedStr(Trim(Edit2.Text))+', '
          +QuotedStr(Form1.Kulanici)+', '
          +QuotedStr(GrupID)+', '
          +QuotedStr(GrupTur)+' )';

    Form1.ADOCommand1.CommandText :=SQL;
    Form1.ADOCommand1.Execute;

    Timer1.Enabled:=True;
    Edit1.Text:='';
    Edit2.Text:='';
    ComboBox_Ka.Text:='';
  end;
end;

procedure TForm_KategoriT.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  stat1.Panels[5].Text:=ADOQuery_K.FieldByName('Aciklama').AsString;
  stat1.Panels[3].Text:=ADOQuery_K.FieldByName('kAd').AsString;
  stat1.Panels[1].Text:=ADOQuery_K.FieldByName('Id').AsString;
  AdvGlowButton4.Caption:='Sil  '+ ADOQuery_K.FieldByName('Id').AsString;

  Edit1.Text:= ADOQuery_K.FieldByName('KAd').AsString;
  Edit2.Text:= ADOQuery_K.FieldByName('Aciklama').AsString;
  GrupID:=ADOQuery_K.FieldByName('Kato').AsString;

  GrupTur:= ADOQuery_K.FieldByName('Tur').AsString;
//  if GrupTur='Elektronik' then RadioButtonE.Checked:=True
//  else if GrupTur='Otomasyon' then RadioButtonO.Checked:=True
//  else if GrupTur='Barkod' then RadioButtonB.Checked:=True
//  else RadioButton_D.Checked:=True;

  if GrupID <> '' then
  begin
    ADOQueryK_Islem.Close;
    ADOQueryK_Islem.SQL.Clear;
    ADOQueryK_Islem.SQL.Add('SELECT GAd FROM UrunG WHERE Id='+QuotedStr(GrupID));
    ADOQueryK_Islem.Open;
    ComboBox_Ka.Text:=ADOQueryK_Islem.FieldByName('GAd').AsString;
  end;


end;

procedure TForm_KategoriT.AdvGlowButton2Click(Sender: TObject);
begin
  if Trim(Edit1.Text)='' then
  begin
    PeykanHint('HATA','KATEGORÝ ADI GIRILMEMIS. Lütfen Kontrol Ediniz.',clRed,30,True);
    Exit;
  end;

  if Form1.Alan = 'E' then GrupTur:='E'
  else if Form1.Alan = 'O' then GrupTur:='O'
  else if Form1.Alan = 'B' then GrupTur:='B'
  else GrupTur:='D';

  ADOQueryK_Islem.Close;
  ADOQueryK_Islem.SQL.Clear;
  ADOQueryK_Islem.SQL.Add('SELECT Id FROM UrunK WHERE Id='+QuotedStr(Trim(stat1.Panels[1].Text)));
  ADOQueryK_Islem.Open;
  if ADOQueryK_Islem.RecordCount>0 then
  begin
    if MessageDlg(#39+stat1.Panels[3].Text+#39' Grubunun  Kaydýnýn Düzenlenemesini Ýstermisiniz ?', mtConfirmation, [mbYes, mbNo], 1) <> mrYes then
    begin
      Exit;
    end else
    begin
      SQL := 'UPDATE UrunK SET ' +
            'KAd='+QuotedStr(Edit1.Text)+','+
            'Aciklama='+QuotedStr(Edit2.Text)+','+
            'Tur='+QuotedStr(GrupTur)+','+
            'Kato='+QuotedStr(GrupID)+
            ' WHERE Id='+QuotedStr(stat1.Panels[1].Text);
      Form1.ADOCommand1.CommandText := SQL;
      Form1.ADOCommand1.Execute;
    end;

  end else if Trim(stat1.Panels[1].Text)='' then
  begin
   PeykanHint('HATA','Listeden Seçim Yapýnýz.',clRed,30,True);
   exit;
  end else
  begin
    PeykanHint('HATA','KAYIT BULUNAMADI.',clRed,30,True);
    Exit;
  end;

  Timer1.Enabled:=True;
  stat1.Panels[1].Text:='';
  stat1.Panels[3].Text:='';
  stat1.Panels[5].Text:='';
  Edit1.Text:='';
  Edit2.Text:='';
end;

procedure TForm_KategoriT.AdvGlowButton4Click(Sender: TObject);
begin
 if Trim(Edit1.Text)='' then exit;
  if MessageDlg('Silmek Ister misiniz?'+#13+'Kategori Adý : '+stat1.Panels[1].Text+' Eminmisiniz.' ,mtConfirmation,[mbYes,mbNo],1) <> mrYes then
  begin
    Exit;
  end else
  BEGIN
    Form1.ADOCommand1.CommandText :='delete UrunK WHERE KAd='+QuotedStr(Trim(Edit1.Text));
    Form1.ADOCommand1.Execute;

    Timer1.Enabled:=True;
  end;
end;

end.
