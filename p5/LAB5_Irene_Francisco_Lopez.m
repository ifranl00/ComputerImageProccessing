%%                         LABORATORY 5 %%
%                                    -> Student: Irene Francisco Lopez %%
%% THE EXAMPLES ARE COMMENTED AND THE EXERCISES UNCOMMENTED
%% EXAMPLE 1.Histogram equalizing
% L1=imread('portrait.jpg');
% figure;
% imshow(L1);
% figure;
% imhist(L1);
% L2=histeq(L1);
% figure;
% imshow(L2);
% figure;
% imhist(L2);

%% EXAMPLE 2.Colormaps in Matlab
% figure('Color','w'); % creates white figure
% rgbplot (hsv); % plot colormap value of hsv
% axis([0 256 0 1]); 
% grid; 
% colormap (hsv); % creates hsv colormap
% colorbar ('horiz'); 
% ylabel('Intensity of RGB channels','FontSize',15,...
%     'FontName', 'ArialCE'); 
% title('hsv','FontSize',15)

%% EXAMPLE 3. Changing of colormaps controlled by user.
% L1=imread('portrait.jpg');
% figure(1)
% imshow(L1)
% uicontrol(1,'Style', 'popupmenu',... % 1 for handling the figure and it will pop up a list of choices
%             'String', 'jet|hsv',... % type of the options and what are the options to choose
%             'Position', [20 1 100 50],... % where is the control
%             'Callback', @setmap); % call function setmap when interacted with the control
% function setmap(h,event)
%     val = get(h,'Value');
%     switch val
%         case 1
%             colormap(jet)
%         case 2
%             colormap(hsv)
%     end
% end

%% EXERCISE 1. Create a figure consisting of two parts: one will display a portrait.jpg picture with an imposed 
% colormap, the other - a plot of this colormap, properly signed (as in the picture below). The user 
% should be able to switch between colormaps using the drop-down menu in the bottom left corner. 
% Use the following colormaps: autumn, bone, cool, copper, hot, hsv, jet, pink, prism, spring, 
% summer, winter.
I1=imread('portrait.jpg');
figure(1)

subplot(1,2,1),imshow(I1);
subplot(1,2,2),rgbplot(autumn),axis([0 256 0 1]),grid,colormap(autumn),colorbar ('horiz'),title('Plot of autumn colormap','FontSize',15);

uicontrol(1,'Style', 'popupmenu',... % 1 for handling the figure and it will pop up a list of choices
            'String', 'autumn|bone|cool|copper|hot|hsv|jet|pink|prism|spring|summer|winter',...
            'Position', [20 1 100 50],... % where is the control
            'Callback', @setmap2); % call function setmap when interacted with the control
function setmap2(h,event)
    val = get(h,'Value');
    switch val
        case 1
            subplot(1,2,2),rgbplot(autumn),axis([0 256 0 1]),grid,colormap(autumn),colorbar ('horiz'),title('Plot of autumn colormap','FontSize',15);
        case 2
            subplot(1,2,2),rgbplot(bone),axis([0 256 0 1]),grid,colormap(bone),colorbar ('horiz'),title('Plot of bone colormap','FontSize',15);
        case 3
            subplot(1,2,2),rgbplot(cool),axis([0 256 0 1]),grid,colormap(cool),colorbar ('horiz'),title('Plot of cool colormap','FontSize',15);
        case 4
            subplot(1,2,2),rgbplot(copper),axis([0 256 0 1]),grid,colormap(copper),colorbar ('horiz'),title('Plot of copper colormap','FontSize',15);
        case 5
            subplot(1,2,2),rgbplot(hot),axis([0 256 0 1]),grid,colormap(hot),colorbar ('horiz'),title('Plot of hot colormap','FontSize',15);
        case 6
            subplot(1,2,2),rgbplot(hsv),axis([0 256 0 1]),grid,colormap(hsv),colorbar ('horiz'),title('Plot of hsv colormap','FontSize',15);
        case 7
            subplot(1,2,2),rgbplot(jet),axis([0 256 0 1]),grid,colormap(jet),colorbar ('horiz'),title('Plot of jet colormap','FontSize',15);
        case 8
            subplot(1,2,2),rgbplot(pink),axis([0 256 0 1]),grid,colormap(pink),colorbar ('horiz'),title('Plot of pink colormap','FontSize',15);
        case 9
            subplot(1,2,2),rgbplot(prism),axis([0 256 0 1]),grid,colormap(prism),colorbar ('horiz'),title('Plot of prism colormap','FontSize',15);
        case 10
            subplot(1,2,2),rgbplot(spring),axis([0 256 0 1]),grid,colormap(spring),colorbar ('horiz'),title('Plot of spring colormap','FontSize',15);
        case 11
            subplot(1,2,2),rgbplot(summer),axis([0 256 0 1]),grid,colormap(summer),colorbar ('horiz'),title('Plot of summer colormap','FontSize',15);
        case 12
            subplot(1,2,2),rgbplot(winter),axis([0 256 0 1]),grid,colormap(winter),colorbar ('horiz'),title('Plot of winter colormap','FontSize',15);
    end
end

%% EXERCISE 2.A color map is a matrix consisting of three columns, each containing 256 elements within the 
% range [0,1]. Create your own colormap, display its plot, and impose it on the portrait.jpg
I2=imread('portrait.jpg'); 
x = (1:128)'/128;
y = (1:64)'/64;
z = (1:256)'/256;
r = [x; flipud(x)];
g = z;
b = z;
map = [r g b];
figure;
imshow(I2);
colormap(map);
figure;
rgbplot(map);
colorbar('horiz');
colormap(map)

%% EXAMPLE 4. Customizing colormap of the current figure
% L1=imread('portrait.jpg'); 
% imshow(L1);
% colormapeditor % double click to change color

%% EXAMPLE 5. Image in the indexed color and RGB color space.
% L1=randi(256,3);
% figure 
% imshow (L1, hsv(256), 'InitialMagnification','fit')
% title('Image in the indexed color');
% L2 = ind2rgb (L1, hsv); % converts the indexed image X and corresponding colormap hsv to RGB (truecolor) format.
% figure 
% imshow (L2, 'InitialMagnification','fit')
% title('Image in the RGB color space');
% figure 
% imshow (L2(:,:,1), 'InitialMagnification','fit')
% title('Contribution of RED channel');
% figure 
% imshow (L2(:,:,2), 'InitialMagnification','fit')
% title('Contribution of GREEN channel');
% figure 
% imshow (L2(:,:,3), 'InitialMagnification','fit')
% title('Contribution of BLUE channel');

%% EXERCISE 4. Create two images, size 2 x 2 pixels in RGB color space, and the given layout.

W=zeros(2,2,3); %matrix of zeros with dimensions 2x2x3
% Equal to 0-1 (row,column,color) where color are 1=red, 2=green, 3=blue or :
W(1,1,2)=1; % green cell
W(1,2,3)=1; % blue cell
W(2,1,:)=0.4; % grey cell
W(2,2,1)=1; % red cell
figure
imshow(W,'InitialMagnification','fit');

W2=zeros(2,2,3);%matrix of zeros with dimensions 2x2x3
% Equal to 0-1 (row,column,color) where color are 1=red, 2=green, 3=blue or :
% mix red and green to obtain yellow
    W2(1,1,1)=1; % red cell
    W2(1,1,2)=1; % green cell
% mix red and blue to obtain magenta
    W2(1,2,1)=1; % red cell
    W2(1,2,3)=1; % blue cell

% equal to 0 to reach black
    W2(2,1,:)=0; % black cell

% mix green with blue to get cyan
    W2(2,2,2)=1; % green cell
    W2(2,2,3)=1; % blue cell
figure
imshow(W2,'InitialMagnification','fit');
