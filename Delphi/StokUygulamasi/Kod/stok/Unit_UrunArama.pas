unit Unit_UrunArama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, StdCtrls, DrLabel, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,peykan_Unit,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, cxTextEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ADODB, CurvyControls, AdvFontCombo, Mylabel;

type
  TFormUrunArama = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableKod: TcxGridDBColumn;
    cxGrid1DBTableGurup: TcxGridDBColumn;
    cxGrid1DBTableUrunAd: TcxGridDBColumn;
    cxGrid1DBTableKatogori: TcxGridDBColumn;
    cxGrid1DBTableNot: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Timer1: TTimer;
    DataSource1: TDataSource;
    Panel_Arama: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    EArama: TCurvyEdit;
    cxGrid1DBTableRaf: TcxGridDBColumn;
    Panel1: TPanel;
    myLabel3d1: TmyLabel3d;
    ComboBox_Raf: TAdvOfficeComboBox;
    AdvGlowButton2: TAdvGlowButton;
    Label1: TLabel;
    myLabel3d2: TmyLabel3d;
    ComboBox_Departman: TAdvOfficeComboBox;
    Timer2: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure EAramaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure ComboBox_DepartmanChange(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUrunArama: TFormUrunArama;
  ADOQuery_Arama,ADOQuery_Raf : TADOQuery;

implementation

uses Unit1, MainUnit, UnitAna, UnitStokH;

{$R *.dfm}

procedure TFormUrunArama.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:=False;

  if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQuery_Arama,True,'PeyMar','') then
  begin
    Screen.Cursor:=crHourGlass;
    ADOQuery_Arama.Close;
    ADOQuery_Arama.SQL.Clear;

    ADOQuery_Arama.SQL.Add('Select U.Id, UrunNot, U.Birim, U.Tarih, A_Fiyat, B_Fiyat, Katogori, SUM(Miktar) as Miktar, ');
    ADOQuery_Arama.SQL.Add('MinStok, UAciklama, Gurup, U.UrunKod, Kullanici, UrunAd,Raf, ');
    ADOQuery_Arama.SQL.Add('case U.Tur when '+QuotedStr('D')+' then '+QuotedStr('Demirbas')+' when '+QuotedStr('E')+' then '+QuotedStr('Elektronik')+' when '+QuotedStr('O')+' then '+QuotedStr('Otomasyon')+' when '+QuotedStr('B')+' then '+QuotedStr('Barkod')+' end as Tur ');
    ADOQuery_Arama.SQL.Add(' FROM UrunKart AS U , Stok  Where Stok.UrunKod=U.UrunKod ');
    SQL:='';

    SQL:=SQL+' GROUP BY U.UrunKod, U.Id, UrunNot, U.Birim, U.Tarih, A_Fiyat, B_Fiyat, Katogori,MinStok, UAciklama, Gurup, U.UrunKod, Kullanici, UrunAd,U.Tur,Raf';

    ADOQuery_Arama.SQL.Add(SQL);
    ADOQuery_Arama.Open;
    DataSource1.DataSet:=ADOQuery_Arama;

    cxGrid1DBTableView1.DataController.DataSource:=DataSource1;
  end;
 Screen.Cursor:=crDefault;
end;

procedure TFormUrunArama.FormCreate(Sender: TObject);
begin

  ADOQuery_Arama :=TADOQuery.Create(self);
  ADOQuery_Arama.Connection:=Form1.ADOConnection1;

  ADOQuery_Raf :=TADOQuery.Create(self);
  ADOQuery_Raf.Connection:=Form1.ADOConnection1;

  Timer1.Enabled:=True;
  Timer2.Enabled:=True;

  ResimAl1(AnaForm.image_search,AdvGlowButton1);
  ResimAl1(AnaForm.image_search,AdvGlowButton2);

end;

procedure TFormUrunArama.AdvGlowButton1Click(Sender: TObject);
begin
  if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQuery_Arama,True,'PeyMar','') then
  begin
    Screen.Cursor:=crHourGlass;
    ADOQuery_Arama.Close;
    ADOQuery_Arama.SQL.Clear;

    ADOQuery_Arama.SQL.Add('Select U.Id, UrunNot, U.Birim, U.Tarih, A_Fiyat, B_Fiyat, Katogori, SUM(Miktar) as Miktar, ');
    ADOQuery_Arama.SQL.Add('MinStok, UAciklama, Gurup, U.UrunKod, Kullanici, UrunAd,Raf, ');
    ADOQuery_Arama.SQL.Add('case U.Tur when '+QuotedStr('D')+' then '+QuotedStr('Demirbas')+' when '+QuotedStr('E')+' then '+QuotedStr('Elektronik')+' when '+QuotedStr('O')+' then '+QuotedStr('Otomasyon')+' when '+QuotedStr('B')+' then '+QuotedStr('Barkod')+' end as Tur ');
    ADOQuery_Arama.SQL.Add(' FROM UrunKart AS U , Stok  Where Stok.UrunKod=U.UrunKod AND U.UrunAd LIKE' + QuotedStr('%' + EArama.Text + '%'));
    SQL:='';

    SQL:=SQL+' GROUP BY U.UrunKod, U.Id, UrunNot, U.Birim, U.Tarih, A_Fiyat, B_Fiyat, Katogori,MinStok, UAciklama, Gurup, U.UrunKod, Kullanici, UrunAd,U.Tur,Raf';

    ADOQuery_Arama.SQL.Add(SQL);
    ADOQuery_Arama.Open;
    DataSource1.DataSet:=ADOQuery_Arama;

    cxGrid1DBTableView1.DataController.DataSource:=DataSource1;
  end;
 Screen.Cursor:=crDefault;
end;

procedure TFormUrunArama.EAramaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=13) then AdvGlowButton1Click(Self);
end;

procedure TFormUrunArama.FormActivate(Sender: TObject);
begin
  Left:=0;
  Top:=0;
  Width:=FormMain.width-FormMain.widthInt;
  Height:=FormMain.Height-FormMain.EnInt;
end;

procedure TFormUrunArama.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  ADOQuery_Arama.Free;
  FormUrunArama:=Nil;

end;

procedure TFormUrunArama.AdvGlowButton2Click(Sender: TObject);
var
  tur : string;
begin

  if ComboBox_Departman.Text = 'Elektronik' then tur := 'E'
  else if ComboBox_Departman.Text = 'Otomasyon' then tur := 'O'
  else if ComboBox_Departman.Text = 'Barkod' then tur := 'B'
  else if ComboBox_Departman.Text = 'Demirbaþ' then tur := 'D';

  if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQuery_Arama,True,'PeyMar','') then
  begin
    Screen.Cursor:=crHourGlass;
    ADOQuery_Arama.Close;
    ADOQuery_Arama.SQL.Clear;

    ADOQuery_Arama.SQL.Add('Select U.Id, UrunNot, U.Birim, U.Tarih, A_Fiyat, B_Fiyat, Katogori, SUM(Miktar) as Miktar, ');
    ADOQuery_Arama.SQL.Add('MinStok, UAciklama, Gurup, U.UrunKod, Kullanici, UrunAd,Raf, ');
    ADOQuery_Arama.SQL.Add('case U.Tur when '+QuotedStr('D')+' then '+QuotedStr('Demirbas')+' when '+QuotedStr('E')+' then '+QuotedStr('Elektronik')+' when '+QuotedStr('O')+' then '+QuotedStr('Otomasyon')+' when '+QuotedStr('B')+' then '+QuotedStr('Barkod')+' end as Tur ');
    ADOQuery_Arama.SQL.Add(' FROM UrunKart AS U , Stok  Where Stok.UrunKod=U.UrunKod AND Raf = ' + QuotedStr(ComboBox_Raf.Text) + ' AND u.Tur = ' + QuotedStr(tur));
    SQL:='';
    
    SQL:=SQL+' GROUP BY U.UrunKod, U.Id, UrunNot, U.Birim, U.Tarih, A_Fiyat, B_Fiyat, Katogori,MinStok, UAciklama, Gurup, U.UrunKod, Kullanici, UrunAd,U.Tur,Raf';

    ADOQuery_Arama.SQL.Add(SQL);
    ADOQuery_Arama.Open;
    DataSource1.DataSet:=ADOQuery_Arama;

    cxGrid1DBTableView1.DataController.DataSource:=DataSource1;
  end;
 Screen.Cursor:=crDefault;

end;


procedure TFormUrunArama.ComboBox_DepartmanChange(Sender: TObject);
begin
  Timer2.Enabled := True;
end;

procedure TFormUrunArama.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := False;
  ComboBox_Raf.Items.Clear;

   if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQuery_Raf,True,'PeyMar','') then
  begin
    ADOQuery_Raf.Close;
    ADOQuery_Raf.SQL.Clear;

      if ComboBox_Departman.Text = 'Elektronik' then ADOQuery_Raf.SQL.Add('Select Kod FROM Raf_E order by Kod')
      else if ComboBox_Departman.Text = 'Otomasyon' then ADOQuery_Raf.SQL.Add('Select Kod FROM Raf_O order by Kod')
      else if ComboBox_Departman.Text = 'Barkod' then ADOQuery_Raf.SQL.Add('Select Kod FROM Raf_B order by Kod')
      else if ComboBox_Departman.Text = 'Demirbaþ' then ADOQuery_Raf.SQL.Add('Select Kod FROM Raf_D order by Kod');

    ADOQuery_Raf.Open;
    ADOQuery_Raf.First;
        while not ADOQuery_Raf.Eof do
        begin
          ComboBox_Raf.Items.Add(ADOQuery_Raf.FieldByName('Kod').AsString);
          ADOQuery_Raf.Next;
        end;

   end
end;

end.
