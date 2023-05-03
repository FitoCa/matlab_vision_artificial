clear all
close all
clc

webcamlist();

cam = webcam(1);
ing = imread("ondas.jpg");
ing = imresize(ing,[480, 640]);
alfa = 0.5;
while true

img = snapshot(cam);
mezclado = alfa.*ing + (1-alfa).*ing;
figure(1)
imshow(mezclado)
end
