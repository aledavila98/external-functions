unit C2F;
interface
         function FC2F(var Celsius:Double):Double;stdcall;
implementation
         function FC2F(var Celsius:Double):Double;stdcall;
         begin
           Result:=(Celsius*(9/5))+32;
         end;
end.

