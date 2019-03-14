function imagenR = FEcualizador(H,imagenEntrada)

    imagenR = 0 * imagenEntrada;

    H = H/numel(imagenEntrada);
    Maximo = max(max(imagenEntrada));
    H = H * Maximo;

    Hacc = cumsum(H); %histograma acomulada
    Hacc = floor(Hacc); % redonde de Hacc

    for valpixel = 0:255
        imagenR(imagenEntrada == valpixel) = Hacc(1,valpixel+1);
    end

    figure,bar(Hacc),grid on; 
end