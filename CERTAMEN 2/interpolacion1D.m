function SALIDA = interpolacion1D(DATA)

%DATA: se debe ingresar la matriz de 2 columnas que se quiere interpolar
%SALIDA: Entrega la matriz interpolada

d= ~isnan(DATA(:,2)); %1 es donde NO es NaN
m= find(d==1); %posiciones de donde hay dato

x= m; %posiciones (fecha) de donde hay dato
v= DATA(m,2); %datos que no son NaN
xq= 1:length(DATA);

SALIDA = interp1(x,v,xq,'cubic');
end