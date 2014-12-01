t_final = 1;
t_step = 0.0001;
t = 0:t_step:t_final-t_step;
f = 0:1:1/t_step-1;

fi = 4;
s = sin(2 * pi * fi * t);
fc = 100;
c = cos(2 * pi * fc * t);
m = fmmod(s, fc, 1/t_step, 50);

figure(1);
subplot(211);
plot(t, s, 'r', t, m, 'b');
legend('Message', 'Modulated');
title(['FM signal, fc = ' int2str(fc) ', fi = ' int2str(fi)]);
xlabel('t/s');
ylabel('s(t), m(t)');

subplot(212);
M = abs(fft(m)) / length(m);
M = M(1:length(f));
stem(f, M);
axis([0 200 0 0.5]);
xlabel('f/Hz');
ylabel('s(f), m(f)');
