%Se crea el vector de valores de x
x = -10:.05:10;

%Se crea la función
c = 5*exp(2*x-10);

%Se abre la funcion en una ventana
figure(1)
%Se asigna nombre al grafico, al eje y y al eje x 
% y la dibuja con grid (celdas)
plot(x,c)
title('Gráfico de c(x) en escala normal')
xlabel('x')
ylabel('c(x)')
grid on

%Se abre la funcion en otra ventana para graficar en escala logaritmica
figure(2)
%Se asigna nombre al grafico, al eje y y al eje x 
% y la dibuja con grid (celdas)
semilogy(x,c) %Para graficos logaritmicos
title('Gráfico de c(x) en escala logarítmica')
xlabel('x')
ylabel('log(c(x))')
grid on

