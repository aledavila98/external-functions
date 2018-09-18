unit PMT;

interface
   uses
   math;
   function FPMT(var Tax,Periodos,Valor:Double):Double;cdecl;export;

implementation
   function FPMT(var Tax,Periodos,Valor:Double):Double;cdecl;
   begin

     Result:=Valor*((Power(1+Tax,Periodos)*Tax)/(Power(1+Tax,Periodos)-1));
   end;
   {exports
     FPMT;
    }
end.

