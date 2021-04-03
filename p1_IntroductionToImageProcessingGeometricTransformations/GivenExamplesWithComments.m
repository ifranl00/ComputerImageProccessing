%%                          Classes 2 - Introduction to image processing geometric transformations %%
%                                    -> Student: Irene Francisco Lopez %%


%% Example 1. Numbering of rows and columns of the image matrix.
    imshow (eye(4)*0.5+0.5,'InitialMagnification','fit') % imshow scales the image to fit
    axis on % display the axes lines
    grid on % display axes grid lines
    xlabel('columns') % label the x axis 
    ylabel('rows') % label y axis
    hold on % retain current plot to add new ones
    plot(1:4,1:4,'r','LineWidth',5) %plot(x,y,red color, width of line to set, width line set to 5)
    pause % stop execution till some key is pressed
    axis xy; % set axis limits

%% Example 2.Information about the image
    info = imfinfo('portrait.jpg'); % saved in info the image graphics

%% Example 3. Displaying the loaded image and information about figure
    L1=imread('portrait.jpg'); % saved in L1 the image read by imread
    figure(1); % figure(n) finds a figure with the Number property set to n (n = 1 in this case)
    imshow(L1); % displays the grayscale image L1 in a figure
    get(1); % to get all properties for the graphic object identified by 1

%%
%                       GEOMETRIC TRANSFORMATIONS
%
%% Example 4. Image shift with enlarged image area. The shift vector is given in the Cartesian system.
    m0=100;
    n0=160;
    L1=imread('portrait.jpg');  % saved in L1 the image read by imread
    figure(1); % figure(n) finds a figure with the Number property set to n (n = 1 in this case)
    imshow(L1) % displays the grayscale image L1 in a figure
    [m1,n1]=size(L1); % return the number of rows and colums separately
    L2=[zeros(m1,n0),L1;zeros(m0,(n0+n1))]; % image 2 is now shifted with enlarged image area
    figure(2); % figure(n) finds a figure with the Number property set to n (n = 2 in this case)
    imshow(L2) % displays the grayscale image L2 in a figure

%% Example 5. Rotation the image by a given angle while retaining its original surface.
    L1=imread('portrait.jpg'); % saved in L1 the image read by imread
    figure(1); % figure(n) finds a figure with the Number property set to n (n = 1 in this case)
    imshow(L1); % displays the grayscale image L1 in a figure
    L2a=imrotate(L1,-60,'crop'); % imrotate(image,angle,method) 
    figure(2); % figure(n) finds a figure with the Number property set to n (n = 2 in this case)
    imshow(L2a); % displays the grayscale image L2a in a figure