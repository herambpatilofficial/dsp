clc; % Clear the command window
clear all; % Clear all variables in the workspace
close all; % Close all open figures

num = [1 2]; % numerator coefficients of a transfer function
den = [1 -1 9]; % denominator coefficients of a transfer function


% Calculate the zeros and poles of the transfer function
sys_zero = roots(num); % Zeros of the transfer function
sys_poles = roots(den); % Poles of the transfer function

% Create a figure to display the pole-zero plot (z-plane)
figure;
zplane(num, den);

% Create figure to display the frequency response (magnitude and phase)
figure;
freqz(num, den);