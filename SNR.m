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
    Ps=sum(sum((u1-mean(mean(u1))).^2));%signal power
    Pn=sum(sum((u1-u2).^2));           %noise power
    snr=10*log10(Ps/Pn):