function [H1, H2] = PidePolinomio()

n1 = input('Ingrese el numerador de la funcion de transferencia 1: ');
d1 = input('Ingrese el denominador de la funcion de transferencia 1, entre corchetes [] y separados por un espacio: ');

n2 = input('Ingrese el numerador de la funcion de transferencia 2: ');
d2 = input('Ingrese el denominador de la funcion de transferencia 2, entre corchetes [] y separados por un espacio: ');

H1 = tf(n1, d1);
H2 = tf(n2, d2);



end

