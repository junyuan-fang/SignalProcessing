function plot_amp_resp(b, a, Fs)

[H, W] = freqz(b, a);
%plot(Fs * W / (2*pi), 20*log10(abs(H)), 'LineWidth',2);
plot(Fs * W / (2*pi), abs(H), 'LineWidth', 2);%
axis([0, Fs/2, 0,1])%
grid on