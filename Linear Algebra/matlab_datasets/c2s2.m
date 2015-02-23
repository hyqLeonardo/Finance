% data for Exercise Set 2.2

ex = input('Exercise number (1-7, 29-42)? ');

if ex==1
   A = [8 6;5 4] 
   disp('In Exercises 1-4, you should write out the inverse by hand.')
   disp('After that, you can use the command  inv(A)  to check your work.')
elseif ex==2
   A = [3 2;8 5] 
elseif ex==3
   A = [7 3;-6 -3] 
elseif ex==4
   A = [2 -4;4 -6] 
elseif ex==5
   A = [8 6;5 4], b = [2;-1] 
elseif ex==6
   A = [7 3;-6 -3], b = [-9;4] 
elseif ex==7
   A = [1 2;5 12], b1 = [-1;3], b2 = [1;-5], b3 = [2;6], b4 = [3;5] 
   disp('The point of Exercise 7 is to compare the time needed for part (a)')
   disp('  with the time needed for part (b).  So this exercise should be done by')
   disp('  by hand.  You can use  inv(A)  to check your work.')
elseif ex==29
   A = [1 -3;4 -9]
   disp('The Study Guide explains how to implement the algorithm in the text.')
elseif ex==30 
   A = [3 6;4 7] 
   disp('The Study Guide explains how to implement the algorithm in the text.')
elseif ex==31 
   A = [1 0 -2;-3 1 4;2 -3 4] 
elseif ex==32 
   A = [1 2 -1;-4 -7 3;-2 -6 4] 
elseif ex==33 
   A = [1 0 0;1 1 0;1 1 1], C = [1 0 0 0;1 1 0 0;1 1 1 0;1 1 1 1]
elseif ex==34
   A = [1 0 0;2 2 0; 3 3 3], C = [1 0 0 0;2 2 0 0;3 3 3 0;4 4 4 4]
elseif ex==35
   A = [-1 -7 -3;2 15 6;1 3 2] 
elseif ex==36
   A = [-25 -9 -27;536 185 537;154 52 143] 
elseif ex==37
   A = [1 2;1 3;1 5]
elseif ex==38
   A=[1 -1 1 0; 0 1 -1 1] 
elseif ex==39
   D = [.011 .003 .001;.003 .009 .003;.001 .003 .011], f = [40;50;30] 
elseif ex==40
    D =  [.011 .003 .001;.003 .009 .003;.001 .003 .011], y = [0;0;.04] 
elseif ex==41
   D = [.013 .005 .0020 .001;
        .005 .010 .0040 .0020;
        .002 .0040 .010 .0050; 
        .001 .0020 .0050 .013]
   y = [.07; .12; .16; .12]
elseif ex==42
   D = [.013 .005 .0020 .001;
        .005 .010 .0040 .0020;
        .002 .0040 .010 .0050; 
        .001 .0020 .0050 .013]

   y = [0 .22 0 0]'
else
   disp('No data for this exercise in Section 2.2.') 
end
