% APPROXIMATION PLOTS
%quadratic
hold on;
plot(x, y, '-b');
plot(x, y2, '-r');
axis([-0.5,3.5, -0.5, 1.5]);
%grid on;
xL = xlim;
yL = ylim;
line([0 0], yL,"linestyle", "-", "color", "k");  %y-axis
line(xL, [0 0],"linestyle", "-", "color", "k");  %x-axis
legend ('sin(x)', 'P2(x)');
print -djpg p2.jpg;
hold off;

%cubic
plot(x, y, '-b');
hold on;
plot(x, y3, '-r');
axis([-0.5,3.5, -0.5, 1.5]);
%grid on;
xL = xlim;
yL = ylim;
line([0 0], yL,"linestyle", "-", "color", "k");  %y-axis
line(xL, [0 0],"linestyle", "-", "color", "k");  %x-axis
legend ('sin(x)', 'P3(x)');
print -djpg p3.jpg;
hold off;

%quartic
plot(x, y, '-b');
hold on;
plot(x, y4, '-r');
axis([-0.5,3.5, -0.5, 1.5]);
%grid on;
xL = xlim;
yL = ylim;
line([0 0], yL,"linestyle", "-", "color", "k");  %y-axis
line(xL, [0 0],"linestyle", "-", "color", "k");  %x-axis
legend ('sin(x)', 'P4(x)');
print -djpg p4.jpg;
hold off;

%p5
plot(x, y, '-b');
hold on;
plot(x, y5, '-r');
axis([-0.5,3.5, -0.5, 1.5]);
%grid on;
xL = xlim;
yL = ylim;
line([0 0], yL,"linestyle", "-", "color", "k");  %y-axis
line(xL, [0 0],"linestyle", "-", "color", "k");  %x-axis
legend ('sin(x)', 'P5(x)');
print -djpg p5.jpg;
hold off;

%p6
plot(x, y, '-b');
hold on;
plot(x, y6, '-r');
axis([-0.5,3.5, -0.5, 1.5]);
%grid on;
xL = xlim;
yL = ylim;
line([0 0], yL,"linestyle", "-", "color", "k");  %y-axis
line(xL, [0 0],"linestyle", "-", "color", "k");  %x-axis
legend ('sin(x)', 'P6(x)');
print -djpg p6.jpg;
hold off;

%p7
plot(x, y, '-b');
hold on;
plot(x, y7, '-r');
axis([-0.5,3.5, -0.5, 1.5]);
%grid on;
xL = xlim;
yL = ylim;
line([0 0], yL,"linestyle", "-", "color", "k");  %y-axis
line(xL, [0 0],"linestyle", "-", "color", "k");  %x-axis
legend ('sin(x)', 'P7(x)');
print -djpg p7.jpg;
hold off;

%p8
plot(x, y, '-b');
hold on;
plot(x, y8, '-r');
axis([-0.5,3.5, -0.5, 1.5]);
%grid on;
xL = xlim;
yL = ylim;
line([0 0], yL,"linestyle", "-", "color", "k");  %y-axis
line(xL, [0 0],"linestyle", "-", "color", "k");  %x-axis
legend ('sin(x)', 'P8(x)');
print -djpg p8.jpg;
hold off;



% ERROR PLOTS
hold off;
plot(x, ye2);
hold on;
axis([-0.5,3.5, -0.001, 0.005]);
xL = xlim;
yL = ylim;
line([0 0], yL,"linestyle", "-", "color", "k");  %y-axis
line(xL, [0 0],"linestyle", "-", "color", "k");  %x-axis
legend ('sin(x)', 'E2(x)');
print -djpg E2.jpg;
hold off;

plot(x, ye3);
hold on;
axis([-0.5,3.5, -0.001, 0.005]);
xL = xlim;
yL = ylim;
line([0 0], yL,"linestyle", "-", "color", "k");  %y-axis
line(xL, [0 0],"linestyle", "-", "color", "k");  %x-axis
legend ('sin(x)', 'E3(x)');
print -djpg E3.jpg;
hold off;

plot(x, ye4);
hold on;
axis([-0.5,3.5, -1e-7, 5e-7]);
xL = xlim;
yL = ylim;
line([0 0], yL,"linestyle", "-", "color", "k");  %y-axis
line(xL, [0 0],"linestyle", "-", "color", "k");  %x-axis
legend ('sin(x)', 'E4(x)');
print -djpg E4.jpg;
hold off;

plot(x, ye5);
hold on;
axis([-0.5,3.5, -1e-7, 5e-7]);
xL = xlim;
yL = ylim;
line([0 0], yL,"linestyle", "-", "color", "k");  %y-axis
line(xL, [0 0],"linestyle", "-", "color", "k");  %x-axis
legend ('sin(x)', 'E5(x)');
print -djpg E5.jpg;
hold off;

plot(x, ye6);
hold on;
axis([-0.5,3.5, -1e-11, 5e-11]);
xL = xlim;
yL = ylim;
line([0 0], yL,"linestyle", "-", "color", "k");  %y-axis
line(xL, [0 0],"linestyle", "-", "color", "k");  %x-axis
legend ('sin(x)', 'E6(x)');
print -djpg E6.jpg;
hold off;

plot(x, ye7);
hold on;
axis([-0.5,3.5, -1e-11, 5e-11]);
xL = xlim;
yL = ylim;
line([0 0], yL,"linestyle", "-", "color", "k");  %y-axis
line(xL, [0 0],"linestyle", "-", "color", "k");  %x-axis
legend ('sin(x)', 'E7(x)');
print -djpg E7.jpg;
hold off;

plot(x, ye8);
hold on;
axis([-0.5,3.5, -1e-15, 5e-15]);
xL = xlim;
yL = ylim;
line([0 0], yL,"linestyle", "-", "color", "k");  %y-axis
line(xL, [0 0],"linestyle", "-", "color", "k");  %x-axis
legend ('sin(x)', 'E8(x)');
print -djpg E8.jpg;
hold off;