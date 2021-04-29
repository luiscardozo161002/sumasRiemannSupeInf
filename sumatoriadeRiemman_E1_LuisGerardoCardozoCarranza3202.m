% Octave Script
% Title			:Sumatoria de Riemann_supeiores_e_inferiores.
% Description		:Script para desarrrollar el ejericio 1 de la actividad Sumatoria de Riemann_supeiores_e_inferiores.
% Author		:Luis Gerardo Cardozo Carranza (Gerard_CRS) luiscardozo161002@gmail.com
% Date			:20210429
% sion		  :1
% Usage			:octave> /path/Sumatoria de Riemann_supeiores_e_inferiores_Luis Gerardo Cardozo Carranza_3202
% Notes			:Requiere aplicacion octave usar en consola preferentemente

% Sumatoria de Riemann_supeiores_e_inferiores Ejercicio 1 f(x)=x^2+2;[1,4]
% Si se graficá su comportamiento es cuadratico.
  
  %suma de riemann para calcular el area debajo de la curva de f(x)=x^2+2;[1,4]
%Limpiar variables.
  clean; clc;
%intervalo
  a=1; b=4;
%numero de rectangulos
  n_rec=5;
%delta
  delta_x=(b-a)/n_rec;
%valores de x=n+1
  x=(1,n_rec+1);
%almacenamiento de los valores de X
  for k=1;length(x)
    x(k)= a +(k-1)*delta_x
  end
 
 %xx=linspace(a,b,n_rect+1);

%x(1)=a;
%for m=2:length(x)
     x(m)=x(m-1)+delta_x;
%end
  
%llamado de la funcion
 f=feval('funcion',x);

%calculo de las areas
  
  %derecha
  Area_der=0;
for i=1:n_rec
  Area_der=Area_der+f(x(i+1))*delta_x;
end
  
  %izquierda
Area_izq=0;
for j=0:n_rec
  Area_izq=Area_izq+f(x(j))*delta_x;
end
  
  %mostrar en pantalla
  
%Area=[Area_izq,Area_der];
%double(Area)

%calculo de puntos medios 
  medio=zero(1,length(x)-1;
             for k=1:n_rec
             medio(k)=(x(k)+x(k+1))/2;
             end
     Area_medio=0;
for l=1:n_rec
           Area_medio=Area_medio+f(medio(1))*delta_x;
end
Area=[Area_izq,Area_medio,Area_der];
             double(Area)
