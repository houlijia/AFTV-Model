function snr = SNR(im1,im2)

%------------------------��������Ⱥ���������������������������������
% im1 : the original image matrix
% im2 : the modified image matrix  

% I :original signal
% In:noisy signal(ie. original signal + noise signal) 

if (size(im1))~=(size(im2))
    error('������������ͼ��Ĵ�С��һ��');
end

    u1 = double(im1); % convert im1 to double type
    u2 = double(im2); % convert im2 to double type    

snr=0;
Ps=sum(sum((I-mean(mean(I))).^2));%signal power
Pn=sum(sum((I-In).^2));           %noise power
snr=10*log10(Ps/Pn);
    
    

if  matrix_sum == 0
    error('����ͼ����ȫһ��');
    SNR = 200;
else
    SNR = 10*log10( (255^2) / MSE ); % calculate the psnr                                                    
end

function snr=SNR_singlech(I,In)
