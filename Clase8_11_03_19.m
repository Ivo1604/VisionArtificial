clc
clear

imagen = imread('trump.jpg');
imagen = rgb2gray(imagen);
k = (1/69) * ones(10);
imconv = conv2(imagen,k,'same');


figure,colormap('gray'),imagesc(imagen);
figure,colormap('gray'),imagesc(imconv);
