clear all;
load('filtering.mat');              % load data

M = 250;
b = ones(1, M);
a = 1;
yf = filter(b, a, y);               % apply filter
yf = yf - mean(yf);                 % remove offset
yf = yf / max(yf);                  % normalise

figure(1);
plot(t, y, 'r', t, u, 'k', t, yf, 'b');
xlabel('time / t'); ylabel('u(t), y(t), yf(t)');
title('filtering');
