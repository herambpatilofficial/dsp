clc;
clear all; 
close all;
img = imread("peacock.jpg"); % Read an original image 
subplot(2,2,1);
imshow(img); 
title("Original Image");
gray = rgb2gray(img); % original image converted to gray scale image 
s = [-1 0 1 ; -2 0 2 ; -1 0 1] ;
sf = imfilter(gray,s); 
subplot(2,2,2); 
imshow(sf);
title("filtered image by sobel method"); % filtered image by sobel method 
px = [-1 0 1 ; -1 0 1 ; -1 0 1];
py = [1 1 1 ; 0 0 0 ; -1 -1 -1];
prewitt1 = imfilter(gray,py); 
prewitt1 = imfilter(gray,px); 
subplot(2,2,3); 
imshow(prewitt1);
title("filtered image by prewitt method");% filtered image by prewitt method 
rx = [1 0 ; 0 -1];
ry = [0 1 ; -1 0];
roberts1 = imfilter(gray,ry); 
roberts1 = imfilter(gray,rx); 
subplot(2,2,4); 
imshow(roberts1);
title("filtered image by roberts method");% filtered image by roberts method