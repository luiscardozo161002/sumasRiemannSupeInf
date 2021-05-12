% Octave Script
% Title			:Sumatoria de Riemann_supeiores_e_inferiores.
% Description		:Script para desarrrollar el ejericio 4 de la actividad Sumatoria de Riemann_supeiores_e_inferiores.
% Author		:Luis Gerardo Cardozo Carranza (Gerard_CRS) luiscardozo161002@gmail.com
% Date			:20210429
% sion		        :1
% Usage			:octave> /path/Sumatoria de Riemann_supeiores_e_inferiores_Luis Gerardo Cardozo Carranza_3202
% Notes			:Requiere aplicacion octave usar en consola preferentemente. 

% Sumatoria de Riemann_supeiores_e_inferiores Ejercicio 4 f(x)=4x+5;[x=2,x=5]
%Limpiar variables.
%limpia la pantalla y las variables.
clc, clear
%define los intervalos y el numero de rectangulos.
a = 2;
b = 5;
n = 100;
%determina la longitud de la base o el incremento de x.
base = (b-a)/n;
%definicion de la funcion.
x =a:base:(b-base);
%y esta representada por la variable altura
altura=(4*x)+5;
%calcula el valor de cada uno de los rectangulos.
area = base*altura;
%estable    la    linea   que   forma  la funcion
x2 = linspace(2,5,100);
y2 = (4*x)+5;
%inicio del  intervalo, fin del intervalo, numero 
%de rectangulos.
xa = linspace(2,5,100);
yab =(4*x)+5;

%dibuja una  grafica de barras una a lado de otra 
%sin espacios
g = bar(xa,yab,'histc');

%permite continuar  graficando  despues de que ya 
%exista un grafica trazada
hold on

%Grafica la funcion
plot(x2,y2);

%Asigna un nombre a la grafica 
title("Ejercicio 4 f(x)=4x+5;[x=2,x=5]");

%ajusta la grafica a los datos.
axis tight
