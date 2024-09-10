object Form1: TForm1
  Left = 307
  Top = 134
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LAd: TLabel
    Left = 80
    Top = 30
    Width = 60
    Height = 37
    Caption = 'Ad :'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clBlack
    Font.Height = -33
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LSoyad: TLabel
    Left = 39
    Top = 79
    Width = 104
    Height = 43
    Caption = 'Soyad :'#13#10
    Font.Charset = TURKISH_CHARSET
    Font.Color = clBlack
    Font.Height = -33
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LGelenAd: TLabel
    Left = 40
    Top = 209
    Width = 334
    Height = 47
    Caption = 'Ad :'#13#10#13#10
    Font.Charset = TURKISH_CHARSET
    Font.Color = clBlack
    Font.Height = -33
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LGelenSoyad: TLabel
    Left = 40
    Top = 263
    Width = 336
    Height = 50
    Caption = 'Soyad :'#13#10#13#10
    Font.Charset = TURKISH_CHARSET
    Font.Color = clBlack
    Font.Height = -33
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object TAd: TEdit
    Left = 157
    Top = 38
    Width = 216
    Height = 35
    Hint = 'Ad'#305'n'#305'z'#305' Giriniz'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object TSoyad: TEdit
    Left = 156
    Top = 79
    Width = 216
    Height = 35
    Hint = 'Soyad'#305'n'#305'z'#305' Giriniz'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object BVeriAktar: TButton
    Left = 159
    Top = 131
    Width = 145
    Height = 46
    Caption = 'Verileri Aktar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BVeriAktarClick
  end
end
