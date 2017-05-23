%% ECE 2409-001
%% Homework 8
%% Brendan Burke
clear;clc;close all
Published=datestr(now, 21)

%% PART 1

fprintf('Before plotting the function, I must find the values of\n');
fprintf('the constants f (frequency) and alpha. F is equal to\n');
fprintf('1/T, where T is the period of the function. Analyzing the\n');
fprintf('graph, I see that T=0.5 seconds. Thus, f=1/0.5=2 Hz.\n');
fprintf('To find alpha, I pick a point on the graph, and substitute\n');
fprintf('into the function. Using the point (0.5, 0.4), I find that\n');
fprintf('a=1.83.\n\n');
x=[0:0.001:2];
figure(1)
h=plot(x,((exp(-1.83*x)).*(cos(4*pi*x))),'b');

%% PART 2
x=[0:0.001:2];
y=((exp(-1.83*x)).*(cos(4*pi*x)));
figure(2)
h=plot(x,y,'b');
title({'DAMPED SINUSOID', 'PLOT'},'fontsize', 18,'fontweight','normal');
xlabel('Time(sec)');
ylabel('Amplitude \alpha');
set(gca,'xtick',[0:0.25:2]);
set(gca,'ytick',[-0.8:0.1:1]);
set(gca,'YLim',[-1 1]);
set(gca,'YGrid','on');
set(gca,'XGrid','on');
set(gca,'GridLineStyle',':');
set(gca,'GridAlpha',1);

%% PART 3
[peakValues, indexes]=findpeaks(y);
xValues = x(indexes);
fprintf('NOTE that, given the range of the graph, I assume that "first\n');
fprintf('six peaks and valleys" refers to the first 3 peaks and first\n');
fprintf('3 valleys.\n');
fprintf('The coordinates of the first three peaks are:\n');
p=[xValues(1:2)',peakValues(1:2)'];
fprintf('(%g,%g)\n',0,1);
fprintf('(%g,%2.4f)\n',p');
invertedY = max(y) - y;
[peakvalues, indexes] = findpeaks(invertedY);
xvalues = x(indexes);
fprintf('The coordinates of the first three valleys are:\n');
z=[xvalues(1:3)',(1-(peakvalues(1:3)))'];
fprintf('(%g,%2.4f)\n',z');

%% PART 4
x=[0:0.001:2];
figure(3)
h=plot(x,y,'b');
hold on
plot(0, 1, 'r.','MarkerSize',18);
x=xValues(1);
y=((exp(-1.83*x)).*(cos(4*pi*x)));
plot(x, y, 'r.','MarkerSize',18);
a = annotation('textarrow',[0.24,0.14],[0.74,0.84]);
b = annotation('textarrow',[0.42,0.32],[0.72,0.63]);
hold off
title({'DAMPED SINUSOID', 'PLOT'},'fontsize', 18,'fontweight','normal');
xlabel('Time(sec)');
ylabel('Amplitude \alpha');
set(gca,'xtick',[0:0.25:2]);
set(gca,'ytick',[-0.8:0.1:1]);
set(gca,'YLim',[-1 1]);
set(gca,'YGrid','on');
set(gca,'XGrid','on');
set(gca,'GridLineStyle',':');
set(gca,'GridAlpha',1);
