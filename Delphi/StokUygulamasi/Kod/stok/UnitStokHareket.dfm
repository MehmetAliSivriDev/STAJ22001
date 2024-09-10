object Form_Stok_H: TForm_Stok_H
  Left = 337
  Top = 149
  Width = 1380
  Height = 675
  Caption = 'STOK HAREKETLER'#304
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 21
    Width = 1364
    Height = 74
    Align = alTop
    BevelOuter = bvNone
    Color = clGray
    TabOrder = 0
    object Label2: TLabel
      Left = 72
      Top = 43
      Width = 90
      Height = 19
      Alignment = taRightJustify
      Caption = 'Biti'#351' Tarihi :'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 30
      Top = 11
      Width = 132
      Height = 19
      Alignment = taRightJustify
      Caption = 'Ba'#351'lang'#305#231' Tarihi :'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object cxDateEdit1: TDateTimePicker
      Left = 169
      Top = 9
      Width = 145
      Height = 21
      Date = 44071.478399895830000000
      Time = 44071.478399895830000000
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object cxDateEdit2: TDateTimePicker
      Left = 169
      Top = 41
      Width = 145
      Height = 21
      Date = 44071.478399895830000000
      Time = 44071.478399895830000000
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object AdvGlowButton6: TAdvGlowButton
      Left = 325
      Top = 5
      Width = 124
      Height = 60
      Cursor = crHandPoint
      Caption = '&TAR'#304'H ARALI'#286'I'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = AdvGlowButton6Click
      Appearance.BorderColor = clBlack
      Appearance.BorderColorHot = clRed
      Appearance.BorderColorDown = 4548219
      Appearance.Color = clGray
      Appearance.ColorTo = 15724527
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = clGray
      Appearance.ColorMirrorTo = 15724527
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
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
    object AdvGlow_Now: TAdvGlowButton
      Left = 455
      Top = 5
      Width = 110
      Height = 30
      Cursor = crHandPoint
      Caption = '&BUG'#220'N'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = AdvGlow_NowClick
      Appearance.BorderColor = clBlack
      Appearance.BorderColorHot = clRed
      Appearance.BorderColorDown = 4548219
      Appearance.Color = clGray
      Appearance.ColorTo = 15724527
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = clGray
      Appearance.ColorMirrorTo = 15724527
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
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
    object Button_Tum: TAdvGlowButton
      Left = 455
      Top = 39
      Width = 110
      Height = 30
      Cursor = crHandPoint
      Caption = '&T'#220'M L'#304'STE'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button_TumClick
      Appearance.BorderColor = clBlack
      Appearance.BorderColorHot = clRed
      Appearance.BorderColorDown = 4548219
      Appearance.Color = clGray
      Appearance.ColorTo = 15724527
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = clGray
      Appearance.ColorMirrorTo = 15724527
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
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
    object AdvGlowButton1: TAdvGlowButton
      Left = 1318
      Top = 0
      Width = 46
      Height = 74
      Cursor = crHandPoint
      Align = alRight
      AutoSize = True
      Caption = '&Kapat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Position = bpLeft
      ShortCutHint = 'D'
      Transparent = True
      TabOrder = 5
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
    object AdvGlowButton2: TAdvGlowButton
      Left = 1277
      Top = 0
      Width = 41
      Height = 74
      Cursor = crHandPoint
      Align = alRight
      AutoSize = True
      Caption = '&Html'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      FocusType = ftHot
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
      TabOrder = 6
      TabStop = True
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
    object AdvGlowButton3: TAdvGlowButton
      Left = 1244
      Top = 0
      Width = 33
      Height = 74
      Cursor = crHandPoint
      Hint = 'Kay'#305't'
      Align = alRight
      AutoSize = True
      BorderStyle = bsNone
      Caption = '&Pdf'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      FocusType = ftHot
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
      TabOrder = 7
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
      Layout = blGlyphTopAdjusted
    end
    object AdvGlowButton4: TAdvGlowButton
      Left = 1202
      Top = 0
      Width = 42
      Height = 74
      Cursor = crHandPoint
      Hint = 'Kay'#305't'
      Align = alRight
      AutoSize = True
      BorderStyle = bsNone
      Caption = '&Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      FocusType = ftHot
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
      TabOrder = 8
      TabStop = True
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
    end
    object AdvGlowButton5: TAdvGlowButton
      Left = 1154
      Top = 0
      Width = 48
      Height = 74
      Cursor = crHandPoint
      Hint = 'Kay'#305't'
      Align = alRight
      AutoSize = True
      BorderStyle = bsNone
      Caption = '&Yazd'#305'r'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
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
      TabOrder = 9
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
      Layout = blGlyphTopAdjusted
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 95
    Width = 1364
    Height = 541
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
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      OptionsView.ShowColumnFilterButtons = sfbAlways
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
        Width = 70
      end
      object cxGrid1DBTableUrunAd: TcxGridDBColumn
        Caption = #220'r'#252'n Ad'
        DataBinding.FieldName = 'UrunAd'
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGrid1DBTableGurup: TcxGridDBColumn
        DataBinding.FieldName = 'Gurup'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object cxGrid1DBTableKatogori: TcxGridDBColumn
        Caption = 'KATAGORI'
        DataBinding.FieldName = 'Katogori'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 64
      end
      object cxGrid1DBTableBFiyat: TcxGridDBColumn
        Caption = 'Giri'#351' Miktari'
        DataBinding.FieldName = 'Miktar_G'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1_Miktar_C: TcxGridDBColumn
        Caption = 'Ciki'#351' Miktari'
        DataBinding.FieldName = 'Miktar_C'
        HeaderAlignmentHorz = taCenter
        Width = 53
      end
      object cxGrid1DBTableRaf: TcxGridDBColumn
        Caption = 'Raf Kod'
        DataBinding.FieldName = 'RafKod'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableAFiyat: TcxGridDBColumn
        DataBinding.FieldName = 'GelenYer'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object cxGrid1DBTableFirma: TcxGridDBColumn
        DataBinding.FieldName = 'Firma'
      end
      object cxGrid1DBTableGidenYer: TcxGridDBColumn
        DataBinding.FieldName = 'GidenYer'
      end
      object cxGrid1DBTableFaturaNo: TcxGridDBColumn
        DataBinding.FieldName = 'FaturaNo'
      end
      object cxGrid1DBTableSiparisNo: TcxGridDBColumn
        Caption = 'Sipari'#351'No'
        DataBinding.FieldName = 'SiparisNo'
      end
      object cxGrid1DBTableTeklifNo: TcxGridDBColumn
        DataBinding.FieldName = 'TeklifNo'
      end
      object cxGrid1DBTableNeicin: TcxGridDBColumn
        Caption = 'Ne '#304#231'in'
        DataBinding.FieldName = 'Neicin'
      end
      object cxGrid1DBTableAciklama: TcxGridDBColumn
        DataBinding.FieldName = 'Aciklama'
        HeaderAlignmentHorz = taCenter
        Width = 90
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1364
    Height = 21
    Align = alTop
    BevelWidth = 3
    Color = clAppWorkSpace
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 2
    object myLabel3d1: TmyLabel3d
      Left = 3
      Top = 3
      Width = 1358
      Height = 15
      Align = alClient
      Alignment = taCenter
      Caption = 'STOK HAREKET RAPORU'
      Color = clBlack
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      About = 
        'MyLabel3d  PEYKAN YAZILIM ve Otomasyon  Peykansoft (www.peykan.c' +
        'om.tr   Email : info@peykan.com.tr)'
      AStyle3D = Raised3d
      AShadeRightBottom = clWindowFrame
      AShadeLeftTop = clWindowFrame
      AVShadeOffSet = -3
      AShadeLTSet = False
    end
  end
  object ADOSP_SH_Rapor_T: TADOStoredProc
    ProcedureName = 'StokHareket_Rapor_T;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Tur'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = '@Ta_1'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = '0'
      end
      item
        Name = '@Ta_2'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = '0'
      end>
    Left = 719
    Top = 341
  end
  object DataSource1: TDataSource
    Left = 711
    Top = 293
  end
  object dxComponentPrinter1: TdxComponentPrinter
    Version = 0
    Left = 613
    Top = 330
  end
  object ADOSP_SH_Rapor: TADOStoredProc
    ProcedureName = 'StokHareket_Rapor;1'
    Parameters = <
      item
        Name = '@Tur'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 873
    Top = 338
  end
end
