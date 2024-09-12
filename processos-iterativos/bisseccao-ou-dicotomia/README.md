# Implementação do Método da Dicotomia ou Bissecção

Uma função programada em MATLAB para encontrar a raiz de uma função pelo método da dicotomia poderia ter a seguinte estrutura:

```matlab
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
```

A função `f(x)` do exemplo poderia ter a seguinte forma:

```matlab
function v = f(x)
    v = x^2  - exp(-x);
```

Em MATLAB, os nomes dos arquivos precisam ser idênticos aos nomes das funções, de forma que os arquivos gravados seria `bissec.m` e `f.m`. Um programa principal para encontrar a raiz deste exemplo poderia ser:

```matlab
a = 1.8;
b = 0.2;
prec = 1e-8;
[x, k]=bissec(a, b, prec)
```

A função `bissec.m` devolve os seguintes valores: `x = 0.7035` e `k = 24`.
