noisyImage = imread('noise.jpg');
noisyImage = im2double(noisyImage);
sigma = 2; 
filterSize = 2 * ceil(3 * sigma) + 1; 
denoisedImage = imgaussfilt(noisyImage, sigma);
figure;
subplot(1, 2, 1);
imshow(noisyImage);
title('Noisy Image');
subplot(1, 2, 2);
imshow(denoisedImage);
title('Denoised Image by gaussian filter');


