unit BIN2DEC;

interface
  uses
         SysUtils;
  function FBIN2DEC(var Binario:PChar):Integer;cdecl;export;
implementation
    function FBIN2DEC(var Binario:PChar):Integer;cdecl;
    var
       counter, DecNum, iPow: Integer;
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
 {   exports
         FBIN2DEC;
  }
end.

