%%                          Classes 2 - Introduction to image processing geometric transformations %%
%                                    -> Student: Irene Francisco Lopez %%


%%                          EXERCISES OF ASSIGMENT 2

%% Exercise 1
% Display  picture portrait.jpg in a new figure.
% In the figurename  display  the color type of the image got with the use of imfinfo.
% Set the figure background color to white.

info = imfinfo('portrait.jpg'); % saved in info the image graphics
A=imread('portrait.jpg'); % saved in A the image read by imread
figure(1); % new figure
imshow(A); % display image 

% using set graphics object properties:
set(1,'Name',info.ColorType); %display the color type (grayscale) as name
set(1,'Color','white'); % Set the figure background color to white.

%% Exercise 2
% Basing on example 4, shift the image by the same vector, but retaining its original surface.

m0=100;
n0=160;
A2=imread('portrait.jpg');  % saved in A2 the image read by imread
figure(1); % figure(n) finds a figure with the Number property set to n (n = 1 in this case)
imshow(A2) % displays the grayscale image A2 in a figure
[m1,n1]=size(A2); % return the number of rows and colums separately
% image 2 is now shifted with enlarged image area
A3=[zeros((m1-m0),n0),A2((m0+1):m1,1:(n1-n0));zeros(m0,n1)]; % image 2 is now shifted with the same surface
figure(2); % figure(n) finds a figure with the Number property set to n (n = 2 in this case)
imshow(A3) % displays the grayscale image A3 in a figure

%% Exercise 3
% The "fliplr" (flip left-right) function flips the image (an array)about avertical axis,
%   "flipud" (flip up-down) -about ahorizontal axis of the source image.
% Use the given functions to get the following image.

A4=imread('portrait.jpg'); % saved in A4 the image read by imread
%figure(3); % ignore, just for debugging
%imshow(A4); % ignore, just for debugging

A5=fliplr(A4); % flip image A4 about vertical axis and save it into A5
%figure(4); % ignore, just for debugging
%imshow(A5); % ignore, just for debugging

A6 =flipud(A4); % flip image A4 about horizontal axis and save it into A6
%figure(5); % ignore, just for debugging
%imshow(A6); % ignore, just for debugging

A7= fliplr(A6); % flip image A6 about vertical axis and save it into A7
%figure(6); % ignore, just for debugging
%imshow(A7); % ignore, just for debugging

arrayPics=[A5,A4;A6,A7]; % matrix of images
figure(7);
imshow(arrayPics);


