%%                          GEOMETRIC TRANSFORMATIONS CONTINUED %%
%                                    -> Student: Irene Francisco Lopez %%

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
