unit BIN2DEC;

interface
  function FBIN2DEC(var Binario:PChar):Integer;stdcall;
implementation
    uses
         SysUtils;
    function FBIN2DEC(var Binario:PChar):Integer;stdcall;
    var
       counter, DecNum, iPow: integer;
       aBit: byte;
    begin
         DecNum := 0;
         iPow := 1;
         counter := Length(Binario);
         repeat
           aBit := StrToInt(Binario[counter]);
           if (aBit = 1) then
              begin
                 DecNum := (DecNum + iPow);
              end;
           iPow := (iPow * 2);
         Dec(counter, 1);
         until (counter = 0);
         Result := DecNum;
    end;

end.

