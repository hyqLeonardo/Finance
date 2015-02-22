function conchoid()

t = -pi:0.0001:pi;
for a = -0.5:0.005:0.5
    x = a + cos(t);
    y = a*tan(t) + sin(t);
    plot(x, y);
    axis([-3, 3, -3, 3]);
    pause;
end
end