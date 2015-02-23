% data for Exercise Set 4.2

ex = input('Exercise number (1-6, 17-24, 37-40)? ');

if ex==1
   w = [1;3;-4], A = [3 -5 -3;6 -2 0;-8 4 1] 
elseif ex==2
   w = [ 1;-1; 1], A = [2 6 4;-3 2 5;-5 -4 1] 
elseif ex==3 %| ex==22
   A = [1 2 4 0;0 1 3 -2] 
elseif ex==4
   A = [1 -3 2 0;0 0 3 0] 
elseif ex==5
   A = [1 -4 0 2 0;0 0 1 -5 0;0 0 0 0 2] 
elseif ex==6
   A = [1 3 -4 -3 1;0 1 -3 1 0;0 0 0 0 0] 
elseif ex==17 | ex==21
   A = [6 -4;-3 2;-9 6;9 -6]
elseif ex==18 | ex==22
   A = [5 -2 3;-1 0 -1;0 -2 -2;-5 7 2]
elseif ex==19
   A = [4 5 -2 6 0;1 1 0 1 0]
elseif ex==20
   A = [1 -3 2 0 -5]
elseif ex==23
   A = [-2 4;-1 2], w = [2;1] 
elseif ex==24
   A = [10 -8 -2 -2; 0 2 2  -2; 1 -1 6 0; 1 1 0 -2]
  w = [2;2;0;2] 
elseif ex==37
   A = [7 6 -4 1;-5 -1 0 -2;9 -11 7 -3;19 -9 7 1], w = [1;1;-1;-3]
elseif ex==38
   A = [-8 5 -2 0;-5 2 1 -2;10 -8 6 -3;3 -2 1 0], w = [1;2;1;0]
elseif ex==39
   A = [5 1 2 2 0;3 3 2 -1 -12;8 4 4 -5 12;2 1 1 0 -2]
elseif ex==40
   v1 = [5;3;8], v2 = [1;3;4], v3 = [2;-1;5], v4 = [0;-12;-28]
else   
   disp('No data for this exercise in Section 4.2.')
end
