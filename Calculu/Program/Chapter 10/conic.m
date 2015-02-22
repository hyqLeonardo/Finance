function conic()
% Oh, god, I love just looking at it changing ~

for e = 0:0.01:2
    e
    theta = 0:0.001:2*pi;
    r = (3*e)./(1+e*cos(theta));
    x = r.*cos(theta);
    y = r.*sin(theta);
    plot(x, y);
    axis([-25, 40, -30, 30]);
    pause;
end

end
