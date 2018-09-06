% Numerador de la función de transferencia
numc = [0 3 10];
% Denominador de la función de transferencia
denc = [25 -4 30];

%Se transforma a la estructura de matlab tf
tfo = tf(numc, denc);

% figure: es para diferenciar los gráficos y abrirlos en ventanas
% diferentes
% step: es para geraficar la función en respuesta al escalón.
% hold: es para no borrar el gráfico y graficar encima otra función
% d2c: Devuelve una función continua a partir de una discretizada
% c2d: Devuelve una funcion discretizada a partir de una continua

%Se muestra la funcion continua
figure(1)
step(tfo, 'r-')
title('Step response continous')

ts1 = 0.1;
tfd1 = c2d(tfo, ts1, 'zoh');
ts2 = 1;
tfd2 = c2d(tfo, ts2, 'zoh');

%Se muestra la funcion discretizada, ts = 0.1
figure(2)
step(tfd1, 'b-')
title('Step response discretized (ts = 0.1)')

%Se muestra la funcion discretizada, ts = 1
figure(3)
step(tfd2, 'b-')
title('Step response discretized (ts = 1)')

%Se muestra la funcion diferencia entre continua y discretizada 0.1
figure(4)
step(tfo, 'r-', 780:0.001:800)
hold;
step(tfd1, 'b-')
title('Step response: Continous vs discretized')
legend('Continous','Discretized, ts = 0.1')


%Se muestra la funcion diferencia entre continua y discretizada 1
figure(5)
step(tfo, 'r-', 780:0.001:800)
hold;
step(tfd2, 'b-')
title('Step response: Continous vs discretized')
legend('Continous','Discretized, ts = 1')


% Se transforma de discretizado a continuo
figure(6)
tfc = d2c(tfd2);
step(tfc, 'b-');
hold;
tfo = tf(numc,denc,'InputDelay', 1);
step(tfo, 'r-')