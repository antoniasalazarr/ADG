function [mm]=q3movil(x,paso,w)
%x: datos
%paso: igual a 1
%w: ancho de la ventana
%entrega la media movil y la desviacion estandar movil
c=0; 
for i=w:paso:length(x) 
mm(c+1)=prctile(x(i-w+1:i),75); % media movil
c=c+1;
end
mm=mm';
end