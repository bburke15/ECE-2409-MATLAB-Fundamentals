%% ECE 2409-001
%% Homework 7
%% Brendan Burke
clear;clc;close all
Published=datestr(now, 21)

%% PART 1

p=imread('rice.png');
figure(1)
imshow(p)
fprintf('Looking at the data of the image, I see that every RGB value\n');
fprintf('is either a 0 (black) or 255 (white). Corresponding R,G,B\n');
fprintf('values across the three pages are equivalent\n');
fprintf('(either 255 or 0), and the resulting image is grey. Thus,\n');
fprintf('the RGB image will display entirely in black and white.\n\n');

%% PART 2

r=p(:,:,1);
g=p(:,:,2);
b=p(:,:,3);
k=[r==255 & g==255 & b==255];
z=sum(k(:));
c=size(p);
v=c(1)*c(2);
v=((z/v)*100);
fprintf('%g percent of the pixels are white.\n',v);
fprintf('\n');

%% PART 3

l=imread('rice.png');
[X,map]=rgb2ind(l,2);
map=[0 0 1;1 1 0]
figure(2)
imshow(X,map)
fprintf('The New Color Map: \n');
fprintf(' %i %i %i \n',map');

%% PART 4

o=imread('rice.png');
r=o(:,:,1);
g=o(:,:,2);
b=o(:,:,3);
m=[r==255 & g==255 & b==255];
a=[r==0 & g==0 & b==0];
r(m)=0;
g(m)=0;
b(m)=0;
r(a)=255;
g(a)=255;
b(a)=255;
s=cat(3,r,g,b);
figure(3)
imshow(s);