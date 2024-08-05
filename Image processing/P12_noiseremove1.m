noisyImage = imread('noise.jpg');
noisyImage = im2double(noisyImage);
filterSize = 3;  
averageFilter = fspecial('average', filterSize);
denoisedImage = imfilter(noisyImage, averageFilter);
figure;
subplot(1, 2, 1);
imshow(noisyImage);
title('Noisy Image');
subplot(1, 2, 2);
imshow(denoisedImage);
title('Denoised Imageby using average filter');


