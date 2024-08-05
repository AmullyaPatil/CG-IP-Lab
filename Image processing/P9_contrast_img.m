I=imread('scene.jpg');
subplot(4,2,1);
imshow(I);
title('original image');
g=rgb2gray(I);
subplot(4,2,3);
imshow(g);
title('gray image');
J=imadjust(g,[0.3 0.7],[]);
subplot(4,2,4);
imshow(J);
title('enhanced image');
D=imadjust(I,[0.2 0.3 0;0.6 0.7 1],[]);
subplot(4,2,5)
imshow(D);
title('enhanced image 2');

%histogram
 subplot(4,2,7);
 imhist(g);
 title('histogram of gray image');
 m=histeq(g);
 subplot(4,2,6);
 imshow(m);
 title('equalized images');
 subplot(4,2,8);
 imhist(m);
 title('histogram of equalized image');
