clc 
close all
clear 

imagen = imread('LowContrast_1.jpg');
imagen = rgb2gray(imagen);
Hx =[-1 0 1; -2 0 2; -1 0 1];
Hy =[-1 -2 -1; 0 0 0 ; 1 2 1];
%GX muestra donde hay transiciones o bordes en la imagen en direccion 
%Horizontal Porque GX es la respuesta de la imagen a un kernel para 
%detetar cambios en el eje x (direccion horizontal)
Gx= conv2(imagen,Hx,'same'); %Convolucionar una imagen usando conv2 y se pasan 3 parametros imagen, constante y same(es para que la imagen quede igual que la original)
%GY muestra donde hay transiciones o bordes en la imagen en direccion 
%verticañ Porque Gy es la respuesta de la imagen a un kernel para 
%detetar cambios en el eje y (direccion vertical)
Gy= conv2(imagen,Hy,'same');

%sqrt= raiz cuadrada en matlab
%Var.^n = para elevar un valor a la n 
% Muestra los bordes mas fuertes pero sin especifica x o y
M= sqrt((Gx.^2)+(Gy.^2));

figure,colormap('gray'),imagesc(Gx);
figure,colormap('gray'),imagesc(Gy);
figure,colormap('gray'),imagesc(M);