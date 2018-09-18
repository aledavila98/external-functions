unit PMT;

interface
   function FPMT(var Tax,Periodos,Valor:Double):Double;stdcall;

implementation
    uses
   math;
   function FPMT(var Tax,Periodos,Valor:Double):Double;stdcall;
   begin
     Result:=Valor*((Power(1+Tax,Periodos)*Tax)/(Power(1+Tax,Periodos)-1));
   end;

end.

