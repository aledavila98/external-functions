unit C2F;
interface
         function FC2F(var Celsius:Double):Double;stdcall;export;
implementation
         function FC2F(var Celsius:Double):Double;stdcall;
         begin

           Result:=(Celsius*(9/5))+32;
         end;
       {  exports
           FC2F; }
end.

