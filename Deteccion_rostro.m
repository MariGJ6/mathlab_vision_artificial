clear all
close all
clc

webcamlist();
cam = webcam(1);
detectorRostro = vision.CascadeObjectDetector();


while true

    img = snapshot(cam);
    bbox = step(detectorRostro,img);
    
    %% Dibujar el rectángulo

    img = insertShape(img, "Rectangle", bbox, "color", "cyan", "LineWidth", 5);
    img = insertObjectAnnotation(img, "rectangle", bbox, "Rostro detectado");

    figure(1)
    imshow(img)
end