object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora IMC'
  ClientHeight = 265
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 138
    Top = 88
    Width = 66
    Height = 24
    Caption = 'Altura :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 144
    Top = 128
    Width = 55
    Height = 24
    Caption = 'Peso :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 140
    Top = 168
    Width = 62
    Height = 24
    Caption = 'Sexo : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 138
    Top = 208
    Width = 92
    Height = 38
    Cursor = crHandPoint
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 236
    Top = 208
    Width = 91
    Height = 38
    Cursor = crHandPoint
    Caption = 'Tabela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object cbSexo: TComboBox
    Left = 208
    Top = 172
    Width = 43
    Height = 24
    Cursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Items.Strings = (
      'M'
      'F')
  end
  object edtAltura: TEdit
    Left = 210
    Top = 91
    Width = 121
    Height = 32
    Cursor = crIBeam
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object edtPeso: TEdit
    Left = 210
    Top = 131
    Width = 121
    Height = 32
    Cursor = crIBeam
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 468
    Height = 74
    Caption = 'Calculador de '#205'ndice Corporal'
    Color = clMenuHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
  end
end
