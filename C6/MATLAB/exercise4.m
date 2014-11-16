clear all;
load('delay.mat');          % load data
[c, lags] = xcorr(y, u);    % calculate cross correlations for varying lags
[m, idx] = max(c);          % find when the maximun correlation occured
tau = lags(idx) / 2;        % the corresponding lag is 2 * tau
fprintf(1, 'tau is %g\n', tau);

figure(1);                  % plot cross correlations for varying lags
plot(lags, c);
xlabel('lag'); ylabel('cross correlation');
title('cross correlations for varying lags');

figure(2);                  % delay input signal to see if they are matched
t = linspace(1, 1000, 1000);
plot(t + 2 * tau, u, 'b', t, y, 'r');
xlabel('time / t'); ylabel('u(t-2*\tau ), y(t)');
title('delayed input signal and output signal');
