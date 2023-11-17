% Subject: DSP, TE, E7TC, Elctive I
% Design Low Pass FIR filter of frequency 0.8pi 
% Pass the filter coefficents via Rectangular, Bartlett, Hamming and
% Hanning, and Blakmann windows.

clear all;
close all;

% Parameters
cutoff_frequency = 0.8 * pi;  % Cutoff frequency in radians
filter_order = 25;           % Filter order

% Calculate normalized cutoff frequency between 0 to 1
normalized_cutoff = cutoff_frequency / pi;

% Design the filter using the fir1 function and return filter coefficient
bR = fir1(filter_order, normalized_cutoff, 'low', rectwin(filter_order+1));
bBart = fir1(filter_order, normalized_cutoff, 'low', bartlett(filter_order+1));
bHm = fir1(filter_order, normalized_cutoff, 'low', hamming(filter_order+1));
bHa= fir1(filter_order, normalized_cutoff, 'low', hanning(filter_order+1));
bBl = fir1(filter_order, normalized_cutoff, 'low', blackman(filter_order+1));

% Frequency response plot
figure;
freqz(bR, 1, 1024, 2*pi)  
title('Frequency Response - Rectangular Window');

figure;
freqz(bBart, 1, 1024, 2*pi)
title('Frequency Response - Bartlett Window');

figure;
freqz(bHm, 1, 1024, 2*pi)
title('Frequency Response - Hamming Window');

figure;
freqz(bHa, 1, 1024, 2*pi)
title('Frequency Response - Hanning Window');

figure;
freqz(bBl, 1, 1024, 2*pi)
title('Frequency Response - Blackman Window');