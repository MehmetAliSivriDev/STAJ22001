object FormUrunArama: TFormUrunArama
  Left = 284
  Top = 142
  BorderStyle = bsNone
  Caption = 'UrunArama'
  ClientHeight = 853
  ClientWidth = 1599
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 50
    Width = 1599
    Height = 803
    Align = alClient
    BorderStyle = cxcbsNone
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
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
        Width = 249
      end
      object cxGrid1DBTableGurup: TcxGridDBColumn
        Caption = 'Grup'
        DataBinding.FieldName = 'Gurup'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 210
      end
      object cxGrid1DBTableUrunAd: TcxGridDBColumn
        Caption = #220'r'#252'n Ad'
        DataBinding.FieldName = 'UrunAd'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 383
      end
      object cxGrid1DBTableKatogori: TcxGridDBColumn
        DataBinding.FieldName = 'Katogori'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 318
      end
      object cxGrid1DBTableNot: TcxGridDBColumn
        DataBinding.FieldName = 'Miktar'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 245
      end
      object cxGrid1DBTableRaf: TcxGridDBColumn
        DataBinding.FieldName = 'Raf'
        Width = 103
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel_Arama: TPanel
    Left = 0
    Top = 0
    Width = 1599
    Height = 50
    Align = alTop
    Color = 4210752
    TabOrder = 1
    object Label1: TLabel
      Left = 691
      Top = 1
      Width = 77
      Height = 48
      Align = alClient
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 1450
      Top = 1
      Width = 148
      Height = 48
      Cursor = crHandPoint
      Hint = '      &Kg Tan'#305'm'#305'   '
      Align = alRight
      Caption = '&Ara'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
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
      OnClick = AdvGlowButton1Click
      Appearance.BorderColorHot = clNavy
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorFocused = clGray
      Appearance.Color = clGray
      Appearance.ColorTo = 4210752
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 4210752
      Appearance.ColorMirrorTo = 4210752
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 11332863
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphLeft
    end
    object EArama: TCurvyEdit
      Left = 768
      Top = 1
      Width = 682
      Height = 48
      Align = alRight
      TabOrder = 1
      TabStop = False
      Version = '1.1.1.9'
      Controls = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnKeyDown = EAramaKeyDown
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 690
      Height = 48
      Align = alLeft
      Color = 4210752
      TabOrder = 2
      object myLabel3d1: TmyLabel3d
        Left = 295
        Top = 14
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
      object myLabel3d2: TmyLabel3d
        Left = 9
        Top = 14
        Width = 100
        Height = 20
        Alignment = taRightJustify
        Caption = 'Departman :'
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
      object ComboBox_Raf: TAdvOfficeComboBox
        Left = 348
        Top = 10
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
        ItemIndex = -1
        ItemHeight = 26
        TabOrder = 0
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Style = csDropDownList
      end
      object AdvGlowButton2: TAdvGlowButton
        Left = 539
        Top = 1
        Width = 150
        Height = 46
        Cursor = crHandPoint
        Hint = '      &Kg Tan'#305'm'#305'   '
        Align = alRight
        Caption = '&Ara'
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWhite
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
        Appearance.BorderColorHot = clNavy
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorFocused = clGray
        Appearance.Color = clGray
        Appearance.ColorTo = 4210752
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 4210752
        Appearance.ColorMirrorTo = 4210752
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 11332863
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Layout = blGlyphLeft
      end
      object ComboBox_Departman: TAdvOfficeComboBox
        Left = 122
        Top = 10
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
        Text = 'Elektronik'
        Version = '1.5.3.0'
        OnChange = ComboBox_DepartmanChange
        Items.Strings = (
          'Elektronik'
          'Otomasyon'
          'Barkod'
          'Demirba'#351)
        ItemIndex = 0
        ItemHeight = 26
        TabOrder = 2
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Style = csDropDownList
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 6
    Top = 585
  end
  object DataSource1: TDataSource
    Left = 5
    Top = 548
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer2Timer
    Left = 41
    Top = 589
  end
end
