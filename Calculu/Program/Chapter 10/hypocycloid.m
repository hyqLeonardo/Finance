function hypocycloid(b)

% can play with b = 1

theta = -3/2*pi:0.0001:3/2*pi;

for a = 0:0.5:10
    x = (a-b)*cos(theta) + b*cos((a-b)*theta/b);
    y = (a-b)*sin(theta) - b*sin((a-b)*theta/b);
    plot(x, y);
    pause;
end
end