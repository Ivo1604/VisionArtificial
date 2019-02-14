clc         %limpiar el command window
close all   %Cierra ventana previamente abierta 
clear       %Borrar archivos de memoria 


%Ej 2


imagen = imread('imagen.jpg');
imagen2 = imread('imagen2.jpg');
imagen = rgb2gray(imagen); %limitar a que solo tenga dos dimensiones 
imagen2 = rgb2gray(imagen2); %limitar a que solo tenga dos dimensiones 
 minimo1 = min(min(imagen));
 maximo1 = max(max(imagen));
 
 minimo2 = min(min(imagen2));
 maximo2 = max(max(imagen2));
 
 [fila,col] = size(imagen2);
 imagen = imagen(1:fila,1:col);
 
 resultado = imagen + imagen2;
 %imagen = imagen*10;  % se multiplica cada pixel por 10 por eso la imagen 
                      % se va a ver  mucho mas blanca 
                 
 %c.) Operar inverso
 %imagen = maximo - imagen;   
 
 %d.) Operar Umbral 
%   umbral = 52;
%   resultado = 0*imagen;
%   resultado(imagen >= umbral)=1;
  
         figure,colormap('gray'),imagesc(resultado);
         %figure,colormap('gray'),imshow(resultado);
         %figure,colormap('gray'),imagesc(imagen2);
         %figure,colormap('gray'),imshow(resultado);