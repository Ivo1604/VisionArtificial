clc         %limpiar el command window
close all   %Cierra ventana previamente abierta 
clear       %Borrar archivos de memoria 


imagen = imread('LowContrast_1.jpg');  
imagen = rgb2gray(imagen);


prueba = Ejemplo1(imagen);
%Imprimir(prueba);
figure,bar(prueba),grid on;
