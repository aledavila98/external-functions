unit CompString;

interface
  uses
    SysUtils;
  function FCompareString(var String1,String2:PChar):Integer;stdcall;export;

implementation
  function FCompareString(var String1,String2:PChar):Integer;stdcall;
  var
    comparer:Integer;
  begin

    if strcomp(String1,String2)<0 then
       comparer:=-1;
    if strcomp(String1,String2)=0 then
       comparer:=0;
    if strcomp(String1,String2)>0 then
       comparer:=1;
    Result:=comparer;
  end;
  {exports
    FCompareString;
   }
end.

