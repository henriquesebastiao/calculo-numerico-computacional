function [x, k] = bissec(a,b,p)
    % x => raiz procurada
    % k => numero de iterações
    % [a, b] => intervalo que contém uma única raiz
    % p => precisão
    k=0;
    while abs(a-b) > p
        k = k + 1;
        x = (a + b) / 2;
        if f(a) * f(x) > 0
            a = x;
            else
            b = x;
        end
    end