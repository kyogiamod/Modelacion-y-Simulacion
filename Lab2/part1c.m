%Se crea una nueva figura
figure(1)
%Se hace y muestra el grafico de la funcion de transferencia 3 en lazo
%abierto
ht1 = step([0 0 0 1],[1 0 0 1]);
plot(ht1)
%Se asigna el label x
xlabel('Tiempo (segundos)')
%Se asigna el label y
ylabel('Amplitud')
%Se asigna el label titulo
title('Respuesta al escalon lazo abierto')
grid('on')

%Se crea una nueva figura
figure(2)
[num, den] = cloop([0 0 0 1],[1 0 0 1]);
%Se hace y muestra el grafico de la funcion de transferencia 3 en lazo
%abierto
ht2 = step(num, den);
plot(ht2)
%Se asigna el label x
xlabel('Tiempo (segundos)')
%Se asigna el label y
ylabel('Amplitud')
%Se asigna el label titulo
title('Respuesta al escalon lazo cerrado')
grid('on')

%Se crea una nueva figura
figure(3)
%Se grafica los valores del lazo abierto con * y color rojo
plot(ht1, 'r *')
%Para que no se borre el grafico
hold('on')
%Se grafica los valores del lazo abierto con * y color azul
plot(ht2, 'b +')
%Se asigna el label x
xlabel('Tiempo (segundos)')
%Se asigna el label y
ylabel('Amplitud')
%Se asigna el label titulo
title('Comparación entre lazo abierto y cerrado')
grid('on')

ganancia = dcgain ([0 0 0 1] , [1 0 0 1]);
[ wn, z , polos] = damp([1 0 0 1]);
tiempo= 3/(wn.*z);
fprintf("Ganancia estatica: %f\n", ganancia);
fprintf("wn: %f\n", wn);
fprintf("z: %f\n", z);
fprintf("polos: %f\n", polos);
fprintf("tiempo de estabilización: %f[s]\n", tiempo);