%% ECE 2409-001
%% Homework 9
%% Brendan Burke
clear;clc;close all
Published=datestr(now, 21)

%% PART 1
figure(1)
[x,y,z]=sphere(25);
r=1;
a=0;
b=0;
c=2;
h(1)=surf(x*r+a,y*r+b,z*r+c, 'FaceColor', [1 0 0]);
hold on
axis('equal');

%% PART 2
[x,y,z]=cylinder(0.5);
z=z*4;
h(2)=surf(x,y,z,'FaceColor',[0 0 1]);
%% PART 3
set(gca,'Box','on');
set(gca,'BoxStyle','full');
set(gca,'ztick',[0:0.5:4]);
%set(gca,'xtick',[-1:1:1]);
%set(gca,'ytick',[-1:1:1]);
axis([-1 1 -1 1]);

%% PART 4
set(gca,'FontSize',12);
set(gca,'ztick',[0:0.5:4]);
%set(gca,'xtick',[-1:1:1]);
%set(gca,'ytick',[-1:1:1]);
%set(gca,'YLim',[-1 1]);
%set(gca,'XLim',[-1 1]);
axis([-1 1 -1 1 0 4]);
%% PART 5
figure(2)
az=-60;
el=66;
[x,y,z]=sphere(25);
r=1;
a=0;
b=0;
c=2;
h(1)=surf(x*r+a,y*r+b,z*r+c, 'FaceColor', [1 0 0]);
hold on
axis('equal');
[x,y,z]=cylinder(0.5);
z=z*4;
h(2)=surf(x,y,z,'FaceColor',[0 0 1]);
set(gca,'Box','on');
set(gca,'BoxStyle','full');
set(gca,'FontSize',12);
set(gca,'ztick',[0:1:4]);
set(gca,'xtick',[-1:0.5:1]);
set(gca,'ytick',[-1:1:1]);
%set(gca,'YLim',[-1 1]);
%set(gca,'XLim',[-1 1]);
axis([-1 1 -1 1 0 4]);
view(az,el);