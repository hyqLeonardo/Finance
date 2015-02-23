% data for Exercise Set 5.1

ex = input('Exercise number (1-18, 37-40)? ');

if ex==1
   A = [3 2;3 8] 
elseif ex==2 
   A = [-1 4; 6 9  ] 
elseif ex==3
   v = [1;3], A = [1 -1;6,-4 ] 
elseif ex==4
   v = [-1;1], A = [5,2;3,6]
elseif ex==5
   v = [3;-2;1], A = [-4 3 3; 2 -3 -2; -1 0 -2] 
elseif ex==6
   v = [1;-2;2], A = [3 6 7;3 2 7;5 6 4] 
elseif ex==7
   A = [3 0 -1;2 3 1;-3 4 5] 
elseif ex==8
   A = [4 -2 3 ;0 -1 3;-1 2 -2] 
elseif ex==9
   A = [3 0;2 1] 
elseif ex==10
   A = [-4 2;3 1] 
elseif ex==11
   A = [1 -3; -4 5] 
elseif ex==12
   A = [ 4 1;3 6] 
elseif ex==13
   A = [4 0 1;-2 1 0;-2 0 1] 
elseif ex==14
   A = [4 0 -1;3 0 3;2 -2 5] 
elseif ex==15
   A = [-4 1 1;2 -3 2;3 3 -2] 
elseif ex==16
   A = [5 0 -1 0;1 3 0 0;2 -1 3 0;4 -2 -2 4] 
elseif ex==17
   A = [0 0 0;0 3 4;0 0 -2] 
elseif ex==18
   A = [5 0 0;0 0 0;-1 0 3] 
elseif ex==37
   A = [12 1 4; 2 11 4; 1 3 7]
elseif ex==38
   A = [  5 -2  2  -4; 7 -4  2 -4; 4 -4 2  0; 3 -1  1  -3]
elseif ex==39
   A = [ 12 -90 30  30  30; 8 -49 15 15 15; 16 -52 12 0 20; 0 -30 10 22 10;8 -41 15 15 7]
elseif ex==40
   A = [-23  57 -9 -15 -59; -10 12 -10 2 -22;11 5 -3 -19 -15;-27 31 -27 25 -37;-5 -15 -5 1 31]
else
   disp('No data for this exercise in Section 5.1.')
end
