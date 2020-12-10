{Respuesta 3}
program Fibonacci;
uses crt;
Var
        N, a, b, c, i:Integer;
                    f:text;
Begin{inicio del programa}
ClrScr;
        Writeln('Escriba un numero: ');
        readln(N);

        a:=0;
        b:=1;
        c:=0;

        Assign(f,'Fibonacci.TXT');
        rewrite(f);
        For i:=1 to N do
        Begin
         c:=a+b;
         Writeln(f,'|', c,'|');
         a:=b;
         b:=c;
        End;
        Close(f);

End.
