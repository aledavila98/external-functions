unit HEX2DEC;

interface
   uses
      SysUtils;
   function FHEX2DEC(var Hexa:PChar):Integer;stdcall;export;

implementation
   function FHEX2DEC(var Hexa:PChar):Integer;stdcall;
   var
     HexStr:PChar;
   begin

     HexStr:='';
     if Pos('$',Hexa)=0 then
        begin
          StrCat(HexStr,'$');
          StrCat(HexStr,Hexa);
        end
     else
         HexStr:=Hexa;
     Result:=StrToInt(HexStr);
   end;
  { exports
     FHEX2DEC;
   }
end.

