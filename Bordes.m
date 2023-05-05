clear all
close all
clc

img = imread("monedas.jpg");
img = rgb2gray(img);
figure(1)
imshow(img)

%% Extracción de bordes

borde = edge(img,"canny",0.3);
figure(2)
imshow(borde)


