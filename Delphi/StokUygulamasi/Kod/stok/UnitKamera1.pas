unit UnitKamera1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxGraphics, cxControls, cxLookAndFeels, peykan_Unit,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxCameraControl,
  Buttons, dxSkinsDefaultPainters;

type
  TFormKamera1 = class(TForm)
    ComboBox1: TComboBox;
    dxCameraControl1: TdxCameraControl;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  FoNo:Byte;
  end;

var
  FormKamera1: TFormKamera1;

implementation

uses Unit_UrunTanim;

{$R *.dfm}

type
  TdxCameraManagerAccess = class (TdxCameraManager);

procedure TFormKamera1.FormCreate(Sender: TObject);
var
  ADevices: TStrings;
begin
  ADevices := TdxCameraManagerAccess(dxCameraManager).Devices;
  ComboBox1.Items := ADevices;
  ComboBox1.ItemIndex := 0;
end;

procedure TFormKamera1.ComboBox1Change(Sender: TObject);
begin
 dxCameraControl1.DeviceIndex := ComboBox1.ItemIndex;
end;

procedure TFormKamera1.SpeedButton1Click(Sender: TObject);
begin
  dxCameraControl1.Capture;
  if FoNo=1 then
  begin
    Form_Urun_Tanim.Image1.Picture.Assign(dxCameraControl1.CapturedBitmap);
    delay(200);


  end else if FoNo=2 then
  begin
//    dxCameraControl1.CapturedBitmap.Monochrome:=True;
//    DUrunKart.Image1.Picture.Assign(dxCameraControl1.CapturedBitmap);
//    DUrunKart.Image1.Picture.SaveToFile('D:\23.jpg');
//    delay(200);

  end;
  close;
end;

procedure TFormKamera1.SpeedButton2Click(Sender: TObject);
begin
close;
end;

end.
