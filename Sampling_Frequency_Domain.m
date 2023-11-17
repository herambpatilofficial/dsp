clc; 
clear;
close all;

% Case-1: fs < 2fm
fs = 8; 
n1 = 0:1/fs:1-(1/fs); 
f = 10;
xn = cos(2*pi*f*n1); 
fx = 0:fs-1; 
xk = fft(xn); 

subplot(3,1,1);
plot(fx, abs(xk)) 
hold on 
stem(fx, abs(xk)) 
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Case 1: fs < 2fm');

% Case-2: fs = 2fm
fs = 20; 
n1 = 0:1/fs:1-(1/fs); 
f = 10; 
xn = cos(2*pi*f*n1); 
fx = 0:fs-1; 
xk = fft(xn);

subplot(3,1,2);
plot(fx, abs(xk)) 
hold on 
stem(fx, abs(xk))
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Case 2: fs = 2fm');

% Case 3: fs > 2fm
fs = 40; 
n1 = 0:1/fs:1-(1/fs); 
f = 10; 
xn = cos(2*pi*f*n1); 
fx = 0:fs-1; 
xk = fft(xn); 

subplot(3,1,3);
plot(fx, abs(xk));
hold on 
stem(fx, abs(xk));
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Case 3: fs > 2fm');
