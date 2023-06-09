clear; close all;

% Matlab Solver
syms y(t); D2y = diff(y,t,2); Dy = diff(y,t);
ode = (D2y+3*Dy+2*y==5*heaviside(t));
cond = [y(0) == 1, Dy(0) == 1];
uSoly = dsolve(ode,cond);
t = 0:.01:10;
ym = subs(uSoly);

subplot(2,1,1)
plot(t,ym)
title("Matlab Answer")
xlabel t; ylabel y

% Theory
syms s
TheryPartFrac = partfrac((s^2+4*s+5)/(s^3+3*s^2+2*s))
yt = (1/2*exp(-2*t) -2*exp(-t) + 5/2);

subplot(2,1,2)
plot(t,yt)
title("Theoretical Answer")
xlabel t; ylabel y