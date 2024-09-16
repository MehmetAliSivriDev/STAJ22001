unit UnitData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ExtCtrls, xpPanel, dxGDIPlusClasses, Mylabel,peykan_Grid,peykan_Unit,
  StdCtrls, EditNew, xpEdit, AdvReflectionLabel, Grids, AdvObj, BaseGrid,
  AdvGrid, AdvCGrid, ComCtrls, AdvFontCombo, AdvOfficePager, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvSmoothStatusIndicator;

type
  TFormData = class(TForm)
    xpPanel1: TxpPanel;
    an: TAdvOfficePager;
    AdvOfficePage1: TAdvOfficePage;
    Image2: TImage;
    pnl1: TPanel;
    StatusBar1: TStatusBar;
    Grid1: TAdvColumnGrid;
    Panel2: TPanel;
    AdvReflectionLabel1: TAdvReflectionLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    xpEdit2: TxpEdit;
    xpEdit1: TxpEdit;
    xpEdit3: TxpEdit;
    xpEdit6: TxpEdit;
    Panel4: TPanel;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvOfficePage2: TAdvOfficePage;
    Image3: TImage;
    Panel10: TPanel;
    Label2: TLabel;
    ComboBox2: TAdvOfficeComboBox;
    StatusBar2: TStatusBar;
    AdvGlowButton7: TAdvGlowButton;
    Grid2: TAdvColumnGrid;
    Panel1: TPanel;
    myLabel3d1: TmyLabel3d;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Image4: TImage;
    AdvReflectionLabel2: TAdvReflectionLabel;
    CBox1: TAdvOfficeComboBox;
    Panel5: TPanel;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    Timer1: TTimer;
    AdvStatusIndicator_1: TAdvSmoothStatusIndicator;
    xpEdit4: TxpEdit;
    xpEdit5: TxpEdit;
    xpEdit7: TxpEdit;
    xpEdit8: TxpEdit;
    Label13: TLabel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormData: TFormData;
   ZQuery_AnaSor :TZQuery;
   seciliId : string;
implementation

uses splashfm, Unit1;

{$R *.dfm}
 {
  [Komut] NVARCHAR(25),
  [A1] NVARCHAR(230),    Aciklama
  [A2] NVARCHAR(230),
  [PeyKomut_Z] NVARCHAR(25),
  [ZplKomut] NVARCHAR(25),
  [EplKomut] NVARCHAR(25),
  [PplKomut] NVARCHAR(25),
  [EzplKomut] NVARCHAR(25),
  [PosKomut] NVARCHAR(25),
 }
procedure TFormData.AdvGlowButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormData.Timer1Timer(Sender: TObject);
var
  Sira:Integer;
begin

  seciliId := '';

  Timer1.Enabled:=False;
  ZQuery_AnaSor.Close;
  ZQuery_AnaSor.SQL.Clear;
  ZQuery_AnaSor.SQL.Append('Select * from Data');
  ZQuery_AnaSor.Open;

   Sira:=0;

  While not ZQuery_AnaSor.Eof do
  begin
    inc(Sira);
    Grid1.Cells[0,Sira]:=ZQuery_AnaSor.FieldByName('Id').AsString;;
    Grid1.Cells[1,Sira]:=ZQuery_AnaSor.FieldByName('Komut').AsString;
    Grid1.Cells[2,Sira]:= ZQuery_AnaSor.FieldByName('A2').AsString;  //Ýrsaliye
//    Grid1.Cells[3,Sira]:= ZQuery_AnaSor.FieldByName('A1').AsString;
    Grid1.Cells[3,Sira]:= ZQuery_AnaSor.FieldByName('PeyKomut_Z').AsString;
    Grid1.Cells[4,Sira]:= ZQuery_AnaSor.FieldByName('ZplKomut').AsString;
    Grid1.Cells[5,Sira]:= ZQuery_AnaSor.FieldByName('EplKomut').AsString;
    Grid1.Cells[6,Sira]:= ZQuery_AnaSor.FieldByName('PplKomut').AsString;
    Grid1.Cells[7,Sira]:= ZQuery_AnaSor.FieldByName('EzplKomut').AsString;
    Grid1.Cells[8,Sira]:= ZQuery_AnaSor.FieldByName('PosKomut').AsString;

    Application.ProcessMessages;
    ZQuery_AnaSor.Next;
  end;
  if Sira>0 then
    Grid1.RowCount:=Sira+1 else Grid1.RowCount:=2;
//  StatusBar1.Panels[1].Text:=IntToStr(Sira);

  AdvGridEnAyar(Grid1,3);
//  Grid2.SortByColumn(0);
  Screen.Cursor:=crDefault;
end;

procedure TFormData.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  ZQuery_AnaSor.Free;
end;

procedure TFormData.FormCreate(Sender: TObject);
begin

        ZQuery_AnaSor:=TZQuery.Create(self);
        ZQuery_AnaSor.Connection:=AnaEkran.ZConnection1;
        ResimAl1(AnaEkran.ImageSave,AdvGlowButton2);
        ResimAl1(AnaEkran.ImageK_Kapat,AdvGlowButton1);
end;

procedure TFormData.Grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  AdvStatusIndicator_1.Caption:=Grid1.Cells[0,ARow];
   xpEdit1.Text:=Grid1.Cells[1,ARow];
   xpEdit2.Text:=Grid1.Cells[2,ARow];
   xpEdit3.Text:=Grid1.Cells[3,ARow];
   xpEdit4.Text:=Grid1.Cells[4,ARow];
   xpEdit5.Text:=Grid1.Cells[5,ARow];
   xpEdit6.Text:=Grid1.Cells[6,ARow];
   xpEdit7.Text:=Grid1.Cells[7,ARow];
   xpEdit8.Text:=Grid1.Cells[8,ARow];

   seciliId :=  Grid1.Cells[0,ARow];

end;

procedure TFormData.AdvGlowButton4Click(Sender: TObject);
begin
          ZQuery_AnaSor.SQL.Clear;
          ZQuery_AnaSor.SQL.Add('Update Data set ');
          ZQuery_AnaSor.SQL.Add('Komut='+QuotedStr(Trim(xpEdit1.Text)));
          ZQuery_AnaSor.SQL.Add(',A2='+QuotedStr(Trim(xpEdit2.Text)));
          ZQuery_AnaSor.SQL.Add(',PeyKomut_Z='+QuotedStr(Trim(xpEdit3.Text)));
          ZQuery_AnaSor.SQL.Add(',ZplKomut='+QuotedStr(Trim(xpEdit4.Text)));
          ZQuery_AnaSor.SQL.Add(',EplKomut='+QuotedStr(Trim(xpEdit5.Text)));
          ZQuery_AnaSor.SQL.Add(',PplKomut='+QuotedStr(Trim(xpEdit6.Text)));
          ZQuery_AnaSor.SQL.Add(',EzplKomut='+QuotedStr(Trim(xpEdit7.Text)));
          ZQuery_AnaSor.SQL.Add(',PosKomut='+QuotedStr(Trim(xpEdit8.Text)));
          ZQuery_AnaSor.SQL.Add(' where Id='+AdvStatusIndicator_1.Caption);
          ZQuery_AnaSor.ExecSQL;
          Timer1.Enabled:=True;
          Form1.pass:=True;

end;

procedure TFormData.AdvGlowButton2Click(Sender: TObject);
begin

  if seciliId <> '' then
  begin
    ZQuery_AnaSor.Close;
    ZQuery_AnaSor.SQL.Clear;
    ZQuery_AnaSor.SQL.Add('UPDATE Data SET Komut = ' + QuotedStr(xpEdit1.Text) + ', A2 =' + QuotedStr(xpEdit2.Text) + ',');
    ZQuery_AnaSor.SQL.Add('PeyKomut_Z = ' + QuotedStr(xpEdit3.Text) + ', ZplKomut = ' + QuotedStr(xpEdit4.Text) + ',');
    ZQuery_AnaSor.SQL.Add('EplKomut = ' + QuotedStr(xpEdit5.Text) + ', PplKomut = ' + QuotedStr(xpEdit6.Text) + ',');
    ZQuery_AnaSor.SQL.Add('EzplKomut = ' + QuotedStr(xpEdit7.Text) + ', PosKomut = ' + QuotedStr(xpEdit8.Text));
    ZQuery_AnaSor.SQL.Add('WHERE Id = ' + QuotedStr(seciliId));
    ZQuery_AnaSor.ExecSQL;

    ShowMessage('Komut Bilgisi Baþarýyla Güncellendi');
    Timer1.Enabled := True;
    Form1.VeriAktar;

  end else
  begin
    ShowMessage('Lütfen Bir Veri Seçiniz');
  end;


end;

end.
