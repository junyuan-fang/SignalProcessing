function y=spektri(x),
%
% Tulostaa signaalin spektrin näytölle
%
    
ikkuna = hamming(length(x));
z=reshape(x,length(x),1);
if length(x)<2048 
   s=abs(fft([ikkuna'.*z',zeros(1,2048-length(x))]));
else
   s=abs(fft(ikkuna'.*z'));
end

clear z;
y=s(1:length(s)/2);

if (nargout == 0) % Jos kutsuttiin ilman sijoitusta
    subplot(211);
    x=(1:length(s)/2)/(length(s));
    plot (x,y);
    grid on 
    xlabel('Normalisoitu taajuus');
end

