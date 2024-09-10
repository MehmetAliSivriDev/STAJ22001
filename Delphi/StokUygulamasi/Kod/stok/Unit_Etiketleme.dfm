object Form_Etiket: TForm_Etiket
  Left = 208
  Top = 205
  Width = 1305
  Height = 675
  Caption = 'Etiketleme Formu'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 454
    Top = 0
    Width = 5
    Height = 636
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 454
    Height = 636
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 1
      Top = 83
      Width = 452
      Height = 552
      Align = alClient
      BorderStyle = cxcbsNone
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
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
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 65
        end
        object cxGrid1DBTableUrunAd: TcxGridDBColumn
          Caption = #220'r'#252'n Ad'
          DataBinding.FieldName = 'UrunAd'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGrid1DBTableGurup: TcxGridDBColumn
          Caption = 'Grup'
          DataBinding.FieldName = 'Gurup'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 55
        end
        object cxGrid1DBTableKatogori: TcxGridDBColumn
          DataBinding.FieldName = 'Katogori'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 107
        end
        object cxGrid1DBTableNot: TcxGridDBColumn
          DataBinding.FieldName = 'Miktar'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 53
        end
        object cxGrid1DBTableTur: TcxGridDBColumn
          Caption = 'T'#252'r'
          DataBinding.FieldName = 'Tur'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 452
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
    object Panel3: TPanel
      Left = 1
      Top = 42
      Width = 452
      Height = 41
      Align = alTop
      TabOrder = 0
      object Label_Mev: TLabel
        Left = 225
        Top = 17
        Width = 71
        Height = 13
        Caption = 'Label_MEVCUT'
        Visible = False
      end
      object myLabel3d1: TmyLabel3d
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
      object Button1: TButton
        Left = 315
        Top = 12
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 2
        Visible = False
      end
      object Panel4: TPanel
        Left = 366
        Top = 1
        Width = 85
        Height = 39
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        TabStop = True
        object Button_Aktar: TAdvGlassButton
          Left = 8
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
      object Edit1: TEdit
        Left = 98
        Top = 14
        Width = 118
        Height = 19
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 7
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnChange = Edit1Change
        OnKeyPress = Edit1KeyPress
      end
    end
  end
  object Panel5: TPanel
    Left = 1201
    Top = 0
    Width = 88
    Height = 636
    Align = alRight
    Color = clSilver
    TabOrder = 1
    object img1: TImage
      Left = 1
      Top = 19
      Width = 86
      Height = 8
      Align = alTop
    end
    object AdvGlowButton2: TAdvGlowButton
      Left = 1
      Top = 1
      Width = 86
      Height = 18
      Cursor = crHandPoint
      Align = alTop
      AutoSize = True
      Caption = '&Barkod'
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
      Top = 599
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
      Layout = blGlyphTopAdjusted
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 1
      Top = 617
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
      TabOrder = 2
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
      Top = 27
      Width = 86
      Height = 18
      Cursor = crHandPoint
      Align = alTop
      AutoSize = True
      Caption = '&Kutu Barkod'
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
      Visible = False
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
  object Panel6: TPanel
    Left = 459
    Top = 0
    Width = 742
    Height = 636
    Align = alClient
    BorderStyle = bsSingle
    Color = 4210752
    TabOrder = 2
    object myLabel3d3: TmyLabel3d
      Left = 61
      Top = 142
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
    object myLabel3d5: TmyLabel3d
      Left = 54
      Top = 313
      Width = 80
      Height = 20
      Alignment = taRightJustify
      Caption = 'T. Miktar :'
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
      Left = 48
      Top = 172
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
    object myLabel3d10: TmyLabel3d
      Left = 78
      Top = 200
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
    object myLabel3d11: TmyLabel3d
      Left = 51
      Top = 226
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
      Top = 256
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
      Top = 167
      Width = 8
      Height = 24
      Caption = '-'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
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
      Top = 196
      Width = 8
      Height = 24
      Caption = '-'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
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
      Top = 224
      Width = 8
      Height = 24
      Caption = '-'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
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
      Top = 139
      Width = 8
      Height = 24
      Caption = '-'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
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
    object myLabel3d12: TmyLabel3d
      Left = 167
      Top = 285
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
      Top = 285
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
    object Label_Hata: TDRLabel
      Left = 1
      Top = 1
      Width = 736
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
    object Panel7: TPanel
      Left = 397
      Top = 241
      Width = 315
      Height = 91
      BevelOuter = bvNone
      ParentBackground = False
      ParentColor = True
      TabOrder = 6
      object myLabel3d7: TmyLabel3d
        Left = 13
        Top = 9
        Width = 108
        Height = 40
        Alignment = taRightJustify
        BiDiMode = bdRightToLeft
        Caption = 'Bir Paketteki '#13#10#220'r'#252'n Say'#305's'#305' :'
        Color = clWindow
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        Transparent = True
        About = 
          'MyLabel3d  PEYKAN YAZILIM ve Otomasyon  Peykansoft (www.peykan.c' +
          'om.tr   Email : info@peykan.com.tr)'
        AShadeLTSet = False
      end
      object myLabel3d9: TmyLabel3d
        Left = 17
        Top = 65
        Width = 161
        Height = 20
        Alignment = taRightJustify
        BiDiMode = bdRightToLeft
        Caption = 'Ekstra Paket Adeti :'
        Color = clWindow
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        Transparent = True
        About = 
          'MyLabel3d  PEYKAN YAZILIM ve Otomasyon  Peykansoft (www.peykan.c' +
          'om.tr   Email : info@peykan.com.tr)'
        AShadeLTSet = False
      end
      object Edit4: TEdit
        Left = 161
        Top = 11
        Width = 113
        Height = 33
        BevelKind = bkSoft
        BevelOuter = bvSpace
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnChange = Edit4Change
      end
      object Edit5: TEdit
        Left = 208
        Top = 59
        Width = 67
        Height = 33
        BevelKind = bkSoft
        BevelOuter = bvSpace
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = '0'
      end
    end
    object Memo2: TMemo
      Left = 1
      Top = 550
      Width = 736
      Height = 48
      Align = alBottom
      TabOrder = 4
      Visible = False
    end
    object Memo1: TMemo
      Left = 1
      Top = 598
      Width = 736
      Height = 33
      Align = alBottom
      Lines.Strings = (
        '')
      TabOrder = 5
      Visible = False
    end
    object ComboBox_Raf: TAdvOfficeComboBox
      Left = 142
      Top = 252
      Width = 157
      Height = 30
      TabStop = False
      Button.Color = 16572875
      Button.ColorTo = 14722429
      Button.ColorHot = 14483455
      Button.ColorHotTo = 6013175
      Button.ColorDown = 557032
      Button.ColorDownTo = 8182519
      Button.Width = 30
      DisplayRecentSelection = False
      BorderColor = clNavy
      BorderHotColor = clBlack
      SelectionColor = 16572875
      SelectionColorTo = clWhite
      SelectionTextColor = clMaroon
      Version = '1.5.3.0'
      OnChange = ComboBox_RafChange
      ItemIndex = -1
      ItemHeight = 30
      TabOrder = 2
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Style = csDropDownList
    end
    object Memo_detay: TMemo
      Left = 1
      Top = 464
      Width = 736
      Height = 41
      Align = alBottom
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 553
      Top = 386
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Edit1'
      Visible = False
    end
    object Edit3: TEdit
      Left = 147
      Top = 306
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
      TabOrder = 3
      OnChange = Edit3Change
    end
    object CheckBox_Raf: TVrBitmapCheckBox
      Left = 298
      Top = 248
      Width = 77
      Height = 35
      State = vcbChecked
      EnabledGlyphIndex = 2
      DisabledGlyphIndex = 1
      NumGlyphs = 2
      Font3D.Style = f3dRaised
      Font3D.HighlightColor = clBlack
      BitmapList = Form1.VrBitList1
      Checked = True
      FocusColor = 4210752
      FocusOffset = 1
      OnChange = CheckBox_RafChange
      Caption = 'Hepsi'
      Color = 4210752
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsBold]
      ParentFont = False
      ParentColor = False
      TabOrder = 7
      TabStop = True
    end
    object Panel8: TPanel
      Left = 1
      Top = 33
      Width = 736
      Height = 76
      Align = alTop
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = 4210752
      TabOrder = 8
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
      object myLabel3d6: TmyLabel3d
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
      object myLabel3d13: TmyLabel3d
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
    object MemoYuvarlak: TMemo
      Left = 1
      Top = 505
      Width = 736
      Height = 45
      Align = alBottom
      Lines.Strings = (
        '^XA~TA000~JSN^LT0^MNW^MTD^PON^PMN^JMA^JUS^LRN^CI35~SD14'
        '^LH1,8'
        '^PR3,3'
        '^XZ'
        '^XA'
        '^FWN'
        '^PW400'
        '^LL400'
        '^FX DEGISKENLER'
        '^FO100,165^FB205,1,0,C,0^A0N,40,44^FD{V00}^FS'
        '^BY3,3,41^FT25,255^BCN,,N,N^FH\^FD>:B>{V01}^FS'
        '^FO30,270^FB320,1,0,C,0^A0N,34,36^FD{V02}^FS'
        '^PQ{PQ},0,1,Y'
        '^XZ                                                            ')
      TabOrder = 9
      Visible = False
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 393
    Top = 324
  end
  object DataSource1: TDataSource
    Left = 83
    Top = 175
  end
end
