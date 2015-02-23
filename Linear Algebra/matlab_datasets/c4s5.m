% data for Exercise Set 4.5

ex = input('Exercise number (10-18, 33, 34)? ');

if ex==10
   v1 = [1;-5], v2 = [-2;10], v3 = [-3;15]
elseif ex==11
   v1 = [1;0;2], v2 = [3;1;1], v3 = [-2;-1;1], v4 = [5;2;2] 
elseif ex==12
   v1 = [1;-2;0], v2 = [-3;-6;0], v3 = [-2;3;5], v4 = [-3;5;5] 
elseif ex==13
   A = [1 -6 9 0 -2;0 1 2 -4 5;0 0 0 5 1;0 0 0 0 0] 
elseif ex==14
   A = [1 2 -4 3 -2 6 0;0 0 0 1 0 -3 7;0 0 0 0 1 4 -2;0 0 0 0 0 0 1] 
elseif ex==15
   A = [1 2 3 0 0 ;0 0 1 0 1;0 0 0 1 0] 
elseif ex==16
   A = [3 2;-6 5] 
elseif ex==17
   A = [1 -1 0;0 1 3;0 0 1] 
elseif ex==18
   A = [1 1 -1;0 2 0;0 0 0] 
elseif ex==33
   v1 = [-9;-7;8;-5;7], v2 = [9;4;1;6;-7], v3 = [6;7;-8;5;-7]
elseif ex==34
   disp('Hint:')
   cos6t = [-1;0;18;0;-48;0;32]
else
   disp('No data for this exercise in Section 4.5.')
end
