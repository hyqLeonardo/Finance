% data for Exercise Set 1.5
      
ex = input('Exercise number (1-12, 17, 18)? ');
      
if ex==1
   M = [2 -5 8 0; -2 -7 1 0; 4 2 7 0]  
elseif ex==2
   M = [1 -2 3 0; -2 -3 -4 0; 2 -4 9 0]  
elseif ex==3
   M = [-3 4 -8 0; -2 5 4 0]  
elseif ex==4
   M = [5 -3 2 0;-3 -4 2 0]
elseif ex==5
   M = [2 2 4 0; -4 -4 -8 0; 0 -3 -3 0]
elseif ex==6
   M = [1 2 -3 0; 2 1 -3 0; -1 1 0 0]
elseif ex==7
   A = [1 3 -3 7; 0 1 -4 5]  
   disp('You could row reduce A and pretend that an extra column of zeros is')
   disp('  augmented to it, but this leads to errors if you forget what you are')
   disp('  doing.  A safer procedure is to augment A with an actual column of zeros')
   disp('  and then row reduce.  Since A has 2 rows, a MATLAB command that')
   disp('  works is:     M = [A  [0;0]]')
   disp('  Another is:   M = [A  zeros(2,1)]')
   disp('In general,  zeros(m,n)  constructs an m-by-n matrix of zeros.')  
elseif ex==8 
   A = [1 -3 -8 5;0 1 2 -4]  
   disp('Try Exercise 7 first, and read the comments about augmenting a matrix')
   disp('  with a column of zeros.') 
elseif ex==9
   A = [3 -6 6; -2 4 -2]  
elseif ex==10
   A = [-1 -4 0 -4; 2 -8 0 8] 
elseif ex==11
   A = [1 -4 -2 0 3 -5; 0 0 1 0 0 -1; 0 0 0 0 1 -4; 0 0 0 0 0 0]
elseif ex==12
   A = [1 -2 3 -6 5 0; 0 0 0 1 4 -6; 0 0 0 0 0 1; 0 0 0 0 0 0]
elseif ex==17
   A = [2 2 4 8; -4 -4 -8 -16; 0 -3 -3 12]
elseif ex==18
   A = [1 2 -3 5; 2 1 -3 13; -1 1 0 -8] 
else
   disp('No data for this exercise in Section 1.5.')  
end
