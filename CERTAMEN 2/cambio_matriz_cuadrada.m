function [SALIDA] = cambio_matriz_cuadrada(DATOS,anos,inicial,final)
%datos= se ingresa la matriz de dos columnas (fecha|dato)
%anos= se ingresa la CANTIDAD de años 
%inicial= se ingresa el PRIMER AÑO
%final= se ingresa el ULTIMO AÑO   
    B= zeros(anos,13);
    B(:,1)=(inicial:final);

    c=0; 

    for k=1:anos
      c=c+12;
      B(k,2:end)=DATOS(c-11:c,2);
    end
SALIDA= B;
end

