unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxGDIPlusClasses, ExtCtrls, AdvGlassButton,
  AdvGlowButton, CurvyControls;

type
  TForm2 = class(TForm)
    BShowBooks: TAdvGlassButton;
    Label1: TLabel;
    BShowWriters: TAdvGlassButton;
    Label2: TLabel;
    BShowPublisher: TAdvGlassButton;
    Label3: TLabel;
    BBorrowBook: TAdvGlassButton;
    LBorrowBook: TLabel;
    BSubmitBook: TAdvGlassButton;
    LSubmitBook: TLabel;
    AdvGlassButton3: TAdvGlassButton;
    Label6: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    BClose: TAdvGlowButton;
    BUpdateUserInfo: TAdvGlassButton;
    LUUserInfo: TLabel;
    Timer1: TTimer;
    CurvyPanel1: TCurvyPanel;
    LUserNS: TLabel;
    LUserMail: TLabel;
    Label7: TLabel;
    Image1: TImage;
    Label9: TLabel;
    procedure BCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BUpdateUserInfoClick(Sender: TObject);
    procedure BShowBooksClick(Sender: TObject);
    procedure BShowWritersClick(Sender: TObject);
    procedure BShowPublisherClick(Sender: TObject);
    procedure AdvGlassButton3Click(Sender: TObject);
    procedure BBorrowBookClick(Sender: TObject);
    procedure BSubmitBookClick(Sender: TObject);
  private
    { Private declarations }
  public
    kullanici_eposta : string;
    kullanici_ad : string;
    kullanici_soyad : string;
    kullanici_id : string;
  end;

var
  Form2: TForm2;

implementation
uses
  Unit1,Unit4,Unit5,Unit6,Unit7,Unit8,Unit9,Unit10;

{$R *.dfm}

procedure TForm2.BCloseClick(Sender: TObject);
begin

  Form1.Show;
  Form2.Close;

end;

procedure TForm2.FormCreate(Sender: TObject);
begin

  Timer1.Enabled := True;

end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
    Timer1.Enabled := False;
    LUserNS.Caption := kullanici_ad + ' ' + kullanici_soyad;
    LUserMail.Caption := kullanici_eposta;

    if (kullanici_eposta = 'admin') then
    begin
         BUpdateUserInfo.Visible := False;
         LUUserInfo.Visible := False;

         BBorrowBook.Visible := False;
         LBorrowBook.Visible := False;

         BSubmitBook.Visible := False;
         LSubmitBook.Visible := False;
    end;
end;

procedure TForm2.BUpdateUserInfoClick(Sender: TObject);
begin

  Application.CreateForm(TForm4, Form4);
  Form4.Show;
  Form2.Hide;

end;

procedure TForm2.BShowBooksClick(Sender: TObject);
begin

  Application.CreateForm(TForm5, Form5);
  Form5.Show;
  Form2.Hide;

end;

procedure TForm2.BShowWritersClick(Sender: TObject);
begin
  Application.CreateForm(TForm6, Form6);
  Form6.Show;
  Form2.Hide;
end;

procedure TForm2.BShowPublisherClick(Sender: TObject);
begin
  Application.CreateForm(TForm7, Form7);
  Form7.Show;
  Form2.Hide;
end;

procedure TForm2.AdvGlassButton3Click(Sender: TObject);
begin
  Application.CreateForm(TForm8, Form8);
  Form8.Show;
  Form2.Hide;
end;

procedure TForm2.BBorrowBookClick(Sender: TObject);
begin
  Application.CreateForm(TForm9, Form9);
  Form9.Show;
  Form2.Hide;
end;

procedure TForm2.BSubmitBookClick(Sender: TObject);
begin
  Application.CreateForm(TForm10, Form10);
  Form10.Show;
  Form2.Hide;
end;

end.

