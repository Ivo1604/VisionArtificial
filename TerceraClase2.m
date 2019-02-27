clc
close all
clear 

imagen1 = imread('scr1.gif');
imagen2 = imread('scr2.gif');
% imagen1 = rgb2gray(imagen1);
% imagen2 = rgb2gray(imagen2);

[nFilas1,nCols1] = size(imagen1);
[nFilas2,nCols2] = size(imagen2);
    if nFilas1 < nFilas2 && nCols1 < nCols2 
         imagen2 = imagen2(1:nFilas1,1:nCols1);
    else
        imagen1 = imagen1(1:nFilas2,1:nCols2);
    end

    
    resta=imagen1 - imagen2;
        suma = imagen1 + imagen2;
        k = 0.2;
        sumaP = k*imagen1 + ((1 - k)*imagen2);
        
        %figure,colormap('gray'),imagesc(sumaP);
        figure,colormap('gray'),imagesc(resta);
       