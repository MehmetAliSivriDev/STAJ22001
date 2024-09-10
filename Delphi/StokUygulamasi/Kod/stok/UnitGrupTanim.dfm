object Form_GrupTanim: TForm_GrupTanim
  Left = -190
  Top = 232
  Width = 1936
  Height = 1056
  Caption = 'YEN'#304' GRUP TANIMI'
  Color = clBtnFace
  Font.Charset = TURKISH_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Ar'#304'AL'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 853
    Height = 1017
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 851
      Height = 1015
      Align = alClient
      BorderStyle = cxcbsNone
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
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
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        object cxGrid1DBTableView1Id: TcxGridDBColumn
          DataBinding.FieldName = 'Id'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 40
        end
        object cxGrid1DBTableKod: TcxGridDBColumn
          Caption = 'Grup Ad'#305
          DataBinding.FieldName = 'GAd'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
        object cxGrid1DBTableUrunAd: TcxGridDBColumn
          Caption = 'A'#231#305'klama'
          DataBinding.FieldName = 'Aciklama'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGrid1DBTableGurup: TcxGridDBColumn
          Caption = 'Alan'
          DataBinding.FieldName = 'Tur'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 55
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Panel_Po: TPanel
    Left = 853
    Top = 0
    Width = 979
    Height = 1017
    Align = alRight
    Color = 4210752
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 215
      Width = 977
      Height = 801
      Align = alClient
      Color = 4210752
      TabOrder = 0
      object stat1: TStatusBar
        Left = 1
        Top = 781
        Width = 975
        Height = 19
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Panels = <
          item
            Alignment = taCenter
            Text = 'ID :'
            Width = 50
          end
          item
            Alignment = taCenter
            Width = 60
          end
          item
            Alignment = taCenter
            Text = 'Grup Ad'#305' :'
            Width = 80
          end
          item
            Width = 120
          end
          item
            Text = 'A'#231#305'klama :'
            Width = 70
          end
          item
            Width = 50
          end>
        UseSystemFont = False
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 86
      Width = 977
      Height = 129
      Align = alTop
      Color = 4210752
      TabOrder = 1
      object myLabel3d3: TmyLabel3d
        Left = 47
        Top = 28
        Width = 80
        Height = 20
        Alignment = taRightJustify
        Caption = 'Grup ad'#305' :'
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
        Left = 46
        Top = 82
        Width = 83
        Height = 20
        Alignment = taRightJustify
        Caption = 'A'#231#305'klama :'
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
      object Edit1: TEdit
        Left = 139
        Top = 21
        Width = 250
        Height = 27
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxLength = 50
        ParentFont = False
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 139
        Top = 83
        Width = 500
        Height = 27
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxLength = 20
        ParentFont = False
        TabOrder = 1
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 977
      Height = 85
      Align = alTop
      BevelOuter = bvNone
      Color = 4210752
      TabOrder = 2
      object myLabel3d1: TmyLabel3d
        Left = 0
        Top = 0
        Width = 977
        Height = 18
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'GRUP'
        Color = clGray
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindow
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        About = 
          'MyLabel3d  PEYKAN YAZILIM ve Otomasyon  Peykansoft (www.peykan.c' +
          'om.tr   Email : info@peykan.com.tr)'
        AShadeLeftTop = clBtnFace
        AShadeLTSet = False
      end
      object LMevcutAlan: TLabel
        Left = 20
        Top = 39
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
  end
  object Panel7: TPanel
    Left = 1832
    Top = 0
    Width = 88
    Height = 1017
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
      Caption = '&D'#220'ZENLE'
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
      Top = 980
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
      Top = 998
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
      TabOrder = 3
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
      Caption = '&Sil'
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
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 163
    Top = 205
  end
  object DataSource1: TDataSource
    OnDataChange = DataSource1DataChange
    Left = 296
    Top = 207
  end
end
