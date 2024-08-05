i=imread('color.png');
subplot(3,2,1);
imshow(i);
r=i(1,:,:);
subplot(3,2,2);
imshow(r);
title('red');
g=i(:,1,:);
subplot(3,2,3);
imshow(g);
title('green');
b=i(:,:,1);
subplot(3,2,4);
imshow(b);
title('blue');
rg=rgb2gray(i);
subplot(3,2,5);
imshow(rg);
title('gray');

%negative 
A=imread('flower.jpg');
subplot(3,2,1);
imshow(A);
title('original image');
rg=rgb2gray(A);
subplot(3,2,2);
imshow(rg);
title('gray');
L=256;
B=(L-1)-rg;
subplot(3,2,3);
imshow(B);
title('negative image');

