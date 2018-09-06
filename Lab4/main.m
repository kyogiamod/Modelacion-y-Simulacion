function [] = main()

fprintf("Parte 1:\n");

[H1, H2] = PidePolinomio();

display(H1);
display(H2);

[A, B, C, D] = ME(H1, H2);


display(A);
display(B);
display(C);
display(D);

fprintf("Parte 2:\n");

[F1, h1, h2, Area] = PideVariables();
[A, B, C, D] = VasosComunicantes(F1, h1, h2, Area);

display(A);
display(B);
display(C);
display(D);



end

