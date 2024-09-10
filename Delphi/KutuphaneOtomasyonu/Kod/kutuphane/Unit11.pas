unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, VrControls, VrSystem, AdvSmoothButton, VrDesign,IniFiles,
  StdCtrls, Mylabel, ExtCtrls, CurvyControls;

type
  TForm11 = class(TForm)
    Panel1: TPanel;
    myLabel3d1: TmyLabel3d;
    RadioButton_S: TVrBitmapRadioButton;
    RadioButton_Z: TVrBitmapRadioButton;
    VrBitmapList1: TVrBitmapList;
    Panel2: TPanel;
    Label1: TLabel;
    BGeriDon: TAdvGlowButton;
    Panel3: TPanel;
    myLabel3d2: TmyLabel3d;
    myLabel3d3: TmyLabel3d;
    EYHiz: TCurvyEdit;
    EYKoyuluk: TCurvyEdit;
    myLabel3d4: TmyLabel3d;
    EYCiktiSayisi: TCurvyEdit;
    BAyarKaydet: TAdvSmoothButton;
    procedure BGeriDonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BAyarKaydetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm11.BGeriDonClick(Sender: TObject);
begin
    Form1.Show;
    Form11.Close;
end;

procedure TForm11.FormCreate(Sender: TObject);
begin
  if not Form1.ZLite then
  begin
    RadioButton_S.Checked := True;

  end else
  begin

     RadioButton_Z.Checked := True;;
  end;

  EYHiz.Text := Form1.EHiz;
  EYKoyuluk.Text := Form1.EKoyu;
  EYCiktiSayisi.Text := Form1.ECiktiSayisi;

end;


procedure TForm11.BAyarKaydetClick(Sender: TObject);
begin

    if RadioButton_S.Checked then
      begin
          if Form1.ZLite then
          begin

            //************** MS SQL BAÐLANTI Dosyalarý Kontrol
             if not FileExists(Form1.FileRegD+'\'+Form1.ExeName+'.udl') then
              begin
                ShowMessage('Hata Kodu : 002 ' +#13+Form1.FileRegD+'\'+Form1.ExeName+'.udl   Dosyasý Bulunamýyor Lütfen Kontrol Edin !');
                Form1.StatusBar1.Panels[1].Text :='<p align="center"><B><BODY BGCOLOR="clRed">LOCAL HOST</BODY></b></p>';
                Exit;
              end;

            //************************
            //************************* FORM CREATE SONU
               Form1.ADOConnection1.Connected := False;
               Form1.ADOConnection1.ConnectionString:='FILE NAME='+Form1.FileRegD+'\'+Form1.ExeName+'.udl';
                 Try
                   Form1.ADOConnection1.Connected:=TRUE;
                 except
                 end;
                 if Form1.ADOConnection1.Connected = False then
                 begin
                     ShowMessage('Hata Kodu :  ' +#13+'VERÝTABANINA BAÐLANILAMIYOR. AÐ BAÐLANTILARINI KONTROL EDÝNÝZ!');
                     Exit;
                 end;

               Form1.ADOCommand1.Connection:=Form1.ADOConnection1;

               Form1.ZLite:=False;
               Form1.StatusBar1.Panels[1].Text :='<p align="center"><B><BODY BGCOLOR="clLime">MS SQL</BODY></b></p>';

          end;




      end else
      begin
        if not Form1.ZLite then
        begin

            Form1.ZLite:=True;
            Form1.SQL_Baglan;
            Form1.StatusBar1.Panels[1].Text :='<p align="center"><B><BODY BGCOLOR="clLime">SQL LOCAL</BODY></b></p>';
        end;

      end;

      Form1.EHiz := EYHiz.Text;
      Form1.EKoyu := EYKoyuluk.Text;
      Form1.ECiktiSayisi := EYCiktiSayisi.Text;

      IniFile:=TIniFile.Create(Form1.FileRegD+'\'+Form1.ExeName+'.ini');
      IniFile.WriteBool('Kontrol','VeriTabaniGenel',Form1.ZLite);
      IniFile.WriteString('Ayar','EHiz',Form1.EHiz);
      IniFile.WriteString('Ayar','EKoyu',Form1.EKoyu);
      IniFile.WriteString('Ayar','ECiktiSayisi',Form1.ECiktiSayisi);
      IniFile.Free;

      ShowMessage('Ayar Baþarýyla Kaydedildi.');



end;

end.
