unit DEC2HEX;

interface
   uses SysUtils;
   function FDEC2HEX(var Dec:Integer):PChar;stdcall;export;

implementation
   function FDEC2HEX(var Dec:Integer):PChar;stdcall;
   begin

     Result:=PChar(IntToHex(Dec,8));
   end;
  { exports
     FDEC2HEX;
   }
end.

