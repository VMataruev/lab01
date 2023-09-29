unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Grids,
  StdCtrls, Buttons, TAGraph, TASources, TASeries;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Chart1: TChart;
    Chart1BarSeries1: TBarSeries;
    StringGrid1: TStringGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  i, j : integer;
begin
   for i := 0 to 7 do
   begin
     for j := 0 to 4 do
     begin
       StringGrid1.Cells[i,j] := IntToStr(random(50)+40);
     end;
     Chart1BarSeries1.AddY(StrToInt(StringGrid1.Cells[i,j]),StringGrid1.Cells[i,j], clRed);
     begin

     end;
   end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
end;

end.

