clear all
close all
clc
webcamlist;
cam = webcam(1);
net = googlenet();


%objetos = net.Layers(end);

%img = imread("carro.jpg");


sz = net.Layers(1).InputSize;

figure(1)
while true

img = snapshot(cam);
img_rsz = imresize(img, [sz(1), sz(2)]);
label = classify(net, img_rsz)
imshow(img)
text(50,50, char(label), "Color","white")


end