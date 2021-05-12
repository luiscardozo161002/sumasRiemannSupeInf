% Octave Script
% Title			:Sumatoria de Riemann_supeiores_e_inferiores.
% Description		:Script para desarrrollar el ejericio 3 de la actividad Sumatoria de Riemann_supeiores_e_inferiores.
% Author		:Luis Gerardo Cardozo Carranza (Gerard_CRS) luiscardozo161002@gmail.com
% Date			:20210429
% sion		        :1
% Usage			:octave> /path/Sumatoria de Riemann_supeiores_e_inferiores_Luis Gerardo Cardozo Carranza_3202
% Notes			:Requiere aplicacion octave usar en consola preferentemente. 

% Sumatoria de Riemann_supeiores_e_inferiores Ejercicio 3 f(x)=-x+1;[-2,3]
%limpia la pantalla y las variables.
clc, clear
%define los intervalos y el numero de rectangulos.
a = -2;
b =  3;
n = 100;
%determina la longitud de la base o el incremento de x.
base = (b-a)/n;
%definicion de la funcion.
x =a:base:(b-base);
%y esta representada por la variable altura
altura=(-x+1);
%calcula el valor de cada uno de los rectangulos.
area = base*altura;
%estable    la    linea   que   forma  la funcion
x2 = linspace(-2,3,100);
y2 = (-x+1);
%inicio del  intervalo, fin del intervalo, numero 
%de rectangulos.
xa = linspace(-2,3,100);
yab =(-x+1);

%dibuja una  grafica de barras una a lado de otra 
%sin espacios
g = bar(xa,yab,'histc');

%permite continuar  graficando  despues de que ya 
%exista un grafica trazada
hold on

%Grafica la funcion
plot(x2,y2);

%Asigna un nombre a la grafica 
title("Ejercicio 3 f(x)=-x+1;[-2,3]");

%ajusta la grafica a los datos.
axis tight
