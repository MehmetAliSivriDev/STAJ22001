unit UnitStokRapor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  peykan_Unit,Unit_cxTurk,shellapi,ADODB,Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers,cxGridExportLink,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  dxPSCore, ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, VrControls,
  VrDesign, StdCtrls, xpEdit, AdvGlassButton, AdvGlowButton;

type
  TForm_Stok_R = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    Timer1: TTimer;
    dxComponentPrinter1: TdxComponentPrinter;
    DataSource1: TDataSource;
    ADOSP_S_Rapor: TADOStoredProc;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableKod: TcxGridDBColumn;
    cxGrid1DBTableUrunAd: TcxGridDBColumn;
    cxGrid1DBTableGurup: TcxGridDBColumn;
    cxGrid1DBTableKatogori: TcxGridDBColumn;
    cxGrid1DBTableNot: TcxGridDBColumn;
    cxGrid1DBTableRaf: TcxGridDBColumn;
    cxGrid1DBTableAFiyat: TcxGridDBColumn;
    cxGrid1DBTableBFiyat: TcxGridDBColumn;
    cxGrid1DBTableBirim: TcxGridDBColumn;
    cxGrid1DBTableTur: TcxGridDBColumn;
    cxGrid1DBTableTarih: TcxGridDBColumn;
    cxGrid1DBTableKim: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure RadioButton_EChange(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormActivate(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Stok_R: TForm_Stok_R;
  ADOQueryS:TADOQuery;
implementation

uses Unit1, MainUnit, UnitAna;

{$R *.dfm}

procedure TForm_Stok_R.AdvGlowButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_Stok_R.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
 ADOQueryS.Close;
 ADOQueryS.Free;
 Form_Stok_R:=Nil;
end;

procedure TForm_Stok_R.FormCreate(Sender: TObject);
begin
cxGridToTr;

  ResimAl1(AnaForm.image_Html,AdvGlowButton3);
  ResimAl1(AnaForm.image_Excel,AdvGlowButton5);
  ResimAl1(AnaForm.image_Close,AdvGlowButton1);
  ResimHint(AnaForm.image_Close,AdvGlowButton1,'K',False);
  ResimHint(AnaForm.img_Html,AdvGlowButton3,'H',False);
  ResimHint(AnaForm.img_Excel,AdvGlowButton5,'E',False);

  ADOQueryS :=TADOQuery.Create(self);
  ADOQueryS.Connection:=Form1.ADOConnection1;


  Timer1.Enabled:=True;
end;

procedure TForm_Stok_R.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:=False;
  cxGrid1DBTableView1.DataController.Filter.Active := False;

//  LMevcutAlan.Caption := 'Departman : ';
//  if Form1.Alan = 'E' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Elektronik'
//  else if Form1.Alan = 'O' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Otomasyon'
//  else if Form1.Alan = 'B' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Barkod'
//  else if Form1.Alan = 'D' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Demirbaþ';

  ADOSP_S_Rapor.close;
    if MSSQLKontrol_Store(ADOSP_S_Rapor,Form1.ADOConnection1,'PeyMar','') then
      begin
        try
          begin

             if Form1.Alan = 'E' then ADOSP_S_Rapor.Parameters[1].Value := 'E'
             else if Form1.Alan = 'O' then ADOSP_S_Rapor.Parameters[1].Value := 'O'
             else if Form1.Alan = 'D' then ADOSP_S_Rapor.Parameters[1].Value := 'D'
             else if Form1.Alan = 'B' then ADOSP_S_Rapor.Parameters[1].Value := 'B';

            ADOSP_S_Rapor.Open;
//            ADOSP_SH_Rapor.ExecProc;
          end
        except
          begin
            ShowMessage('Hata :   SQL ADOSP_Urun_Ins proceduru çalýþtýrýlamadý.. Lütfen Kontrol Ediniz.');
          end;
        end;
      end;

   DataSource1.DataSet:=ADOSP_S_Rapor;
   cxGrid1DBTableView1.DataController.DataSource:=DataSource1;
end;

procedure TForm_Stok_R.AdvGlowButton5Click(Sender: TObject);
 var
   SS:string;
begin
  Form1.SaveDialog1.InitialDir:=Form1.FileRegD+'\Temp';
  Form1.SaveDialog1.Filter:='Excel ( XLS Format )|*.xls';
  Form1.SaveDialog1.FileName:='STOK_RAPOR_'+FormatDateTime('DD_MM_YYYY',Now);
  if  Form1.SaveDialog1.Execute then
  begin
    if Trim(Form1.SaveDialog1.FileName)='' then begin
      ShowMessage('Dosya Adi Verilmedi'#13#10+'Kayit Edilemiyor');
      Exit;
    end else
    begin
      SS:=Form_Stok_R.Caption;
      Form_Stok_R.Caption:='LÜTFEN BEKLEYINIZ ...          DOSYA  ===> XLS';
      Application.ProcessMessages;
      Cursor:=crHourGlass;

      ExportGridToExcel(Form1.SaveDialog1.FileName+'.xls', cxGrid1,True,True,False);
      if FileExists(Form1.SaveDialog1.FileName+'.xls') then
        ShellExecute(Self.Handle,'open',PChar(Form1.SaveDialog1.FileName+'.xls'),nil,nil,SW_SHOWNORMAL);

      Form_Stok_R.Caption:=SS;
      Cursor:=crDefault;
    end;
  end;
end;

procedure TForm_Stok_R.RadioButton_EChange(Sender: TObject);
begin
  Timer1.Enabled:=True;
end;

procedure TForm_Stok_R.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  Label1.Caption:=ADOSP_S_Rapor.FieldByName('UrunKod').AsString;
end;

procedure TForm_Stok_R.FormActivate(Sender: TObject);
begin
  Left:=0;
  Top:=0;
  Width:=FormMain.width-FormMain.widthInt;
  Height:=FormMain.Height-FormMain.EnInt;
end;

procedure TForm_Stok_R.AdvGlowButton3Click(Sender: TObject);
var
   SS:string;
begin
   Form1.SaveDialog1.InitialDir:=Form1.FileRegD+'\Temp';
  Form1.SaveDialog1.Filter:='Web Format ( HTML Format )|*.html';
  Form1.SaveDialog1.FileName:='STOK_RAPOR_'+FormatDateTime('DD_MM_YYYY',Now);
  if  Form1.SaveDialog1.Execute then
  begin
    if Trim(Form1.SaveDialog1.FileName)='' then begin
      ShowMessage('Dosya Adi Verilmedi'#13#10+'Kayit Edilemiyor');
      Exit;
    end else
    begin
      SS:=Form_Stok_R.Caption;
      Form_Stok_R.Caption:='LÜTFEN BEKLEYINIZ ...          DOSYA  ===> html';
      Application.ProcessMessages;
      Cursor:=crHourGlass;
      ExportGridToHTML(Form1.SaveDialog1.FileName+'.html', cxGrid1);

      if FileExists(Form1.SaveDialog1.FileName+'.html') then
      ShellExecute(Self.Handle,'open',PChar(Form1.SaveDialog1.FileName+'.html'),nil,nil,SW_SHOWNORMAL);

      Form_Stok_R.Caption:=SS;
      Cursor:=crDefault;
    end;
  end;
end;

end.
