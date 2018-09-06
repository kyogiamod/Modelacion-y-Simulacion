function [A, B, C, D] = ME(h1, h2)

[n1, d1] = tfdata(h1, 'v');
[n2, d2] = tfdata(h2, 'v');

a1 = n1(2);
b1 = d1(1);
c1 = d1(2);

a2 = n2(2);
b2 = d2(1);
c2 = d2(2);

a11 = -c1/b1;
a12 = -a1/b1;
a21 = a2/b2;
a22 = -c2/b2;

b11 = a1/b1;
b21 = 0;

A = [ a11 a12; 
      a21 a22 ];
  
B = [ b11;
      b21 ];
  
C = [1 0];

D = 0;

end

