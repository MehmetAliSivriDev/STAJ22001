unit PanelUnit;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons,Dialogs, ExtCtrls, xpPanel, AgBlend, Mylabel, DrLabel,
  LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDGraphicControl,
  LMDBaseImage, LMDCustomNImage, LMDNImage;

type
  TPanelDlg = class(TForm)
    xpPanel1: TxpPanel;
    Timer1: TTimer;
    AgBlend1: TAgBlend;
    Timer2: TTimer;
    Bevel1: TBevel;
    Label1: TmyLabel3d;
    Label2: TmyLabel3d;
    Image: TLMDNImage;
    MLabelBlink: TDRLabel;
    SpeedButton1: TSpeedButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PanelDlg: TPanelDlg;

implementation

uses Unit1;

{$R *.DFM}


function GetWeekOfYear(Datum:TDateTime):byte;
var
  AYear,dummy :word;
  First       :TDateTime;
begin
  DecodeDate(Datum+((8-DayOfWeek(Datum)) mod 7)-3, AYear, dummy, dummy);
  First :=EncodeDate(AYear, 1, 1);
  Result:=(trunc(Datum-First-3+(DayOfWeek(First)+1) mod 7) div 7)+1;
end;


procedure TPanelDlg.Timer1Timer(Sender: TObject);
begin
while AgBlend1.Opacity<195 do begin
  AgBlend1.Opacity := AgBlend1.Opacity + 5;
  AgBlend1.Refresh;
end;
AgBlend1.Opacity:=195;
  AgBlend1.Refresh;
Timer1.Enabled:=False;
Timer2.Enabled:=True;
end;

// AYKAN
procedure TPanelDlg.Timer2Timer(Sender: TObject);
begin
Timer2.Interval:=10;
if AgBlend1.Opacity>2 then begin
  AgBlend1.Opacity := AgBlend1.Opacity - 5;
  AgBlend1.Refresh;
  end
else begin
Timer2.Enabled:=False;
Form1.PanelDlgBak:=False;
MLabelBlink.Blink:=blNone;

end;
end;

procedure TPanelDlg.SpeedButton1Click(Sender: TObject);
begin
PanelDlg.Hide;

end;

end.
