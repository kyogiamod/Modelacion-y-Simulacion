test = randi([1 2^31-1]);
format long
for i = 1:1000000
    test = Lehmer(test);
    sprintf('Test: %d\n', test);
end

r = test / (2^31-2);