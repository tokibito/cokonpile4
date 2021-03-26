unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Rtti, System.Classes,
  System.Variants, FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs,
  FMX.StdCtrls, FMX.Layouts, FMX.Memo;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Start: TButton;
    procedure StartClick(Sender: TObject);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.StartClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 1 to 100 do
  begin
    if I mod 15 = 0 then
      Memo1.Text := Memo1.Text + 'FizzBuzz' + #13#10
    else if I mod 3 = 0 then
      Memo1.Text := Memo1.Text + 'Fizz' + #13#10
    else if I mod 5 = 0 then
      Memo1.Text := Memo1.Text + 'Buzz' + #13#10
    else
      Memo1.Text := Memo1.Text + IntToStr(I) + #13#10
  end;
end;

end.
