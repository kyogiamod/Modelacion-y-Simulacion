%Crea el rango de los valores de x
x = 0: .01: 15*pi; 

%Se crea la funcion a
a = 5 * log(6*x + 3)/log(5);
%Se crea la funcion b
b = sin(4*(log(x+1)/log(2))) + cos(4*(log(x+9)/log(6)));

%Se printea la primera figura:
%para separar en ventanas
figure(1)
%Se asigna nombre al grafico, al eje y y al eje x
% y la dibuja
plot(x,a,'r *');
title('Gráfica de la función a(x)');
ylabel('a(x)');
xlabel('x');

%Se abre una nueva ventana para la segunda figura
figure(2)
%Se asigna nombre al grafico, al eje y y al eje x 
% y la dibuja
plot(x,b,'g +');
title('Gráfica de la función b(x)');
ylabel('b(x)');
xlabel('x');

%Se grafican ambas funciones juntas en una tercera ventana
figure(3)
%Se asigna nombre al grafico, al eje y y al eje x
% y dibuja ambas curvas juntas
plot(x,a,'r *',x,b,'g +');
title('Gráfica de las funciónes a(x) y b(x)');
legend("y = a(x)", "y = b(x)") %para agregar la leyenda de cada grafico
ylabel('y(x)');
xlabel('x');