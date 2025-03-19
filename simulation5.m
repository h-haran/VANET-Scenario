%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;clear;
run 'vanet4.mlx';
run 'vt.m'
% run 'simulation.mlx';
Leftx1RT=zeros(100,1); %length(vopal{1}));
Leftx1LT=zeros(100,1);
Leftx1Top=zeros(100,1);
Leftx1Down=zeros(100,1);
 timeinterval=100;

% generating random speeds
 spd=randsample(1:11,timeinterval,true)';
t = round(linspace(0, 100, timeinterval),0)';

for j=1:length(spd)
    % if mod(y1,2)==1
   % x=h(j,1);
    for i=1:length(t)
    Leftx1RT(i)= 0+spd(j)*t(i);
    Leftx1LT(i)=1000-spd(j)*t(i);
  %  Leftx1Top(i)=
    % disp(Leftx1st(i));
    end
end

%saveas(gcf, 'export.jpg');

% Animation setup
% hold on;
grid on;
xlabel('Distance-axis');
ylabel('Time-axis');
xlim([0, 1000]);
ylim([0, 100]);

y1max=max(y1); y1min=min(y1);
y1t=zeros(16,1);
for i=1:16
    y1t(i)=y1(i);
end

% Initialize the point
for j=1:length(y1)
 hleft=plot(Leftx1RT(i),y1(j),'go',MarkerSize=2,LineWidth=5);
for jj=1:length(y2)
 hright=plot(Leftx1LT(i),y2(jj),'ro',MarkerSize=2,LineWidth=5);
% Animate the point
for i = 1:100
    
    % Update point position
    hold on;
   
Animation stopping issue is there to check
 
    set(hleft, 'XData', Leftx1RT(i), 'YData', y1(j));
    set(hright, 'XData',Leftx1LT(i), 'YData',y2(jj));
  pause(.05);  % Control the speed of animation
end
end
end
hold off;

xlim([0 1000])
ylim([0.0 100.0])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




