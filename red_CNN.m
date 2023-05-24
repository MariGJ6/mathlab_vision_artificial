clear all
close all
clc

net = googlenet();
%objetos = net.Layers(end);

img = imread("animales.jpg");
figure(1)
imshow(img)

sz = net.Layers(1).InputSize;
img_rsz = imresize(img, [sz(1),sz(2)]);
label = classify(net, img_rsz)
caracter = char(label);

% NET.addAssembly('System.Speech');
% obj =System.Speech.Synthesis.SpeechSynthesizer;
% obj,Volume = 100;
% Speak(obj,caracter);