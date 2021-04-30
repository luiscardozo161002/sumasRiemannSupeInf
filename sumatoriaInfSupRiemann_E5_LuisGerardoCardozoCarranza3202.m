% Octave Script
% Title			:Sumatoria de Riemann_supeiores_e_inferiores.
% Description		:Script para desarrrollar el ejericio 5 de la actividad Sumatoria de Riemann_supeiores_e_inferiores.
% Author		:Luis Gerardo Cardozo Carranza (Gerard_CRS) luiscardozo161002@gmail.com
% Date			:20210429
% sion		        :1
% Usage			:octave> /path/Sumatoria de Riemann_supeiores_e_inferiores_Luis Gerardo Cardozo Carranza_3202
% Notes			:Requiere aplicacion octave-online usar en consola preferentemente. 
%program execution page :https://octave-online.net

% Sumatoria de Riemann_supeiores_e_inferiores Ejercicio 5 f(x)=3(1/35)(x)^2;[-3,3]
% Si se graficá su comportamiento es cuadratico.
  
%suma de riemann para calcular el area debajo de la curva de f(x)=3(1/35)(x)^2;[-3,3]
%sysm declarar más de una variable simbólica y no precisa de comillas simples, por lo que se utilizará con mayor frecuencia.
syms x 
f = @(x) 3(1/35)(x)^2
%intervalos
desde =-3
hasta =3
%numero de rectangulos
cant = 40
h = (hasta - desde)/cant
%calculando xi
xi = linspace(desde, hasta, cant+2)
%almacenamiento de x 
for i = 1 : cant+1
    yi(i) = f(xi(i));
end
%mostrar en pantalla   
Rn = h* sum(double(yi(1 : cant)))
Ln = h* sum(double(yi(2 : cant+1)))


ezplot(f,[desde hasta]);
hold on;

plot([xi(1) xi(end)],[0 0],'b')

%canidad rectangulos
for i = 1 : cant+1
    if(f(xi(i)) >= 0)
        %Rectangulo inferior
        plot([xi(i) xi(i)],[0 double(f(fminbnd(f,xi(i),xi(i+1))))],'g')
        plot([xi(i) xi(i+1)],[double(f(fminbnd(f,xi(i),xi(i+1)))) double(f(fminbnd(f,xi(i),xi(i+1))))],'g')
        plot([xi(i+1) xi(i+1)],[double(f(fminbnd(f,xi(i),xi(i+1)))) 0],'g')
    
        g = @(x) -f(x);
    
        %Rectangulo superior
        plot([xi(i) xi(i)],[0 double(f(fminbnd(g,xi(i),xi(i+1))))],'r')
        plot([xi(i) xi(i+1)],[double(f(fminbnd(g,xi(i),xi(i+1)))) double(f(fminbnd(g,xi(i),xi(i+1))))],'r')
        plot([xi(i+1) xi(i+1)],[double(f(fminbnd(g,xi(i),xi(i+1)))) 0],'r')
    else
        %Rectangulo inferior
        plot([xi(i) xi(i)],[0 double(f(fminbnd(f,xi(i),xi(i+1))))],'r')
        plot([xi(i) xi(i+1)],[double(f(fminbnd(f,xi(i),xi(i+1)))) double(f(fminbnd(f,xi(i),xi(i+1))))],'r')
        plot([xi(i+1) xi(i+1)],[double(f(fminbnd(f,xi(i),xi(i+1)))) 0],'r')
    
        g = @(x) -f(x);
    
        %Rectangulo superior
        plot([xi(i) xi(i)],[0 double(f(fminbnd(g,xi(i),xi(i+1))))],'g')
        plot([xi(i) xi(i+1)],[double(f(fminbnd(g,xi(i),xi(i+1)))) double(f(fminbnd(g,xi(i),xi(i+1))))],'g')
        plot([xi(i+1) xi(i+1)],[double(f(fminbnd(g,xi(i),xi(i+1)))) 0],'g')
    end
end
