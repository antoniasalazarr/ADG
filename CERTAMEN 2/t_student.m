function [t_c,s] = t_student(rho,N)
    %rho: coeficiende de correlacion
    %N: Cantidad de datos
    %Esta funcion calcula la t de student y el s

    t_c= rho*sqrt((N-2)/(1-rho^2));
    s= rho/t_c;
end