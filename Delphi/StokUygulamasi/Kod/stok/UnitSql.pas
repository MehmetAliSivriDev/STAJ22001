unit UnitSql;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LMDPNGImage, ExtCtrls, StdCtrls, Mylabel;

type
  TFormSql = class(TForm)
    Panel1: TPanel;
    Image_Rap2: TImage;
    myLabel3d1: TmyLabel3d;
    myLabel3d2: TmyLabel3d;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSql: TFormSql;

implementation

{$R *.dfm}

procedure TFormSql.FormShow(Sender: TObject);
begin
Application.ProcessMessages;
end;

end.
