unit hesapmakinesi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, StrUtils,IdStrings, AdvSmoothButton;

type
  TForm1 = class(TForm)
    TSonuc: TEdit;
    BBackspace: TButton;
    BClear: TButton;
    BNumber9: TButton;
    BNumber8: TButton;
    BNumber7: TButton;
    BNumber6: TButton;
    BNumber5: TButton;
    BNumber4: TButton;
    BNumber3: TButton;
    BNumber2: TButton;
    BNumber1: TButton;
    BNumber0: TButton;
    BPlus: TButton;
    BExt: TButton;
    BDivide: TButton;
    BEqual: TButton;
    BMult: TButton;
    MPast: TMemo;
    BPast: TAdvSmoothButton;
    procedure BNumber0Click(Sender: TObject);
    procedure BNumber1Click(Sender: TObject);
    procedure BNumber2Click(Sender: TObject);
    procedure BNumber3Click(Sender: TObject);
    procedure BNumber4Click(Sender: TObject);
    procedure BNumber5Click(Sender: TObject);
    procedure BNumber6Click(Sender: TObject);
    procedure BNumber7Click(Sender: TObject);
    procedure BNumber8Click(Sender: TObject);
    procedure BNumber9Click(Sender: TObject);
    procedure BClearClick(Sender: TObject);
    procedure BBackspaceClick(Sender: TObject);
    procedure BPlusClick(Sender: TObject);
    procedure BEqualClick(Sender: TObject);
    procedure BMultClick(Sender: TObject);
    procedure BExtClick(Sender: TObject);
    procedure BDivideClick(Sender: TObject);
    procedure BPastClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BNumber0Click(Sender: TObject);
begin

  TSonuc.Text := TSonuc.Text + '0';


end;

procedure TForm1.BNumber1Click(Sender: TObject);
begin

  TSonuc.Text := TSonuc.Text + '1';

end;

procedure TForm1.BNumber2Click(Sender: TObject);
begin

  TSonuc.Text := TSonuc.Text + '2';

end;

procedure TForm1.BNumber3Click(Sender: TObject);
begin

  TSonuc.Text := TSonuc.Text + '3';

end;

procedure TForm1.BNumber4Click(Sender: TObject);
begin

  TSonuc.Text := TSonuc.Text + '4';

end;

procedure TForm1.BNumber5Click(Sender: TObject);
begin

  TSonuc.Text := TSonuc.Text + '5';

end;

procedure TForm1.BNumber6Click(Sender: TObject);
begin

  TSonuc.Text := TSonuc.Text + '6';

end;

procedure TForm1.BNumber7Click(Sender: TObject);
begin

  TSonuc.Text := TSonuc.Text + '7';

end;

procedure TForm1.BNumber8Click(Sender: TObject);
begin

  TSonuc.Text := TSonuc.Text + '8';

end;

procedure TForm1.BNumber9Click(Sender: TObject);
begin

  TSonuc.Text := TSonuc.Text + '9';

end;

procedure TForm1.BClearClick(Sender: TObject);
begin

  TSonuc.Text := '';

end;

procedure TForm1.BBackspaceClick(Sender: TObject);

begin

  TSonuc.Text := LeftStr(TSonuc.Text,(Length(TSonuc.Text) - 1));

end;

procedure TForm1.BPlusClick(Sender: TObject);
begin
  BEqualClick(Self);
  TSonuc.Text := TSonuc.Text + '+';

end;

procedure TForm1.BEqualClick(Sender: TObject);

var
  //Split ile çözüldüðü zaman :
  //sayi1 : string;
  //sayi2 : string;
  //vSayi1 : Variant;
  //vSayi2 : Variant;

  //Copy Pos ile çözüldüðü zaman :
  sayi1 : Integer;
  sayi2 : Integer;
  islemSonucu : Real;


begin

  if AnsiContainsText(TSonuc.Text, '+') then
  begin

    //IdStrings.SplitString(TSonuc.Text,'+',sayi1,sayi2);

    //vSayi1 := StrToFloatDef(VarToStrDef(sayi1,'0'),0);
    //vSayi2 := StrToFloatDef(VarToStrDef(sayi2,'0'),0);

    //islemSonucu := vSayi1  + vSayi2;

    sayi1 := StrToInt(Copy(TSonuc.Text,1,Pos('+',TSonuc.Text) - 1));
    sayi2 := StrToInt(Copy(TSonuc.Text,Pos('+',TSonuc.Text)+1, Length(TSonuc.Text)));


    islemSonucu := sayi1 + sayi2;

    TSonuc.Text := FloatToStr(islemSonucu);
    MPast.Lines.Append(FloatToStr(islemSonucu));
  end
  else if  AnsiContainsText(TSonuc.Text, '-') then
  begin

    //IdStrings.SplitString(TSonuc.Text,'-',sayi1,sayi2);

    //vSayi1 := StrToFloatDef(VarToStrDef(sayi1,'0'),0);
    //vSayi2 := StrToFloatDef(VarToStrDef(sayi2,'0'),0);

    //islemSonucu := vSayi1  - vSayi2;

    sayi1 := StrToInt(Copy(TSonuc.Text,1,Pos('-',TSonuc.Text) - 1));
    sayi2 := StrToInt(Copy(TSonuc.Text,Pos('-',TSonuc.Text)+1, Length(TSonuc.Text)));


    islemSonucu := sayi1 - sayi2;

    TSonuc.Text := FloatToStr(islemSonucu);
    MPast.Lines.Append(FloatToStr(islemSonucu));
  end
  else if  AnsiContainsText(TSonuc.Text, '/') then
  begin

    //IdStrings.SplitString(TSonuc.Text,'/',sayi1,sayi2);

    //vSayi1 := StrToFloatDef(VarToStrDef(sayi1,'0'),0);
    //vSayi2 := StrToFloatDef(VarToStrDef(sayi2,'0'),0);

    //islemSonucu := vSayi1  / vSayi2;

    sayi1 := StrToInt(Copy(TSonuc.Text,1,Pos('/',TSonuc.Text) - 1));
    sayi2 := StrToInt(Copy(TSonuc.Text,Pos('/',TSonuc.Text)+1, Length(TSonuc.Text)));


    islemSonucu := sayi1 / sayi2;

    TSonuc.Text := FloatToStr(islemSonucu);
    MPast.Lines.Append(FloatToStr(islemSonucu));
  end
  else if  AnsiContainsText(TSonuc.Text, '*') then
  begin

    //IdStrings.SplitString(TSonuc.Text,'*',sayi1,sayi2);

    //vSayi1 := StrToFloatDef(VarToStrDef(sayi1,'0'),0);
    //vSayi2 := StrToFloatDef(VarToStrDef(sayi2,'0'),0);

    //islemSonucu := vSayi1  * vSayi2;

    sayi1 := StrToInt(Copy(TSonuc.Text,1,Pos('*',TSonuc.Text) - 1));
    sayi2 := StrToInt(Copy(TSonuc.Text,Pos('*',TSonuc.Text)+1, Length(TSonuc.Text)));


    islemSonucu := sayi1 * sayi2;

    TSonuc.Text := FloatToStr(islemSonucu);
    MPast.Lines.Append(FloatToStr(islemSonucu));
  end;
end;

procedure TForm1.BMultClick(Sender: TObject);
begin
  BEqualClick(Self);
  TSonuc.Text := TSonuc.Text + '*';

end;

procedure TForm1.BExtClick(Sender: TObject);
begin
 BEqualClick(Self);
 TSonuc.Text := TSonuc.Text + '-';
end;

procedure TForm1.BDivideClick(Sender: TObject);
begin
BEqualClick(Self);
TSonuc.Text := TSonuc.Text + '/';
end;

procedure TForm1.BPastClick(Sender: TObject);
begin

  if MPast.Visible = True then
  begin
    MPast.Visible := False;
  end
  else
  begin
    MPast.Visible := True;
  end;


end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  MPast.Lines.Clear();
end;

end.
