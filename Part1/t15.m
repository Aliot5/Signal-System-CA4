clc; clear; close all;
fs = 50;    ts = 1/fs;
tstart = -19; tend = 19;
t = tstart:ts:tend-ts;
x5 = zeros(size(t));
for i = -18:2:18
    x5 = x5 + (abs(t+i)<=0.5);
end
S = fftshift(fft(x5));
N = length(x5);
F = -fs/2:fs/N:fs/2-fs/N;

subplot(3,1,1)
plot(t,x5) % Signal in Time Domain
title("\Pis Train")
xlabel t; ylabel x

S = S .* (abs(S)>.01*max(abs(S)));
absS = abs(S)/max(abs(S));
subplot(3,1,2)
stem(F, absS) % Amp
title("FFT Amplitude")
xlabel f; ylabel amp

subplot(3,1,3)
stem(F,angle(S)/pi) % Phase
title("FFT Phase")
xlabel f; ylabel phase