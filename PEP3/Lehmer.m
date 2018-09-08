function [state] = Lehmer(state)

    N = 2147483647;
    G = 48271;

%     /*
%         Indirectly compute state*G%N.
% 
%         Let:
%           div = state/(N/G)
%           rem = state%(N/G)
% 
%         Then:
%           rem + div*(N/G) == state
%           rem*G + div*(N/G)*G == state*G
% 
%         Now:
%           div*(N/G)*G == div*(N - N%G) === -div*(N%G)  (mod N)
% 
%         Therefore:
%           rem*G - div*(N%G) === state*G  (mod N)
% 
%         Add N if necessary so that the result is between 1 and N-1.
%     */
    div = state / (N / G);  % max : 2,147,483,646 / 44,488 = 48,271
    rem = mod(state,(N / G));  % max : 2,147,483,646 % 44,488 = 44,487

    a = rem * G;        % max : 44,487 * 48,271 = 2,147,431,977
    b = div * (mod(N,G));  % max : 48,271 * 3,399 = 164,073,129 
    
    if (a > b)
        state = a-b;
    else
        state = a + (N - b);
    end
end

