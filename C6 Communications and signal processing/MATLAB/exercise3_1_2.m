clf;
hold on;

% signal
length = 100000;
u = randn(1, length) * sqrt(2);

% probability density function
bins = length / 100;
[pdfy, pdfx] = hist(u, bins);
pdfy = pdfy / length / diff(pdfx(1:2));
plot(pdfx, pdfy, 'r');

% cumulative distribution function
cdfplot(u);

% figure information
xlabel('value');
ylabel('probability');
str = sprintf('Gaussian random signal with variance %g', var(u));
title(str);
