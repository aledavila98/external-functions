unit TRIM;

interface
  uses
      SysUtils,StrUtils;
  function FTRIM(var Cadena,Caracter:PChar):PChar;cdecl;export;

implementation
  function FTRIM(var Cadena,Caracter:PChar):PChar;cdecl;
  var
    resultingSet:PChar;
    arrayTmp:TSysCharSet;
    d:Integer;
  begin

      arrayTmp:=[];
      for d:=1 to length(Caracter) do
          Include(arrayTmp, Caracter[d]);
      if (Cadena[1] = Caracter) then
         begin
            resultingSet:=PChar(TrimLeftSet(Cadena,arrayTmp));
         end;

      if (Cadena[length(Cadena)-1] = Caracter) then
         resultingSet:=PChar(TrimRightSet(Cadena,arrayTmp));
      Result:=resultingSet;
  end;
 { exports
      FTRIM;
  }
end.

