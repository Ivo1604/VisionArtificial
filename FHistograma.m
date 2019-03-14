function vectorHistograma = FHistograma(imagenEntrada)
%  funcion args salida    =  nombreFn   (args entrada) 

vectorHistograma = zeros(1,256);%zeros:sirve para declarar vectores

    for valorPixel = 0:255

        frecuencia = find(imagenEntrada == valorPixel);
        %find: funcion para encontrar valores en una matriz
        %frecuencia: la posicion donde encontro el valor
    vectorHistograma(1,valorPixel+1) =  length(frecuencia);
           %length: determina la longitud del vector
    end
end