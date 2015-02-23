% data for Exercise Set 5.4

ex = input('Exercise number (11-17, 30-32)? ');
 
if ex==11
   A = [ -4 -1;6 1], b1 = [-1;2], b2 = [-1;1] 
elseif ex==12
   A = [-6 -2 ;4 0], b1 = [0;1], b2 = [-1;2] 
elseif ex==13
   A = [0 1;-3 4] 
elseif ex==14
   A = [2 3;3 2]  
elseif ex==15
   A = [1 2; 3 -4] 
elseif ex==16
   A = [4 -2;-1 5] 
elseif ex==17
   A = [4 1;-1 2], b1 = [1;-1], b2 = [-1;2] 
elseif ex==30
   A = [6 -2 -2;3 1 -2;2 -2 2], b1 = [1;1;1], b2 = [2;1;3], b3 = [-1;-1;0]
elseif ex==31
   A = [-7 -48 -16;1 14 6;-3 -45 -19], b1 = [-3;1;-3], b2 = [-2;1;-3],
   b3 = [3; -1; 0]
elseif ex==32
   A = [-6 4 0 9;-3 0 1 6;-1 -2 1 0;-4 4 0 7]
else
   disp('No data for this exercise in Section 5.4.')
end
