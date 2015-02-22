% Normal & interesting properties of Lissajous Pattern

% change 2.001 to 3.001, 1.001(while i=1:1:1000)  ... see what happens !
for i = 1:800:8000000
       t = (0 + 0.1*(i-1)):0.005:(2*pi + 0.1*(i-1));
       s = cos(t);
       f = sin(2.001*t);
       plot(s, f);
       pause;
   end


%These are really strange patterns appear when the t is more "disceret", 
%that is ,it appears when t = -pi:0.05:pi, but will not be notable when
% t is, say, -pi:0.00000000001:pi. So, it's the way Matlab approach a 
% graph of function that leads to this strange pattern ? ?
t = -pi:0.05:pi;
b(1) = 0;

%Pattern 1
for i = 1:2000
       x = cos(b(i)*t);
       y = sin(b(i)*t);
       b(i+1) = b(i) + 0.1;
       plot(x, y);
       pause;
end
%Pattern 2
   for i = 1:2000
       x = 2*cos(b(i)*t);
       y = sin(b(i)*t);
       b(i+1) = b(i) + 0.1;
       plot(x, y);
       pause;
   end
%Pattern 3
for i = 1:2000
       x = 2*cos(b(i)*t);
       y = sin(t);
       b(i+1) = b(i) + 0.1;
       plot(x, y);
       pause;
end
%Pattern 4
for i = 1:2000
       x = 2*cos(t);
       y = sin(b(i)*t);
       b(i+1) = b(i) + 0.1;
       plot(x, y);
       pause;
end
%Pattern 5
for i = 1:2000
       x = -1*cos(5*t);
       y = 2*sin(b(i)*t);
       b(i+1) = b(i) + 0.1;
       plot(x, y);
       pause;
   end