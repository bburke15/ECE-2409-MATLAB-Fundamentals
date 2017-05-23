%%ECE 2409-001
%%Brendan Burke
%%Homework 5
clear;clc;close all
Published=datestr(now, 21)

%PART 1
load fordstock.mat
load gmstock.mat
plot(ford,'b')
hold
plot(gm,'r')
P=[gm>45 | gm<40];
sum(P);
fprintf('The GM stock closed above $45 or below $40 on %g days.\n',sum(P));
fprintf('\n');
%PART 2
Z=[gm>=40 & gm<=45];
sum(Z);
fprintf('The GM stock closed between $40 and $45 on %g days.\n',sum(Z));
fprintf('\n');
%PART 3
K=[ford>gm];
sum(K);
fprintf('The Ford stock closed higher than GM on %g days.\n',sum(K));
fprintf('\n');
%PART 4
L=[gm>ford];
G=find(L == 1);
fprintf('Ford fell below on day %g at a price of $%g.\n',G(1), ford(G(1)));
fprintf('This was the first time that Ford had fallen below GM.\n');
fprintf('\n');
%PART 5
S=[ford>gm];
O=find(S == 1);
fprintf('The GM stock closed higher than Ford on day %g.\n',O(end));
fprintf('After that day, GM never fell back.\n');