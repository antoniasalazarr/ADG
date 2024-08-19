
function [SALIDA_PASA_BAJO,SALIDA_PASA_ALTO] = filtro_pasa_banda(datos,LV1,LV2,n)
    [pasa_bajo1] = filtro_pasa_bajo(datos,LV1,n);
    [pasa_alto1] = filtro_pasa_alto(datos,LV1,n);
    [pasa_bajo2] = filtro_pasa_bajo(datos,LV2,n);
    [pasa_alto2] = filtro_pasa_alto(datos,LV2,n);

    SALIDA_PASA_BAJO = (pasa_bajo1)  - (pasa_bajo2);
    SALIDA_PASA_ALTO = (pasa_alto1) - (pasa_alto2);
end

