unit Unit_Admin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvPageControl, ComCtrls, StdCtrls, xpEdit, LMDBaseControl,peykan_Unit,
  LMDBaseGraphicControl, LMDBaseGraphicButton, LMDCustomSpeedButton,IniFiles,MMsystem,
  LMDSpeedButton, Mylabel, ExtCtrls, xpPanel, cxGraphics, cxControls,WinInet,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, AdvGlowButton,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, VrControls, VrDesign, VrSystem,
  Grids, AdvObj, BaseGrid, AdvGrid, AdvCGrid, EditNew, AdvSmoothSlider,
  DrLabel, WebCopy, ExeInfo, VrNavigator, Buttons, ADODB, Spin,
  AdvSmoothStatusIndicator, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDBaseEdit, LMDCustomEdit, LMDEdit, AdvGlassButton,
  LMDGraphicControl, LMDTechnicalLine, AdvFontCombo, AdvOfficePager,Printers;

type
  TForm_Admin = class(TForm)
    Timer1: TTimer;
    Panel2: TPanel;
    TimerNet: TTimer;
    WebCopy1: TWebCopy;
    Panel14: TPanel;
    Panel15: TPanel;
    AdvGlowButton3: TAdvGlowButton;
    Panel16: TPanel;
    ProgressBar1: TProgressBar;
    ButtonKapat: TAdvGlowButton;
    ExeInfo1: TExeInfo;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePage1: TAdvOfficePage;
    myLabel3d5: TmyLabel3d;
    myLabel3d6: TmyLabel3d;
    Grid1: TAdvColumnGrid;
    btn9: TAdvGlowButton;
    MABox1: TVrBitmapCheckBox;
    MABox3: TVrBitmapCheckBox;
    MABox2: TVrBitmapCheckBox;
    MABox4: TVrBitmapCheckBox;
    MABox0: TVrBitmapCheckBox;
    Panel1: TPanel;
    Label1: TLabel;
    Edit_Barkod: TEdit;
    AdvGlowButton4: TAdvGlowButton;
    Edit5: TEdit;
    Edit6: TEdit;
    AdvOfficePage2: TAdvOfficePage;
    Panel3: TPanel;
    myLabel3d7: TmyLabel3d;
    Panel4: TPanel;
    RadioCom1: TVrBitmapRadioButton;
    RadioCom2: TVrBitmapRadioButton;
    RadioCom3: TVrBitmapRadioButton;
    RadioCom4: TVrBitmapRadioButton;
    RadioCom5: TVrBitmapRadioButton;
    RadioCom6: TVrBitmapRadioButton;
    RadioCom7: TVrBitmapRadioButton;
    RadioCom8: TVrBitmapRadioButton;
    RadioCom9: TVrBitmapRadioButton;
    RadioCom10: TVrBitmapRadioButton;
    Panel5: TPanel;
    RadioButton_115200: TVrBitmapRadioButton;
    RadioButton_9600: TVrBitmapRadioButton;
    Panel6: TPanel;
    myLabel3d9: TmyLabel3d;
    myLabel3d11: TmyLabel3d;
    Panel7: TPanel;
    YRadioButton1: TVrBitmapRadioButton;
    YRadioButton2: TVrBitmapRadioButton;
    YRadioButton3: TVrBitmapRadioButton;
    YRadioButton4: TVrBitmapRadioButton;
    YRadioButton5: TVrBitmapRadioButton;
    YRadioButton6: TVrBitmapRadioButton;
    YRadioButton7: TVrBitmapRadioButton;
    YRadioButton8: TVrBitmapRadioButton;
    YRadioButton9: TVrBitmapRadioButton;
    YRadioButton10: TVrBitmapRadioButton;
    ERadioButton1: TVrBitmapRadioButton;
    ERadioButton2: TVrBitmapRadioButton;
    Panel8: TPanel;
    Label2: TLabel;
    ZRadioButton1: TVrBitmapRadioButton;
    ZRadioButton2: TVrBitmapRadioButton;
    ZRadioButton3: TVrBitmapRadioButton;
    Panel_USB: TPanel;
    ButtonPrintSet: TAdvGlowButton;
    AdvOfficeComboBox1: TAdvOfficeComboBox;
    AdvOfficePage3: TAdvOfficePage;
    myLabel3d10: TmyLabel3d;
    bvl1: TBevel;
    myLabel3d12: TmyLabel3d;
    myLabel3d13: TmyLabel3d;
    EditN1: TEditN;
    EditN2: TEditN;
    EditN3: TEditN;
    Buttonkilit: TAdvGlowButton;
    AdvOfficePage4: TAdvOfficePage;
    myLabel3d15: TmyLabel3d;
    DRLabel1: TDRLabel;
    grp1: TGroupBox;
    myLabel3d16: TmyLabel3d;
    myLabel3d17: TmyLabel3d;
    myLabel3d18: TmyLabel3d;
    myLabel3d19: TmyLabel3d;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    btn3: TSpeedButton;
    btn4: TSpeedButton;
    btnSesButton: TSpeedButton;
    MediaButton1: TVrMediaButton;
    MediaButton2: TVrMediaButton;
    MediaButton4: TVrMediaButton;
    MediaButton3: TVrMediaButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    AdvGlowButton1: TAdvGlowButton;
    grp2: TGroupBox;
    myLabel3d20: TmyLabel3d;
    myLabel3d21: TmyLabel3d;
    myLabel3d22: TmyLabel3d;
    LMDEdit1: TLMDEdit;
    LMDEdit3: TLMDEdit;
    LMDEdit4: TLMDEdit;
    ButtonWeb: TAdvGlowButton;
    AdvSmoothSlider2: TAdvSmoothSlider;
    AdvOfficePage5: TAdvOfficePage;
    myLabel3d1: TmyLabel3d;
    Panel9: TPanel;
    myLabel3d2: TmyLabel3d;
    myLabel3d3: TmyLabel3d;
    myLabel3d4: TmyLabel3d;
    myLabel3d8: TmyLabel3d;
    myLabel3d14: TmyLabel3d;
    myLabel3d23: TmyLabel3d;
    Edit7: TEdit;
    AdvGlowButton2: TAdvGlowButton;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Grid2: TAdvColumnGrid;
    Panel10: TPanel;
    Label3: TLabel;
    Edit_Firma: TEdit;
    AdvGlowButton5: TAdvGlowButton;
    RadioButton1: TVrBitmapRadioButton;
    RadioButton2: TVrBitmapRadioButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Grid1ClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure LMDSpeedButton1Click(Sender: TObject);
    procedure Grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure ButtonKapatClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure TimerNetTimer(Sender: TObject);
     procedure LisansControl;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btn9Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure RadioCom1Change(Sender: TObject);
    procedure RadioCom2Change(Sender: TObject);
    procedure RadioCom3Change(Sender: TObject);
    procedure RadioCom4Change(Sender: TObject);
    procedure RadioCom5Change(Sender: TObject);
    procedure RadioCom6Change(Sender: TObject);
    procedure RadioCom7Change(Sender: TObject);
    procedure RadioCom8Change(Sender: TObject);
    procedure RadioCom9Change(Sender: TObject);
    procedure RadioCom10Change(Sender: TObject);
    procedure LMDEdit1CustomButtons0Click(Sender: TObject; index: Integer);
    procedure LMDEdit3CustomButtons0Click(Sender: TObject; index: Integer);
    procedure LMDEdit4CustomButtons0Click(Sender: TObject; index: Integer);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure Grid2ClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure YRadioButton10Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Admin: TForm_Admin;
  IniFile:TIniFile;
  ADOQueryK :TADOQuery;

implementation

uses Unit1, UnitAna;

{$R *.dfm}


procedure TForm_Admin.LisansControl;
Label Bad;
var
Surum,SS,Temp,TempFileVer:String;
Iv1,Iv2:Integer;
  c     : Char;
  si,i  : Integer;
  okAk2 : Bool;
      SearchRec:TSearchRec;
    SizeX,Size:LongInt;


begin

  If  InternetGetConnectedState(nil, 0) then
  begin
      Cursor:=crSQLWait;
      ProgressBar1.Visible:=True;
      ProgressBar1.Position:=0;

       webcopy1.items.clear;
       webcopy1.items.add.URL:='http://peykan.com.tr/register/ksevk.pey';
       webcopy1.threadexecute;
        ProgressBar1.Position:=ProgressBar1.Position+1;
       delay(300);
        ProgressBar1.Position:=ProgressBar1.Position+1;
       delay(350);
        ProgressBar1.Position:=ProgressBar1.Position+1;
       delay(550);
        ProgressBar1.Position:=ProgressBar1.Position+1;
        Application.ProcessMessages;
    if not FileExists(Form1.FileRegD+'\ksevk.pey') then
    begin
    {$I-}
      AssignFile(MKDosya,Form1.FileRegD+'\ksevk.pey');
      ReWrite(MKDosya);
      Writeln(MKDosya, ExeInfo1.FileVersion);
      Writeln(MKDosya, '0');
      Writeln(MKDosya, '1-');
      Writeln(MKDosya, '2-');
      Writeln(MKDosya, '3-');
      Writeln(MKDosya, '4-');
      Writeln(MKDosya, 'Peykan Yazýlým Otomasyon ve Elektronik San.Tic.Ltd.Þti.');
      Writeln(MKDosya, 'Tel: +90(224)256 07 39 - +90(224)256 07 40');
      Writeln(MKDosya, 'Fax: +90(224)256 07 38');
      Writeln(MKDosya, 'www.peykan.com.tr  info@peykan.com.tr');
          CloseFile(MKDosya);
    {$I+}
    end;
                    System.Assign(MKDosya,Form1.FileRegD+'\ksevk.pey');
                    Reset(MKDosya);
                    ReadLn(MKDosya ,TempFileVer);
                                        System.Close(MKDosya);
        Surum:=ExeInfo1.FileVersion;

//---------

        ProgressBar1.Position:=ProgressBar1.Position+1;

  Cursor:=crDefault;

        if FileExists(Form1.FileRegD+'\ksevk.pey') then
      begin

        if FindFirst(Form1.FileRegD+'\ksevk.pey',faAnyFile,SearchRec)=0 then
        begin
          Size:=SearchRec.Size;   // 2381824
            if Size=1118 then
            begin
        ProgressBar1.Visible:=False;
              exit;
            end;
            end;
      end;



  if TempFileVer='' then TempFileVer:='0.0.0.0';
  if TempFileVer<>Surum then
  begin
      Temp:=ExeInfo1.FileVersion;
      if Pos('.',Temp)<>0 then delete(Temp,Pos('.',Temp),1);
      if Pos('.',Temp)<>0 then delete(Temp,Pos('.',Temp),1);
      if Pos('.',Temp)<>0 then delete(Temp,Pos('.',Temp),1);
      if Pos('.',Temp)<>0 then delete(Temp,Pos('.',Temp),1);
      Iv1:=StrToInt(Temp);


          SS:= Trim(TempFileVer);
          for si := 1 to Length(SS) do
            begin
              c         := SS[si];
              IF not(c in['0', '.', '1', '2', '3', '4', '5', '6', '7', '8', '9']) then
                begin
                  okAk2  := False;
                  Break;
                end
              else
                okAk2    := True;
            end;

          if not okAk2 then
          begin
            Cursor:=crDefault;
        ProgressBar1.Visible:=False;
                exit;
          end;

          Temp:=TempFileVer;
          if Pos('.',Temp)<>0 then delete(Temp,Pos('.',Temp),1);
          if Pos('.',Temp)<>0 then delete(Temp,Pos('.',Temp),1);
          if Pos('.',Temp)<>0 then delete(Temp,Pos('.',Temp),1);
          if Pos('.',Temp)<>0 then delete(Temp,Pos('.',Temp),1);
          Iv2:=StrToInt(Temp);

      if Iv1<Iv2 then
      begin

        IniFile:=TIniFile.Create(Form1.FileRegD+'\Peykan.ini');
        IniFile.WriteString('Updata','Ver',Surum);
        IniFile.WriteString('Updata','Prog','ksevk');
        IniFile.WriteString('Updata','Name','ksevk');
        IniFile.WriteString('Firma','DIL','TURK');
        IniFile.Free;
        ProgressBar1.Position:=ProgressBar1.Position+1;

        Bad:
        if  FileExists(Form1.FileRegD+'\Update.exe') then
        begin
          WinExec(PChar(ExtractFilePath(Application.ExeName)+'Update.exe'), SW_SHOWNORMAL);
          end else begin
              ShowMessage(' BU PROGRAM VERSYON YÜKSETMEK IÇIN Update.exe BULUNMADI'+#13#10+'Siteden Update.exe Ýndirmek Gerkir');
              WebCopy1.ShowDialog:=True;
               webcopy1.items.clear;
                  webcopy1.items.add.URL:='http://peykan.com.tr/register/update.exe';
                    webcopy1.threadexecute;
                      delay(500);
             goto Bad;
          end;

        end else
        begin
          AnaForm.Pey_Dialog1.DesktopCenter:=False;
          AnaForm.Pey_Dialog1.Captext:='Güncel Program';
          AnaForm.Pey_Dialog1.MsgText:=' Ver. : '+Surum+' Son Versiyondur.';
          AnaForm.Pey_Dialog1.MsgBtn:=mbOKCancel;
          AnaForm.Pey_Dialog1.MessageGoster;

        end;

       END else
       begin
        AnaForm.Pey_Dialog1.DesktopCenter:=False;
        AnaForm.Pey_Dialog1.Captext:='Güncel Program';
        AnaForm.Pey_Dialog1.MsgText:=' Ver. : '+Surum+' Son Versiyondur.';
        AnaForm.Pey_Dialog1.MsgBtn:=mbOKCancel;
        AnaForm.Pey_Dialog1.MessageGoster;
      end;

        ProgressBar1.Position:=ProgressBar1.Position+1;
      delay(100);

  end else
  begin

           AnaForm.Pey_Dialog1.DesktopCenter:=False;
           AnaForm.Pey_Dialog1.MsgType:=mtWarning;
           AnaForm.Pey_Dialog1.Captext:='BAÐLANTI YOK';
           AnaForm.Pey_Dialog1.MsgText:='INTERNET BAÐLANTISI YOK '+#13+'Lütfen kontrol edin ..';
           AnaForm.Pey_Dialog1.MessageGoster;
      Cursor:=crDefault;

      end;
        ProgressBar1.Visible:=False;

  Cursor:=crDefault;

end;

procedure TForm_Admin.Timer1Timer(Sender: TObject);
 var
   Sira:Integer;
begin

  Timer1.Enabled:=False;

  //KULLANICI
  Sira:=0;
  Edit_Barkod.Text := '';
  Edit5.Text := '';
  Edit6.Text := '';
  Grid1.Cells[0,Sira]:='No';
  Grid1.Cells[1,Sira]:='Kullanici Adi';
  Grid1.Cells[2,Sira]:='Sifre';
  Grid1.Cells[3,Sira]:='Admin';
  Grid1.Cells[4,Sira]:='Elektronik';
  Grid1.Cells[5,Sira]:='Otomasyon';
  Grid1.Cells[6,Sira]:='Barkod';
  Grid1.Cells[7,Sira]:='Demirbaþ';
  if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQueryK,True,'PeyMar','') then
  begin
    ADOQueryK.Close;
    ADOQueryK.SQL.Clear;
    ADOQueryK.SQL.Append('Select * from Yava ORDER BY Ad');
    ADOQueryK.Open;
    ADOQueryK.First;
    Grid1.ClearNormalCells;
      While not ADOQueryK.Eof do
      begin
        Application.ProcessMessages;
        inc(Sira);
        Grid1.Cells[0,Sira]:=IntToStr(Sira);
        Grid1.Cells[1,Sira]:=ADOQueryK.FieldByName('Ad').AsString;
        Grid1.Cells[2,Sira]:=ADOQueryK.FieldByName('Kod').AsString;
        Grid1.Cells[3,Sira]:=ADOQueryK.FieldByName('P0').AsString;
        Grid1.Cells[4,Sira]:=ADOQueryK.FieldByName('P1').AsString;
        Grid1.Cells[5,Sira]:=ADOQueryK.FieldByName('P2').AsString;
        Grid1.Cells[6,Sira]:=ADOQueryK.FieldByName('P3').AsString;
        Grid1.Cells[7,Sira]:=ADOQueryK.FieldByName('P4').AsString;
        ADOQueryK.Next;
       end;
  end;
//    if Sira<2 then Grid1.RowCount:=2 else Grid1.RowCount:=Sira+1;
  if Sira>0 then
    Grid1.RowCount:=Sira +1;

  Grid1.AutoSize:=True;

  // FIRMA
  Sira:=0;
  Edit_Firma.Text := '';
  Edit7.Text :='';
  Edit8.Text :='';
  Edit9.Text :='';
  Edit10.Text :='';
  Edit11.Text :='';
  Edit12.Text :='';
  Grid2.Cells[0,Sira]:='No';
  Grid2.Cells[1,Sira]:='Firma Adi';
  Grid2.Cells[2,Sira]:='Sorumlu Kisi';
  Grid2.Cells[3,Sira]:='Adres';
  Grid2.Cells[4,Sira]:='Telefon';
  Grid2.Cells[5,Sira]:='Fax';
  Grid2.Cells[6,Sira]:='E-Posta';
  Grid2.Cells[7,Sira]:='Id';
  if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQueryK,True,'PeyMar','') then
  begin
    ADOQueryK.Close;
    ADOQueryK.SQL.Clear;
    ADOQueryK.SQL.Append('Select * from Firma ORDER BY Firma');
    ADOQueryK.Open;
    ADOQueryK.First;
    Grid2.ClearNormalCells;
    While not ADOQueryK.Eof do
    begin
      Application.ProcessMessages;
      inc(Sira);
      Grid2.Cells[0,Sira]:=IntToStr(Sira);
      Grid2.Cells[1,Sira]:=ADOQueryK.FieldByName('Firma').AsString;
      Grid2.Cells[2,Sira]:=ADOQueryK.FieldByName('Ad').AsString;
      Grid2.Cells[3,Sira]:=ADOQueryK.FieldByName('Adres').AsString;
      Grid2.Cells[4,Sira]:=ADOQueryK.FieldByName('Tel').AsString;
      Grid2.Cells[5,Sira]:=ADOQueryK.FieldByName('Fax').AsString;
      Grid2.Cells[6,Sira]:=ADOQueryK.FieldByName('Mail').AsString;
      Grid2.Cells[7,Sira]:=ADOQueryK.FieldByName('Id').AsString;
      ADOQueryK.Next;
    end;
  end;
//  if Sira<2 then Grid2.RowCount:=2 else Grid2.RowCount:=Sira+1;
  if Sira>0 then
    Grid2.RowCount:=Sira+1;
  Grid2.AutoSize:=True;
  Grid2.Columns[3].Width := 0;
  Grid2.Columns[5].Width := 0;
  Grid2.Columns[6].Width := 0;
  Grid2.Columns[7].Width := 0;
end;

procedure TForm_Admin.Grid1ClickCell(Sender: TObject; ARow, ACol: Integer);
begin
  if ARow>0 then
  begin
    Edit_Barkod.Text:= Grid1.Cells[1,ARow];  // Silmek için gereken Kullanici Adi Editi
  end;
end;

procedure TForm_Admin.LMDSpeedButton1Click(Sender: TObject);
begin
    if  Trim(Edit_Barkod.Text)='' then exit;
    ADOQueryK.SQL.Clear;
    ADOQueryK.SQL.Append('DELETE FROM Yava  Where Ad=' + QuotedStr(Edit_Barkod.Text));
    ADOQueryK.ExecSQL;
    Timer1.Enabled := true;
{      Form1.KulYarat;

    Form1.KulDataSet.Filtered:=False;
    Form1.KulDataSet.Filter:='Ad='+#39+Trim(edt_Barkod.Text)+#39;
    Form1.KulDataSet.Filtered:=True;

    if Form1.KulDataSet.RecordCount>0 then
      begin
      Form1.KulDataSet.Edit;
      Form1.KulDataSet.Delete;
      Form1.KulSave;
      Timer1.Enabled:=True;
     end;
     }
end;

procedure TForm_Admin.Grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  if ARow>0 then
    Edit_Barkod.Text:= Grid1.Cells[1,ARow] ;

end;

procedure TForm_Admin.ButtonKapatClick(Sender: TObject);
begin
Close;
end;

procedure TForm_Admin.FormCreate(Sender: TObject);
begin
  if Form1.BarPort='Com1' then RadioCom1.Checked:=True
  else if Form1.BarPort='Com2' then RadioCom2.Checked:=True
  else if Form1.BarPort='Com3' then RadioCom3.Checked:=True
  else if Form1.BarPort='Com4' then RadioCom4.Checked:=True
  else if Form1.BarPort='Com5' then RadioCom5.Checked:=True
  else if Form1.BarPort='Com6' then RadioCom6.Checked:=True
  else if Form1.BarPort='Com7' then RadioCom7.Checked:=True
  else if Form1.BarPort='Com8' then RadioCom8.Checked:=True
  else if Form1.BarPort='Com9' then RadioCom9.Checked:=True
  else if Form1.BarPort='USB' then RadioCom10.Checked:=True;

  if Form1.YaziciPort='Com1' then YRadioButton1.Checked:=True
  else if Form1.YaziciPort='Com2' then YRadioButton2.Checked:=True
  else if Form1.YaziciPort='Com3' then YRadioButton3.Checked:=True
  else if Form1.YaziciPort='Com4' then YRadioButton4.Checked:=True
  else if Form1.YaziciPort='Com5' then YRadioButton5.Checked:=True
  else if Form1.YaziciPort='Com6' then YRadioButton6.Checked:=True
  else if Form1.YaziciPort='Com7' then YRadioButton7.Checked:=True
  else if Form1.YaziciPort='Com8' then YRadioButton8.Checked:=True
  else if Form1.YaziciPort='LPT' then YRadioButton9.Checked:=True
  else if Form1.YaziciPort='USB' then YRadioButton10.Checked:=True;

  Panel_USB.Visible:=YRadioButton10.Checked;
  if Form1.BaunRate=9600 then  RadioButton_9600.Checked:=True
  else if Form1.BaunRate=115200 then  RadioButton_115200.Checked:=True;


  if Form1.YaziciWin then ERadioButton1.Checked:=True else ERadioButton2.Checked:=True;

  if Form1.ZDil=1 then ZRadioButton1.Checked:=True
  else if Form1.ZDil=2 then ZRadioButton2.Checked:=True
  else if Form1.ZDil=3 then ZRadioButton3.Checked:=True;

  ADOQueryK :=TADOQuery.Create(self);

//  CheckBox2.Checked:= not Form1.NetworkBool;
//  LMDEdit2.Text:=Form1.NetworkYer;

  LMDEdit1.Text:= Form1.SeciliEtiketZPL;
  LMDEdit3.Text:= Form1.SeciliEtiketEPL;
  LMDEdit4.Text:= Form1.SeciliEtiketPPL;

  Edit1.Text:=Form1.Ses1;
  Edit2.Text:=Form1.Ses2;
  Edit3.Text:=Form1.Ses3;
  Edit4.Text:=Form1.Ses4;

  ResimAl1(AnaForm.image_Vaz,ButtonKapat);
  ResimAl1(AnaForm.image_Save,btn9);
  ResimAl1(AnaForm.image_Save,AdvGlowButton3);
  ResimAl1(AnaForm.image_Vaz,AdvGlowButton4);
  ResimAl1(AnaForm.image_Save,AdvGlowButton2);
  ResimAl1(AnaForm.image_Vaz,AdvGlowButton5);
  AdvOfficePager1.AdvOfficePagerStyler := Form1.AdvOfficePagerOfficeStyler1;

  if Form1.lisankon then AdvSmoothSlider2.State:=ssOn
  else AdvSmoothSlider2.State:=ssOff;

//  xpEdit_List_1.Text:=Form1.E_List_Sol_1;
//  xpEdit_List_2.Text:=Form1.E_List_Sol_2;
//  xpEdit_List_3.Text:=Form1.E_List_Sol_3;
//  xpEdit_List_4.Text:=Form1.E_List_Sol_4;
//  xpEdit_List_5.Text:=Form1.E_List_Sol_5;
//  xpEdit_List_6.Text:=Form1.E_List_Sol_6;
//
//  SpinEdit1.Value:=Form1.E_No_Sol_x1;
//  SpinEdit2.Value:=Form1.E_No_Sol_x2;
//  SpinEdit3.Value:=Form1.E_No_Sol_x3;
//
//  SpinEdit_List_1.Value:=Form1.E_No_Sol_1;
//  SpinEdit_List_2.Value:=Form1.E_No_Sol_2;
//  SpinEdit_List_3.Value:=Form1.E_No_Sol_3;
//  SpinEdit_List_4.Value:=Form1.E_No_Sol_4;
//  SpinEdit_List_5.Value:=Form1.E_No_Sol_5;
//  SpinEdit_List_6.Value:=Form1.E_No_Sol_6;


    ADOQueryK.Connection:=Form1.ADOConnection1;


  Timer1.Enabled:=True;

  AdvOfficeComboBox1.Items.Clear;
  AdvOfficeComboBox1.Items.AddStrings(Printer.Printers);
  AdvOfficeComboBox1.Text:=GetDefaultPrinter(1,False);
  AdvOfficePager1.ActivePage:= AdvOfficePage1;

  Grid1.ActiveCellColor:=$00404040;
  Grid1.SelectionColorTo:=$00DFDFDF;
  Grid1.SelectionMirrorColor:=$00DFDFDF;

  Grid1.SelectionColor:= clGray;
  Grid1.SelectionMirrorColorTo:=clGray;


end;


procedure TForm_Admin.AdvGlowButton1Click(Sender: TObject);

label Bad;
begin

  If not InternetGetConnectedState(nil, 0) then
  begin
      DRLabel1.Blink:=blBlink;
    DRLabel1.Caption:='INTERNETE BAÐLANTI YOK';
    TimerNet.Enabled:=True;
    exit;
    end;
    LisansControl;
end;

procedure TForm_Admin.TimerNetTimer(Sender: TObject);
begin
TimerNet.Enabled:=False;
  DRLabel1.Blink:=blNone;
DRLabel1.Caption:='';

end;

procedure TForm_Admin.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  ADOQueryK.Free;

end;

procedure TForm_Admin.btn9Click(Sender: TObject);
var
  SQL:String;
  S0,S1,S2,S3,S4,S5:String[1];
begin

  if (Trim(Edit5.Text)='') OR (Trim(Edit6.Text)='') then exit;
  if MABox0.Checked then  S0:='1' else S0:='0';
  if MABox1.Checked then  S1:='1' else S1:='0';
  if MABox2.Checked then  S2:='1' else S2:='0';
  if MABox3.Checked then  S3:='1' else S3:='0';
  if MABox4.Checked then  S4:='1' else S4:='0';

  if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQueryK,True,'PeyMar','') then
  begin
    ADOQueryK.Close;
    ADOQueryK.SQL.Clear;
    ADOQueryK.SQL.Append('Select * from Yava where Ad='+QuotedStr(Trim(Edit5.Text)));
    ADOQueryK.Open;
    ADOQueryK.First;

    if ADOQueryK.RecordCount>0 then
    begin
      SQL:= ' UPDATE dbo.Yava SET Kod=HASHBYTES('+QuotedStr('SHA1')+','+QuotedStr(Edit6.Text)+ ') , P0='+QuotedStr(S0)+' ,P1='+QuotedStr(S1)+' , P2='+QuotedStr(S2)+' , P3='+QuotedStr(S3)+' , P4='+QuotedStr(S4)+'  WHERE Ad='+QuotedStr(Trim(Edit5.Text));
    end else
    begin
      SQL:= ' INSERT INTO dbo.Yava( Ad,Kod,P0,P1,P2,P3,P4) '
      +'VALUES ('+QuotedStr(Edit5.Text)+' , HASHBYTES('+QuotedStr('SHA1')+','+QuotedStr(Edit6.Text)+') , '+QuotedStr(S0)+' , '+QuotedStr(S1)+' , '+QuotedStr(S2)+' , '+QuotedStr(S3)+' , '+QuotedStr(S4)+')';
    end;

    Form1.ADOCommand1.CommandText :=SQL;
    Form1.ADOCommand1.Execute;
    Timer1.Enabled:=True;
    Edit5.Text:='';
    Edit6.Text:='';
    MABox0.Checked:=False;
    MABox1.Checked:=False;
    MABox2.Checked:=False;
    MABox3.Checked:=False;
    MABox4.Checked:=False;
  end;
end;

procedure TForm_Admin.AdvGlowButton4Click(Sender: TObject);
begin
if  Trim(Edit_Barkod.Text)='' then exit;
  if MessageDlg(#39 + Edit_Barkod.Text+#39 +' Adli kullaniciyi silmek ister misiniz?', mtConfirmation, [mbYes, mbNo], 1) = mrYes then
  begin
    ADOQueryK.SQL.Clear;
    ADOQueryK.SQL.Append('DELETE FROM Yava Where Ad=' + QuotedStr(Edit_Barkod.Text));
    ADOQueryK.ExecSQL;
    Timer1.Enabled := true;
  end;
end;

procedure TForm_Admin.AdvGlowButton3Click(Sender: TObject);
begin
//     Form1.NetworkBool:= not CheckBox2.Checked;
//    Form1.NetworkYer:=LMDEdit2.Text;
//
//    if not CheckBox2.Checked then
//    if not FileExists(LMDEdit2.Text+'\'+Form1.ExeName+'.exe') then
//    begin
//        LMDEdit2.Font.Color:=clRed;
//        PeykanHint('HATA','Network Yolu Yanlis',clRed,10,True);
//        LMDEdit2.SetFocus;
//        LMDEdit2.SelectAll;
//      exit;
//    end;
  if AdvSmoothSlider2.State=ssOn then
    Form1.lisankon:=True  else Form1.lisankon:=False;

  Form1.Ses1:=Edit1.Text;
  Form1.Ses2:=Edit2.Text;
  Form1.Ses3:=Edit3.Text;
  Form1.Ses4:=Edit4.Text;

  if RadioCom1.Checked then Form1.BarPort:='Com1'
  else if RadioCom2.Checked then Form1.BarPort:='Com2'
  else if RadioCom3.Checked then Form1.BarPort:='Com3'
  else if RadioCom4.Checked then Form1.BarPort:='Com4'
  else if RadioCom5.Checked then Form1.BarPort:='Com5'
  else if RadioCom6.Checked then Form1.BarPort:='Com6'
  else if RadioCom7.Checked then Form1.BarPort:='Com7'
  else if RadioCom8.Checked then Form1.BarPort:='Com8'
  else if RadioCom9.Checked then Form1.BarPort:='Com9'
  else if RadioCom10.Checked then Form1.BarPort:='USB'
  else Form1.BarPort:='YOK';

  if YRadioButton1.Checked then Form1.YaziciPort:='Com1'
  else if YRadioButton2.Checked then Form1.YaziciPort:='Com2'
  else if YRadioButton3.Checked then Form1.YaziciPort:='Com3'
  else if YRadioButton4.Checked then Form1.YaziciPort:='Com4'
  else if YRadioButton5.Checked then Form1.YaziciPort:='Com5'
  else if YRadioButton6.Checked then Form1.YaziciPort:='Com6'
  else if YRadioButton7.Checked then Form1.YaziciPort:='Com7'
  else if YRadioButton8.Checked then Form1.YaziciPort:='Com8'
  else if YRadioButton9.Checked then Form1.YaziciPort:='LPT'
  else if YRadioButton10.Checked then Form1.YaziciPort:='USB'
  else    Form1.YaziciPort:='YOK';

//  if  (Form1.YaziciPort=Form1.TartiPort) OR (Form1.YaziciPort=Form1.MetrePort) OR (Form1.MetrePort=Form1.TartiPort) or (Form1.BarPort=Form1.TartiPort)
//  then
//  begin
//    PeykanHint('','Com Port HATALI',clRed,10,False);
//    exit;
//  end;
  if ERadioButton1.Checked then Form1.YaziciWin:=True else Form1.YaziciWin:=False;

if RadioButton_115200.Checked then Form1.BaunRate:=115200 else form1.BaunRate:=9600;

  if ZRadioButton1.Checked then Form1.ZDil:=1
  else if ZRadioButton2.Checked then Form1.ZDil:=2
  else if ZRadioButton3.Checked then Form1.ZDil:=3;

  Form1.SeciliEtiketZPL:=LMDEdit1.text;
  Form1.SeciliEtiketEPL:=LMDEdit3.text;
  Form1.SeciliEtiketPPL:=LMDEdit4.text;


  IniFile:=TIniFile.Create(Form1.FileRegD+'\KSevk.ini');
  IniFile.WriteBool('Sistem','lisankon',Form1.lisankon);

  IniFile.WriteInteger('Yazici','Dil', Form1.ZDil);
  IniFile.WriteString('Ayar','BarPort', Form1.BarPort );

  IniFile.WriteString('Ayar','BarPort', Form1.BarPort );
  IniFile.WriteString('Ayar','YaziciPort', Form1.YaziciPort );
  IniFile.WriteBool('Ayar','YaziciWin', Form1.YaziciWin );

  IniFile.WriteInteger('Ayar','BHiz',Form1.BaunRate);
  
  IniFile.WriteBool('Ayar','RaporYazdir',Form1.RaporYazdir);
  IniFile.WriteString('Ses','S1',Edit1.Text);
  IniFile.WriteString('Ses','S2',Edit2.Text);
  IniFile.WriteString('Ses','S3',Edit3.Text);
  IniFile.WriteString('Ses','S4',Edit4.Text);

  IniFile.WriteString('Ayar','SeciliEtiket',Form1.SeciliEtiketZPL);
  IniFile.WriteString('Ayar','SeciliEtiketEPL',Form1.SeciliEtiketEPL);
  IniFile.WriteString('Ayar','SeciliEtiketPPL',Form1.SeciliEtiketPPL);
  IniFile.Free;
end;

procedure TForm_Admin.RadioCom1Change(Sender: TObject);
begin
  if RadioCom1.Checked then
  begin
    RadioCom10.Checked:=False;
    RadioCom2.Checked:=False;
    RadioCom3.Checked:=False;
    RadioCom4.Checked:=False;
    RadioCom5.Checked:=False;
    RadioCom6.Checked:=False;
    RadioCom7.Checked:=False;
    RadioCom8.Checked:=False;
    RadioCom9.Checked:=False;
  end;
end;

procedure TForm_Admin.RadioCom2Change(Sender: TObject);
begin
  if RadioCom2.Checked then
  begin
    RadioCom1.Checked:=False;
    RadioCom3.Checked:=False;
    RadioCom4.Checked:=False;
    RadioCom5.Checked:=False;
    RadioCom6.Checked:=False;
    RadioCom7.Checked:=False;
    RadioCom8.Checked:=False;
    RadioCom9.Checked:=False;
    RadioCom10.Checked:=False;
  end;
end;

procedure TForm_Admin.RadioCom3Change(Sender: TObject);
begin
  if RadioCom3.Checked then
  begin
    RadioCom1.Checked:=False;
    RadioCom2.Checked:=False;
    RadioCom10.Checked:=False;
    RadioCom4.Checked:=False;
    RadioCom5.Checked:=False;
    RadioCom6.Checked:=False;
    RadioCom7.Checked:=False;
    RadioCom8.Checked:=False;
    RadioCom9.Checked:=False;
  end;
end;

procedure TForm_Admin.RadioCom4Change(Sender: TObject);
begin
  if RadioCom4.Checked then
  begin
    RadioCom1.Checked:=False;
    RadioCom2.Checked:=False;
    RadioCom3.Checked:=False;
    RadioCom10.Checked:=False;
    RadioCom5.Checked:=False;
    RadioCom6.Checked:=False;
    RadioCom7.Checked:=False;
    RadioCom8.Checked:=False;
    RadioCom9.Checked:=False;
  end;
end;

procedure TForm_Admin.RadioCom5Change(Sender: TObject);
begin
  if RadioCom5.Checked then
  begin
    RadioCom1.Checked:=False;
    RadioCom2.Checked:=False;
    RadioCom3.Checked:=False;
    RadioCom4.Checked:=False;
    RadioCom10.Checked:=False;
    RadioCom6.Checked:=False;
    RadioCom7.Checked:=False;
    RadioCom8.Checked:=False;
    RadioCom9.Checked:=False;
  end;
end;

procedure TForm_Admin.RadioCom6Change(Sender: TObject);
begin
  if RadioCom6.Checked then
  begin
    RadioCom1.Checked:=False;
    RadioCom2.Checked:=False;
    RadioCom3.Checked:=False;
    RadioCom4.Checked:=False;
    RadioCom5.Checked:=False;
    RadioCom10.Checked:=False;
    RadioCom7.Checked:=False;
    RadioCom8.Checked:=False;
    RadioCom9.Checked:=False;
  end;
end;

procedure TForm_Admin.RadioCom7Change(Sender: TObject);
begin
  if RadioCom7.Checked then
  begin
    RadioCom1.Checked:=False;
    RadioCom2.Checked:=False;
    RadioCom3.Checked:=False;
    RadioCom4.Checked:=False;
    RadioCom5.Checked:=False;
    RadioCom6.Checked:=False;
    RadioCom10.Checked:=False;
    RadioCom8.Checked:=False;
    RadioCom9.Checked:=False;
  end;
end;

procedure TForm_Admin.RadioCom8Change(Sender: TObject);
begin
  if RadioCom8.Checked then
  begin
    RadioCom1.Checked:=False;
    RadioCom2.Checked:=False;
    RadioCom3.Checked:=False;
    RadioCom4.Checked:=False;
    RadioCom5.Checked:=False;
    RadioCom6.Checked:=False;
    RadioCom7.Checked:=False;
    RadioCom10.Checked:=False;
    RadioCom9.Checked:=False;
  end;
end;

procedure TForm_Admin.RadioCom9Change(Sender: TObject);
begin
  if RadioCom9.Checked then
  begin
    RadioCom1.Checked:=False;
    RadioCom2.Checked:=False;
    RadioCom3.Checked:=False;
    RadioCom4.Checked:=False;
    RadioCom5.Checked:=False;
    RadioCom6.Checked:=False;
    RadioCom7.Checked:=False;
    RadioCom8.Checked:=False;
    RadioCom10.Checked:=False;
  end;
end;

procedure TForm_Admin.RadioCom10Change(Sender: TObject);
begin
  if RadioCom10.Checked then
  begin
    RadioCom1.Checked:=False;
    RadioCom2.Checked:=False;
    RadioCom3.Checked:=False;
    RadioCom4.Checked:=False;
    RadioCom5.Checked:=False;
    RadioCom6.Checked:=False;
    RadioCom7.Checked:=False;
    RadioCom8.Checked:=False;
    RadioCom9.Checked:=False;
  end;
end;

procedure TForm_Admin.LMDEdit1CustomButtons0Click(Sender: TObject;
  index: Integer);
begin
  Form1.OpenDialog1.InitialDir:=Form1.FileRegD+'\Label';
  Form1.OpenDialog1.Filter:='Zebra Dosya ( ZPEY Format )|*.zpey';

  if  Form1.OpenDialog1.Execute then
  if Trim(Form1.OpenDialog1.FileName)='' then
  begin
    ShowMessage('Dosya Ismini Verilmedi');
    Exit;
  end else
  begin
    LMDEdit1.Text:=Form1.OpenDialog1.FileName;
  end;
end;

procedure TForm_Admin.LMDEdit3CustomButtons0Click(Sender: TObject;
  index: Integer);
begin
 Form1.OpenDialog1.InitialDir:=Form1.FileRegD+'\Label';
  Form1.OpenDialog1.Filter:='Zebra Dosya ( EPEY Format )|*.epey';

  if  Form1.OpenDialog1.Execute then
  if Trim(Form1.OpenDialog1.FileName)='' then
  begin
    ShowMessage('Dosya Ismini Verilmedi');
    Exit;
  end else
  begin
    LMDEdit3.Text:=Form1.OpenDialog1.FileName;
  end;
end;

procedure TForm_Admin.LMDEdit4CustomButtons0Click(Sender: TObject;
  index: Integer);
begin
 Form1.OpenDialog1.InitialDir:=Form1.FileRegD+'\Label';
  Form1.OpenDialog1.Filter:='Zebra Dosya ( PPEY Format )|*.ppey';

  if  Form1.OpenDialog1.Execute then
  if Trim(Form1.OpenDialog1.FileName)='' then
  begin
    ShowMessage('Dosya Ismini Verilmedi');
    Exit;
  end else
  begin
    LMDEdit4.Text:=Form1.OpenDialog1.FileName;
  end;
end;

procedure TForm_Admin.AdvGlowButton2Click(Sender: TObject);
var
  S1:string;
begin
if (Trim(Edit7.Text)='') OR (Trim(Edit7.Text)='') then begin
    ShowMessage('Firma Adi Bos Birakilamaz!');
  exit;
  end;

  if RadioButton1.Checked then S1 := '1'
  else S1 := '0';
  if MSSQLKontrol_Query(Form1.ADOConnection1,ADOQueryK,True,'PeyMar','') then
  begin
    ADOQueryK.Close;
    ADOQueryK.SQL.Clear;
    ADOQueryK.SQL.Append('Select * from dbo.Firma where Firma='+QuotedStr(Trim(Edit7.Text)));
    ADOQueryK.Open;
    ADOQueryK.First;
    ShowMessage(BooleanToStr(RadioButton1.Checked));
    if ADOQueryK.RecordCount>0 then
    begin
      SQL := ' UPDATE dbo.Firma SET';

      SQL := SQL + ' Satici='+S1+',Firma='+QuotedStr(Edit7.Text)+',Ad='+QuotedStr(Edit8.Text)+',Adres='+QuotedStr(Edit9.Text)+',Tel='+QuotedStr(Edit10.Text)+',Fax='+QuotedStr(Edit11.Text)+',Mail='+QuotedStr(Edit12.Text);
      SQL := SQL + ' WHERE Id='+ADOQueryK.FieldByName('Id').AsString;
    end else
    begin
      SQL:= ' INSERT INTO dbo.Firma(Firma,Ad,Adres,Tel,Fax,Mail,Satici) '
      +'VALUES ('+QuotedStr(Edit7.Text)+','+QuotedStr(Edit8.Text)+','+QuotedStr(Edit9.Text)+' , '+QuotedStr(Edit10.Text)+' , '+QuotedStr(Edit11.Text)+' , '+QuotedStr(Edit12.Text)+','+S1+')';
    end;

    Form1.ADOCommand1.CommandText :=SQL;
    Form1.ADOCommand1.Execute;
    Timer1.Enabled:=True;
    Edit7.Text:='';
    Edit8.Text:='';
    Edit9.Text:='';
    Edit10.Text:='';
    Edit11.Text:='';
    Edit12.Text:='';
  end;
end;

procedure TForm_Admin.Grid2ClickCell(Sender: TObject; ARow, ACol: Integer);
begin
  if ARow>0 then
  begin
    Edit_Firma.Text:= Grid2.Cells[1,ARow];  // Silmek için gereken Firma Adi Editi
    Edit7.Text :=Grid2.Cells[1,ARow];
    Edit8.Text :=Grid2.Cells[2,ARow];
    Edit9.Text :=Grid2.Cells[3,ARow];
    Edit10.Text :=Grid2.Cells[4,ARow];
    Edit11.Text :=Grid2.Cells[5,ARow];
    Edit12.Text :=Grid2.Cells[6,ARow];
  end;
end;

procedure TForm_Admin.AdvGlowButton5Click(Sender: TObject);
begin
  if  Trim(Edit_Firma.Text)='' then exit;
  if MessageDlg(#39 + Edit_Firma.Text+#39 +' Adli firmayi silmek ister misiniz?', mtConfirmation, [mbYes, mbNo], 1) = mrYes then
  begin
    ADOQueryK.SQL.Clear;
    ADOQueryK.SQL.Append('DELETE FROM Firma Where Firma=' + QuotedStr(Edit_Firma.Text));
    ADOQueryK.ExecSQL;
    Timer1.Enabled := true;
  end;
end;

procedure TForm_Admin.YRadioButton10Change(Sender: TObject);
begin
 Panel_USB.Visible:=YRadioButton10.Checked;
end;

end.
