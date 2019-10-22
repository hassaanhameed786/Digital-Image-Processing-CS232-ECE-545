%open a image from the location now img at H drive
%read an image
I = imread('H:\x.jpg');
%make a histogram of img
imhist(I); 
%covert RGB into black and white
x =rgb2gray(I);
%print statement
imshow(I);
