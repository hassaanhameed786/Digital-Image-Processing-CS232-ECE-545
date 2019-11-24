clc
clear all
close all

Image= imread('cat.bmp');
Image= rgb2gray(Image);
[row col]= size(Image);
Simage=Image;
rangeX1= input('Enter X Initial limit    ');
rangeX2= input('Enter X Final limit    ');

rangeY1= input('Enter Y Initial limit    ');
rangeY2= input('Enter Y Final limit    ');

%for negative digital Image just subtract all values of Image from 255

Neg_Image= 255- Image; 

% for contrast stretching 
alpha= rangeY1/rangeX1;
beta= (rangeY2-rangeY1)/(rangeX2-rangeX1);
gamma= (255-rangeY2)/(255-rangeX2); 

for i=1: row
    
    for j= 1: col  
         
        if Image(i,j) < rangeX1
            Simage(i,j)= 1*Image(i,j);
            
        elseif  Image(i,j) < rangeX2
            Simage(i,j)= beta*(Image(i,j)-rangeX1)+rangeY1;
        else
            Simage(i,j)= gamma*(Image(i,j)-rangeX2)+rangeY2;
        end
    end
end


subplot(2,3,2)
imshow(Image);
title('Original Image');
%figure;
subplot(2,3,4)
imshow(Neg_Image);
title('Digital Negative Image');
%figure;
subplot(2,3,6)
imshow(Simage);
title('Contrast Stretched Image');


  
 