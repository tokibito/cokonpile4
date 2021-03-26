program fizzbuzz;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  I: Integer;
begin
  try
    for I := 1 to 100 do
    begin
      if I mod 15 = 0 then
        WriteLn('FizzBuzz')
      else if I mod 3 = 0 then
        WriteLn('Fizz')
      else if I mod 5 = 0 then
        WriteLn('Buzz')
      else
        WriteLn(I)
    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
