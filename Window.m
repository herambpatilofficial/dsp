%Study of Different Windows 

close all;
clear all;
clc;

M = 21;                 % Length of the window
alpha = 15;             %alpha or time dealy  = M-1/2

%All Window coefficients
% wvtool: This tool enable you to visulalize time and frequency domain plots
% of window vector 

rect = rectwin(M);
wvtool(rect);

Bart = bartlett(M);
wvtool(Bart);

hamm = hamming (M);
wvtool(hamm);

hann = hanning (M);
wvtool(hann);

blac = blackman (M);
wvtool(blac);

%All window coefficicent plot Magnitude in DB vs w/pi Normalized Frequency 
% 512 is no. of evaluation point 512 by default


[h_rect, w] = freqz(rect,1,512);
[h_Bart, w1] = freqz(Bart,1,512);
[h_hamm, w2] = freqz(hamm,1,512);
[h_hann, w3] = freqz(hann,1,512);
[h_blac, w4] = freqz(blac,1,512);


plot(w/pi,20*log10(abs(h_rect)),'r',w1/pi,20*log10(abs(h_Bart)),'g',...
    w2/pi,20*log10(abs(h_hamm)),'b',w3/pi,20*log10(abs(h_hann)),'m',...
    w4/pi,20*log10(abs(h_blac)),'c');

xlabel('Normalized Frequency')
ylabel('Magnitude (dB)')
title ('Frequency Domain Representation of all Windows')

