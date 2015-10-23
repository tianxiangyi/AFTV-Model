clear all
close all
clc

%% 读取RGB图像，转化为灰度图像
image_rgb = imread('fruits.jpg');
image_gray = rgb2gray(image_rgb);
figure;imshow(image_gray);
title('gray image 由RGB图像转化得到的灰度图像');
[image_width,image_height] = size(image_gray);

%% 图像中添加均值为0，方差为0.01的高斯白噪声
image_noise = imnoise(image_gray,'gaussian',0.01);
figure;imshow(image_noise);
title('noised image 含均值为0，方差为0.01的高斯白噪声');

G = fspecial('gaussian', [25 25], 0.255);
Ig = imfilter(image_gray,G,'same');
figure;imshow(Ig);


%% 求取峰值信噪比
%[ PSNR,MSE ] = psnr(image_gray,image_noise);

