originalImage = imread('noise.jpg');
originalImage = im2double(originalImage);
mean = 0; 
variance = 0.01;
gaussianNoise = sqrt(variance) * randn(size(originalImage)) + mean;
noisyImage = originalImage + gaussianNoise;
noisyImage = max(0, min(1, noisyImage));
figure
