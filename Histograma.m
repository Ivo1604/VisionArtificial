clc   % Limpia ventana de comandos de salida
close all  % Cerrar ventanas previamente abiertas
clear  % Limpiar Memoria

imagen1 = imread('LowContrast_1.jpg');
imagen1 = rgb2gray(imagen1);

vectorHistograma = FHistograma(imagen1);

figure,colormap('gray'),imagesc(imagen1);
figure,bar(vectorHistograma),grid on; %muestra el histograma en grafico de barras