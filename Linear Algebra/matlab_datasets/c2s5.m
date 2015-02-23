% data for Exercise Set 2.5

ex = input('Exercise number (1-18,22,31,32)? ');

if ex==1 
   A = [3 -7 -2;-3 5 1;6 -4 0], L = [1 0 0;-1 1 0;2 -5 1]
   U = [3 -7 -2;0 -2 -1;0 0 -1], b = [-7;5;2] 
elseif ex==2 
   A = [2 -6 4;-4 8 0;0 -4 6], L = [1 0 0;-2 1 0;0 1 1]
   U = [2 -6 4;0 -4 8;0 0 -2], b = [2;-4;6] 
elseif ex==3
   A = [2 -4 2;-4 5 2;6 -9 1], L = [1 0 0;-2 1 0;3 -1 1]
   U = [2 -4 2;0 -3 6;0 0 1], b = [6;0;6] 
elseif ex==4
   A = [1 -1 2;1 -3 1;3 7 5], L = [1 0 0;1 1 0;3 -5 1]
   U = [1 -1 2;0 -2 -1;0 0 -6], b = [0;-5;7] 
elseif ex==5
   A = [1 -2 -2 -3;3 -9 0 -9;-1 2 4 7;-3 -6 26 2], L = [1 0 0 0;3 1 0 0;-1 0 1 0;-3 4 -2 1]
   U = [1 -2 -2 -3;0 -3 6 0;0 0 2 4;0 0 0 1], b = [1;6;0;3] 
elseif ex==6
   A = [1 3 2 0;-2 -3 -4 12;3 0 4 -36;-5 -3 -8 49], L = [1 0 0 0;-2 1 0 0;3 -3 1 0;-5 4 -1 1]
   U = [1 3 2 0;0 3 0 12;0 0 -2 0;0 0 0 1], b = [1;-2;-1;2] 
elseif ex==7
   A = [2 5;-3 -4] 
   disp('You can produce your own LU factorization with the help of MATLAB.')
   disp('The Study Guide explains how to use the command:  gauss( , ).')
elseif ex==8 
   A = [6 4;12 5] 
   disp('You can produce your own LU factorization with the help of MATLAB.')
   disp('The Study Guide explains how to use the command:  gauss( , ).')
elseif ex==9
   A = [3 1 2;-9 0 -4;9 9 14] 
elseif ex==10
   A = [-5 0 4;10 2 -5;10 10 16] 
elseif ex==11
   A = [3 7 2;6 19 4;-3 -2 3] 
elseif ex==12
   A = [2 3 2;4 13 9;-6 5 4] 
elseif ex==13
   A = [1 3 -5 -3;-1 -5 8 4;4 2 -5 -7;-2 -4 7 5] 
elseif ex==14
   A = [1 3 1 5;5 20 6 31;-2 -1 -1 -4;-1 7 1 7] 
elseif ex==15
   A = [2 0 5 2;-6 3 -13 -3;4 9 16 17] 
elseif ex==16
   A = [2 -3 4;-4 8 -7;6 -5 14;-6 9 -12;8 -6 19] 
elseif ex==17
   A = [2 -6 4;-4 8 0;0 -4 6], L = [1 0 0;-2 1 0;0 1 1]
   U = [2 -6 4;0 -4 8;0 0 -2],  

elseif ex==18
   A = [2 -4 2;-4 5 2;6 -9 1], L = [1 0 0;-2 1 0;3 -1 1]
   U = [2 -4 2;0 -3 6;0 0 1] 
elseif ex==22
   A = [2 -4 -2 3;6 -9 -5 8;2 -7 -3 9;4 -2 -2 -1;-6 3 3 4]
elseif ex==31
   d = [-1 0 -1 0 -1 0 -1]; B = diag(d,1) - diag(ones(6,1),2);
   A = B + B' + 4*eye(8), b = [5 15 0 10 0 10 20 30]'
elseif ex==32
   A = 3*eye(4) + diag(-ones(3,1),1) + diag(-ones(3,1),-1), t0 = [10 15 15 10]'
elseif ex==33
   A = [2 4 -1 5 -2;-4 -5 3 -8 1;2 -5 -4 1 8;-6 0 7 -3 1]
%The matrix for "exercise" 33 is from Example 2 in Section 2.5.  See the Study Guide.
else
   disp ('No data for this exercise in Section 2.5.')
end
