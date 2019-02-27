clc
close all
clear 

imagen1 = imread('scr3.gif');
imagen2 = imread('scr4.gif');

        resta= imagen1 - imagen2;
        resta2= imagen2 - imagen1;
        resultado = resta2 + resta;
        resultado = resultado*10;
        figure,colormap('gray'),imagesc(resultado);

        
        %figure,colormap('gray'),imagesc(sumaP);
        %figure,colormap('gray'),imagesc(resta);
       