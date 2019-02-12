clc           %Limpiar el command window
close all     %Cerrar Ventanas previamente abiertas
clear         %Limpiar memoria

imagen = rand(256,256);  %Declarar una matriz de 256x 256

imagen = 256*imagen; % 

imagen = floor(imagen); %aproximar valores al valor entero mas bajo

%imagen = ceil(imagen); %aproximar valores al valor entero mas alto

    im2 = imread('PrimeraImagen.jpg');

    figure,colormap('gray'),imagesc(im2);