%%ECE 2409-001
%%Brendan Burke
%%Homework 2
clc;
Published=datestr(now, 21)

%%PART 1
figure (1)
load clown
imshow(X,map)
%%PART 1a
figure (2)
[rows,cols]=size(X)
X(16:16:end,:) = 81;
X(:,16:16:end)= 81;
imshow(X,map)
%%PART 1b
figure (3)
load clown
X(60:110,140)=81;
X(60:110,225)=81;
X(60,140:225)=81;
X(110,140:225)=81;
imshow(X,map)