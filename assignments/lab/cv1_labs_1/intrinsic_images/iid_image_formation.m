clc;
clear;
reflctanceData = im2double(imread("ball_albedo.png"));
shadingData = im2double(imread("ball_shading.png"));

shading_stack = cat(3, shadingData, shadingData, shadingData);
figure(1);
subplot(131);
imshow("ball_albedo.png");
title("albedo");
subplot(132);
imshow("ball_shading.png");
title("shading");
subplot(133);
imshow(shading_stack .* reflctanceData);
title("reconstructed");


