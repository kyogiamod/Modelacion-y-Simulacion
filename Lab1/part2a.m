%Se crea la funci�n
function [x] = part2a(y, maxIt, error, init)
dy = polyder(y); %dy es la derivada
x = init; %valor inicial
x_ant = Inf; %x anterior
iter = 0;
%Mientras el error sea mayor que el tolerado y no se 
%haya pasado con el maximo de iteraciones:
while abs(x_ant-x) > error && iter < maxIt
    iter = iter + 1;
    x_ant = x;
    %Se calcula el nuevo x y el anterior pasa a ser actual
    x = x - polyval(y,x)/polyval(dy,x);
end
%Retorna x, que es el valor root
end

