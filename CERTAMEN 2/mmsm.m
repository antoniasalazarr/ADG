function [mm,dem]=mmsm(x,paso,w)
%x: datos
%paso: igual a 1
%w: ancho de la ventana
%entrega la media movil y la desviacion estandar movil
c=0; 
for i=w:paso:length(x) 
mm(c+1)=mean(x(i-w+1:i),'omitnan'); % media movil
sm(c+1)=std(x(i-w+1:i),'omitnan'); % std movil
c=c+1;
end
mm=mm';
dem=sm';
end
