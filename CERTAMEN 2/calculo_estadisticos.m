function SALIDA=calculo_estadisticos(DATA)

%DATA = serie de solo los datos que se le quiere calcular los estadisticos
%esta funcion entrega los estadisticos en el siguiente orden:
    %Media
    %Desviacion estandar
    %Q1
    %Q2
    %Q3
    %Trimeam
media= mean(DATA,'omitnan');
desviacion= std(DATA,'omitnan');
Q3= prctile(DATA,75);
Q2= prctile(DATA,50);
Q1= prctile(DATA,25);
trimean= (Q1 + 2*Q2 + Q3)/4 ;
SALIDA= table(media,desviacion,Q1,Q2,Q3,trimean);
end