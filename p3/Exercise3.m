%%                          GEOMETRIC TRANSFORMATIONS CONTINUED %%
%                                    -> Student: Irene Francisco Lopez %%



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

