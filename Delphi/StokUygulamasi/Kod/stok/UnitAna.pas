unit UnitAna;

interface

uses
  WinTypes, WinProcs, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mylabel, jpeg, ExeInfo, dxGDIPlusClasses, LMDPNGImage,
  Dialog_Pey;
type
  TAnaForm = class(TForm)
    Panel1: TPanel;
    myLabel3d1: TmyLabel3d;
    ExeInfo1: TExeInfo;
    image_Close: TImage;
    image_2: TImage;
    image_4: TImage;
    imageHelp: TImage;
    image_Kamera: TImage;
    image_Resim: TImage;
    img_Pdf: TImage;
    img_Excel: TImage;
    image_Save: TImage;
    image_printAx: TImage;
    image_printAx1: TImage;
    image_printAx2: TImage;
    image_printAx3: TImage;
    image_Ok: TImage;
    image_Vaz: TImage;
    image_Aktar: TImage;
    image_Dosya: TImage;
    image_Ac: TImage;
    image_Mus: TImage;
    img2: TImage;
    image_Zuh: TImage;
    image_TL: TImage;
    image_Euro: TImage;
    image_Dolar: TImage;
    image_Print: TImage;
    img_Print: TImage;
    image_BarYes: TImage;
    image_Barcod: TImage;
    image_Pdf: TImage;
    image_Excel: TImage;
    image_Html: TImage;
    image_hata: TImage;
    image_DokTamam: TImage;
    image_HataTanim: TImage;
    image_5: TImage;
    image_T1: TImage;
    img15: TImage;
    image_Duz: TImage;
    PrintBarcod_B: TImage;
    img_Print1: TImage;
    image_Suz: TImage;
    img13: TImage;
    image_Bar: TImage;
    imgkeyboard: TImage;
    image_Save1: TImage;
    imageK_Kapat: TImage;
    image_Barcod_B: TImage;
    image_Bul: TImage;
    image_printBarNo: TImage;
    img_Html: TImage;
    img5: TImage;
    image_print_Rap: TImage;
    myLabel3d2: TmyLabel3d;
    myLabel3d3: TmyLabel3d;
    Image_stokG: TImage;
    Image_stokC: TImage;
    Image_Zebra: TImage;
    Image_urun: TImage;
    Image_grup: TImage;
    Image_categry: TImage;
    Image_raf: TImage;
    Image_kutuYaz: TImage;
    Image_Down: TImage;
    Image_Up: TImage;
    Pey_Dialog1: TPey_Dialog;
    ImageSil_k: TImage;
    ImageSil: TImage;
    image_search: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    PanelDlgBak:Boolean;
    { Public declarations }
  end;

var
  AnaForm: TAnaForm;


implementation

{$R *.DFM}

procedure TAnaForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
   start : longint ;
begin
     start := GetTickCount ;
     while GetTickCount < start + 1100 do ;
     Action := caFree ;
end;

procedure TAnaForm.FormShow(Sender: TObject);
begin
    myLabel3d1.Caption:=ExeInfo1.ProductName+' Ver: '+ExeInfo1.FileVersion;

end;

end.
