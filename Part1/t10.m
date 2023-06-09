close all; clc; clear;

fs = 20;
ts = 1/fs;
T = 1;
t = 0:ts:T-ts;
N = length(t);
f = -fs/2:fs/N:fs/2-fs/N;

x1 = exp(2j*pi*5*t)+exp(2j*pi*8*t);
X1 = fftshift(fft(x1));
x2 = exp(2j*pi*5*t)+exp(2j*pi*5.1*t);
X2 = fftshift(fft(x2));

figure; movegui(gcf, 'west')
subplot(1,1,1); stem(f, abs(X1)/max(abs(X1))); xlim([-10,10]); ylim([-.1 1.3])
title('FT of exp(2j*pi*5*t)+exp(2j*pi*8*t)')
legend('absolute value of F(x1)')

figure; movegui(gcf, 'east')
subplot(1,1,1); stem(f, abs(X2)/max(abs(X2))); xlim([-10,10]); ylim([-.1 1.3])
title('FT of exp(2j*pi*5*t)+exp(2j*pi*5.1*t)')
legend('absolute valueof F(x2)')

    