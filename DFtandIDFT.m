close all;
clear all;
clc;
xn = [1 1 1 1];
N = length(xn);
k1 = 0:N-1; %Length of sequence 
k2 = 0:7;
k3 = 0:15;
%4 point dft
xk1 = fft(xn,4); %DFT of xn 
xk1_mag = abs(xk1); %magnitude of dft
subplot(3,2,1)
stem(k1,xk1_mag) %plot magnitude
xlabel("Frequency");
ylabel("Magnitude");
title("4 Point DFT");
%PHASE OF 4 point dft;
subplot(3,2,2)
xk1_phase = unwrap(angle(xk1)).*180/pi;
stem(k1,xk1_phase)
xlabel("Frequency");
ylabel("Angle");
title("4 Point DFT");
%8 point dft
xk2=fft(xn,8);
xk2_mag = abs(xk2);
subplot(3,2,3)
stem(k2,xk2_mag)
xlabel("Frequency");
ylabel("Magnitude");
title("8 Point DFT");
%PHASE OF 8 point dft;
subplot(3,2,4)
xk2_phase = unwrap(angle(xk2)).*180/pi;
stem(k2,xk2_phase);
xlabel("Frequency");
ylabel("Angle");
title("8 Point DFT");
%16 point dft
xk3=fft(xn,16);
xk3_mag = abs(xk3);
subplot(3,2,5)
stem(k3,xk3_mag)
xlabel("Frequency");
ylabel("Magnitude");
title("16 Point DFT");
%PHASE OF 16 point dft;
subplot(3,2,6)
xk3_phase = unwrap(angle(xk3)).*180/pi;
stem(k3,xk3_phase)
xlabel("Frequency");
ylabel("Angle");
title("16 Point DFT");