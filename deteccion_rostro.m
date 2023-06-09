clear all
close all
clc

webcamlist();
cam = webcam(1);
detectorRostro = vision.CascadeObjectDetector();

while true
    img = snapshot(cam);
    bbox = step(detectorRostro, img);

    %Dibujar rectangulo

    img = insertShape(img, "Rectangle", bbox, "color", "red", "LineWidth",5);
    img = insertObjectAnnotation(img, "rectangle", bbox, "rostro detectado");

    figure(1)
    imshow(img)

end