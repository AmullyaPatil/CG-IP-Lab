
%edge DETECTION

a=imread('coin.jpg');
imshow(a);
BW1=edge(a,'sobel');
%BW2=edge(a,'canny');
imshow(BW1);
title('sobel filter');
%imshow(BW2);
%title('canny filter');
%imshowpair(BW1,BW2);

%LINE DETECTION
horizontal
a=imread('rose.jpg');
f=rgb2gray(a);
imshow(f);
w=[-1,-1,-1;2,2,-1;-1,-1,-1];
g=abs(imfilter(double(f),w));
t=300;
g=g>=t;
figure,
imshow(g);

vertical
a=imread('rose.jpg');
f=rgb2gray(a);
imshow(f);
w=[-1,2,-1;-1,2,-1;-1,2,-1];
g=abs(imfilter(double(f),w));
t=300;
g=g>=t;
figure,
imshow(g);

%pOint
s=imread('cameraman.tif');
points=detectSURFFeatures(s);
imshow(s);
hold on;
plot(points.selectStrongest(10));