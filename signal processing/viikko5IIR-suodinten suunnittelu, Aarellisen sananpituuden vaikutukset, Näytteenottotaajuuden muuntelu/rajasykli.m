N = 10000; % Testisignaalin pituus
x = [1; 1; zeros(N,1)]; % Syöte
y = zeros(size(x)); % Vaste

% Kirjoita alle y(n):ään suodatuksen tulos kvantisoinnin
% jälkeen, kun suodin on H(z) = 1 / (1 + 0.5z^(-1)).

for n = 2:N
    y(n) = -0.5*y(n-1)+x(n-1);
end

%tai ei käytetä for, vaan filteri
%b = 1;
%a = [1 ,0.5];
%x_kvant = quant(x,2^-5);
%y = filter(b,a,x_kvant);
    
stem(y(1:100), 'filled')
figure
plot(1:length(y),log10(y))
title('Impulse value filted by IIR(dB)')
xlabel('n') 
ylabel('dB') 

soundsc(y,8000)
