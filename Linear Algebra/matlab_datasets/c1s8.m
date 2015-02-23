% data for Exercise Set 1.8
        
ex = input('Exercise number (1-6,9-12,37-40)? ');
        
if ex==1
   A = [2 0;0 2], u = [1 -3]'
elseif ex==2
   A = [1/3 0 0;0 1/3 0;0 0 1/3], u = [3 6 -9]'
elseif ex==3
   A = [1 0 -3;-3 1 6;2 -2 -1], b = [-2 3 -1]'
elseif ex==4
   A = [1 -2 3;0 1 -3;2 -5 6], b = [-6 -4 -5]'
elseif ex==5  
   A = [1 -5 -7;-3 7 5], b = [-2 -2]'
elseif ex==6
   A = [1 -3 2;3 -8 8;0 1 2;1 0 8], b = [1 6 3 10]'
elseif ex==9
   A = [1 -3 5 -5;0 1 -3 5;2 -4 4 -4]
elseif ex==10
   A = [3 2 10 -6;1 0 2 -4;0 1 2 3;1 4 10 8]
elseif ex==11
   A = [1 -3 5 -5;0 1 -3 5;2 -4 4 -4], b=[-1 1 0]'
elseif ex==12
   A = [3 2 10 -6;1 0 2 -4;0 1 2 3;1 4 10 8], b = [-1 3 -1 4]'
elseif ex==37
   A = [2 3 5 -5 ;-7 7 0 0;-3 4 1 3;-9 3 -6 -4]
elseif ex==38
   A = [3 4 -7 0 ;5 -8 7 4; 6 -8 6 4; 9 -7 -2 0]
elseif ex==39
   A = [2 3 5 -5 ;-7 7 0 0;-3 4 1 3;-9 3 -6 -4], b = [8 7 5 -3]'
elseif ex==40
   A = [3 4 -7 0 ;5 -8 7 4; 6 -8 6 4; 9 -7 -2 0], b = [4 -4 -4 -7]'
else
   disp('No data for this exercise in Section 1.8.')
end
