unit F2C;
interface
   function FF2C(Fahrenheit:Double):Double;stdcall;
implementation
   function FF2C(Fahrenheit:Double):Double;stdcall;
   begin
       Result:=(Fahrenheit-32)*(5/9);
   end;
end.

