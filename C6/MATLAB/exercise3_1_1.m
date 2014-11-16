clf;
hold on;

% signal
length = 100000;
u = rand(1, length) * 8 - 4;

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
title('Uniformly distributed signal');
