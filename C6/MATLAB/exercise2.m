clear all, close all
T = 1; ts = 0.01;   % time horizon and discretization time
t = 0:ts:T;         % time vector
f = 0.9;               % signal frequency
phi = 0;
u = sin(2*pi*t*f + phi);  % signal
figure, hold on, stem(t,u,'k')
str = sprintf('Sinusoidal sequence with T = %g, ts = %g, f = %g', T, ts, f);
title(str), xlabel('time, t'), ylabel('u(t)');

u1 = sin(2*pi*(t+1/4)); % positive time shift
u2 = sin(2*pi*(t-1/4)); % negative time shift
u3 = sin(2*pi*t+pi/2);  % positive phase shift
u4 = sin(2*pi*t-pi/2);  % negative phase shift
figure, hold on
stem(t,u,'k'), stem(t,u1,'r'), stem(t,u2,'b')
title('Original signal and its time shifts')
xlabel('time, t'), ylabel('u(t), u1(t), u2(t)')
figure, hold on
stem(t,u,'k'), stem(t,u3,'r'), stem(t,u4,'b')
title('Original signal and its phase shifts')
xlabel('time, t'), ylabel('u(t), u3(t), u4(t)')

u5 = sin(2*pi*(2*t));   % time scale by constant > 1
u6 = sin(2*pi*(1/2*t)); % time scale by constant < 1
figure, hold on
stem(t,u,'k'), stem(t,u5,'r'), stem(t,u6,'b')
title('Original signal and its time scaled versions')
xlabel('time, t'), ylabel('u(t), u5(t), u6(t)')
