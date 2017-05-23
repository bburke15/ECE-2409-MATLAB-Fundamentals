%%ECE 2409-001
%%Brendan Burke
%%Homework 4
clear;clc;close all
Published=datestr(now, 21)

%PART 1
load fordstock.mat
plot(ford)
[val,loc]=sort(ford, 'descend');
H=loc(5);
fprintf('The stock closed at its fifth highest value on day %g.\n',H);
fprintf('\n');
%PART 2
[val,loc]=sort(ford,'ascend');
Z=val(1:5);
Y=loc(1:5);
X=[Z,Y];
fprintf('5 Lowest Closings:\n');
fprintf('\n');
fprintf('Close  | Day\n');
fprintf('________________\n');
fprintf('$%2.2f | %g\n',X');
fprintf('\n');
%PART 3
[val,loc]=sort(ford, 'descend');
A=val(end);
B=loc(end);
fprintf('At its lowest point, the stock closed at $%g on day %g.\n',A,B);
fprintf('\n');
%PART 4
[xmax i]=max(ford);
C=xmax;
D=i;
fprintf('At its highest point, the stock closed at $%g on day %g.\n',C,D);
fprintf('\n');
%PART 5
J=loc(1);
K=loc(end);
P=J-K;
fprintf('%g days passed between the lowest and highest closings.\n',P);