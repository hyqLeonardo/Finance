% From page 860  Calculu

%%
 Xvals = -pi : 0.1 : pi;
 Yvals = -pi : 0.1 : pi;
 
 [X, Y] = meshgrid(Xvals, Yvals);
 
 Z = (X.^2 + 3*Y.^2) .* exp(-X.^2-Y.^2);
 subplot(2, 2, 1);
 mesh(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('mesh plot');
 
 subplot(2, 2, 2);
 surf(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('Surface plot');
 
 subplot(2, 2, 3);
 contour(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('contour plot');
 
 subplot(2, 2, 4);
 surfc(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('Surface contour');
 
 %%
 %%
 Xvals = -2*pi : 0.3 : 2*pi;
 Yvals = -2*pi : 0.3 : 2*pi;
 
 [X, Y] = meshgrid(Xvals, Yvals);
 
 Z = sin(X) + sin(Y);
 subplot(2, 2, 1);
 mesh(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('mesh plot');
 
 subplot(2, 2, 2);
 surf(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('Surface plot');
 
 subplot(2, 2, 3);
 contour(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('contour plot');
 
 subplot(2, 2, 4);
 surfc(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('Surface contour');
 
 
 %%
 Xvals = -pi : 0.3 : pi;
 Yvals = -pi : 0.3 : pi;
 
 [X, Y] = meshgrid(Xvals, Yvals);
 
 Z = -3*Y ./ (X.^2 + Y.^2 + 1);
 subplot(2, 2, 1);
 mesh(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('mesh plot');
 
 subplot(2, 2, 2);
 surf(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('Surface plot');
 
 subplot(2, 2, 3);
 contour(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('contour plot');
 
 subplot(2, 2, 4);
 surfc(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('Surface contour');

 %%
 % Exercise 30
 
 Xvals = -pi : 0.3 : pi;
 Yvals = -pi : 0.3 : pi;
 
 [X, Y] = meshgrid(Xvals, Yvals);
 
 Z = abs(X .* Y);
 subplot(2, 2, 1);
 mesh(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('mesh plot');
 
 subplot(2, 2, 2);
 surf(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('Surface plot');
 
 subplot(2, 2, 3);
 contour(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('contour plot');
 
 subplot(2, 2, 4);
 surfc(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('Surface contour');
 
 %%
 Xvals = -3.5*pi : 0.3 : 3.5*pi;
 Yvals = -3.5*pi : 0.3 : 3.5*pi;
 
 [X, Y] = meshgrid(Xvals, Yvals);
 
 Z = sin(abs(X) + abs(Y));
 subplot(2, 2, 1);
 mesh(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('mesh plot');
 
 subplot(2, 2, 2);
 surf(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('Surface plot');
 
 subplot(2, 2, 3);
 contour(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('contour plot');
 
 subplot(2, 2, 4);
 surfc(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('Surface contour');
 
 % Page 870
 %%
 Xvals = -pi : 0.1 : pi;
 Yvals = -pi : 0.1 : pi;
 
 [X, Y] = meshgrid(Xvals, Yvals);
 
 Z = sin(X.^2 + Y.^2)./(X.^2 + Y.^2);
 subplot(2, 2, 1);
 mesh(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('mesh plot');
 
 subplot(2, 2, 2);
 surf(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('Surface plot');
 
 subplot(2, 2, 3);
 contour(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('contour plot');
 
 subplot(2, 2, 4);
 surfc(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('Surface contour');
 
 %%
 Xvals = -pi : 0.1 : pi;
 Yvals = -pi : 0.1 : pi;
 
 [X, Y] = meshgrid(Xvals, Yvals);
 
 Z = (X.^2 - Y.^2)./(X.^2 + Y.^2);
 subplot(2, 2, 1);
 mesh(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('mesh plot');
 
 subplot(2, 2, 2);
 surf(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('Surface plot');
 
 subplot(2, 2, 3);
 contour(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('contour plot');
 
 subplot(2, 2, 4);
 surfc(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('Surface contour');
 
 %%
 Xvals = -0.8*pi : 0.03 : 0.8*pi;
 Yvals = -0.8*pi : 0.03 : 0.8*pi;
 
 [X, Y] = meshgrid(Xvals, Yvals);
 
 Z = sin(X .* (Y.^2))./(X.^2 + Y.^4);
 subplot(2, 2, 1);
 mesh(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('mesh plot');
 
 subplot(2, 2, 2);
 surf(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('Surface plot');
 
 subplot(2, 2, 3);
 contour(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('contour plot');
 
 subplot(2, 2, 4);
 surfc(X, Y, Z);
 ylabel('y - axis'), zlabel('z - axis'), title('Surface contour');
 
 %%
 Xvals = -pi : 0.01 : pi;
 Yvals = -pi : 0.01 : pi;
 
 [X, Y] = meshgrid(Xvals, Yvals);
 
 Z = atan(Y./X);
 subplot(2, 2, 1);
 mesh(X, Y, Z);
 xlabel('x-axis'),ylabel('y - axis'),zlabel('z - axis'),title('mesh plot');
 
 subplot(2, 2, 2);
 surf(X, Y, Z);
 xlabel('x-axis'),ylabel('y - axis'),zlabel('z - axis'),title('Surface plot');
 
 subplot(2, 2, 3);
 contour(X, Y, Z);
 xlabel('x-axis'),ylabel('y - axis'),zlabel('z - axis'),title('contour plot');
 
 subplot(2, 2, 4);
 surfc(X, Y, Z);
 xlabel('x-axis'),ylabel('y - axis'),zlabel('z - axis'),title('Surface contour');