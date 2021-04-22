%%                          GEOMETRIC TRANSFORMATIONS CONTINUED %%
%                                    -> Student: Irene Francisco Lopez %%


%%                          EXAMPLES 

%% Example 1
% Shifting the upper left corner of the image to the point indicated by the user with mouse, with repeated elements of the image - folding image effect.

L1 = imread('portrait.jpg'); 

figure; 

imshow(L1); 

[x,y] = ginput(1); 

figure; 

L2 = circshift (L1, [round(y) round(x)]); 

imshow(L2); 

%% Example 2
% Displaying several images in one figure 

L1=imread('portrait.jpg'); 

figure; 

imshow(zeros(500,400)); 

subplot(2,2,1), subimage(L1); 

axis off 

title('Original image'); 

subplot(2,2,2), subimage(imrotate(L1,90)); 

axis off 

title('Rotation 90^o'); 

subplot(2,2,3), subimage(imrotate(L1,180)); 

axis off 

title('Rotation 180^o'); 

subplot(2,2,4), subimage(imrotate(L1,270)); 

axis off 

title('Rotation 270^o'); 

%% Example 3
% Reshape function 

L1 = imread('portrait.jpg'); 

figure; 

imshow(L1); 

[r,c] = size(L1);

L2 = reshape(L1, r*2, c/2); 

figure; 

imshow(L2) 

L3 = reshape(L1, r/2, c*2); 

figure; 

imshow(L3) 

%% Example 4
% Expanding half of the image while preserving (or not) its original size 
L1 = imread('portrait.jpg'); 

figure; imshow(L1) 

axis on 

[m n]=size(L1); 

mid = round(size(L1,2)/2); 

L1_l = L1(:,1:mid); 

L1_r = L1(:,mid+1:end); 

L1_rs = imresize(L1_r,[m mid*4]); 

L2 = [L1_l L1_rs]; 

figure; 

imshow(L2); 

axis on 

L2 = imresize(L2, [m n]); 

figure; 

imshow(L2); 

axis on 

