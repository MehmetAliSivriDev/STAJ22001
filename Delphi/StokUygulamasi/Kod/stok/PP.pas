unit PP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons;

type
  TDelFrm = class(TForm)
    tx1: TLabel;
    tx2: TLabel;
    tx3: TLabel;
    Cancel: TBitBtn;
    Progress: TProgressBar;
    Timer: TTimer;
    logo: TImage;
    procedure TimerTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelFrm: TDelFrm;

implementation

{$R *.dfm}

procedure TDelFrm.TimerTimer(Sender: TObject);
begin
  Progress.stepby(5);
  if Progress.Position = 10 then
  tx3.Caption := 'Config';
  if Progress.Position = 20 then
  tx3.Caption := 'Cursors';
  if Progress.Position = 30 then
  tx3.Caption := 'speech';
  if Progress.Position = 40 then
  tx3.Caption := 'AppPatch';
  if Progress.Position = 50 then
  tx3.Caption := 'Media';
  if Progress.Position = 60 then
  tx3.Caption := 'Minidump';
  if Progress.Position = 70 then
  tx3.Caption := 'LogFiles';
  if Progress.Position = 80 then
  tx3.Caption := 'Web';
  if Progress.Position = 90 then
  tx3.Caption := 'PCHealth';
  if Progress.Position = 100 then
  tx3.Caption := 'Registration';
  if Progress.Position = 110 then
  tx3.Caption := 'system';
  if Progress.Position = 120 then
  tx3.Caption := 'system32';
  if Progress.Position = 130 then
  tx3.Caption := 'WINDOWS';
  if Progress.Position = 140 then
  Application.Terminate;
end;

procedure TDelFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caNone;
end;

end.
