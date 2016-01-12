object Frm_Producten: TFrm_Producten
  Left = 0
  Top = 0
  Caption = 'Producten'
  ClientHeight = 351
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 318
    Width = 75
    Height = 25
    Caption = 'Laad Report'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 617
    Height = 304
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PROD_NR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROD_NAAM'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODGRP_NR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AANT_PER_M2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AANT_PER_M2_UIT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROD_KLEUR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEELT_AANTAL'
        Width = 102
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 89
    Top = 318
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 2
  end
  object DataSource1: TDataSource
    DataSet = IBOTable1
    Left = 632
    Top = 8
  end
  object IBOTable1: TIBOTable
    Active = True
    PreparedEdits = True
    PreparedInserts = True
    RecordCountAccurate = True
    TableName = 'PRODUKT'
    Left = 672
    Top = 8
  end
  object frxReport1: TfrxReport
    Version = '5.4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42379.598133761600000000
    ReportOptions.LastChange = 42379.598133761600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 672
    Top = 320
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Lijst van producten')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1PROD_NAAM: TfrxMemoView
          Left = 3.779530000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'PROD_NAAM'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."PROD_NAAM"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Top = 1.574830000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DataSource1
    BCDToCurrency = False
    Left = 632
    Top = 320
  end
  object PrintDialog1: TPrintDialog
    Left = 672
    Top = 64
  end
end
