function vectorHistograma = perro(ImagenEntrada)
        %Argm de Salida   =  nombreFn(args Entrada)
        vectorHistograma = zeros(1,256);
        
        for valorPixel = 0:255
           
            frecuencia = find(ImagenEntrada == valorPixel );
            vectorHistograma(1,valorPixel+1) = length (frecuencia);
  
        end
        
end