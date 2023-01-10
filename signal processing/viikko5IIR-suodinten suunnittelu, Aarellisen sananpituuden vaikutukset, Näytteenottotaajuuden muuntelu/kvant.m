function y = kvant(x, q)
% Funktio joka pyöristää jokaisen vektorissa x olevan näytteen
% luvun q monikerraksi. Esim.:
%    y = kvant(x, 2^(-5));
% kvantisoi jokaisen x:n näytteen luvun 2^(-5) monikerraksi
% (eli 1+5 bitin esitykseen).
%
% Heikki.Huttunen@tuni.fi 13.04.2020

y = q * round(x / q);