function conchoid_sluze()

theta = -pi:0.0001:pi;

for a = -4:0.08:3
    r = sec(theta) + a*cos(theta);
    x = r.*cos(theta);
    y = r.*sin(theta);
    plot(x, y);
    axis([-4, 4, -4, 4]);
    pause;
end
end