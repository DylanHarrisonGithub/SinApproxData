format long;

M2 = zeros(3,3);
for j = 1:3
  for i = 1:3
    M2(i,j) = (pi^(i+j-1))/(i+j-1);
  end
end

M3 = zeros(4,4);
for j = 1:4
  for i = 1:4
    M3(i,j) = (pi^(i+j-1))/(i+j-1);
  end
end

M4 = zeros(5,5);
for j = 1:5
  for i = 1:5
    M4(i,j) = (pi^(i+j-1))/(i+j-1);
  end
end

M5 = zeros(6,6);
for j = 1:6
  for i = 1:6
    M5(i,j) = (pi^(i+j-1))/(i+j-1);
  end
end

M6 = zeros(7,7);
for j = 1:7
  for i = 1:7
    M6(i,j) = (pi^(i+j-1))/(i+j-1);
  end
end

M7 = zeros(8,8);
for j = 1:8
  for i = 1:8
    M7(i,j) = (pi^(i+j-1))/(i+j-1);
  end
end

M8 = zeros(9,9);
for j = 1:9
  for i = 1:9
    M8(i,j) = (pi^(i+j-1))/(i+j-1);
  end
end

y2 = [ 2; pi; pi^2 - 4];
y3 = [y2; pi^3 - 6*pi];
y4 = [y3; pi^4 - 12*pi^2 + 48];
y5 = [y4; pi^5 - 20*pi^3 + 120*pi];
y6 = [y5; pi^6 - 30*pi^4 + 360*pi^2 - 1440];
y7 = [y6; pi^7 - 42*pi^5 + 840*pi^3 - 5040*pi];
y8 = [y7; pi^8 - 56*pi^6 + 1680*pi^4 - 20160*pi^2 + 80640];

x2 = linsolve(M2, y2);
x3 = linsolve(M3, y3);
x4 = linsolve(M4, y4);
x5 = linsolve(M5, y5);
x6 = linsolve(M6, y6);
x7 = linsolve(M7, y7);
x8 = linsolve(M8, y8);

p2 = flip(transpose(x2))
p3 = flip(transpose(x3))
p4 = flip(transpose(x4))
p5 = flip(transpose(x5))
p6 = flip(transpose(x6))
p7 = flip(transpose(x7))
p8 = flip(transpose(x8))

x = -1:0.01:4;
y = sin(x);
y2 = polyval(p2, x);
y3 = polyval(p3, x);
y4 = polyval(p4, x);
y5 = polyval(p5, x);
y6 = polyval(p6, x);
y7 = polyval(p7, x);
y8 = polyval(p8, x);

E2 = @(x) (sin(x) - dot(p2, [x.^2; x; 1])).^2;
E3 = @(x) (sin(x) - dot(p3, [x.^3; x.^2; x; 1])).^2;
E4 = @(x) (sin(x) - dot(p4, [x.^4; x.^3; x.^2; x; 1])).^2;
E5 = @(x) (sin(x) - dot(p5, [x.^5; x.^4; x.^3; x.^2; x; 1])).^2;
E6 = @(x) (sin(x) - dot(p6, [x.^6; x.^5; x.^4; x.^3; x.^2; x; 1])).^2;
E7 = @(x) (sin(x) - dot(p7, [x.^7; x.^6; x.^5; x.^4; x.^3; x.^2; x; 1])).^2;
E8 = @(x) (sin(x) - dot(p8, [x.^8; x.^7; x.^6; x.^5; x.^4; x.^3; x.^2; x; 1])).^2;

rmsErrors = [(quad(E2,0,pi)/pi)^(1/2),
            (quad(E3,0,pi)/pi)^(1/2),
            (quad(E4,0,pi)/pi)^(1/2),
            (quad(E5,0,pi)/pi)^(1/2),
            (quad(E6,0,pi)/pi)^(1/2),
            (quad(E7,0,pi)/pi)^(1/2),
            (quad(E8,0,pi)/pi)^(1/2)]

ye2 = ye3 = ye4 = ye5 = ye6 = ye7 = ye8 = [];
for z = 1:(length(x))
  ye2 = [ye2, E2(x(z))];
  ye3 = [ye3, E3(x(z))];
  ye4 = [ye4, E4(x(z))];
  ye5 = [ye5, E5(x(z))];
  ye6 = [ye6, E6(x(z))];
  ye7 = [ye7, E7(x(z))];
  ye8 = [ye8, E8(x(z))];
end

p4Roots = roots(p4)
p8Roots = roots(p8)
