clc
close all
clear 

imagen=imread('HighContrast_1.jpg');
imagenN = 0*imagen;
h= Ejemplo1(imagen);
h/numel(imagen); %normalizacion
h= h*255;% por (L-1)=255
hacc= cumsum(h); %cumsum = suma acumulada
figure,imagesc(imagen);

for valpixel =0:255
imagenN(imagen==valpixel)=hacc(1,valpixel+1);
end
figure,imagesc(imagenN);
