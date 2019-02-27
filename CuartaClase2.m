clc         %limpiar el command window
close all   %Cierra ventana previamente abierta 
clear       %Borrar archivos de memoria 

imagen = imread('imagen2.jpg');  
imagen = rgb2gray(imagen);

fsm = 2;
imagen2 = imagen(1:fsm:end,1:fsm:end);
aTr = imagen'; %Transpuesta de una matriz 

figure,colormap('gray'),imagesc(imagen);
%figure,colormap('gray'),imagesc(B);
figure,colormap('gray'),imagesc(imagen2);