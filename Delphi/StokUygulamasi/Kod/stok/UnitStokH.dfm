object Form_StokH: TForm_StokH
  Left = 344
  Top = 100
  Width = 1378
  Height = 798
  Caption = 'STOK HAREKET'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvSplitter2: TAdvSplitter
    Left = 500
    Top = 0
    Width = 6
    Height = 759
    Appearance.BorderColor = clNone
    Appearance.BorderColorHot = clNone
    Appearance.Color = clWhite
    Appearance.ColorTo = clSilver
    Appearance.ColorHot = clWhite
    Appearance.ColorHotTo = clGray
    GripStyle = sgDots
  end
  object Panel1: TPanel
    Left = 1274
    Top = 0
    Width = 88
    Height = 759
    Align = alRight
    Color = clSilver
    TabOrder = 2
    object AdvGlowButton2: TAdvGlowButton
      Left = 1
      Top = 19
      Width = 86
      Height = 18
      Cursor = crHandPoint
      Align = alTop
      AutoSize = True
      Caption = 'RAF &Barkod'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = AdvGlowButton2Click
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
    object AdvGlowHelp: TAdvGlowButton
      Left = 1
      Top = 722
      Width = 86
      Height = 18
      Cursor = crHandPoint
      Align = alBottom
      AutoSize = True
      Caption = '&YARDIM'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 2
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
    object AdvGlowButton1: TAdvGlowButton
      Left = 1
      Top = 740
      Width = 86
      Height = 18
      Cursor = crHandPoint
      Align = alBottom
      AutoSize = True
      Caption = '&KAPAT'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 3
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
    object AdvGlowButton3: TAdvGlowButton
      Left = 1
      Top = 1
      Width = 86
      Height = 18
      Cursor = crHandPoint
      Align = alTop
      AutoSize = True
      Caption = '&KAYIT'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = AdvGlowButton3Click
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
    object AdvGlowButton4: TAdvGlowButton
      Left = 1
      Top = 37
      Width = 86
      Height = 18
      Cursor = crHandPoint
      Align = alTop
      AutoSize = True
      Caption = #220'r'#252'n &Barkod'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = AdvGlowButton4Click
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
    object AdvGlowButton5: TAdvGlowButton
      Left = 1
      Top = 55
      Width = 86
      Height = 18
      Cursor = crHandPoint
      Align = alTop
      AutoSize = True
      Caption = 'Ribon &Barkod'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = AdvGlowButton5Click
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
    object AdvGlowButton6: TAdvGlowButton
      Left = 1
      Top = 73
      Width = 86
      Height = 18
      Cursor = crHandPoint
      Align = alTop
      AutoSize = True
      Caption = 'Kuka '#304#231'i &Barkod'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = AdvGlowButton6Click
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
    object AdvGlowButton7: TAdvGlowButton
      Left = 1
      Top = 91
      Width = 86
      Height = 18
      Cursor = crHandPoint
      Align = alTop
      AutoSize = True
      Caption = 'Kutu  &Barkod'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = AdvGlowButton7Click
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
  end
  object Panel_Po: TPanel
    Left = 506
    Top = 0
    Width = 768
    Height = 759
    Align = alClient
    Color = 4210752
    TabOrder = 1
    object Label_Hata: TDRLabel
      Left = 1
      Top = 1
      Width = 766
      Height = 32
      Align = alTop
      Alignment = taCenter
      Caption = 'Label_Hata'
      Color = clFuchsia
      Font.Charset = TURKISH_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Visible = False
      HiColor = clBlue
      LoColor = clNavy
      Border = boNone
      Ctl3D = True
      BlinkInterval = 300
      Blink = blNone
      ShadowColor = clMaroon
      Deep = 1
    end
    object AdvSplitter1: TAdvSplitter
      Left = 1
      Top = 673
      Width = 766
      Height = 6
      Cursor = crVSplit
      Align = alTop
      Appearance.BorderColor = clNone
      Appearance.BorderColorHot = clNone
      Appearance.Color = clWhite
      Appearance.ColorTo = clSilver
      Appearance.ColorHot = clWhite
      Appearance.ColorHotTo = clGray
      GripStyle = sgDots
    end
    object Panel2: TPanel
      Left = 1
      Top = 348
      Width = 766
      Height = 325
      Align = alTop
      Color = 4210752
      TabOrder = 0
      object myLabel3d6: TmyLabel3d
        Left = 61
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
      object myLabel3d11: TmyLabel3d
        Left = 35
        Top = 256
        Width = 83
        Height = 20
        Alignment = taRightJustify
        Caption = 'Ac'#305'klama :'
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
      object myLabel3d10: TmyLabel3d
        Left = 8
        Top = 180
        Width = 126
        Height = 20
        Alignment = taRightJustify
        Caption = 'T. Giri'#351' Miktar'#305' :'
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
      object myLabel3d12: TmyLabel3d
        Left = 30
        Top = 223
        Width = 136
        Height = 20
        Alignment = taRightJustify
        Caption = 'Hangi Proje i'#231'in :'
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
      object myLabel3d13: TmyLabel3d
        Left = 48
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
      object myLabel3d14: TmyLabel3d
        Left = 78
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
      object myLabel3d15: TmyLabel3d
        Left = 51
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
      object myLabel3d2: TmyLabel3d
        Left = 89
        Top = 123
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
      object myLabel_Urun: TmyLabel3d
        Left = 146
        Top = 34
        Width = 7
        Height = 24
        Caption = '-'
        Color = clWindow
        Font.Charset = TURKISH_CHARSET
        Font.Color = clYellow
        Font.Height = -21
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
      object myLabel_Grup: TmyLabel3d
        Left = 146
        Top = 63
        Width = 7
        Height = 24
        Caption = '-'
        Color = clWindow
        Font.Charset = TURKISH_CHARSET
        Font.Color = clYellow
        Font.Height = -21
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
      object myLabel_Kategori: TmyLabel3d
        Left = 146
        Top = 91
        Width = 7
        Height = 24
        Caption = '-'
        Color = clWindow
        Font.Charset = TURKISH_CHARSET
        Font.Color = clYellow
        Font.Height = -21
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
      object myLabel_Barkod: TmyLabel3d
        Left = 146
        Top = 6
        Width = 7
        Height = 24
        Caption = '-'
        Color = clWindow
        Font.Charset = TURKISH_CHARSET
        Font.Color = clYellow
        Font.Height = -21
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
      object myLabel3d16: TmyLabel3d
        Left = 167
        Top = 152
        Width = 83
        Height = 16
        Alignment = taRightJustify
        Caption = 'Raf Miktar'#305' :'
        Color = clWindow
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWhite
        Font.Height = -13
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
      object Label_Raf_Mik: TmyLabel3d
        Left = 254
        Top = 152
        Width = 6
        Height = 16
        Caption = '-'
        Color = clWindow
        Font.Charset = TURKISH_CHARSET
        Font.Color = clRed
        Font.Height = -13
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
      object Panel3: TPanel
        Left = 396
        Top = 108
        Width = 315
        Height = 91
        BevelOuter = bvNone
        ParentBackground = False
        ParentColor = True
        TabOrder = 7
        Visible = False
        object myLabel3d7: TmyLabel3d
          Left = 11
          Top = 9
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
        object myLabel3d9: TmyLabel3d
          Left = -37
          Top = 65
          Width = 201
          Height = 20
          Alignment = taRightJustify
          Caption = 'Ekstra Olan Kuka Adedi :'
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
        object Edit4: TEdit
          Left = 135
          Top = 11
          Width = 113
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
          TabOrder = 0
          OnChange = Edit4Change
        end
        object Edit5: TEdit
          Left = 166
          Top = 59
          Width = 67
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
          Text = '0'
        end
      end
      object Memo2: TMemo
        Left = -5
        Top = 319
        Width = 810
        Height = 293
        Lines.Strings = (
          'Memo2')
        TabOrder = 4
        Visible = False
      end
      object Memo3: TMemo
        Left = -10
        Top = 319
        Width = 823
        Height = 267
        Lines.Strings = (
          'Memo3')
        TabOrder = 6
        Visible = False
      end
      object ComboBox_Raf: TAdvOfficeComboBox
        Left = 142
        Top = 119
        Width = 157
        Height = 28
        TabStop = False
        Button.Color = clGray
        Button.ColorTo = clSilver
        Button.ColorHot = 14483455
        Button.ColorHotTo = 6013175
        Button.ColorDown = 557032
        Button.ColorDownTo = 8182519
        Button.Width = 30
        DisplayRecentSelection = False
        DropDownCount = 12
        BorderColor = clNavy
        BorderHotColor = clBlack
        SelectionColor = clSilver
        SelectionColorTo = clWhite
        SelectionTextColor = clMaroon
        Version = '1.5.3.0'
        OnChange = ComboBox_RafChange
        ItemIndex = -1
        ItemHeight = 26
        TabOrder = 1
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Style = csDropDownList
      end
      object Edit1: TEdit
        Left = 553
        Top = 253
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
        Visible = False
      end
      object Edit2: TEdit
        Left = 147
        Top = 173
        Width = 113
        Height = 33
        BevelKind = bkSoft
        BevelOuter = bvSpace
        Color = clMoneyGreen
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        OnChange = Edit2Change
      end
      object Edit_Aciklama: TEdit
        Left = 122
        Top = 257
        Width = 380
        Height = 25
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = False
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
      end
      object Edit3: TEdit
        Left = 174
        Top = 224
        Width = 326
        Height = 25
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = False
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 98
      Width = 766
      Height = 250
      Align = alTop
      Color = 4210752
      TabOrder = 1
      object bvl1: TBevel
        Left = 144
        Top = -2
        Width = 10
        Height = 300
        Shape = bsLeftLine
      end
      object myLabel3d1: TmyLabel3d
        Left = 163
        Top = 58
        Width = 102
        Height = 20
        Alignment = taRightJustify
        Caption = 'Al'#305'nd'#305'g'#305' Yer :'
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
      object VrBitmapRadioButton4: TVrBitmapRadioButton
        Left = 151
        Top = 6
        Width = 120
        Height = 39
        EnabledGlyphIndex = 0
        DisabledGlyphIndex = 0
        BitmapList = Form1.VrBitmapList1
        FocusColor = 4210752
        OnChange = VrBitmapRadioButton4Change
        Caption = 'Firma'
        Color = 4210752
        Font.Charset = TURKISH_CHARSET
        Font.Color = clLime
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ParentColor = False
        TabOrder = 0
      end
      object VrBitmapRadioButton5: TVrBitmapRadioButton
        Left = 271
        Top = 6
        Width = 120
        Height = 39
        EnabledGlyphIndex = 0
        DisabledGlyphIndex = 0
        BitmapList = Form1.VrBitmapList1
        FocusColor = 4210752
        OnChange = VrBitmapRadioButton4Change
        Caption = 'Raf'
        Color = 4210752
        Font.Charset = TURKISH_CHARSET
        Font.Color = clLime
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ParentColor = False
        TabOrder = 1
      end
      object VrBitmapRadioButton6: TVrBitmapRadioButton
        Left = 386
        Top = 6
        Width = 154
        Height = 40
        EnabledGlyphIndex = 0
        DisabledGlyphIndex = 0
        BitmapList = Form1.VrBitmapList1
        FocusColor = 4210752
        OnChange = VrBitmapRadioButton4Change
        Caption = #304'ade'
        Color = 4210752
        Font.Charset = TURKISH_CHARSET
        Font.Color = clLime
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ParentColor = False
        TabOrder = 2
      end
      object VrBitmapRadioButton7: TVrBitmapRadioButton
        Left = 542
        Top = 6
        Width = 157
        Height = 39
        EnabledGlyphIndex = 0
        DisabledGlyphIndex = 0
        BitmapList = Form1.VrBitmapList1
        Checked = True
        FocusColor = 4210752
        OnChange = VrBitmapRadioButton4Change
        Caption = 'Say'#305'm'
        Color = 4210752
        Font.Charset = TURKISH_CHARSET
        Font.Color = clLime
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ParentColor = False
        TabOrder = 3
        TabStop = True
      end
      object ComboBox_Fir: TAdvOfficeComboBox
        Left = 272
        Top = 52
        Width = 319
        Height = 30
        Button.Color = clGray
        Button.ColorTo = clSilver
        Button.ColorHot = 14483455
        Button.ColorHotTo = 6013175
        Button.ColorDown = 557032
        Button.ColorDownTo = 8182519
        Button.Width = 30
        DisplayRecentSelection = False
        BorderColor = clNavy
        BorderHotColor = clBlack
        SelectionColor = clSilver
        SelectionColorTo = clWhite
        SelectionTextColor = clMaroon
        Version = '1.5.3.0'
        Items.Strings = (
          'METU 1'
          'METU 2'
          'METU 3'
          'METU 4'
          'ELMA')
        ItemIndex = -1
        ItemHeight = 30
        TabOrder = 4
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object Panel8: TPanel
        Left = -10
        Top = 2
        Width = 153
        Height = 295
        BevelOuter = bvNone
        ParentBackground = False
        ParentColor = True
        TabOrder = 5
        object RadioButtonCikis: TVrBitmapRadioButton
          Left = 20
          Top = 90
          Width = 124
          Height = 39
          EnabledGlyphIndex = 0
          DisabledGlyphIndex = 0
          BitmapList = Form1.VrBitmapList1
          FocusColor = 4210752
          OnChange = RadioButtonCikisChange
          Caption = 'C'#305'k'#305#351
          Color = 4210752
          Font.Charset = TURKISH_CHARSET
          Font.Color = clLime
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          ParentColor = False
          TabOrder = 0
        end
        object RadioButtonGiris: TVrBitmapRadioButton
          Left = 20
          Top = 15
          Width = 126
          Height = 39
          EnabledGlyphIndex = 0
          DisabledGlyphIndex = 0
          BitmapList = Form1.VrBitmapList1
          Checked = True
          FocusColor = 4210752
          OnChange = RadioButtonGirisChange
          Caption = 'Giri'#351
          Color = 4210752
          Font.Charset = TURKISH_CHARSET
          Font.Color = clLime
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          ParentColor = False
          TabOrder = 1
          TabStop = True
        end
      end
      object Panel12: TPanel
        Left = 149
        Top = 82
        Width = 607
        Height = 174
        BevelOuter = bvNone
        Color = 4210752
        TabOrder = 6
        object Panel_Fiyat: TPanel
          Left = 0
          Top = 0
          Width = 607
          Height = 45
          Align = alTop
          BevelOuter = bvNone
          Color = 4210752
          TabOrder = 0
          object myLabel3d3: TmyLabel3d
            Left = 17
            Top = 11
            Width = 133
            Height = 20
            Alignment = taRightJustify
            Caption = 'Birim Al'#305#351' Fiyat'#305' :'
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
          object LMDEdit1: TEditN
            Left = 156
            Top = 9
            Width = 121
            Height = 25
            AutoSize = False
            Color = clSilver
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Text = '0'
            About = 'Peykansoft ( Email : info@peykansoft.com)'
            ColorOnFocus = clWhite
            ColorOnNotFocus = clSilver
            EditType = etFloat
            EditKeyByTab = #9
            EditAlign = etAlignNone
            EditLengthAlign = 0
            ValueInteger = 0
            EditPrecision = 0
            FirstCharUpper = False
            WidthOnFocus = 0
          end
          object AdvGlowButton_D: TAdvGlowButton
            Left = 286
            Top = 8
            Width = 32
            Height = 32
            Cursor = crHandPoint
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 1
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
            GroupIndex = 1
            Layout = blGlyphLeft
          end
          object AdvGlowButton_E: TAdvGlowButton
            Left = 326
            Top = 8
            Width = 32
            Height = 32
            Cursor = crHandPoint
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 2
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
            GroupIndex = 1
            Layout = blGlyphLeft
          end
          object AdvGlowButton_T: TAdvGlowButton
            Left = 366
            Top = 8
            Width = 32
            Height = 32
            Cursor = crHandPoint
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 3
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
            Down = True
            GroupIndex = 1
            Layout = blGlyphLeft
          end
        end
        object PanelNoBilgileri: TPanel
          Left = 0
          Top = 45
          Width = 607
          Height = 125
          Align = alTop
          BevelOuter = bvNone
          Color = 4210752
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 1
          Visible = False
          object myLabel3d18: TmyLabel3d
            Left = 10
            Top = 14
            Width = 91
            Height = 20
            Alignment = taRightJustify
            Caption = 'Fatura No :'
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
          object myLabel3d19: TmyLabel3d
            Left = 10
            Top = 47
            Width = 93
            Height = 20
            Alignment = taRightJustify
            Caption = 'Sipari'#351' No :'
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
          object myLabel3d20: TmyLabel3d
            Left = 22
            Top = 81
            Width = 81
            Height = 20
            Alignment = taRightJustify
            Caption = 'Teklif No :'
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
          object EFaturaNo: TEdit
            Left = 115
            Top = 15
            Width = 257
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object ESiparisNo: TEdit
            Left = 115
            Top = 48
            Width = 257
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object ETeklifNo: TEdit
            Left = 115
            Top = 82
            Width = 257
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
        end
      end
      object VrBitmapRadioButton8: TVrBitmapRadioButton
        Left = 703
        Top = 6
        Width = 157
        Height = 39
        EnabledGlyphIndex = 0
        DisabledGlyphIndex = 0
        BitmapList = Form1.VrBitmapList1
        FocusColor = 4210752
        OnChange = VrBitmapRadioButton4Change
        Caption = 'Deneme'
        Color = 4210752
        Font.Charset = TURKISH_CHARSET
        Font.Color = clLime
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ParentColor = False
        TabOrder = 7
        Visible = False
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 33
      Width = 766
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      Color = 4210752
      TabOrder = 2
      object myLabel3d4: TmyLabel3d
        Left = 14
        Top = 3
        Width = 139
        Height = 20
        Caption = 'Se'#231'ili '#220'r'#252'n : YOK'
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
        AStyle3D = Resit3d
        AShadeLeftTop = clBlack
        AShadeLTSet = False
      end
      object myLabel3d5: TmyLabel3d
        Left = 105
        Top = 27
        Width = 33
        Height = 16
        Alignment = taRightJustify
        Caption = 'Not :'
        Color = clWindow
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWhite
        Font.Height = -13
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
      object Label_Not: TmyLabel3d
        Left = 142
        Top = 27
        Width = 6
        Height = 16
        Caption = '-'
        Color = clWindow
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWhite
        Font.Height = -13
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
        Left = 65
        Top = 46
        Width = 73
        Height = 16
        Alignment = taRightJustify
        Caption = 'Ac'#305'klama :'
        Color = clWindow
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWhite
        Font.Height = -13
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
      object Label_Acik: TmyLabel3d
        Left = 142
        Top = 46
        Width = 6
        Height = 16
        Caption = '-'
        Color = clWindow
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWhite
        Font.Height = -13
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
    end
    object Panel11: TPanel
      Left = 1
      Top = 679
      Width = 766
      Height = 79
      Align = alClient
      Caption = 'Panel11'
      TabOrder = 3
      object Memo1: TMemo
        Left = 1
        Top = 1
        Width = 764
        Height = 77
        Align = alClient
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 500
    Height = 759
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 1
      Top = 83
      Width = 498
      Height = 675
      Align = alClient
      BorderStyle = cxcbsNone
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = cxGrid1DBTableView1CellDblClick
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '# Adet'
            Kind = skCount
            FieldName = 'Id'
            Column = cxGrid1DBTableView1Id
          end
          item
            Format = 'RahmenAdet: #0'
            Kind = skSum
            FieldName = 'RahmenAdet'
            Column = cxGrid1DBTableGurup
          end
          item
            Format = 'Urun Sayisi: #0'
            Kind = skSum
            FieldName = 'UrunAdet'
            Column = cxGrid1DBTableKatogori
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'TOPLAM'
            Kind = skCount
            Column = cxGrid1DBTableView1Id
          end
          item
            Format = '#0'
            Kind = skSum
            FieldName = 'RahmenAdet'
          end
          item
            Format = '#0'
            Kind = skSum
            FieldName = 'UrunAdet'
          end
          item
            Format = '# Kay'#305't'
            Kind = skCount
            FieldName = 'Id'
            Column = cxGrid1DBTableUrunAd
          end
          item
            Format = 'Rahmen Adet :'
            Kind = skCount
          end
          item
            Format = #220'r'#252'n Say'#305' :'
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        object cxGrid1DBTableView1Id: TcxGridDBColumn
          DataBinding.FieldName = 'Id'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 44
        end
        object cxGrid1DBTableKod: TcxGridDBColumn
          Caption = 'Barkod'
          DataBinding.FieldName = 'UrunKod'
          HeaderAlignmentHorz = taCenter
          Width = 67
        end
        object cxGrid1DBTableGurup: TcxGridDBColumn
          Caption = 'Grup'
          DataBinding.FieldName = 'Gurup'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 71
        end
        object cxGrid1DBTableUrunAd: TcxGridDBColumn
          Caption = #220'r'#252'n Ad'
          DataBinding.FieldName = 'UrunAd'
          HeaderAlignmentHorz = taCenter
          Width = 139
        end
        object cxGrid1DBTableKatogori: TcxGridDBColumn
          DataBinding.FieldName = 'Katogori'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 117
        end
        object cxGrid1DBTableNot: TcxGridDBColumn
          DataBinding.FieldName = 'Miktar'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 61
        end
        object cxGrid1DBTableRaf: TcxGridDBColumn
          DataBinding.FieldName = 'Raf'
          Width = 43
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 498
      Height = 41
      Align = alTop
      Color = 4210752
      TabOrder = 2
      object LMevcutAlan: TLabel
        Left = 12
        Top = 9
        Width = 138
        Height = 25
        Caption = 'Departman : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel9: TPanel
      Left = 1
      Top = 42
      Width = 498
      Height = 41
      Align = alTop
      TabOrder = 0
      object myLabel3d17: TmyLabel3d
        Left = 23
        Top = 15
        Width = 68
        Height = 20
        Alignment = taRightJustify
        Caption = 'Barkod :'
        Color = clWindow
        Font.Charset = TURKISH_CHARSET
        Font.Color = clMaroon
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
      object Label_Mev: TLabel
        Left = 225
        Top = 17
        Width = 71
        Height = 13
        Caption = 'Label_MEVCUT'
        Visible = False
      end
      object Panel10: TPanel
        Left = 412
        Top = 1
        Width = 85
        Height = 39
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        TabStop = True
        object Button_Aktar: TAdvGlassButton
          Left = 7
          Top = 1
          Width = 74
          Height = 38
          Cursor = crHandPoint
          BackColor = clBlack
          ButtonShape = btsCurvedRectangle
          Caption = 'Aktar'
          CornerRadius = 2
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ForeColor = clYellow
          GlowColor = clRed
          GroupIndex = 2
          InnerBorderColor = clBlack
          OuterBorderColor = clWhite
          ParentFont = False
          ParentShowHint = False
          ShineColor = clWhite
          ShowHint = True
          TabOrder = 0
          TabStop = False
          Version = '1.3.0.1'
          OnClick = Button_AktarClick
        end
      end
      object Edit7: TEdit
        Left = 98
        Top = 14
        Width = 118
        Height = 22
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxLength = 7
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnChange = Edit7Change
        OnKeyPress = Edit7KeyPress
      end
    end
  end
  object DataSource1: TDataSource
    Left = 216
    Top = 227
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 252
    Top = 283
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 300
    OnTimer = Timer2Timer
    Left = 317
    Top = 213
  end
  object TimerHata: TTimer
    Enabled = False
    Interval = 4000
    OnTimer = TimerHataTimer
    Left = 291
    Top = 300
  end
  object ADOSP_Hareket_Ins: TADOStoredProc
    Connection = Form1.ADOConnection1
    ProcedureName = 'StokHareket_Ins;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@UrunKod'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@Miktar_G'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Miktar_C'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@RafKod'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 8
        Value = Null
      end
      item
        Name = '@Neicin'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@Aciklama'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 150
        Value = Null
      end
      item
        Name = '@Kullanici'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@Tur'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1
        Value = Null
      end
      item
        Name = '@GelenYer'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@Fiyat'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 3
        Precision = 8
        Value = Null
      end
      item
        Name = '@HataBit'
        Attributes = [paNullable]
        DataType = ftBoolean
        Direction = pdInputOutput
        Value = Null
      end
      item
        Name = '@Yetersiz'
        Attributes = [paNullable]
        DataType = ftBoolean
        Direction = pdInputOutput
        Value = Null
      end
      item
        Name = '@Firma'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@GidenYer'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@FaturaNo'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@SiparisNo'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@TeklifNo'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end>
    Left = 352
    Top = 241
  end
  object CommPortBarkod: TCommPortDriver
    Port = pnCustom
    PortName = '\\.\COM4'
    BaudRate = brCustom
    BaudRateValue = 38400
    EnableDTROnOpen = False
    OnReceiveData = CommPortBarkodReceiveData
    Left = 496
    Top = 623
  end
end
