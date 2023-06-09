fs = 50;    ts = 1/fs;
tstart = -1; tend = 1;
t = tstart:ts:tend-ts;
x1 = cos(2*pi*5*t);

S = fftshift(fft(x1));
N = length(x1);
F = -fs/2:fs/N:fs/2-fs/N;

subplot(3,1,1)
plot(t,x1) % Signal in Time Domain
title cos(10\pit)
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