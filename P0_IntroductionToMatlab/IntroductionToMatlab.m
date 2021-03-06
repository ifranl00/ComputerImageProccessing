%% Classes 1 - Introduction to Matlab %%
% Student: Irene Francisco Lopez %%

%% Exercise 1
x = 23; % assign a value to x
whos % whos list in alphabetical order names, types and suzes of all variables in the currently active workspace.

%% Exercise 2
y = [1 2 3 4]; % horizontal vector
whos y % shows y's name, size and type

%% Exercise 3
y = [1;2;3;4]; % verticl vector
whos y % shows y's name, size and type

z = y'; % transpose y and saves it in z
z2 = [1 2 3 4]'; % transpose the vector

%% Exercise 4
m = []; % empty matrix
m2 = [1 2 3 4; 5 6 7 8; 9 10 11 12]; % matrix with 3 rows separated with ; and 4 colums separated by space.
m3 = eye(3,3); % identity matrix
m4 = zeros(2,2); % matrix of zeros
m5 = ones(4,4); % matrix of ones
m6 = rand(3,2); % matrix of unirformly distributed random numbers
m7 = randn(2,2); % matrix of normally distributed random numbers

x0 = rand(2,3); % rand matrix
x = m2(1,2); % get a value from the m2 matrix
m2(1,2) = 268; % assign a value to a position of the matrix

%% Exercise 5
v = 1:10; % horizontal vector with values in the range
v2 = 1:0.8:10; % horizontal vector from 1 to 10 with a step of 0.8
m8 = [1:2:10; 2:0.5:4]; % matriz with ranges and step

m9 = rand(3,4); %rand matrix
a = m9(:,2); %get 2nd column
b = m9(3,:); %get 3rd row;

m10 = rand(5,6); %rand matrix
c = m10(2:4,3:5); %submatrix: from 2nd to 4rd row and from 3rd to 5th column

m11 = rand(2,3);
m12 = [23 23 23];
m11(1,:) = m12; % assign a whole row
m11(2,:) = []; % deleting a whole row

%% Exercise 6
m13 = 2*ones(3); % matrix of 3x3 of 2*1 all values
m14 = 3*ones(3); % matrix of 3x3 of 3*1 all values
m15 = m13*m14; % matrix multiplication
m16 = m13.*m14; % element-wise multiplication

m17 = m13^3; % matrix power
m18 = m13.^3; % element.wise power

size(m13); % retruns the size of the matrix
[r,t] = size(m13); % save the size (a vector)

%% Exercise 7
idx = find (x>0,5); % finds elements > 0.5
x(idx) = 0; % assign 0 to values found

%% Exercise 8
help
% comment
%{ multiline comment
%} end of multiline comment
hola = "hola :)";
disp hola % displays the value of variable or string
x = input('Enter value x'); % displays prompt and waits for the user to input
% always ; at the end of the line to supress output of the given code line

d = 0:pi/20:2*pi;
e = sin(x);
plot(e,d); % 2D line plot of the data in y versus the corresponding values in x
hold on %retains plots in the current window so that the new plots addes to the window do not delete existing plots

clc %clear console
clf %clear figure
clear %removes all variables from workspace
clear d %removes specific variable d from workspace
