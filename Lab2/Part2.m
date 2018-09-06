%Se escribe el numerador en forma polonomial de la función de transferencia
%1
num1 = [0 0 3 0];
%Se escribe el denominador en forma polonomial de la función de
%transferencia 1
den1 = [0 5 0 2];
%Se crea la estructura de función de transferencia en matlab con el
%numerador y denominador anteriormente determinado
h1 = tf(num1,den1);
%Se escribe el numerador en forma polonomial de la función de transferencia
%2
num2 = [0 0 0 4];
%Se escribe el denominador en forma polonomial de la función de
%transferencia 2
den2 = [0 0 1 2];
%Se crea la estructura de función de transferencia en matlab con el
%numerador y denominador anteriormente determinado
h2 = tf(num2,den2);
%Se escribe el numerador en forma polonomial de la función de transferencia
%3
num3 = [0 0 3 1];
%Se escribe el denominador en forma polonomial de la función de
%transferencia 3
den3 = [3 5 0 1];
%Se crea la estructura de función de transferencia en matlab con el
%numerador y denominador anteriormente determinado
h3 = tf(num3,den3);
%Se escribe el numerador en forma polonomial de la función de transferencia
%4
num4 = [0 0 0 1];
%Se escribe el denominador en forma polonomial de la función de
%transferencia 4
den4 = [0 0 7 1];
%Se crea la estructura de función de transferencia en matlab con el
%numerador y denominador anteriormente determinado
h4 = tf(num4,den4);
%Se escribe el numerador en forma polonomial de la función de transferencia
%5
num5 = [0 0 5 4];
%Se escribe el denominador en forma polonomial de la función de
%transferencia 5
den5 = [5 1 0 4];
%Se crea la estructura de función de transferencia en matlab con el
%numerador y denominador anteriormente determinado
h5 = tf(num5, den5);
%Se escribe el numerador en forma polonomial de la función de transferencia
%6
num6 = [0 0 2 3];
%Se escribe el denominador en forma polonomial de la función de
%transferencia 6
den6 = [1 6 0 5];
%Se crea la estructura de función de transferencia en matlab con el
%numerador y denominador anteriormente determinado
h6 = tf(num6, den6);

%Se crea una nueva función de transferencia que sea equivalente a H3 y a la
%vez, con feedback positivo de la misma
h7 = feedback(h3, 1, +1);
%Se crea una nueva función de transferencia que sea equivalente a H4 y 
%paralela con H5
h8 = parallel(h4, h5);
%Se tienen 3 funciones de transferencia en serie, por lo que se crea una
%nueva F.T auxiliar, en donde esta en serie H7 y H8
h9 = series(h7, h8);
%Luego se le añade H6 que esta en serie con la funcion anterior
h9 = series(h9, h6);
%Se obtiene la funcion de transferencia final, la cual es la suma de H1, H2
hf = parallel(h1, h2);
%Y la F.T final del otro circuito
hf = parallel(hf, h9);

%Se grafica la funcion obtenida con un intervalo de 0 a 10
step(hf,10);
grid on;