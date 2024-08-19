function SALIDA = interpolacion2D(DATA)
%DATA: Se debe ingresar una matriz años x meses que se quiere interpolar
%SALIDA: Entrega la matriz interpolada

[X,Y] = meshgrid(1:length(DATA(1,:)),1:length(DATA(:,1)));
h= ~isnan(DATA);
t= find(h==1);
SALIDA = griddata(X(t),Y(t),DATA(t),X,Y,'cubic');
end