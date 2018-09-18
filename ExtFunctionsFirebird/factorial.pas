unit Factorial;

interface
  function FFactorial(var Numero:Integer):Integer;cdecl;export;

implementation
  function FFactorial(var Numero:Integer):Integer;cdecl;
  Var
	i : Integer;
  Begin

	Result := Numero;
	If (Numero <= 1) Then
		Result := 1
	Else
	For i := Numero-1 DownTo 1 do
		Result := Result * i;
	FFactorial := Result;
  end;
 { exports
        FFactorial;
  }
end.

