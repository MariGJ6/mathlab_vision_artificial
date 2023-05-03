clc
clear all
close all

%% Lectura de imagen
img = imread("rosas_1.jpg");
figure(1)
imshow(img)

%% Extracción de canales

img_R = img;    %extracción de canal rojo
img_R(:,:,2) = 0;
img_R(:,:,3) = 0;
figure(2)
%imshow(img_R)

img_G = img;    %extracción de canal verde
img_G(:,:,1) = 0;
img_G(:,:,3) = 0;
%figure(2)
%imshow(img_G)

img_B = img;    %extracción de canal azul
img_B(:,:,1) = 0;
img_B(:,:,2) = 0;
figure(2)
%imshow(img_B)
imshow([img_R,img_G,img_B])

%% Operaciones con imágenes

comb_1 = img_R + img_B;
figure(3)
imshow(comb_1)

comb_2 = img_R + img_G;
figure(4)
imshow(comb_2)

comb_3 = img_G + img_B;
figure(5)
imshow(comb_3)

%% Escala de grises

img_gris = rgb2gray(img);
figure(6)
imshow(img_gris)

%% Aumento de brillo

img_brillo = img - 100;
figure(7)
imshow([img,img_brillo])

%% Combinación de imágenes

img_rosa = imread("rosa_rosa.jpg");
[renglones,columnas,canales] = size(img);
img_rosa = imresize(img_rosa,[renglones, columnas]);

%% Mezclado alfa

alfa = 0.3;
mezclado = alfa.*img_rosa + (1-alfa).*img;
figure(8)
imshow(mezclado)