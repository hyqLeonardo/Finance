% data for Exercise Set 8.3                                                                                                                                                                                                                                                                                                        % data for Exercise Set 1.1 (4/E)
  
ex = input('Exercise number (3-8,15,16)? '); 

if ex==3
   b1 = [2;1;1], b2 = [1;0;-2], b3 = [2;-5;1], 
   p1 = [3;8;4], p2 = [6;-3;3], p3 = [0;-1;-5]
elseif ex==4
   b1 = [2;1;1], b2 = [1;0;-2], b3 = [2;-5;1], 
   p1 = [0;-19;-5], p2 = [1.5;-1.3;-.5], p3 = [5;-4;0]
elseif ex==5
   v1 = [-1; -3; 4], v2 = [0;-3;1], v3 = [1;-1;4], v4 = [1; 1; -2]
   p1 = [1; -1; 2], p2 = [0; -2; 2]
elseif ex==6
   v1 = [2; 0; -1; 2], v2 = [0;-2;2;1], v3 = [-2;1;0;2], 
   p1 = [-1; 2; -3/2; 5/2], p2 = [-1/2; 0; 1/4; 7/4], p3=[6;-4;1;-1], p4=[-1;-2;0;4]
elseif ex==7
   v1 = [-1;0], v2 = [2;3], v3 = [4;1] 
   p1 = [2;1], p2 = [3;2], p3 = [2;0], p4 = [0;2] 
   A = [ones(1,7); [v1 v2 v3 p1 p2 p3 p4]]
elseif ex==8
   v1 = [2;0], v2 = [0;5], v3 = [-1;1] 
   p1 = [2;1], p2 = [1;1], p3 = [1;1/3], p4 = [1;0] 
   A = [ones(1,7); [v1 v2 v3 p1 p2 p3 p4]]
elseif ex==15
   v1 = [1;0], v2 = [1;2], v3 = [4;2], v4 = [4;0], p = [2;1]
elseif ex==16
   v1 = [-1;0], v2 = [0;3], v3 = [3;1], v4 = [1;-1], p = [1;2]
else 
   disp ('No data for this exercise in Section 8.3.')
end