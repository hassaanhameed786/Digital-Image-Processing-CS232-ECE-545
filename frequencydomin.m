[rows,colums numberofColorChannels] = size(15)
grayImage =imread ('xyz.JPG');

%get the dimension of the image 
% numberofcolorbands should be = 1

[rows, colums, numberofColorBands] = size(grayImage);

% its not the really gray scale like we expected - its color

if numberofColorBands > 1
    grayImage = grayImage(:, : ,2);
end
   % Display the image 
    subplot(2,1,1);
    imshow(grayImage, []);
    fontsize = 20;
    
    title('Orignal Grayscale Image', 'FontSize', fontsize,'Interpreter', 'None');
    % set up figure propertites 
    % enlarge figure to full screen 
    
    set(gcf, 'Units', 'Normalized' , 'OuterPosition', [0,0,1,1]);
    set(gcf ,'Toolbar', 'none' , 'Menu', 'none');
    
    % given a name to the title bar
    set(gcf ,'Name', 'Demo by ImageAnalyst' , 'NumberTitle', 'Off');
    
    %display the orignal gray scale image
    subplot (2,2,1);
    F= fft2(grayImage);
    S= fftshift(log(1+abs(F)));
    imshow(S, []);
    
    title ('Spectrum Image', 'FontSize', fontsize, 'Interpreter', 'None');
    
   `% if we apply the discrete wavelets transform we get the hd image from the  spectrum image 
   
    