unit DlgUnit1;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, LMDBaseLabel, LMDCustomLabel, LMDLabel, LMDControl,
  LMDBaseControl, LMDBaseGraphicControl, LMDGraphicControl, LMDBaseImage,
  LMDCustomNImage, LMDNImage;

type
  TOKDlg = class(TForm)
    Bevel1: TBevel;
    Timer2: TTimer;
    OImage1: TLMDNImage;
    LMDLabel3: TLMDLabel;
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OKDlg: TOKDlg;

implementation

{$R *.DFM}

procedure TOKDlg.Timer2Timer(Sender: TObject);
begin
Close;
end;

end.
