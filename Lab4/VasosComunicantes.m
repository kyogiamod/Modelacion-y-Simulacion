function [A, B, C, D] = VasosComunicantes(F1, h1, h2, Area)
A = [   0   0;
        0   1/Area
    ];
B = [   0;
        -1/Area
    ];
C = [0  1];
D = 0;
end

