%% ECE 2409-001
%% Homework 11
%% Brendan Burke
clear;clc;close all
Published=datestr(now, 21)

%% PART 1
x=0:0.1:50;
h=70+(2.45*x.^2)-(0.001*x.^4);
fig=figure(1)
plot(x,h);
grid
title('Altitude of Model Rocket','fontsize',12,'fontweight','bold');
xlabel('Time (Seconds)','fontsize',12);
ylabel('Altitude (Meters)','fontsize',12);
set(gca,'xtick',[0:5:50]);
v=6.26*x-0.0052*x.^3;
hold on
fig2=figure(2)
plot(x,v);
grid
title('Velocity of Model Rocket','fontsize',12,'fontweight','bold');
xlabel('Time (Seconds)','fontsize',12);
ylabel('Velocity (Meters/Second)','fontsize',12);
set(gca,'xtick',[0:5:50]);
hold on
fig3=figure(3)
a=6.26-0.0156*x.^2;
plot(x,a);
grid
title('Acceleration of Model Rocket','fontsize',12,'fontweight','bold');
xlabel('Time (Seconds)','fontsize',12);
ylabel('Acceleration (Meters/Second^2)','fontsize',12);
set(gca,'xtick',[0:5:50]);
hold on

%% PART 2
[xmax i]=max(h);
D=xmax;
C=x(i);
figure(fig)
plot(C, D, 'r.','MarkerSize',30);
fprintf('The maximum altitude is %g meters.\n',D);
fprintf('It takes %g seconds to reach the maximum altitude.\n',C);
%% PART 3
figure(fig2)
E=v((i));
plot(C, E, 'r.','MarkerSize',30);
fprintf('At maximum altitude, the velocity is %g m/s.\n',E);
%% PART 4 
ground=find(h<0);
G=x(ground(1));
Z=v(ground(1));
plot(G,Z,'r.','MarkerSize',30);
fprintf('When the rocket returns to Earth, its velocity is %g m/s.\n',Z);
%% PART 5
figure(fig3)
off=find(a<0);
F=x(off(1));
J=h(off(1));
plot(x(off(1)),a(off(1)),'r.','MarkerSize',30);
figure(fig)
plot(F,J,'r.','MarkerSize',30);
fprintf('The rocket motor shuts off at an altitude of %g meters.\n\n',J);
fprintf('Note that I have marked another point on the altitude graph\n');
fprintf('for the point at which the rocket motor shuts off. I have\n');
fprintf('also placed a point on the acceleration graph for the point\n');
fprintf('at which the motor shuts off.\n');