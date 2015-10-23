function [PSNR,MSE] = PSNR(im1,im2)

%------------------------�����ֵ����ȳ��򡪡���������������������������
% im1 : the original image matrix
% im2 : the modified image matrix   

if (size(im1))~=(size(im2))
    error('������������ͼ��Ĵ�С��һ��');
end

    [n1,n2] = size(im1); % n1 and n2 :the heiht and weith of the image
    u1 = double(im1); % convert im1 to double type
    u2 = double(im2); % convert im2 to double type
    matrix_sum = sum( sum( (u1-u2).^2 ) ); % ||u1-u2||^2
    MSE = matrix_sum / (n1 * n2); % MSE represent the variance 
if  matrix_sum == 0
    error('����ͼ����ȫһ��');
    PSNR = 200;
else
    PSNR = 10*log10( (255^2) / MSE ); % calculate the psnr                                                    
end