function [x1,y1,mse] = regresion(x,y,n)
%x: tiempo
%y: datos
%n: grado de la regresion
%entrega: los ejes x e y de la interpolacion y el error cuadratico medio

p = polyfit(x,y,n);
x1 = x;
y1= polyval(p,x1); %datos de la regresión

% Error cuadrático medio
e1 = y1(:,1) - y(:,1); %regresion - original
e2_1 = e1.^2; %se calcula el cuadrado de cada elemento
mse = mean(e2_1); %calculo el promedio (sumar todo y dividirlo por el total de datos)

end