
%FrequencyDetection
close all;
clear all;
clc;
% Load an audio file
[y, fs] = audioread('test.wav')
audioinfo('test.wav')
plot(y)
title('Now yor are Hearing a Message')
figure
s = length(y)
auto_corr_y = xcorr(y);
% Define the maximum lag for autocorrelation (in samples)
max_lag = floor(fs / 50); % Assuming pitch range of 50 Hz
% Calculate autocorrelation
autocorr_result = xcorr(y, max_lag, 'coeff');
% Find the peak in the autocorrelation, excluding the zero-lag peak
[~, peak_index] = max(autocorr_result(2:end));
% Convert the peak index to pitch frequency in Hz
pitch_period = peak_index / fs
pitch_freq = 1 / pitch_period
fprintf('Detected pitch frequency: %.2f Hz\n', pitch_freq)
% Plot the autocorrelation result
lag_values = (0:max_lag) / fs;
autocorr_result = autocorr_result(end-max_lag:end); % Keep only the relevant portion of the result
plot(lag_values, autocorr_result);
xlabel('Lag (s)');
ylabel('Autocorrelation');
title('Pitch Detection Using Autocorrelation');
grid on;
