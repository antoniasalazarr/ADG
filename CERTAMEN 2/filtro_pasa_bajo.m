%% Esta funcion es un filtro pasa bajo
%datos= serie original de datos
%LV= largo de la ventana 
%n es condicional 
%n=1 ventana rectangular
%n=2 ventana triangular
%n=3 ventana gaussiana

function [SALIDA] = filtro_pasa_bajo(datos,LV,n)
    if n==1
    r1= rectwin(LV);
    rn1= r1/sum(r1);
    SALIDA= filtfilt(rn1,1,datos);

    elseif  n==2
                   
    t1= triang(LV);
    tn1= t1/sum(t1);
    SALIDA= filtfilt(tn1,1,datos);
    
    elseif n==3

    g1= gausswin(LV);
    gn1= g1/sum(g1);
    SALIDA= filtfilt(gn1,1,datos);

    end
end

%En el filtro pasa bajo saca la media porque la media es una frecuencia
%alta ya que una serie pasa siempre con pendiente negativa o positiva.