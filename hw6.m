%%ECE 2409-001
%%Brendan Burke
%%Homework 6
clear;clc;close all
Published=datestr(now, 21)

%PART 1
p=imread('annehathaway.jpg');
figure(1)
imshow(p)

%PART 2
r=p(:,:,1);
g=p(:,:,2);
b=p(:,:,3);
p(:,:,2:3)=0;

l=imread('annehathaway.jpg');
r=l(:,:,1);
g=l(:,:,2);
b=l(:,:,3);
l(:,:,1)=0;
l(:,:,3)=0;

j=imread('annehathaway.jpg');
r=j(:,:,1);
g=j(:,:,2);
b=j(:,:,3);
j(:,:,1:2)=0;

figure(2)
subplot(131),imshow(p)
title('Red Band')
subplot(132),imshow(l)
title('Green Band')
subplot(133),imshow(j)
title('Blue Band')

%PART 3
z=[r==g&g==b];
sum(z(:));
fprintf('%g pixels have the same R, G, and B values.\n', sum(z(:)));

%PART 4
r(z)=255;
g(z)=255;
b(z)=255;
c=cat(3,r,g,b);
figure(3);
imshow(c);

%PART 5
n=imread('billy.jpg');
r=n(:,:,1);
g=n(:,:,2);
b=n(:,:,3);
q=[r==g&g==b];
sum(q(:));
r(q)=255;
g(q)=255;
b(q)=255;
d=cat(3,r,g,b);
figure(4);
imshow(d);