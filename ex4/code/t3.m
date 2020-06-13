clc;
clear;
close all;
alpha = 1;

im = double(imread('3-in-girl.png')) / 255;
mark = double(imread('3-in-mark.png')) / 255;
imsize = size(im);

TH = zeros(imsize(1) * 0.5, imsize(2), imsize(3));
TH1 = TH;
TH1(1:size(mark, 1), 1:size(mark, 2), :) = mark;
M = randperm(0.5 * imsize(1));
N = randperm(imsize(2));

for i = 1:imsize(1) * 0.5

    for j = 1:imsize(2)
        TH(i, j, :) = TH1(M(i), N(j), :);
    end

end

imsize = size(im);
%random

TH = zeros(imsize(1) * 0.5, imsize(2), imsize(3));
TH1 = TH;
TH1(1:size(mark, 1), 1:size(mark, 2), :) = mark;
M = randperm(0.5 * imsize(1));
N = randperm(imsize(2));

for i = 1:imsize(1) * 0.5

    for j = 1:imsize(2)
        TH(i, j, :) = TH1(M(i), N(j), :);
    end

end

mark_ = zeros(imsize(1), imsize(2), imsize(3));
mark_(1:imsize(1) * 0.5, 1:imsize(2), :) = TH;

for i = 1:imsize(1) * 0.5

    for j = 1:imsize(2)
        mark_(imsize(1) + 1 - i, imsize(2) + 1 - j, :) = TH(i, j, :);
    end

end

FA = fft2(im);
FB = FA + alpha * double(mark_);
FAO = ifft2(FB);
figure, imshow(FAO);
title('watermarked image');
imwrite(abs(FAO), '3-output-watermarked.png');
