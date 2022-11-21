%Subtract one image from other image
clear

in1 = imread("src\med1.png");
img1 = imresize(in1,[200 200]);

in2 = imread("src\med2.png");
img2 = imresize(in2,[200 200]);

img3 = mod(img1-img2,256);

figure('name','Subtract one image from other image','NumberTitle','off');

subplot(1,3,1)
imshow(img1);
title('Original 1')

subplot(1,3,2)
imshow(img2);
title('Original 2')

subplot(1,3,3)
imshow(img3);
title('Output')