function [result] = part2b(values)
%Se ordenan de menor a mayor
values = sort(values);

%Validations:
%No pueden ser menor a cero
if values(1) < 0
    fprintf("Debe ingresar numeros mayores o iguales a cero\n")
    return
end
%El largo del arreglo debe ser por lo menos 8
if length(values) < 8
    fprintf("Debe ingresar al menos ocho numeros\n")
    return
end

%Deben ser solo numeros
if ~isnumeric(values)
    fprintf("Debe ingresar solo numeros\n")
    return
end

%Se procede a hacer el resultado
primerosCuatro = 0;
%Se suman los cuadrados de los primeros cuatro
for c = 1:4
    primerosCuatro = primerosCuatro + sqrt(values(c));
end

%Se procede a sumar el cuadrado de los utlimos 4
ultimosCuatro = 0;
for c = length(values)-3:length(values)
    ultimosCuatro = ultimosCuatro + sqrt(values(c));
end

%Se retorna el valor final
result = ultimosCuatro - primerosCuatro;
end