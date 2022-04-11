object MainForm: TMainForm
  Left = 192
  Top = 146
  Width = 621
  Height = 675
  Caption = 'MainForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object StringGrid1: TStringGrid
    Left = 16
    Top = 72
    Width = 320
    Height = 120
    BorderStyle = bsNone
    DefaultRowHeight = 16
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
    OnDrawCell = StringGrid1DrawCell
  end
  object DateEdit: TMaskEdit
    Left = 248
    Top = 328
    Width = 120
    Height = 24
    EditMask = '99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  .  .    '
    Visible = False
  end
end
