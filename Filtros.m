clear all
close all
clc

img = imread("rosa.jpg");
%img = imnoise(img,"gaussian");

figure(1)
imshow(img)

%% Difuminado

k_1 = fspecial("average",[5,5]);  %% Kernel

%% Realzado

k_2 = [-1 -1 -1; -1 9 -1; -1 -1 -1];

%% Repujado

k_3 = [-2 -1 0; -1 1 1; 0 1 2];

%% Convolución

img_dif = imfilter(img, k_1);
figure(2)
imshow(img_dif)


img_dif2 = imfilter(img, k_2);
figure(3)
imshow(img_dif2)

img_dif3 = imfilter(img, k_3);
figure(4)
imshow(img_dif3)


