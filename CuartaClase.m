clc         %limpiar el command window
close all   %Cierra ventana previamente abierta 
clear       %Borrar archivos de memoria 

imagen = imread('imagen1.jpg');  
imagen = rgb2gray(imagen);
imagen = double(imagen);

vm = mean (mean(imagen));
e = std(std(imagen));

umbral = vm + (2*e);

Resultado = imagen*0;
Resultado (imagen > umbral) = 2;

figure,colormap('gray'),imagesc(Resultado);

