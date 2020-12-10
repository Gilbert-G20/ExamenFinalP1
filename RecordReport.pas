{Respuesta 1}
Program RecordReport;
Uses sysutils, crt;
Type
        Reporte = Record
                id        :RawByteString; {El compilador no me permite que un numero entero sea nombre de un archivo}
                titulo    :String;
                Categoria :String;
                Fecha     :String;
                Status    :Boolean;
        End;
Var
        Reg :Reporte;
        R   :text;

Begin{inicio del programa}
ClrScr;
        Writeln('Bienvenido al sistema de registro de reportes, por favor, ingrese los datos que se le pediran.');
        Writeln('Presione ENTER para continuar luego de cada paso.');
        readln;

                With Reg do
                        ClrScr;
                        Writeln('Ingrese el id de su reporte: ');
                        readln(Reg.id);

                        ClrScr;
                        Writeln('Ingrese el titulo de su reporte: ');
                        readln(Reg.titulo);

                        ClrScr;
                        Writeln('Ingrese la categoria de su reporte: ');
                        readln(Reg.categoria);

                        ClrScr;
                        Writeln('Ingrese la fecha de su reporte: ');
                        readln(Reg.fecha);

                ClrScr;
                if FileExists(Reg.id) then
                begin
                        Writeln('Ya existe un reporte con el id que ingresaste!')
                end
                else
                begin
                        Writeln('El reporte fue guardado exitosamente!.');
                        MkDir(Reg.categoria);
                        ChDir(Reg.categoria);
                        Assign(R, Reg.id);
                        Rewrite(R);
                        Writeln(R, Reg.id);
                        writeln(R, Reg.titulo);
                        Writeln(R, Reg.categoria);
                        Writeln(R, Reg.fecha);
                        Close(R);
                end;
                readln;


End.
