function snr = SNR(im1,im2)

%------------------------计算信噪比函数———————————————
% im1 : the original image matrix
% im2 : the modified image matrix  

% I :original signal
% In:noisy signal(ie. original signal + noise signal) 

if (size(im1))~=(size(im2))
    error('错误：两个输入图象的大小不一致');
end

    u1 = double(im1); % convert im1 to double type
    u2 = double(im2); % convert im2 to double type    

snr=0;
Ps=sum(sum((I-mean(mean(I))).^2));%signal power
Pn=sum(sum((I-In).^2));           %noise power
snr=10*log10(Ps/Pn);
    
    

if  matrix_sum == 0
    error('两幅图像完全一样');
    SNR = 200;
else
    SNR = 10*log10( (255^2) / MSE ); % calculate the psnr                                                    
end

function snr=SNR_singlech(I,In)
