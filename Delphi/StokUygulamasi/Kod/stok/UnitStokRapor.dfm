object Form_Stok_R: TForm_Stok_R
  Left = 391
  Top = 199
  Width = 1305
  Height = 675
  Caption = 'Stok Raporu'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 71
    Align = alTop
    Color = clGray
    TabOrder = 0
    object Label1: TLabel
      Left = 559
      Top = 37
      Width = 31
      Height = 13
      Caption = 'Label1'
      Visible = False
    end
    object AdvGlowButton3: TAdvGlowButton
      Left = 91
      Top = 1
      Width = 41
      Height = 69
      Cursor = crHandPoint
      Align = alLeft
      AutoSize = True
      Caption = '&Html'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FocusType = ftNone
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      OfficeHint.Title = 'INTERNET'#39'E AKTAR'
      OfficeHint.Notes.Strings = (
        'INTERNET ORTAMINA AKTARMAK I'#199'IN KAYIT ET')
      ParentFont = False
      Position = bpLeft
      ShortCutHint = 'D'
      Transparent = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = True
      OnClick = AdvGlowButton3Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 11918331
      Appearance.ColorCheckedTo = 7915518
      Appearance.ColorDisabled = clNone
      Appearance.ColorDisabledTo = clNone
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = clNone
      Appearance.ColorMirrorDisabledTo = clNone
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphLeft
      DropDownSplit = False
    end
    object AdvGlowButton6: TAdvGlowButton
      Left = 1
      Top = 1
      Width = 48
      Height = 69
      Cursor = crHandPoint
      Hint = 'Kay'#305't'
      Align = alLeft
      AutoSize = True
      BorderStyle = bsNone
      Caption = '&Yazd'#305'r'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      OfficeHint.Title = #220'R'#220'N S'#220'Z'
      OfficeHint.Notes.Strings = (
        #304'STENINEN KRITERLERE G'#214'RE S'#220'ZME '#304#350'LEMI')
      ParentFont = False
      Position = bpLeft
      ShortCutHint = 'D'
      Transparent = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = True
      Visible = False
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 11918331
      Appearance.ColorCheckedTo = 7915518
      Appearance.ColorDisabled = clNone
      Appearance.ColorDisabledTo = clNone
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = clNone
      Appearance.ColorMirrorDisabledTo = clNone
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphLeft
    end
    object AdvGlowButton5: TAdvGlowButton
      Left = 49
      Top = 1
      Width = 42
      Height = 69
      Cursor = crHandPoint
      Hint = 'Kay'#305't'
      Align = alLeft
      AutoSize = True
      BorderStyle = bsNone
      Caption = '&Excel'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FocusType = ftNone
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      OfficeHint.Title = 'EXCEL'#39'E AKTAR'
      OfficeHint.Notes.Strings = (
        'EXCEL DOSYASI OLARAK KAYIT ET')
      ParentFont = False
      Position = bpLeft
      ShortCutHint = 'D'
      Transparent = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = True
      OnClick = AdvGlowButton5Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 11918331
      Appearance.ColorCheckedTo = 7915518
      Appearance.ColorDisabled = clNone
      Appearance.ColorDisabledTo = clNone
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = clNone
      Appearance.ColorMirrorDisabledTo = clNone
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphLeft
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 1242
      Top = 1
      Width = 46
      Height = 69
      Cursor = crHandPoint
      Align = alRight
      AutoSize = True
      Caption = '&Kapat'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      FocusType = ftNone
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Position = bpLeft
      ShortCutHint = 'D'
      Transparent = True
      TabOrder = 3
      TabStop = True
      OnClick = AdvGlowButton1Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 11918331
      Appearance.ColorCheckedTo = 7915518
      Appearance.ColorDisabled = clNone
      Appearance.ColorDisabledTo = clNone
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = clNone
      Appearance.ColorMirrorDisabledTo = clNone
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTopAdjusted
      DropDownSplit = False
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 71
    Width = 1289
    Height = 565
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
          Format = '# Kay'#305't'
          Kind = skCount
          FieldName = 'Id'
          Column = cxGrid1DBTableUrunAd
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      Styles.ContentEven = Form1.cxStyle8
      Styles.ContentOdd = Form1.cxStyle7
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
        Width = 59
      end
      object cxGrid1DBTableUrunAd: TcxGridDBColumn
        Caption = #220'r'#252'n Ad'
        DataBinding.FieldName = 'UrunAd'
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGrid1DBTableGurup: TcxGridDBColumn
        Caption = 'Grup'
        DataBinding.FieldName = 'Gurup'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 55
      end
      object cxGrid1DBTableKatogori: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'Katogori'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 64
      end
      object cxGrid1DBTableNot: TcxGridDBColumn
        DataBinding.FieldName = 'Miktar'
        HeaderAlignmentHorz = taCenter
        Width = 53
      end
      object cxGrid1DBTableRaf: TcxGridDBColumn
        DataBinding.FieldName = 'Raf'
        HeaderAlignmentHorz = taCenter
        Width = 70
      end
      object cxGrid1DBTableAFiyat: TcxGridDBColumn
        Caption = 'Al'#305#351' Fiyat'
        DataBinding.FieldName = 'AFiyat'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableBFiyat: TcxGridDBColumn
        Caption = 'Sat'#305#351' Fiyat'
        DataBinding.FieldName = 'SFiyat'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableBirim: TcxGridDBColumn
        DataBinding.FieldName = 'Birim'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableTur: TcxGridDBColumn
        DataBinding.FieldName = 'Tur'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableTarih: TcxGridDBColumn
        DataBinding.FieldName = 'Tarih'
      end
      object cxGrid1DBTableKim: TcxGridDBColumn
        Caption = 'Kullan'#305'c'#305
        DataBinding.FieldName = 'Kim'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 296
    Top = 192
  end
  object DataSource1: TDataSource
    OnDataChange = DataSource1DataChange
    Left = 80
    Top = 224
  end
  object dxComponentPrinter1: TdxComponentPrinter
    Version = 0
    Left = 408
    Top = 168
  end
  object ADOSP_S_Rapor: TADOStoredProc
    ProcedureName = 'Stok_Rapor;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Tur'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    Left = 779
    Top = 247
  end
end
