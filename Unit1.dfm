object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 299
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 72
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Producten'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 72
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Instellingen'
    TabOrder = 1
  end
  object Database1: TIBODatabase
    CacheStatementHandles = False
    DefaultNoCase = True
    SQLDialect = 3
    Params.Strings = (
      'PROTOCOL=TCP/IP'
      'PAGE SIZE=4096'
      'SERVER=LOCALHOST/30514'
      'PATH=TEELTREG'
      'USER NAME=SYSDBA'
      'CHARACTER SET=ISO8859_1')
    Isolation = tiCommitted
    SessionName = 'Default'
    Left = 264
    Top = 8
    SavedPassword = '.JuMbLe.01.412B112F03270057'
  end
  object MainMenu1: TMainMenu
    Left = 264
    Top = 56
    object Producten1: TMenuItem
      Caption = 'Producten'
      OnClick = Producten1Click
    end
  end
end
