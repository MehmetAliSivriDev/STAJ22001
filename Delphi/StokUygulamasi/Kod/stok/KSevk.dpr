program KSevk;

uses
  Forms,
  Windows,
  Dialogs,
  Controls,
  SysUtils,
  Peykan_Unit,
  MainUnit in 'MainUnit.pas' {FormMain},
  UnitAna in 'UnitAna.pas' {AnaForm},
  reg in 'reg.pas' {RegDlg},
  DlgUnit1 in 'DlgUnit1.pas' {OKDlg},
  UnitSql in 'UnitSql.pas' {FormSql},
  PanelUnit in 'PanelUnit.pas' {PanelDlg},
  PP in 'PP.pas' {DelFrm},
  Unit1 in 'Unit1.pas' {Form1},
  Unit_Admin in 'Unit_Admin.pas' {Form_Admin},
  UnitGrupTanim in 'UnitGrupTanim.pas' {Form_GrupTanim},
  UnitKatTanim in 'UnitKatTanim.pas' {Form_KategoriT},
  UnitRafTanim in 'UnitRafTanim.pas' {Form_RafTanim},
  Unit_UrunTanim in 'Unit_UrunTanim.pas' {Form_Urun_Tanim},
  UnitKamera1 in 'UnitKamera1.pas' {FormKamera1},
  DUrunUnit in 'DUrunUnit.pas' {DUrunKart},
  UnitStokH in 'UnitStokH.pas' {Form_StokH},
  UnitStokRapor in 'UnitStokRapor.pas' {Form_Stok_R},
  UnitStokHareket in 'UnitStokHareket.pas' {Form_Stok_H},
  Unit_Etiketleme in 'Unit_Etiketleme.pas' {Form_Etiket},
  EUrun_Unit in 'EUrun_Unit.pas' {FormEUrun},
  Unit_Ribon in 'Unit_Ribon.pas' {FormRibon},
  Unit_Kukaici in 'Unit_Kukaici.pas' {FormKukaici},
  Unit_EKutu in 'Unit_EKutu.pas' {FormEKutu},
  Unit_UrunArama in 'Unit_UrunArama.pas' {FormUrunArama},
  Unit_SatisEtiketi in 'Unit_SatisEtiketi.pas' {FormSatisEtiketi},
  Unit_RafBarkod in 'Unit_RafBarkod.pas' {FormRafBarkod};

{$R *.res}

begin
// FormSql := TFormSql.Create(Application) ;
//    Screen.Cursor:=crHourGlass;
//    FormSql.Show ;
//    FormSql.Update ;

if ExeAdi<>'KSevk' then
    begin
      ShowMessage('Program Degismis!');
      Halt(0);
    end;

    CreateMutex(nil,FALSE,'KSevk');
    if GetLastError = ERROR_ALREADY_EXISTS then
    begin
      ShowMessage('Program Çalismakta.');
      Halt(0);
    end;
    
    AnaForm := TAnaForm.Create(Application) ;
    Screen.Cursor:=crHourGlass;
    AnaForm.Show ;
    AnaForm.Update;

    Form1 := TForm1.Create(Application) ;
    Form1.Show ;
    Form1.Update ;
    Application.Initialize;
    Screen.Cursor:=crHourGlass;
    Form1.Update ;

    Application.Initialize;
    Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TPanelDlg, PanelDlg);
  Application.CreateForm(TDelFrm, DelFrm);
  Screen.Cursor:=crDefault;
    Application.Run;

end.
