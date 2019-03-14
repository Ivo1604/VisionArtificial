clc   % Limpia ventana de comandos de salida
close all  % Cerrar ventanas previamente abiertas
clear  % Limpiar Memoria

imagen1 = imread('LowContrast_1.jpg');
imagen1 = rgb2gray(imagen1);
imagen1 = double(imagen1);

H = FHistograma(imagen1);
imagenR = FEcualizador(H,imagen1);

figure,colormap('gray'),imagesc(imagenR);
figure,colormap('gray'),imagesc(imagen1);
figure,bar(H),grid on;

