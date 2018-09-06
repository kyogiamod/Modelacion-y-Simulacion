N = 10;

P = getP();
[fil, col] = size(P);

cdf = cumsum(P,2);

matrix = [];
count = zeros([1 fil]);

i = randi([1 fil]);

for k = 1:N % Parte e
    u = rand; % Parte b
    
    matrix = [matrix; count];
    
    count(i) = count(i) + 1; %Parte a

    for j = 1:col-1 
        if u < cdf(i,1)
            i = 1;
            break;
        
        else
            if cdf(i,j) < u && u <= cdf(i,j+1) % Parte d
                i = j+1;
                break;
            end
        end
    end
end

% Ya se tienen los datos, se procede a graficar
x = 0:N-1;
ys = matrix'/N;
hold on;
for i = 1:fil
    plot(x, ys(i,:));
end
