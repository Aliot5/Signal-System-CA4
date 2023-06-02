res = 10000; % frequency devisions count under 1 i.e. 0.0001Hz
T = 1;      f = 1/T;
fs = 10;    ts = 1/fs;
t = 0:ts:res*T-ts;
s = sin(2*pi*f*3.85*t);

S = fftshift(fft(s));
N = length(s);
F = -fs/2:fs/N:fs/2-fs/N;

subplot(3,1,1)
plot(t(1:length(t)/res-1),s(1:length(t)/res-1)) % Signal in Time Domain
S = S .* (abs(S)>.1*max(abs(S)));
absS = abs(S)/max(abs(S));
subplot(3,1,2)
stem(F, absS) % Amp
subplot(3,1,3)
stem(F,angle(S)/pi) % Phase