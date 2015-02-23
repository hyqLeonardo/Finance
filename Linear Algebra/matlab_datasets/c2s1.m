% data for Exercise Set 2.1

ex = input('Exercise number (1-6,10-12,17,27,40,41)? ');

if ex==1
   A = [2 0 -1;4 -5 2], B = [7 -5 1;1 -4 -3], C = [1 2;-2 1], D = [3 5;-1 4] 
elseif ex==2
   A = [2 0 -1;4 -5 2], B = [7 -5 1;1 -4 -3], C = [1 2;-2 1], D = [3 5;-1 4], E = [-5;3] 
elseif ex==3
  A = [2 -5;3 -2] 
elseif ex==4
   A = [5 -1 3;-4 3 -6;-3 1 2] 
elseif ex==5
   A = [-1 3;2 4;5 -3], B = [4 -2;-2 3] 
elseif ex==6
   A = [4 -3;-3 5;0 1], B = [1 4;3 -2]
elseif ex==10
   A = [3 -6;-1 2], B = [-1 1; 3 4], C = [-3 -5;2 1]
elseif ex==11
   A = [1 2 3;2 4 5;3 5 6], D = [5 0 0;0 3 0;0 0 2] 
elseif ex==12
   A = [3 -6;-2 4] 
elseif ex==17
   A = [1 -3;-3 5], AB = [-3 -11;1 17]
elseif ex==27
   u = [-3;2;-5]
   disp('Use a single quote after  A  to produce the transpose of  A.')
elseif ex==40
   S = [0 1 0 0 0;0 0 1 0 0;0 0 0 1 0;0 0 0 0 1;0 0 0 0 0]
elseif ex==41
   A = [1/4 1/2 1/4;1/2 1/3 1/6;1/4 1/6 7/12]
else
   disp('No data for this exercise in Section 2.1.') 
end
