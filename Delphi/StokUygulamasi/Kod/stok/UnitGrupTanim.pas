unit UnitGrupTanim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, StdCtrls, AdvGlowButton, VrControls, VrDesign, Mylabel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ExtCtrls,peykan_Unit,ADODB,
  cxTextEdit, ComCtrls;

type
  TForm_GrupTanim = class(TForm)
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableKod: TcxGridDBColumn;
    cxGrid1DBTableUrunAd: TcxGridDBColumn;
    cxGrid1DBTableGurup: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel_Po: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    myLabel3d3: TmyLabel3d;
    Panel6: TPanel;
    Panel7: TPanel;
    myLabel3d1: TmyLabel3d;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowHelp: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    Edit1: TEdit;
    Edit2: TEdit;
    myLabel3d2: TmyLabel3d;
    Timer1: TTimer;
    DataSource1: TDataSource;
    stat1: TStatusBar;
    AdvGlowButton4: TAdvGlowButton;
    LMevcutAlan: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure AdvGlowButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_GrupTanim: TForm_GrupTanim;
  ADOQuery_G,ADOQuery_Islem:TADOQuery;
  GrupTur:string;
implementation

uses Unit1, UnitAna, MainUnit;

{$R *.dfm}

procedure TForm_GrupTanim.Timer1Timer(Sender: TObject);
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

  if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQuery_G,True,'PeyMar','') then
  begin
    ADOQuery_G.Close;
    ADOQuery_G.SQL.Clear;
    SQL:='Select Id, GAd, Aciklama, ';
    SQL:= SQL + 'case Tur when '+QuotedStr('D')+' then '+QuotedStr('Demirbas')+' when '+QuotedStr('E')+' then '+QuotedStr('Elektronik')+' when '+QuotedStr('O')+' then '+QuotedStr('Otomasyon')+' when '+QuotedStr('B')+' then '+QuotedStr('Barkod')+' end as Tur ';
    SQL:= SQL +'FROM UrunG WHERE Tur='+QuotedStr(Trim(GrupTur)) +' ORDER BY GAd ASC';
    ADOQuery_G.SQL.Add(SQL);
    ADOQuery_G.Open;

    DataSource1.DataSet:=ADOQuery_G;
    cxGrid1DBTableView1.DataController.DataSource:=DataSource1;
  end;

end;

procedure TForm_GrupTanim.FormCreate(Sender: TObject);
begin

  ResimAl1(AnaForm.image_Close,AdvGlowButton1);
  ResimAl1(AnaForm.image_2,AdvGlowButton3);
  ResimAl1(AnaForm.image_Duz,AdvGlowButton2);
  ResimAl1(AnaForm.image_4,AdvGlowHelp);
  ResimAl1(AnaForm.ImageSil,AdvGlowButton4);

  ResimHint(AnaForm.image_Vaz,AdvGlowButton3,'S',False);
  ResimHint(AnaForm.image_Vaz,AdvGlowButton4,'Sil',False);
  ResimHint(AnaForm.image_Close,AdvGlowButton1,'K',False);
  ResimHint(AnaForm.img5,AdvGlowButton2,'Duzenle',False);
  ResimHint(AnaForm.ImageHelp,AdvGlowHelp,'Help',False);


  ADOQuery_G :=TADOQuery.Create(self);
  ADOQuery_G.Connection:=Form1.ADOConnection1;

  ADOQuery_Islem :=TADOQuery.Create(self);
     ADOQuery_Islem.Connection:=Form1.ADOConnection1;

  Timer1.Enabled:=True;
end;

procedure TForm_GrupTanim.AdvGlowButton1Click(Sender: TObject);
begin
  close;
end;

procedure TForm_GrupTanim.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  ADOQuery_G.Free;
  ADOQuery_Islem.Free;
  Form_GrupTanim:=Nil;
end;

procedure TForm_GrupTanim.FormActivate(Sender: TObject);
begin
  Left:=0;
  Top:=0;
  Width:=FormMain.width-FormMain.widthInt;
  Height:=FormMain.Height-FormMain.EnInt;
end;

procedure TForm_GrupTanim.AdvGlowButton3Click(Sender: TObject);
begin
  if Trim(Edit1.Text)='' then
  begin
    ShowMessage('Hata :   GRUP ADI GIRILMEMIS, Lütfen Kontrol Ediniz.');
    Exit;
  end;

  if Form1.Alan = 'E' then GrupTur:='E'
  else if Form1.Alan = 'O' then GrupTur:='O'
  else if Form1.Alan = 'B' then GrupTur:='B'
  else GrupTur:='D';

  if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQuery_Islem,True,'PeyMar','') then
  begin
    ADOQuery_Islem.Close;
    ADOQuery_Islem.SQL.Clear;
    ADOQuery_Islem.SQL.Add('SELECT Id FROM UrunG WHERE GAd='+QuotedStr(Trim(Edit1.Text))+ ' AND Tur='+QuotedStr(Trim(GrupTur)));
    ADOQuery_Islem.Open;
    if ADOQuery_Islem.RecordCount>0 then
    begin
      PeykanHint('HATA','BU GRUP ÖNCEDEN TANITILMIS. Lütfen Kontrol Ediniz.',clRed,30,True);
  //     ShowMessage('Hata :   BU GRUP ÖNCEDEN TANITILMIS. Lütfen Kontrol Ediniz.');
       Exit;
    end;
    SQL:='INSERT INTO UrunG (GAd,Aciklama,Kullanici,Tur) VALUES('
          +QuotedStr(Trim(Edit1.Text))+', '
          +QuotedStr(Trim(Edit2.Text))+', '
          +QuotedStr(Form1.Kulanici)+', '
          +QuotedStr(GrupTur)+' )';

    Form1.ADOCommand1.CommandText :=SQL;
    Form1.ADOCommand1.Execute;

    Timer1.Enabled:=True;
    Edit1.Text:='';
    Edit2.Text:='';
  end;

end;

procedure TForm_GrupTanim.AdvGlowButton2Click(Sender: TObject);
begin
  if Trim(Edit1.Text)='' then
  begin
    ShowMessage('Hata :   GRUP ADI GIRILMEMIS, Lütfen Kontrol Ediniz.');
    Exit;
  end;

  if Form1.Alan = 'E' then GrupTur:='E'
  else if Form1.Alan = 'O' then GrupTur:='O'
  else if Form1.Alan = 'B' then GrupTur:='B'
  else GrupTur:='D';
  if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQuery_Islem,True,'PeyMar','') then
  begin

     ADOQuery_Islem.Close;
      ADOQuery_Islem.SQL.Clear;
      ADOQuery_Islem.SQL.Add('SELECT Id FROM UrunG WHERE Id='+QuotedStr(Trim(stat1.Panels[1].Text)));
      ADOQuery_Islem.Open;
      if ADOQuery_Islem.RecordCount>0 then
      begin
        if MessageDlg(#39+stat1.Panels[3].Text+#39' Grubunun  Kaydýnýn Düzenlenemesini Ýstermisiniz ?', mtConfirmation, [mbYes, mbNo], 1) = mrYes then
        begin
          SQL := 'UPDATE UrunG SET ' +
                'GAd='+QuotedStr(Edit1.Text)+','+
                'Aciklama='+QuotedStr(Edit2.Text)+','+
                'Tur='+QuotedStr(GrupTur)+
                'WHERE Id='+QuotedStr(stat1.Panels[1].Text);
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
end;

procedure TForm_GrupTanim.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
 stat1.Panels[5].Text:=ADOQuery_G.FieldByName('Aciklama').AsString;
 stat1.Panels[3].Text:=ADOQuery_G.FieldByName('GAd').AsString;
 stat1.Panels[1].Text:=ADOQuery_G.FieldByName('Id').AsString;
 AdvGlowButton4.Caption:='Sil  '+ ADOQuery_G.FieldByName('Id').AsString;
 Edit1.Text:= ADOQuery_G.FieldByName('GAd').AsString;
 Edit2.Text:= ADOQuery_G.FieldByName('Aciklama').AsString;

 GrupTur:= ADOQuery_G.FieldByName('Tur').AsString;
//  if GrupTur='Elektronik' then RadioButtonE.Checked:=True
//  else if GrupTur='Otomasyon' then RadioButtonO.Checked:=True
//  else if GrupTur='Barkod' then RadioButtonB.Checked:=True
//  else RadioButton_D.Checked:=True;

end;

procedure TForm_GrupTanim.AdvGlowButton4Click(Sender: TObject);
begin
  if Trim(Edit1.Text)='' then exit;
  If MyMessageDlg(#39+Edit1.Text+#39+' Grupu Silmek istedigine Emin misiniz?', mtWarning, [mbOk, mbCancel], ['EVET', 'VAZGEÇ'],mrCancel,True,False ) = mrCancel then Exit;

    Form1.ADOCommand1.CommandText :='delete UrunG WHERE Id='+QuotedStr(Trim(stat1.Panels[1].Text));
    Form1.ADOCommand1.Execute;

    Timer1.Enabled:=True;

end;


end.
