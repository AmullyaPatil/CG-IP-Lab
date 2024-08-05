i=imread('rose.jpg');
g=rgb2gray(i);
g1=fspecial('average',[3 3]);
b1=imfilter(g,g1);
subplot(2,2,1);
imshow(i);
title('original image');
subplot(2,2,2);
imshow(g);
title('gray image');
subplot(2,2,3);
imshow(b1);
title('3x3 image');
g2=fspecial('average',[10 10]);
b2=imfilter(g,g2);
subplot(2,2,4);
imshow(b2);
title('10x10 image');