unit PING;

{$mode objfpc}{$H+}

interface
    uses
      Classes, SysUtils, pingsend;
    function FPing(const ip: PAnsiChar):Integer;stdcall;export;
implementation
   function FPing(const ip: PAnsiChar):Integer;stdcall;
   var
     pingsend: TPingSend;
   begin

     pingsend := TPINGSend.Create;
     try
        pingsend.Timeout := 5000;
     if pingsend.Ping(string(ip))= True then
        begin
          Result := 1;
        end
     else
        begin
          Result := 0;
        end;
     finally
        pingsend.Free;
     end;
  end;
  { exports
       FPing;
   }
end.
