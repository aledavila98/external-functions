unit DEC2BIN;

interface
  uses
     SysUtils;
  function FDEC2BIN(var Decimal:Integer):PChar;cdecl;export;

implementation
   function FDEC2BIN(var Decimal:Integer):PChar;cdecl;
   var
      DivNum, TempDec: Integer;
      sBin: PChar;
      tmpDivNum: string;
   begin

     TempDec := Decimal;
     sBin := '';
     repeat
         DivNum := (TempDec mod 2);
         tmpDivNum := IntToStr(DivNum);
         StrCat(sBin,PChar(tmpDivNum));
         TempDec := TempDec div 2;
     until (TempDec = 0);
     Result := sBin;

   end;
  { exports
     FDEC2BIN;  }
end.

