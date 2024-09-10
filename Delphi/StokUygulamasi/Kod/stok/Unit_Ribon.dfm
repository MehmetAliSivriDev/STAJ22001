object FormRibon: TFormRibon
  Left = 1325
  Top = 139
  BorderStyle = bsDialog
  Caption = 'FormRibon'
  ClientHeight = 501
  ClientWidth = 433
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 435
    Width = 433
    Height = 32
    Align = alBottom
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    TabOrder = 0
    Visible = False
  end
  object MemoYaz: TMemo
    Left = 0
    Top = 467
    Width = 433
    Height = 34
    Align = alBottom
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    TabOrder = 1
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 433
    Height = 435
    Align = alClient
    Color = 4210752
    TabOrder = 2
    object myLabel3d1: TmyLabel3d
      Left = 29
      Top = 9
      Width = 68
      Height = 20
      Alignment = taRightJustify
      Caption = 'Barkod :'
      Color = clWindow
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      About = 
        'MyLabel3d  PEYKAN YAZILIM ve Otomasyon  Peykansoft (www.peykan.c' +
        'om.tr   Email : info@peykan.com.tr)'
      AShadeLTSet = False
    end
    object myLabel_Barkod: TmyLabel3d
      Left = 100
      Top = 6
      Width = 6
      Height = 22
      Caption = '-'
      Color = clWindow
      Font.Charset = TURKISH_CHARSET
      Font.Color = clYellow
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      About = 
        'MyLabel3d  PEYKAN YAZILIM ve Otomasyon  Peykansoft (www.peykan.c' +
        'om.tr   Email : info@peykan.com.tr)'
      AStyle3D = Raised3d
      AShadeRightBottom = clOlive
      AShadeLeftTop = clBlack
      AShadeLTSet = False
    end
    object myLabel3d2: TmyLabel3d
      Left = 16
      Top = 39
      Width = 81
      Height = 20
      Alignment = taRightJustify
      Caption = #220'r'#252'n Ad'#305' :'
      Color = clWindow
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      About = 
        'MyLabel3d  PEYKAN YAZILIM ve Otomasyon  Peykansoft (www.peykan.c' +
        'om.tr   Email : info@peykan.com.tr)'
      AShadeLTSet = False
    end
    object myLabel_Urun: TmyLabel3d
      Left = 100
      Top = 34
      Width = 6
      Height = 22
      Caption = '-'
      Color = clWindow
      Font.Charset = TURKISH_CHARSET
      Font.Color = clYellow
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      About = 
        'MyLabel3d  PEYKAN YAZILIM ve Otomasyon  Peykansoft (www.peykan.c' +
        'om.tr   Email : info@peykan.com.tr)'
      AStyle3D = Raised3d
      AShadeRightBottom = clOlive
      AShadeLeftTop = clBlack
      AShadeLTSet = False
    end
    object myLabel3d3: TmyLabel3d
      Left = 46
      Top = 67
      Width = 51
      Height = 20
      Alignment = taRightJustify
      Caption = 'Grup :'
      Color = clWindow
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      About = 
        'MyLabel3d  PEYKAN YAZILIM ve Otomasyon  Peykansoft (www.peykan.c' +
        'om.tr   Email : info@peykan.com.tr)'
      AShadeLTSet = False
    end
    object myLabel_Grup: TmyLabel3d
      Left = 100
      Top = 63
      Width = 6
      Height = 22
      Caption = '-'
      Color = clWindow
      Font.Charset = TURKISH_CHARSET
      Font.Color = clYellow
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      About = 
        'MyLabel3d  PEYKAN YAZILIM ve Otomasyon  Peykansoft (www.peykan.c' +
        'om.tr   Email : info@peykan.com.tr)'
      AStyle3D = Raised3d
      AShadeRightBottom = clOlive
      AShadeLeftTop = clBlack
      AShadeLTSet = False
    end
    object myLabel3d4: TmyLabel3d
      Left = 19
      Top = 93
      Width = 78
      Height = 20
      Alignment = taRightJustify
      Caption = 'Kategori :'
      Color = clWindow
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      About = 
        'MyLabel3d  PEYKAN YAZILIM ve Otomasyon  Peykansoft (www.peykan.c' +
        'om.tr   Email : info@peykan.com.tr)'
      AShadeLTSet = False
    end
    object myLabel_Kategori: TmyLabel3d
      Left = 100
      Top = 91
      Width = 6
      Height = 22
      Caption = '-'
      Color = clWindow
      Font.Charset = TURKISH_CHARSET
      Font.Color = clYellow
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      About = 
        'MyLabel3d  PEYKAN YAZILIM ve Otomasyon  Peykansoft (www.peykan.c' +
        'om.tr   Email : info@peykan.com.tr)'
      AStyle3D = Raised3d
      AShadeRightBottom = clOlive
      AShadeLeftTop = clBlack
      AShadeLTSet = False
    end
    object myLabel3d9: TmyLabel3d
      Left = 57
      Top = 121
      Width = 40
      Height = 20
      Alignment = taRightJustify
      Caption = 'Raf :'
      Color = clWindow
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      About = 
        'MyLabel3d  PEYKAN YAZILIM ve Otomasyon  Peykansoft (www.peykan.c' +
        'om.tr   Email : info@peykan.com.tr)'
      AShadeLTSet = False
    end
    object myLabel_Raf: TmyLabel3d
      Left = 105
      Top = 119
      Width = 6
      Height = 22
      Caption = '-'
      Color = clWindow
      Font.Charset = TURKISH_CHARSET
      Font.Color = clYellow
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      About = 
        'MyLabel3d  PEYKAN YAZILIM ve Otomasyon  Peykansoft (www.peykan.c' +
        'om.tr   Email : info@peykan.com.tr)'
      AStyle3D = Raised3d
      AShadeRightBottom = clOlive
      AShadeLeftTop = clBlack
      AShadeLTSet = False
    end
    object myLabel3d5: TmyLabel3d
      Left = 21
      Top = 159
      Width = 110
      Height = 40
      Alignment = taRightJustify
      Caption = 'Bir Kukadaki'#13#10'Etiket Say'#305's'#305' :'
      Color = clWindow
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      About = 
        'MyLabel3d  PEYKAN YAZILIM ve Otomasyon  Peykansoft (www.peykan.c' +
        'om.tr   Email : info@peykan.com.tr)'
      AShadeLTSet = False
    end
    object myLabel3d7: TmyLabel3d
      Left = 84
      Top = 219
      Width = 44
      Height = 20
      Alignment = taRightJustify
      Caption = 'Part :'
      Color = clWindow
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      About = 
        'MyLabel3d  PEYKAN YAZILIM ve Otomasyon  Peykansoft (www.peykan.c' +
        'om.tr   Email : info@peykan.com.tr)'
      AShadeLTSet = False
    end
    object myLabel3d8: TmyLabel3d
      Left = 89
      Top = 266
      Width = 37
      Height = 20
      Alignment = taRightJustify
      Caption = 'Lot :'
      Color = clWindow
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      About = 
        'MyLabel3d  PEYKAN YAZILIM ve Otomasyon  Peykansoft (www.peykan.c' +
        'om.tr   Email : info@peykan.com.tr)'
      AShadeLTSet = False
    end
    object myLabel3d6: TmyLabel3d
      Left = 28
      Top = 303
      Width = 98
      Height = 20
      Alignment = taRightJustify
      Caption = #199#305'kt'#305' Say'#305's'#305' :'
      Color = clWindow
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      About = 
        'MyLabel3d  PEYKAN YAZILIM ve Otomasyon  Peykansoft (www.peykan.c' +
        'om.tr   Email : info@peykan.com.tr)'
      AShadeLTSet = False
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 230
      Top = 354
      Width = 123
      Height = 25
      Cursor = crHandPoint
      Align = alCustom
      AutoSize = True
      Caption = '&Barkod '#199#305'kart'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = AdvGlowButton1Click
      Appearance.BorderColor = clBlack
      Appearance.BorderColorHot = clRed
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.BorderColorFocused = clSilver
      Appearance.Color = clGray
      Appearance.ColorTo = 15000804
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = clGray
      Appearance.ColorMirrorTo = 15000804
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = clGray
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTopAdjusted
    end
    object Edit1: TEdit
      Left = 144
      Top = 165
      Width = 234
      Height = 30
      BevelKind = bkSoft
      BevelOuter = bvSpace
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 144
      Top = 214
      Width = 233
      Height = 30
      BevelKind = bkSoft
      BevelOuter = bvSpace
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 144
      Top = 256
      Width = 234
      Height = 30
      BevelKind = bkSoft
      BevelOuter = bvSpace
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 143
      Top = 300
      Width = 234
      Height = 30
      BevelKind = bkSoft
      BevelOuter = bvSpace
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
  end
end
