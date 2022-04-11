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
//Заполняем первую колонку
StringGrid1.Cells[0,1]:='Иванов';
StringGrid1.Cells[0,2]:='Петров';
StringGrid1.Cells[0,3]:='Сидоров';
StringGrid1.Cells[0,4]:='Смирнов';

//Заполняем первую строку
StringGrid1.Cells[1,0]:='Год рожд.';
StringGrid1.Cells[2,0]:='Место рожд.';
StringGrid1.Cells[3,0]:='Прописка';
StringGrid1.Cells[4,0]:='Семейное положение';
end;

procedure TMainForm.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
 DateEdit.Visible:=false;//Сделать невидимым компонент DateEdit

 if (gdFocused in State) then //Если текущая ячейка в фокусе то ...
  begin
    if ACol=1 then //Если рисуется ячейка первой колонки то ...
      begin
        DateEdit.Text:=StringGrid1.Cells[ACol,ARow]; //Записать в DateEdit текст ячейки
        DateEdit.Left:=Rect.Left+StringGrid1.Left+2;//Установить левую позицию
        DateEdit.Top:=Rect.Top+StringGrid1.Top+2;//Установить верхнюю позицию
        DateEdit.Width:=Rect.Right-Rect.Left; //Устанавливаем ширину
        DateEdit.Height:=Rect.Bottom-Rect.Top; //Установить высоту
        DateEdit.Visible:=True; //Сделать компонент DateEdit видимым
        exit; //выход из процедуры
end;  end;
end;
end.
