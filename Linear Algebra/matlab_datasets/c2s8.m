% data for Exercise Set 2.8

ex = input('Exercise number (5-20,23-26,37,38)? ');

if ex==5
   v1 = [1;3;-4], v2 = [-2;-3;7], w = [-3;-3;10]
elseif ex==6
   v1 = [1;-3;2;3], v2 = [4;-4;5;7], v3 = [5;-3;6;5], u = [-1;-7;-1;2]
elseif ex==7 | ex==9
   v1 = [2;-8;6], v2 = [-3;8;-7], v3 = [-4;6;-7], p = [6;-10;11]
    A = [2 -3 -4;-8 8 6;6 -7 -7]
elseif ex==8
   v1 = [-2;0;6], v2 = [-2;3;3], v3 = [0;-5;5], p = [-6;1;17]
    A = [-2 -2 0;0 3 -5;6 3 5]
elseif ex==10
    A = [-2 -2 0;0 3 -5;6 3 5]
 u = [-5;5;3]
elseif ex==11 | ex==13
   A = [3 2 1 -5;-9 -4 1 7;9 2 -5 1]
elseif ex==12 | ex==14
   A = [1 2 3;4 5 7;-5 -1 0;2 7 11;3 3 4]
elseif ex==15
   v1 = [4;-2], v2 = [16;-3]
elseif ex==16
   v1 = [-2;5], v2 = [4;-10]
elseif ex==17
   v1 = [0;0;-2], v2 = [5;0;4], v3 = [6;3;2]
elseif ex==18
   v1 = [1;1;-3], v2 = [3;-1;2], v3 = [5;1;-4]
elseif ex==19
   v1 = [3;-8;1], v2 = [6;2;-5]
elseif ex==20
   v1 = [1;-6;-7], v2 = [3;-6;7], v3 = [-3;7;5], v4 = [0;7;9]
elseif ex==23
   A = [4 5 9 -2;6 5 1 12;3 4 8 -3], B = [1 2 6 -5;0 1 5 -6;0 0 0 0]
elseif ex==24
   A = [3 -6 9 0;2 -4 7 2;3 -6 6 -6], B = [1 -2 5 4;0 0 3 6;0 0 0 0]
elseif ex==25
   A = [1 4 8 -3 -7;-1 2 7 3 4;-2 2 9 5 5;3 6 9 -5 -2], B = [1 4 8 0 5;0 2 5 0 -1;0 0 0 1 4;0 0 0 0 0]
elseif ex==26
   A = [3 -1 -3 -1 8;3 1 3 0 2;0 3 9 -1 -4;6 3 9 -2 6], B = [3 -1 -3 0 6;0 2 6 0 -4;0 0 0 -1 2 ;0 0 0 0 0 ]
elseif ex==37
   A = [3 -5 0 -1 3;-7 9 -4 9 -11;-5 7 -2 5 -7;3 -7 -3 4 0]
elseif ex==38
   A = [5 3 2 -6 -8;4 1 3 -8 -7;5 1 4 5 19;-7 -5 -2 8 5]
else
   disp('No data for this exercise in Section 2.8.')
end
