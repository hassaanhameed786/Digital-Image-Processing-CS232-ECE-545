%% restart
close all;
clc;

%% read Image and Display
test = imread('cat.bmp');
figure,imshow(test);
figure, histogram(test);

%% Histogram Stretch
testAdjast = imadjust(test,stretchlim(test),[]);
figure,imshow(testAdjast); title('adjast');
figure, histogram(testAdjast); title('hist adjast');
