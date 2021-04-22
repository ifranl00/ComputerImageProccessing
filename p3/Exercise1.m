%%                          GEOMETRIC TRANSFORMATIONS CONTINUED %%
%                                    -> Student: Irene Francisco Lopez %%


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