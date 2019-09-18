function [ albedo, normal ] = estimate_alb_nrm( image_stack, scriptV, shadow_trick)
%COMPUTE_SURFACE_GRADIENT compute the gradient of the surface
%   image_stack : the images of the desired surface stacked up on the 3rd
%   dimension
%   scriptV : matrix V (in the algorithm) of source and camera information
%   shadow_trick: (true/false) whether or not to use shadow trick in solving
%   	linear equations
%   albedo : the surface albedo
%   normal : the surface normal


[h, w, ~] = size(image_stack);
if nargin == 2
    shadow_trick = true;
end

% create arrays for 
%   albedo (1 channel)
%   normal (3 channels)
albedo = zeros(h, w, 1);
normal = zeros(h, w, 3);

% =========================================================================
% YOUR CODE GOES HERE
% for each point in the image array
%   stack image values into a vector i
%   construct the diagonal matrix scriptI
%   solve scriptI * scriptV * g = scriptI * i to obtain g for this point
%   albedo at this point is |g|
%   normal at this point is g / |g|
%%
image_stack  = imread("/Users/benjamin.wang/devel/github/UvAAI/ComputerVision1/assignments/1/cv1_labs_1/color_constancy/awb.jpg");
[h, w, ~] = size(image_stack);
i = zeros(1, h*w);
for row = 1:h
    for col = 1:w
        value_i = image_stack(row, col, :);
        value_i = reshape(value_i, 1, 3);
        i(row*col) = value_i;
    end
end

        



% =========================================================================

end

