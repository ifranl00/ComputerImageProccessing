%%                          GEOMETRIC TRANSFORMATIONS CONTINUED %%
%                                    -> Student: Irene Francisco Lopez %%

% % EXAMPLE 1.
    % Reducing image size 8 x 8 pixels to size 8 x 7 with the use ofthree different interpolation methods.
        % L = zeros(8);
        % L(1:2:end,1:2:end) = 1;
        % L(2:2:end,2:2:end) = 1;
        % imshow(L,'InitialMagnification','fit');
        % L2a=imresize(L,[7 8],'nearest')
        % pause
        % figure
        % imshow(L2a, 'InitialMagnification','fit')
        % pause
        % L2b=imresize(L,[7 8],'bilinear')
        % figure
        % imshow(L2b, 'InitialMagnification','fit')
        % pause
        % L2c=imresize(L,[7 8],'bicubic')
        % figure
        % imshow(L2c, 'InitialMagnification','fit')
        % pause
        % L2d=imresize(L,[7 8],'lanczos3')
        % figure
        % imshow(L2d, 'InitialMagnification','fit')

%% EXERCISE 1. 
    % Change the resolution of the checkerboard image with the original size 4 x 4 to 8 x 8 using different interpolation methods.
        % M = zeros(4); % 4 x 4 size
        % M(1:2:end,1:2:end) = 1;
        % M(2:2:end,2:2:end) = 1;
        % imshow(M,'InitialMagnification','fit');
        % title('Original image 4 x 4')
        %     % nearest
        % M2=imresize(M,[8 8],'nearest')
        % figure
        % imshow(M2, 'InitialMagnification','fit')
        % title('Resized to 8 x 8 using nearest interpolation')
        %     % bilinear
        % M3=imresize(M,[8 8],'bilinear')
        % figure
        % imshow(M3, 'InitialMagnification','fit')
        % title('Resized to 8 x 8 using bilinear interpolation')
        %     % bicubic
        % M4=imresize(M,[8 8],'bicubic')
        % figure
        % imshow(M4, 'InitialMagnification','fit')
        % title('Resized to 8 x 8 using bicubic interpolation')
        %     % lanczos3
        % M5=imresize(M,[8 8],'lanczos3')
        % figure
        % imshow(M5, 'InitialMagnification','fit')
        % title('Resized to 8 x 8 using lanczos3 interpolation')

%% EXERCISE 2.1
    % Rotate the checkerboard image with the original 8 x 8 size by 45 degrees using different interpolation methods
        % N = zeros(8);
        % N(1:2:end,1:2:end) = 1;
        % N(2:2:end,2:2:end) = 1;
        % imshow(N,'InitialMagnification','fit');
        % title('Original image')
        %     % nearest
        % N2=imrotate(N,45,'nearest')
        % figure
        % imshow(N2, 'InitialMagnification','fit')
        % title('Rotated by 45 degrees using nearest interpolation')
        %     % bilinear
        % N3=imrotate(N,45,'bilinear')
        % figure
        % imshow(N3, 'InitialMagnification','fit')
        % title('Rotated by 45 degrees using bilinear interpolation')
        %     % bicubic
        % N4=imrotate(N,45,'bicubic')
        % figure
        % imshow(N4, 'InitialMagnification','fit')
        % title('Rotated by 45 degrees using bicubic interpolation')

% %% Exercise 2.2
%     % Rotate  the checkerboard image  with  the  original  8  x  8  size  by 90 degrees  using  different interpolation  methods.Perform that  operation  in  two  ways.
%     O = zeros(8);
%     O(1:2:end,1:2:end) = 1;
%     O(2:2:end,2:2:end) = 1;
%     imshow(O,'InitialMagnification','fit');
%     title('Original image')
%     % First,rotate  the  image  two  times, each by 45 degrees.Second,rotate the image by 90 degrees at once. Observe differences between resulting images.
%         % nearest
%         O2=imrotate(O,45,'nearest') % first 45 rotation
%         figure
%         imshow(O2, 'InitialMagnification','fit')
%         title('Rotated once by 45 degrees using nearest interpolation')
%     
%         O2b=imrotate(O2,45,'nearest') % second 45 rotation
%         figure
%         imshow(O2b, 'InitialMagnification','fit')
%         title('Rotated second time by 45 degrees using nearest interpolation')
% 
%         O2c=imrotate(O,90,'nearest') % 90 degrees rotation
%         figure
%         imshow(O2c, 'InitialMagnification','fit')
%         title('Rotated by 90 degrees using nearest interpolation')
% 
%         % bilinear
%         O3=imrotate(O,45,'bilinear') % first 45 rotation
%         figure
%         imshow(O3, 'InitialMagnification','fit')
%         title('Rotated once by 45 degrees using bilinear interpolation')
%         
%         O3b=imrotate(O3,45,'bilinear') % second 45 rotation
%         figure
%         imshow(O3b, 'InitialMagnification','fit')
%         title('Rotated second time by 45 degrees using bilinear interpolation')
%         
%         O3c=imrotate(O,90,'bilinear') % 90 degrees rotation
%         figure
%         imshow(O3c, 'InitialMagnification','fit')
%         title('Rotated by 90 degrees using bilinear interpolation')
%         
%         % bicubic
%         O4=imrotate(O,45,'bicubic') % first 45 rotation
%         figure
%         imshow(O4, 'InitialMagnification','fit')
%         title('Rotated once by 45 degrees using bicubic interpolation')
%         
%         O4b=imrotate(O4,45,'bicubic')% second 45 rotation
%         figure
%         imshow(O4b, 'InitialMagnification','fit')
%         title('Rotated second time by 45 degrees using bicubic interpolation')
%         
%         O4c=imrotate(O,90,'bicubic')% second 45 rotation
%         figure
%         imshow(O4c, 'InitialMagnification','fit')
%         title('Rotated by 90 degrees using bicubic interpolation')

% %% EXAMPLE 2.
%     % Adding a constant value to the monochrome image (increase brightness):
            % L1=imread('portrait.jpg');
            % figure;
            % imshow(L1);
            % L2=(L1)+50;
            % figure;
            % imshow(L2)
            % 
%     % other way...
            % L1=imread('portrait.jpg');
            % L1=double(L1)/255;
            % figure;
            % imshow(L1);
            % L2=L1+0.3;
            % figure;
            % imshow(L2)

% %% EXAMPLE 3.
%     % Some information lost after brightening the image with the use of saturation method
            % L1=imread('portrait.jpg');
            % L1=double(L1)/255;
            % figure;
            % imshow(L1);
            % L2=L1+0.5;
            % figure;
            % imshow(L2);
            % L3=((L2>1)-0.5);
            % figure;
            % imshow(L3)

% %% EXAMPLE 4.
%     % Creating a simple menu to control the brightness of the image
        %     L1=imread('portrait.jpg');
        %     figure;
        %     imshow(L1);
        %     while 1
        %         choice = menu('Menu','Add 10','Subtract 10','Exit');
        %         switch choice
        %             case 1
        %                 L1 = L1 + 10;
        %                 imshow(L1);
        %             case 2
        %                 L1 = L1 - 10;
        %                 imshow(L1);
        %             case 3
        %                 close
        %                 break
        %         end
        %     end
% 
% %% EXERCISE 3.
%     % Create and program a menu, in which user will be able to select the following operations on the image:
%         P=imread('portrait.jpg');
%         P=double(P)/255; % normalitation for doubles
%         P2=P; % Keep the original image in P and use P2 in the menu
%         figure;
%         imshow(P);
%         while 1
%             choice = menu('Menu','Add a random number from the range 0.0 -1.0','Subtract a random number from the range 0.0 -1.0','Logarithm','Square root','Power','Restore original image','Exit');
%             switch choice
%                 case 1  % adding a random number from the range 0.0 -1.0
%                     P2 = P2 + rand;
%                     imshow(P2);
%                 case 2  % subtracting a random number from the range 0.0 -1.0
%                     P2 = P2 - rand;
%                     imshow(P2);
%                 case 3 % logarithm
%                     P2 = log(P2+1); % add 1 to the log for not taking log(0) that it will be undefined
%                     imshow(P2);
%                 case 4 % square root
%                     P2 = sqrt(P2);
%                     imshow(P2);
%                 case 5 % power
%                     P2 = P2.^(2+(5-2).*rand) %  r = a + (b-a).*rand(N,1) for generate random numbers in a interval, in this case it will be for example, from 2 to 5
%                     imshow(P2);
%                 case 6 % restoring original image
%                     P2 = P;
%                     imshow(P2);
%                 case 7 % exit
%                     close
%                     break
%             end
%         end
        
%  %% Example 5.
%     % Low constrast image histogram
%         L1=imread('portrait.jpg');
%         figure;
%         imshow(L1);
%         figure;
%         imhist(L1); %  calculates the histogram for the grayscale image I
%         [y,x]=imhist(L1); % imhist function returns the histogram counts in counts and the bin locations in binLocations [counts,binLocations]
%         figure;
%         bar(x,y); % draws the bars at the locations specified by x
%         figure;
%         stairs(x,y) % plots the elements in Y at the locations specified by X

% %% Exercise 4.
%     % Lighten and then darken image portrait1.jpg and display histograms of transformed images.
%           Q=imread('portrait1.jpg');
%           figure;
%           imshow(Q);
%           title('Original image')
%           
%           %Lighten the image
%           Q2 = (Q)+50;
%           figure;
%           imshow(Q2);
%           title('Lighter image')
%           
%           figure;
%           imhist(Q2); %  calculates the histogram for the grayscale image I
%           title('Lighter image histogram')
%           
%           %Darken the image
%           Q3 = (Q)-50;
%           figure;
%           imshow(Q3);
%           title('Darker image')
%           
%           figure;
%           imhist(Q3); %  calculates the histogram for the grayscale image I
%           title('Darker image histogram')
          
%% Exercise 5.
    % Display histograms of the images 3.jpg and 4.jpg, analyze them and adjust given images basing on information achieved from histograms. Use the imadjust function.
          R=imread('3.jpg');
          figure;
          imshow(R);
          title('Original image 3.jpg');
          
          S=imread('4.jpg');
          figure;
          imshow(S);
          title('Original image 4.jpg');
          
          % display histograms
          figure;
          imhist(R); %  calculates the histogram for the grayscale image I
          title('3.jpg histogram');
          
          figure;
          imhist(S); %  calculates the histogram for the grayscale image I
          title('4.jpg histogram');
          
          % adjust images
          
           %% TODO: wait for exercise 4 and 5 (4 left the portrait1, and 5 the images and adjust)
          
          
          
          