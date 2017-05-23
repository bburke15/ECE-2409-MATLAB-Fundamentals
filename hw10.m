%% ECE 2409-001
%% Homework 10
%% Brendan Burke
clear;clc;close all
Published=datestr(now, 21)

%% PART 
x=[0,1.5,3,4.5,6,7.5,9];
y=[1,0,-0.223,0,0.05,0,-0.01];
figure(1)
h1=plot(x,y,'.','MarkerSize',30);
hold on
set(gca,'xtick',[0:2:10]);
set(gca,'ytick',[-0.4:0.2:1]);
set(gca,'XLim',[0 10]);
grid
xlabel('X');
ylabel('Y');

xi=[0:0.001:10];
yi=interp1(x,y,xi,'spline');
h2=plot(xi,yi,'r-','linewidth',2);

%% PART 2
p=polyfit(x,y,2);
y_poly=polyval(p,xi);
h3=plot(xi,y_poly,'k-','linewidth',2);

%% PART 3
p_new=polyfit(x,y,3);
y_poly2=polyval(p_new,xi);
h4=plot(xi,y_poly2,'b-','linewidth',2);

%% PART 4
xx=[0:0.1:10];
set(gca,'ytick',[-0.6:0.2:1]);
yy=(exp(-xx/2).*(cos(pi*xx)));
h5=plot(xx,yy,'g-','linewidth',2);

%% PART 5
legend([h1,h2,h3,h4,h5],{'Original Points','Cubic Spline','Second Order Polynomial','Third Order Polynomial','Function'});
hold off