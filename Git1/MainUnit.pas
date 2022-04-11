unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Mask;

type
  TMainForm = class(TForm)
    StringGrid1: TStringGrid;
    DateEdit: TMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FormShow(Sender: TObject);
begin
//��������� ������ �������
StringGrid1.Cells[0,1]:='������';
StringGrid1.Cells[0,2]:='������';
StringGrid1.Cells[0,3]:='�������';
StringGrid1.Cells[0,4]:='�������';

//��������� ������ ������
StringGrid1.Cells[1,0]:='��� ����.';
StringGrid1.Cells[2,0]:='����� ����.';
StringGrid1.Cells[3,0]:='��������';
StringGrid1.Cells[4,0]:='�������� ���������';
end;

procedure TMainForm.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
 DateEdit.Visible:=false;//������� ��������� ��������� DateEdit

 if (gdFocused in State) then //���� ������� ������ � ������ �� ...
  begin
    if ACol=1 then //���� �������� ������ ������ ������� �� ...
      begin
        DateEdit.Text:=StringGrid1.Cells[ACol,ARow]; //�������� � DateEdit ����� ������
        DateEdit.Left:=Rect.Left+StringGrid1.Left+2;//���������� ����� �������
        DateEdit.Top:=Rect.Top+StringGrid1.Top+2;//���������� ������� �������
        DateEdit.Width:=Rect.Right-Rect.Left; //������������� ������
        DateEdit.Height:=Rect.Bottom-Rect.Top; //���������� ������
        DateEdit.Visible:=True; //������� ��������� DateEdit �������
        exit; //����� �� ���������
end;  end;
end;
end.
