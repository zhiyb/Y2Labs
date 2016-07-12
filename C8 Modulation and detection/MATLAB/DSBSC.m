t_final = 1;
t_step = 0.0001;
t = 0:t_step:t_final-t_step;
f = 0:1/t_step/length(t):1/t_step-1;

fi = 2;
s = cos(2 * pi * fi * t);
fc = 20;
c = cos(2 * pi * fc * t);
m = c .* s;

figure(1);
subplot(211);
plot(t, s, 'r', t, m, 'b');
legend('Message', 'Modulated');
title(['DSBSC-modulated signal, fc = ' int2str(fc) ', fi = ' int2str(fi)]);
xlabel('t/s');
ylabel('s(t), m(t)');

subplot(212);
M = abs(fft(m)) / length(m);
M = M(1:length(f));
stem(f, M);
axis([15 25 0 0.5]);
xlabel('f/Hz');
xlabel('s(f), m(f)');
