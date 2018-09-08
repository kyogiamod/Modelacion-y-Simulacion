function [x2] = Lehmer(x1)
x2 = mod(48271*x1, 2^31-1);
end

