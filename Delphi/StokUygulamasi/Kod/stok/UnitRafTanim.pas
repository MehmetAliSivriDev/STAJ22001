unit UnitRafTanim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,peykan_Unit,ADODB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxTextEdit, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, VrControls, VrDesign, StdCtrls, Mylabel,
  ComCtrls, AdvGlowButton;

type
  TForm_RafTanim = class(TForm)
    Panel1: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowHelp: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
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
    Edit3: TEdit;
    Timer1: TTimer;
    DataSource1: TDataSource;
    ADOSP_Raf_Ins: TADOStoredProc;
    ADOSP_Raf_Update: TADOStoredProc;
    LMevcutAlan: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure RadioButtonEChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_RafTanim: TForm_RafTanim;
  ADOQuery_R,ADOQueryR_Islem:TADOQuery;
  GrupTur:string;
implementation

uses MainUnit, Unit1, UnitAna;

{$R *.dfm}

procedure TForm_RafTanim.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:=False;
  if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQuery_R,True,'PeyMar','') then
  begin
    Screen.Cursor := crHourGlass;
    ADOQuery_R.Close;
    ADOQuery_R.SQL.Clear;

    LMevcutAlan.Caption := 'Departman : ';
    if Form1.Alan = 'E' then
    begin
          LMevcutAlan.Caption := LMevcutAlan.Caption + 'Elektronik';
          GrupTur:='E';
          SQL:='Select Id, Kod, Yeri, Aciklama FROM Raf_E ORDER BY Kod ASC';
    end else if Form1.Alan ='O' then
    begin
          LMevcutAlan.Caption := LMevcutAlan.Caption + 'Otomasyon';
          GrupTur:='O';
          SQL:='Select Id, Kod, Yeri, Aciklama FROM Raf_O ORDER BY Kod ASC';
    end else if Form1.Alan ='B' then
    begin
          LMevcutAlan.Caption := LMevcutAlan.Caption + 'Barkod';
          GrupTur:='B';
          SQL:='Select Id, Kod, Yeri, Aciklama FROM Raf_B ORDER BY Kod ASC';
    end else if Form1.Alan ='D' then
    begin
          LMevcutAlan.Caption := LMevcutAlan.Caption + 'Demirbaþ';
          GrupTur:='D';
          SQL:='Select Id, Kod, Yeri, Aciklama FROM Raf_D ORDER BY Kod ASC';
    end;

    ADOQuery_R.SQL.Add(SQL);
    ADOQuery_R.Open;
    DataSource1.DataSet:=ADOQuery_R;
    cxGrid1DBTableView1.DataController.DataSource:=DataSource1;
  end;
//
//  if Form1.Alan = 'E' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Elektronik'
//  else if Form1.Alan = 'O' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Otomasyon'
//  else if Form1.Alan = 'B' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Barkod'
//  else if Form1.Alan = 'D' then LMevcutAlan.Caption := LMevcutAlan.Caption + 'Demirbaþ';
//
//  if Form1.Alan = 'E' then GrupTur:='E'
//  else if Form1.Alan = 'O' then GrupTur:='O'
//  else if Form1.Alan = 'B' then GrupTur:='B'
//  else GrupTur:='D';
//
//
//
//
//
//  if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQuery_R,True,'PeyMar','') then
//  begin
//    Screen.Cursor := crHourGlass;
//    ADOQuery_R.Close;
//    ADOQuery_R.SQL.Clear;
//    SQL:='Select Id, Kod, Yeri, Aciklama ';
////    SQL:=SQL+'case Tur when '+#39+'E'+#39+' then '+#39+'Elektronik'+#39+' when '+#39+'D'+#39+' then '+#39+'Demirbaþ'+#39+' when '+#39+'O'+#39+' then '+#39+'Otomasyon'+#39+' when '+#39+'B'+#39+' then '+#39+'Barkod'+#39+' end as  Tur ';
////    SQL:=SQL+' FROM Raf WHERE Tur='+QuotedStr(Trim(GrupTur))+' ORDER BY Kod ASC';
//    SQL:=SQL+' FROM Raf ORDER BY Kod ASC';
//
//    ADOQuery_R.SQL.Add(SQL);
//    ADOQuery_R.Open;
//
//    DataSource1.DataSet:=ADOQuery_R;
//    cxGrid1DBTableView1.DataController.DataSource:=DataSource1;
//  end;
  Screen.Cursor:=crDefault;
end;

procedure TForm_RafTanim.FormActivate(Sender: TObject);
begin
  Left:=0;
  Top:=0;
  Width:=FormMain.width-FormMain.widthInt;
  Height:=FormMain.Height-FormMain.EnInt;
end;

procedure TForm_RafTanim.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
  ADOQuery_R.Free;
  ADOQueryR_Islem.Free;
  Form_RafTanim:=Nil;
end;

procedure TForm_RafTanim.FormCreate(Sender: TObject);
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

  ADOQuery_R :=TADOQuery.Create(self);
  ADOQuery_R.Connection:=Form1.ADOConnection1;

  ADOQueryR_Islem :=TADOQuery.Create(self);
  ADOQueryR_Islem.Connection:=Form1.ADOConnection1;

  Timer1.Enabled:=True;
end;

procedure TForm_RafTanim.AdvGlowButton1Click(Sender: TObject);
begin
  close;
end;

procedure TForm_RafTanim.AdvGlowButton3Click(Sender: TObject);

begin
  if Trim(Edit1.Text)='' then
  begin
    PeykanHint('HATA','KATEGORÝ ADI GIRILMEMIS. Lütfen Kontrol Ediniz.',clRed,30,True);
    Exit;
  end;

  if Trim(Edit3.Text)='' then
  begin
    PeykanHint('HATA','ÜRÜN YERÝ GÝRÝLMEMÝÞ, Lütfen Kontrol Ediniz.',clRed,30,True);
    Exit;
  end;

  ADOQueryR_Islem.Close;
  ADOQueryR_Islem.SQL.Clear;
  ADOQueryR_Islem.SQL.Add('SELECT Id FROM Raf WHERE Kod='+QuotedStr(Trim(Edit1.Text)));
  ADOQueryR_Islem.Open;
  if ADOQueryR_Islem.RecordCount>0 then
  begin
    PeykanHint('HATA','BU KATEGORI ÖNCEDEN TANITILMIS. Lütfen Kontrol Ediniz.',clRed,30,True);
     Exit;
  end;
  Screen.Cursor := crHourGlass;


 if MSSQLKontrol_Store(ADOSP_Raf_Ins,Form1.ADOConnection1,'PeyMar','') then
//  if MSSQLKontrol_Store(StoreAd:TADOStoredProc;Comnnect_SQL:TADOConnection;UdlName,MakinaNo:String):Boolean;
//  if Form1.Kontrol_Store(ADOSP_Raf_Ins) then
    begin
      try
        begin
          ADOSP_Raf_Ins.Parameters[1].Value := Trim(Edit1.text);
          ADOSP_Raf_Ins.Parameters[2].Value := Trim(Edit3.Text);
          ADOSP_Raf_Ins.Parameters[3].Value := Trim(Edit2.Text);

          if Form1.Alan = 'E' then
            ADOSP_Raf_Ins.Parameters[4].Value :='E'
          else if Form1.Alan = 'O' then
            ADOSP_Raf_Ins.Parameters[4].Value :='O'
          else if Form1.Alan = 'D' then
            ADOSP_Raf_Ins.Parameters[4].Value :='D'
          else if Form1.Alan = 'B' then
            ADOSP_Raf_Ins.Parameters[4].Value :='B'
          else
            ADOSP_Raf_Ins.Parameters[4].Value :='B';

          ADOSP_Raf_Ins.Parameters[5].Value := Form1.Kulanici;
          ADOSP_Raf_Ins.ExecProc;

          if ADOSP_Raf_Ins.Parameters[6].Value then
          begin
            ShowMessage('KAYIT YAPILAMADI.. Lütfen Kontrol Ediniz.');
            Exit;
          end else

          Timer1.Enabled:=True;
          Edit1.Text:='';
          Edit2.Text:='';
          Edit3.Text:='';
          
        end
      except
        begin
          ShowMessage('Hata :   SQL ADOSP_Raf_Ins prosedürü çalistirilamadi, Lütfen Kontrol Ediniz.');
        end;
      end;
    end;
    Screen.Cursor := crDefault;
end;

procedure TForm_RafTanim.AdvGlowButton2Click(Sender: TObject);
begin
  if Trim(stat1.Panels[1].Text) = '' then
  begin
    PeykanHint('HATA','TABLODAN SEÇÝM YAPINIZ.',clRed,30,True);
    exit;
  end;

  if Trim(Edit1.Text)='' then
  begin
    PeykanHint('HATA','KATEGORÝ ADI GIRILMEMIS. Lütfen Kontrol Ediniz.',clRed,30,True);
    Exit;
  end;

  if Trim(Edit3.Text)='' then
  begin
    PeykanHint('HATA','ÜRÜN YERÝ GÝRÝLMEMÝÞ, Lütfen Kontrol Ediniz.',clRed,30,True);
    Exit;
  end;

  ADOQueryR_Islem.Close;
  ADOQueryR_Islem.SQL.Clear;
  ADOQueryR_Islem.SQL.Add('SELECT Id FROM Raf WHERE Kod='+QuotedStr(Trim(stat1.Panels[1].Text)));
  ADOQueryR_Islem.Open;
  if ADOQueryR_Islem.RecordCount>0 then
  begin
    if MessageDlg(#39 + stat1.Panels[1].Text+#39 +' Kodlu Raf önceden kayit edilmis,üzerine yazdirmak ister misiniz?', mtConfirmation, [mbYes, mbNo], 1) = mrYes then
    begin
      if MSSQLKontrol_Store(ADOSP_Raf_Update,Form1.ADOConnection1,'PeyMar','') then
      begin
        try
          begin
            ADOSP_Raf_Update.Parameters[1].Value := Trim(stat1.Panels[1].text);
            ADOSP_Raf_Update.Parameters[2].Value := Trim(Edit1.Text);
            ADOSP_Raf_Update.Parameters[3].Value := Trim(Edit3.Text);
            ADOSP_Raf_Update.Parameters[4].Value := Trim(Edit2.Text);

            if Form1.Alan = 'E' then
              ADOSP_Raf_Update.Parameters[5].Value :='E'
            else if Form1.Alan = 'O' then
              ADOSP_Raf_Update.Parameters[5].Value :='O'
            else if Form1.Alan = 'D' then
              ADOSP_Raf_Update.Parameters[5].Value :='D'
            else if Form1.Alan = 'B' then
              ADOSP_Raf_Update.Parameters[5].Value :='B'
            else
              ADOSP_Raf_Update.Parameters[5].Value :='B';

            ADOSP_Raf_Update.Parameters[6].Value := Form1.Kulanici;


            ADOSP_Raf_Update.ExecProc;
            Timer1.Enabled:=True;
          end
        except
          begin
            ShowMessage('Hata :   SQL ADOSP_Raf_Update prosedürü çalistirilamadi, Lütfen Kontrol Ediniz.');
          end;
        end;
      end;
    end;
  end;


  
end;

procedure TForm_RafTanim.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
stat1.Panels[5].Text:=ADOQuery_R.FieldByName('Aciklama').AsString;
  stat1.Panels[3].Text:=ADOQuery_R.FieldByName('Yeri').AsString;
  stat1.Panels[1].Text:=ADOQuery_R.FieldByName('Kod').AsString;
  AdvGlowButton4.Caption:='Sil  '+ ADOQuery_R.FieldByName('Kod').AsString;

  Edit1.Text:= ADOQuery_R.FieldByName('Kod').AsString;
  Edit2.Text:= ADOQuery_R.FieldByName('Aciklama').AsString;
  Edit3.Text:= ADOQuery_R.FieldByName('Yeri').AsString;

//  GrupTur:= ADOQuery_R.FieldByName('Tur').AsString;
//  if GrupTur='Elektronik' then RadioButtonE.Checked:=True
//  else if GrupTur='Otomasyon' then RadioButtonO.Checked:=True
//  else if GrupTur='Barkod' then RadioButtonB.Checked:=True
//  else RadioButton_D.Checked:=True;
end;

procedure TForm_RafTanim.AdvGlowButton4Click(Sender: TObject);
begin
  if Trim(Edit1.Text)='' then exit;
  if MessageDlg('Silmek Ister misiniz?'+#13+'Raf Kodu : '+Stat1.Panels[1].Text+' Eminmisiniz.' ,mtConfirmation,[mbYes,mbNo],1) <> mrYes then
  begin
    Exit;
  end else
  BEGIN
    if Form1.Alan = 'E' then
      Form1.ADOCommand1.CommandText :='delete Raf_E WHERE Kod='+QuotedStr(Trim(stat1.Panels[1].Text))
    else if Form1.Alan = 'B' then
      Form1.ADOCommand1.CommandText :='delete Raf_B WHERE Kod='+QuotedStr(Trim(stat1.Panels[1].Text))
    else if Form1.Alan = 'O' then
      Form1.ADOCommand1.CommandText :='delete Raf_O WHERE Kod='+QuotedStr(Trim(stat1.Panels[1].Text))
    else if Form1.Alan = 'D' then
      Form1.ADOCommand1.CommandText :='delete Raf_D WHERE Kod='+QuotedStr(Trim(stat1.Panels[1].Text));

    Form1.ADOCommand1.Execute;

    Timer1.Enabled:=True;
  end;
end;

procedure TForm_RafTanim.RadioButtonEChange(Sender: TObject);
begin
  Timer1.Enabled:=True;
end;

end.
