unit UnitStokHareket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Mylabel,
  peykan_Unit,Unit_cxTurk,cxGridExportLink,shellapi,ADODB,
  VrControls, VrDesign, ComCtrls, StdCtrls, AdvGlowButton, ExtCtrls,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  dxPSCore;

type
  TForm_Stok_H = class(TForm)
    Panel3: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    cxDateEdit1: TDateTimePicker;
    cxDateEdit2: TDateTimePicker;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlow_Now: TAdvGlowButton;
    Button_Tum: TAdvGlowButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableKod: TcxGridDBColumn;
    cxGrid1DBTableUrunAd: TcxGridDBColumn;
    cxGrid1DBTableGurup: TcxGridDBColumn;
    cxGrid1DBTableKatogori: TcxGridDBColumn;
    cxGrid1DBTableBFiyat: TcxGridDBColumn;
    cxGrid1_Miktar_C: TcxGridDBColumn;
    cxGrid1DBTableRaf: TcxGridDBColumn;
    cxGrid1DBTableAFiyat: TcxGridDBColumn;
    cxGrid1DBTableAciklama: TcxGridDBColumn;
    cxGrid1DBTableTur: TcxGridDBColumn;
    cxGrid1DBTableTarih: TcxGridDBColumn;
    cxGrid1DBTableKim: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    ADOSP_SH_Rapor_T: TADOStoredProc;
    DataSource1: TDataSource;
    dxComponentPrinter1: TdxComponentPrinter;
    ADOSP_SH_Rapor: TADOStoredProc;
    Panel2: TPanel;
    myLabel3d1: TmyLabel3d;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    cxGrid1DBTableFirma: TcxGridDBColumn;
    cxGrid1DBTableGidenYer: TcxGridDBColumn;
    cxGrid1DBTableFaturaNo: TcxGridDBColumn;
    cxGrid1DBTableSiparisNo: TcxGridDBColumn;
    cxGrid1DBTableTeklifNo: TcxGridDBColumn;
    cxGrid1DBTableNeicin: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure AdvGlow_NowClick(Sender: TObject);
    procedure Button_TumClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Stok_H: TForm_Stok_H;
  ADOQueryH:TADOQuery;
implementation

uses Unit1, MainUnit, UnitAna;

{$R *.dfm}

procedure TForm_Stok_H.FormCreate(Sender: TObject);
begin
cxGridToTr;
    ResimAl1(AnaForm.image_Close,AdvGlowButton1);
    ResimAl1(AnaForm.image_Html,AdvGlowButton2);
    ResimAl1(AnaForm.image_Excel,AdvGlowButton4);
//    ResimAl1(Form1.ImageYaz,AdvGlowButton5);
//    ResimAl1(Form1.ImagePdf,AdvGlowButton3);

  ResimHint(AnaForm.image_Close,AdvGlowButton1,'K',False);
  ResimHint(AnaForm.img_Html,AdvGlowButton2,'H',False);
  ResimHint(AnaForm.img_Excel,AdvGlowButton4,'E',False);

  DecimalSeparator:=',';
  ShortDateFormat:='dd.mm.yyyy';
  cxDateEdit1.Date:=now-1;
  cxDateEdit2.Date:=now;

  ADOQueryH :=TADOQuery.Create(self);
  ADOQueryH.Connection:=Form1.ADOConnection1;

//  LMevcutAlan.Caption := 'Departman : ';
//  if Form1.Alan = 'E' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Elektronik'
//  else if Form1.Alan = 'O' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Otomasyon'
//  else if Form1.Alan = 'B' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Barkod'
//  else if Form1.Alan = 'D' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Demirbaþ';

  AdvGlow_NowClick(Self);
end;

procedure TForm_Stok_H.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 ADOQueryH.Close;
 if ADOQueryH.Active then
 ADOQueryH.Free;
end;

procedure TForm_Stok_H.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  Form_Stok_H:=Nil;
end;

procedure TForm_Stok_H.AdvGlowButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_Stok_H.AdvGlowButton6Click(Sender: TObject);
var
  i:Integer;
  STarih1,STarih2:TDate;
begin
  ADOQueryH.Close;
    if MSSQLKontrol_Store(ADOSP_SH_Rapor_T,Form1.ADOConnection1,'PeyMar','') then
    begin
      ADOSP_SH_Rapor_T.Close;
      try
        begin
          STarih1:= cxDateEdit1.Date;
          STarih2:= cxDateEdit2.Date;

          if Form1.Alan = 'E' then ADOSP_SH_Rapor_T.Parameters[1].Value := 'E'
          else if Form1.Alan = 'O' then ADOSP_SH_Rapor_T.Parameters[1].Value := 'O'
          else if Form1.Alan = 'D' then ADOSP_SH_Rapor_T.Parameters[1].Value := 'D'
          else if Form1.Alan = 'B' then ADOSP_SH_Rapor_T.Parameters[1].Value := 'B';

          ADOSP_SH_Rapor_T.Parameters[2].Value :=FormatDateTime('yyyy-mm-dd', STarih1);
          ADOSP_SH_Rapor_T.Parameters[3].Value :=FormatDateTime('yyyy-mm-dd', STarih2);
          ADOSP_SH_Rapor_T.Open;
//            ADOSP_SH_Rapor.ExecProc;
          myLabel3d1.Caption:=DateToStr(STarih1)+'   ile   '+DateToStr(STarih2)+'    RAPORU';
        end
      except
        begin
          ShowMessage('Hata :   SQL ADOSP_SH_Rapor_T proceduru çalistirilamadi.. Lütfen Kontrol Ediniz.');
        end;
      end;
    end;
    i:= ADOSP_SH_Rapor_T.RecordCount;
    DataSource1.DataSet:=ADOSP_SH_Rapor_T;
  cxGrid1DBTableView1.DataController.DataSource:=DataSource1;
  cxGrid1DBTableView1.Controller.RefreshCustomizationForm;
  cxGrid1DBTableView1.OptionsView.ColumnAutoWidth:=True;
end;

procedure TForm_Stok_H.AdvGlow_NowClick(Sender: TObject);
var
  i:Integer;
  STarih1,STarih2:TDate;
begin
   ADOQueryH.Close;
    if MSSQLKontrol_Store(ADOSP_SH_Rapor_T,Form1.ADOConnection1,'PeyMar','') then
    begin
      ADOSP_SH_Rapor_T.Close;
      try
        begin
          STarih1:= Now;
          STarih2:= Now;

          if Form1.Alan = 'E' then ADOSP_SH_Rapor_T.Parameters[1].Value := 'E'
          else if Form1.Alan = 'O' then ADOSP_SH_Rapor_T.Parameters[1].Value := 'O'
          else if Form1.Alan = 'D' then ADOSP_SH_Rapor_T.Parameters[1].Value := 'D'
          else if Form1.Alan = 'B' then ADOSP_SH_Rapor_T.Parameters[1].Value := 'B';

          ADOSP_SH_Rapor_T.Parameters[2].Value :=FormatDateTime('yyyy-mm-dd', STarih1);
          ADOSP_SH_Rapor_T.Parameters[3].Value :=FormatDateTime('yyyy-mm-dd', STarih2);
          ADOSP_SH_Rapor_T.Open;
        end
      except
        begin
          ShowMessage('Hata :   SQL ADOSP_SH_Rapor_T proceduru çalistirilamadi.. Lütfen Kontrol Ediniz.');
        end;
      end;
    end;
    i:= ADOSP_SH_Rapor_T.RecordCount;
    DataSource1.DataSet:=ADOSP_SH_Rapor_T;
  cxGrid1DBTableView1.DataController.DataSource:=DataSource1;
  cxGrid1DBTableView1.Controller.RefreshCustomizationForm;
  cxGrid1DBTableView1.OptionsView.ColumnAutoWidth:=True;
  myLabel3d1.Caption:=DateToStr(now)+'  HAREKET RAPORU';
end;

procedure TForm_Stok_H.Button_TumClick(Sender: TObject);
VAR
i:Integer;
begin
 cxGrid1DBTableView1.DataController.Filter.Active := FALSE;
  cxGrid1DBTableView1.DataController.Groups.ClearGrouping;
  ADOQueryH.Close;
  ADOSP_SH_Rapor.Close;
    if MSSQLKontrol_Store(ADOSP_SH_Rapor,Form1.ADOConnection1,'PeyMar','') then
    begin
      try
        begin

           if Form1.Alan = 'E' then ADOSP_SH_Rapor.Parameters[1].Value := 'E'
           else if Form1.Alan = 'O' then ADOSP_SH_Rapor.Parameters[1].Value := 'O'
           else if Form1.Alan = 'D' then ADOSP_SH_Rapor.Parameters[1].Value := 'D'
           else if Form1.Alan = 'B' then ADOSP_SH_Rapor.Parameters[1].Value := 'B';

          ADOSP_SH_Rapor.Open;
          myLabel3d1.Caption:='GENEL STOK HAREKET RAPORU';
        end
      except
        begin
          ShowMessage('Hata :   SQL ADOSP_SH_Rapor proceduru çalistirilamadi.. Lütfen Kontrol Ediniz.');
        end;
      end;
    end;

   i:= ADOSP_SH_Rapor.RecordCount;
    DataSource1.DataSet:=ADOSP_SH_Rapor;
  cxGrid1DBTableView1.DataController.DataSource:=DataSource1;
  cxGrid1DBTableView1.Controller.RefreshCustomizationForm;
  cxGrid1DBTableView1.OptionsView.ColumnAutoWidth:=True;
end;

procedure TForm_Stok_H.FormActivate(Sender: TObject);
begin
  Left:=0;
  Top:=0;
  Width:=FormMain.width-FormMain.widthInt;
  Height:=FormMain.Height-FormMain.EnInt;
end;


end.
