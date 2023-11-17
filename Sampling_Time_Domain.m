%Problem Statement:Verify the sampling theorem and aliasing effects with various sampling frequencies

clc;
clear all;
close all;

% Define the time duration and sampling frequency
tf = 0.05; % Time duration
t = 0:0.00005:tf; % Time vector with sampling frequency of 20kHz (fs = 1/0.00005) 
% Frequency of the message signal
fm = 50; % Message signal frequency
% Generate the Original signal (message signal)
X = cos(2*pi*fm*t); % Original signal (message signal) with frequency fm = 50Hz and amplitude 1 
% Plot the original signal
subplot(4,1,1); % Plot the original signal in the first subplot
plot(t, X); % Plot the original signal (message signal) with time
xlabel('Time'); 
ylabel('Amplitude');
title('Original Signal');


% Case 1: Sampling frequency (fs) is less than twice the message signal frequency (2fm)
fs1 = 1.8*fm;  % Sampling frequency (fs) is less than twice the message signal frequency (2fm)
n = 0:1/fs1:tf;
xn = cos(2*pi*fm*n);
% Plot the original signal and the sampled signal
subplot(4,1,2);
plot(t, X, 'b', n, xn, 'r*-');
xlabel('Time');
ylabel('Amplitude');
title('Case 1: fs < 2fm');


% Case 2: Sampling frequency (fs) is equal to twice the message signal frequency (2fm)
fs2 = 2*fm;
n = 0:1/fs2:tf;
xn1 = cos(2*pi*fm*n);
% Plot the original signal and the sampled signal
subplot(4,1,3);
plot(t, X, 'b', n, xn1, 'r*-');
xlabel('Time');
ylabel('Amplitude');
title('Case 2: fs = 2fm');


% Case 3: Sampling frequency (fs) is greater than twice the message signal frequency (2fm)
fs3 = 10*fm;
n = 0:1/fs3:tf;
xn2 = cos(2*pi*fm*n);
% Plot the original signal and the sampled signal
subplot(4,1,4);
plot(t, X, 'b', n, xn2, 'r*-');
xlabel('Time');
ylabel('Amplitude');
title('Case 3: fs > 2fm');



