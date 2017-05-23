%% ECE 2409-001
%% Homework 1
%% Brendan Burke
%Note: As they appear in the Command Window in MATLAB,
%Tables are formatted correctly.
clc;
Published=datestr(now, 21)
%%Part 1
fprintf('\t___________________________________________\n');
fprintf('\n');
fprintf('\twidth(inch) \theight(inch) \tdepth(inch)\n'); 
x=randi(100,10,3);
fprintf('\t___________________________________________\n');
fprintf('\t%5d \t%14d \t%13d \n',x');
fprintf('\t___________________________________________\n');

%%Part 2
fprintf('\n');
fprintf('\t___________________________________________\n');
fprintf('\n');
fprintf('\twidth(inch) \theight(inch) \tdepth(inch)\n');
x=10*randn(10,3);
fprintf('\t___________________________________________\n');
fprintf(    '\t%6.2f \t%16.4f \t%13.2e \n',x');
fprintf('\t___________________________________________\n');