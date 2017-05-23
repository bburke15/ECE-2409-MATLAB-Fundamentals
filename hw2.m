%%ECE 2409-001
%%Brendan Burke
%%Homework 2
clc;
Published=datestr(now, 21)

%PART 1
y=linspace(5, 61, 16);
fprintf('%6.0f \n', y);

%PART 2
B=0:4:28;
C=69:-1:62;
D=1.4:-0.3:-0.7;
M=[B;C;D];
fprintf('\n');
fprintf('%5.2g %5.2g %5.2g %5.2g %5.2g %5.2g %5.2g %5.2g\n',M');


%PART 3
A= ones(3);
M= [A,A*0;A*0,A]
%part 3 code is "scalable" in that it can be used as a template
%to produce a 1000x1000 matrix of the same type by setting A=ones(500)

%PART 4
H = ones(1,1000);
H(2:2:end) = -1