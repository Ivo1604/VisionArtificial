clc         %limpiar el command window
close all   %Cierra ventana previamente abierta 
clear       %Borrar archivos de memoria 

%Ej. 1. Mostrar una matriz como si fuese una imagen

%imagen = floor(255*rand(256));

image = [1,0;0,1];
image = uint8(image);
figure,colormap('gray'),imagesc(image);
%figure,colormap('gray'),imshow(image);
    %imagesc    
    %imshow