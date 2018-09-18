unit F2C;
interface
   function FF2C(Fahrenheit:Double):Double;cdecl;export;
implementation
   function FF2C(Fahrenheit:Double):Double;cdecl;
   begin

       Result:=(Fahrenheit-32)*(5/9);
   end;
 {  exports
       FF2C; }
end.

