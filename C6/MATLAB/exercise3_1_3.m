clf;
hold on;

% signal
length = 10000;
u = randn(1, length);

% probability density function
bins = length / 400;
[pdfy, pdfx] = hist(u, bins);
bar(pdfx, pdfy / length / diff(pdfx(1:2)))
pdfy = pdfy / length / diff(pdfx(1:2));
plot(pdfx, pdfy, 'r');

% figure information
xlabel('value');
ylabel('probability');
str = sprintf('Gaussian random signal with variance %g, N = %g', var(u), length);
title(str);
