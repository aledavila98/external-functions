unit Factorial;

interface
  function FFactorial(var Numero:Integer):Integer;stdcall;export;

implementation
  function FFactorial(var Numero:Integer):Integer;stdcall;
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

