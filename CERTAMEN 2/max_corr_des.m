function [salida1,salida2] = max_corr_des(corr_des,lag)
%se debe ingresar las salidas que entrega la funcion xcorr en el mismo
%orden y la funcion entregará la correlacion y desfase maximos.
a = max(corr_des);
b = min(corr_des); 

if abs(a)>abs(b)
    idx = corr_des == a;
    lag_max = lag(idx);
    mayor_correlacion = a;
elseif abs(b)>abs(a)
    idx = corr_des == b;
    lag_max = lag(idx); 
    mayor_correlacion = b;
end
mayor_desfase= lag_max;
salida1= mayor_correlacion;
salida2= mayor_desfase;
end