clear all
close all
clc

%% ��ȡRGBͼ��ת��Ϊ�Ҷ�ͼ��
image_rgb = imread('fruits.jpg');
image_gray = rgb2gray(image_rgb);
figure;imshow(image_gray);
title('gray image ��RGBͼ��ת���õ��ĻҶ�ͼ��');
[image_width,image_height] = size(image_gray);

%% ͼ������Ӿ�ֵΪ0������Ϊ0.01�ĸ�˹������
image_noise = imnoise(image_gray,'gaussian',0.01);
figure;imshow(image_noise);
title('noised image ����ֵΪ0������Ϊ0.01�ĸ�˹������');

G = fspecial('gaussian', [25 25], 0.255);
Ig = imfilter(image_gray,G,'same');
figure;imshow(Ig);


%% ��ȡ��ֵ�����
%[ PSNR,MSE ] = psnr(image_gray,image_noise);