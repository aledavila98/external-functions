unit REPETIR;

interface
  uses
      SysUtils;
  function FRepeat(var String1:PChar; var Repeticiones:Integer):PChar;stdcall;export;

implementation
  function FRepeat(var String1:PChar; var Repeticiones:Integer):PChar;stdcall;
  var
    c:Integer;
  begin

    for c:=0 to Repeticiones do
        StrCat(String1,String1);
    Result:=String1;
  end;
 { exports
    FRepeat;
  }
end.

