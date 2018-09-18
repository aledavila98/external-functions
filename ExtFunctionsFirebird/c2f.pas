unit C2F;
interface
         function FC2F(var Celsius:Double):Double;cdecl;export;
implementation
         function FC2F(var Celsius:Double):Double;cdecl;
         begin

           Result:=(Celsius*(9/5))+32;
         end;
       {  exports
           FC2F; }
end.

