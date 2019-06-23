object Form1: TForm1
  Left = 327
  Top = 295
  Caption = 'Classes de conver'#227'o de texto'
  ClientHeight = 214
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    699
    214)
  PixelsPerInch = 96
  TextHeight = 18
  object TextoOriginalLabel: TLabel
    Left = 2
    Top = 4
    Width = 88
    Height = 18
    Caption = 'Texto original:'
  end
  object TextoConvertidoLabel: TLabel
    Left = 446
    Top = 4
    Width = 107
    Height = 18
    Caption = 'Texto convertido:'
  end
  object TextoOriginalMemo: TMemo
    Left = 0
    Top = 21
    Width = 249
    Height = 185
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 0
  end
  object OpcoesRadioGroup: TRadioGroup
    Left = 255
    Top = 16
    Width = 185
    Height = 163
    Caption = 'Op'#231#245'es de convers'#227'o:'
    Items.Strings = (
      'Invertido'
      'Primeira Mai'#250'scula'
      'Ordem alfab'#233'tica')
    TabOrder = 1
  end
  object ConverterButton: TButton
    Left = 255
    Top = 185
    Width = 185
    Height = 25
    Caption = 'Converter'
    TabOrder = 2
    OnClick = ConverterButtonClick
  end
  object TextoConvertidoMemo: TMemo
    Left = 446
    Top = 23
    Width = 248
    Height = 186
    Anchors = [akTop, akRight, akBottom]
    TabOrder = 3
  end
end
