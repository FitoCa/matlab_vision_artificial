clc
clear all
close all

%% lectura de imagen
ing = imread("persona1.jpg");
figure(1)
%imshow(ing)

%% Extraccion de canales

ing_R = ing;
ing_R(:,:,2) = 0;
ing_R(:,:,3) = 0;
%figure(2)
%inshow(ing_R)

ing_G = ing;
ing_G(:,:,1) = 0;
ing_G(:,:,3) = 0;
%figure(2)
%inshow(ing_G)

ing_B = ing;
ing_B(:,:,1) = 0;
ing_B(:,:,2) = 0;
figure(2)
%inshow(ing_B)
%imshow([ing_R, ing_G, ing_B])

%% operaciones con imagenes

comb_1 = ing_R + ing_B;
figure(3)
%imshow(comb_1)

comb_2 = ing_G + ing_R;
figure(4)
%imshow(comb_2)

comb_3 = ing_G + ing_B;
figure(5)
%imshow(comb_3)

%% Escala de grises

ing_gris = rgb2gray(ing);
figure(6)
%imshow(ing_gris)

%% Aumento de brillo

ing_brillo = ing + 50;
figure(7)
%imshow([ing, ing_brillo])

%% Combinacion de imagenes

ing_ondas = imread('ondas.jpg');
[renglones, columnas, canales] = size(ing);
ing_ondas = imresize(ing_ondas, [renglones, columnas]);

% Mezclado alfa
alfa = 0.5;
mezclado = alfa.*ing_ondas + (1-alfa).*ing;
figure(8)
imshow(mezclado)

