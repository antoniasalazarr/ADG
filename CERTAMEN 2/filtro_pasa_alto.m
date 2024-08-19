
function [SALIDA]=filtro_pasa_alto(datos,LV,n)
    
    [pasa_bajo] = filtro_pasa_bajo(datos,LV,n);
    SALIDA = datos - pasa_bajo;

end