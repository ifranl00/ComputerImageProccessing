%%                          GEOMETRIC TRANSFORMATIONS CONTINUED %%
%                                    -> Student: Irene Francisco Lopez %%

%%                          EXERCISES
% 1.Based on example 1, write a program that allows shifting the image by the given vector (with the folding image effect). The user first indicates the starting point and then the end point of the vector. The program repeats the operation on the processed image until the right mouse button is pressed.
L1=imread('portrait.jpg');
figure;
imshow(L1);

click=1;
while click ~=3  % keep asking till right click
    [x,y,click] = ginput(1); % save the starting point of vector
    [i,j,click] = ginput(1); % save the end point of vector
    L1 = circshift (L1, [round(j-y), round(i-x)]);
    imshow(L1);
end

% 2. Create a figure consisting of four sub images with the given layout:

L1=imread('portrait.jpg'); 
L2=flipud(L1);
L3=fliplr(L1);
L4=fliplr(L2);

figure;
imshow(zeros(500,400));

subplot(3,2,[1 3 5]),subimage(L1); 
axis off 
subplot(3,2,2),subimage(L3); 
axis off 
subplot(3,2,4),subimage(L2); 
axis off
subplot(3,2,6),subimage(L4);
axis off

% 3. Create a program that will allow the user to select a part of the image (user indicates the top left and bottom right corner of the rectangle) and display this fragment in a new figure, magnified 10 times. Display the results using three different interpolation methods and describe the figures accordingly. 

L1=imread('portrait.jpg');
figure;
imshow(L1);
[x,y]=ginput(1); % save the top left of the rectangle
[i,j]=ginput(1); % save the bottom right corner of the rectangle

% USING IMCROP
%width= i-x;
%height= y-j;
%rect = [x y height width];
%L2=imcrop(L1,rect); %  crop rectangle as a four-element position vector, [xmin ymin width height].

whos L2;
whos L1;

L2=L1(y:j,x:i); % just apply dimensions of the rectangle instead of crop

% show and describe the changes applied
subplot(1,2,1)
imshow(L1)
title('Original image')
subplot(1,2,2)
imshow(L2)
title('Image after crop')

% Display results with 3 diffrent interpolation methods
    % Nearest neighbour 
    L3=imresize(L2,10,'nearest');
    figure(3);
    imshow(L3);
    set(3,'Name','Nearest neighbour');
     % Lanczos 3
    L4=imresize(L2,10,'lanczos3');
    figure(4);
    imshow(L4);
    set(4,'Name','Lanczos');
     % BOX
    L5=imresize(L2,10,'box');
    figure(5);
    imshow(L5);
    set(5,'Name','Box');

