clear all
close all
clc

img = imread("monedas.jpg");
img = rgb2gray(img);
figure(1)
imshow(img)

border = edge(img,"canny",0.5);

figure(2)
imshow(border)