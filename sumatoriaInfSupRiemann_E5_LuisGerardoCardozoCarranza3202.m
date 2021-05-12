% Octave Script
% Title			:Sumatoria de Riemann_supeiores_e_inferiores.
% Description		:Script para desarrrollar el ejericio 5 de la actividad Sumatoria de Riemann_supeiores_e_inferiores.
% Author		:Luis Gerardo Cardozo Carranza (Gerard_CRS) luiscardozo161002@gmail.com
% Date			:20210429
% sion		        :1
% Usage			:octave> /path/Sumatoria de Riemann_supeiores_e_inferiores_Luis Gerardo Cardozo Carranza_3202
% Notes			:Requiere aplicacion octave usar en consola preferentemente. 

% Sumatoria de Riemann_supeiores_e_inferiores Ejercicio 5 f(x)=3(1/35)(x)^2;[-3,3]

%limpia la pantalla y las variables.
clc, clear
%define los intervalos y el numero de rectangulos.
a =-3;
b = 3;
n = 100;
%determina la longitud de la base o el incremento de x.
base = (b-a)/n;
%definicion de la funcion.
x =a:base:(b-base);
%y esta representada por la variable altura
altura=((x.^2)/3)*100;
%calcula el valor de cada uno de los rectangulos.
area = base*altura;
%estable    la    linea   que   forma  la funcion
x2 = linspace(-3,3,100);
y2 = ((x.^2)/3)*100;
%inicio del  intervalo, fin del intervalo, numero 
%de rectangulos.
xa = linspace(-3,3,100);
yab = ((x.^2)/3)*100;

%dibuja una  grafica de barras una a lado de otra 
%sin espacios
g = bar(xa,yab,'histc');

%permite continuar  graficando  despues de que ya 
%exista un grafica trazada
hold on

%Grafica la funcion
plot(x2,y2);

%Asigna un nombre a la grafica 
title("Ejercicio 5 f(x)=3(1/35)(x)^2;[-3,3]");

%ajusta la grafica a los datos.
axis tight
