function [SALIDA]=cambio_dos_columnas(DATA)

%Hay que ingresar la matriz años x meses

[c,d]=size(DATA); % c corresponde a las filas y d las columnas
e=1;
for i=1:c 
    for j=2:d 
    B(e,1)=DATA(i,1)+(j-2)/12+1/24; 
    B(e,2)=DATA(i,j); 
    e=e+1;
    end
end
SALIDA = B;
end