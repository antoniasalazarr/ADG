function SALIDA = desfase(serie1,serie2,t)
%en esta funcion se deben ingresar las dos series de datos que se quiere
%correlacionar y la cantidad de días de desfase de la correlacion.
%y entrega el coeficiente de correlacion
%INGRESAR SOLO LA COLUMNA DE DATOS
SALIDA= corr(serie1(1:end-t,1),serie2(t+1:end,1));
end