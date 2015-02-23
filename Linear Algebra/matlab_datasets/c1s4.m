% data for Exercise Set 1.4
     
ex = input('Exercise number (1-4,11-14, 17-22, 37-42)? ');

if ex==1
   A = [-4 2;1 6;0 1], b = [3 -2 7]'
elseif ex==2 
   a = [1 3 1]', b = [5 -1]'
elseif ex==3
   A = [1 2;-3 1;1 6], b=[-2 3]'
elseif ex==4
   A = [1 3 -4;3 2 1], b = [1 2 1]'
elseif ex==11
   A = [1 3 -4;1 5 2;-3 -7 6], b = [-2;4;12]
   disp('The augmented matrix M for a system of equations corresponding to')
   disp('  Ax = b is formed by the MATLAB command:   M = [A  b]') 
elseif ex==12 
   A = [1 2 -1;-3 -4 2;5 2 3], b = [1;2;-3]
   disp('The augmented matrix M for a system of equations corresponding to')
   disp('  Ax = b is formed by the MATLAB command:   M = [A  b]')
elseif ex==13
   A = [3 -5;-2 6;1 1], u = [0 4 4]'
elseif ex==14
   A = [2 5 -1;0 1 -1;1 2 0], u = [4 -1 4]'
elseif ex==17 
   A = [1 3 0 3;-1 -1 -1 1;0 -4 2 -8;2 0 3 -1]
elseif ex==18 
   B = [1 4 1 2;0 1 3 -4;0 2 6 7;2 9 5 -7]
elseif ex==19 
   A = [1 3 0 3;-1 -1 -1 1;0 -4 2 -8;2 0 3 -1]
elseif ex==20 
   B =  [1 4 1 2;0 1 3 -4;0 2 6 7;2 9 5 -7] 
elseif ex==21
   v1 = [1 ; 0; -1; 0], v2 = [0; -1; 0 ; 1], v3 = [1; 0; 0; -1]
   %A = [1  0 1;0 -1 0;-1 0 0;0 1 -1] 
elseif ex==22     
   v1 = [0; 0; -3], v2 = [0; -3; 9], v3 = [4;  -2 ; -6]
   %A = [0 0 4;0 -3 -2;-3 9 -6]
elseif ex==37
   A = [7 2 -5 8;-5 -3 4 -9;6 10 -2 7;-7 9 2 15]
elseif ex==38
   A = [4 -5 -1 8;3 -7 -4 2;5 -6 -1 4;9 1 10 7]
elseif ex==39 
   A = [10 -7 1 4 6;-8 4 -6 -10 -3;-7 11 -5 -1 -8;3 -1 10 12 12]
elseif ex==40 
   A = [5 11 -6 -7 12;-7 -3 -4 6 -9;11 5 6 -9 -3;-3 4 -7 2 7]
elseif ex==41
   A = [10 -7 1 4 6;-8 4 -6 -10 -3;-7 11 -5 -1 -8;3 -1 10 12 12]
elseif ex==42
   A = [5 11 -6 -7 12;-7 -3 -4 6 -9;11 5 6 -9 -3;-3 4 -7 2 7]
else
   disp('No data for this exercise in Section 1.4.')  
end
