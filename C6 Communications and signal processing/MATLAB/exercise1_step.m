% exercise1.m
% Generation of a Unit Sample Sequence
delay = 0; % Delayed unit sample sequence
n = -20:20; % Generate a vector from -20 to 20
u = [zeros(1, 20 + delay) ones(1, 1 + 20 - delay)]; % Generate the unit sample sequence

% Plot the unit sample sequence
stem(n, u);
xlabel('n');
ylabel('u[n]');
axis([-20 20 0 1.2]);
str = sprintf('Unit step sequence with delay %d', delay);
title(str);
