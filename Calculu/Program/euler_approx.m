function[y_approx, error] = euler_approx(dy, y_init, x_end, h)

%"dy" should be a function using @(x, y) syntax.

len = x_end/h;
x(1) = 0;
for i = 1 : len
    x(i+1) = x(i) + h;
end

y_approx(1) = y_init;
for i = 1 : len
    y_approx(i+1) = y_approx(i) + h*dy(x(i), y_approx(i));
end

[xs, ys] = ode45(dy, [x(1), x(end)], y_init);

error = ys(end) - y_approx(end);

fig = figure();
hold on
plot(xs, ys);
plot(x, y_approx, 'o-');

end



    
    
    