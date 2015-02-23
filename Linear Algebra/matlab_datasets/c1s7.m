% data for Exercise Set 1.7
        
ex = input('Exercise number (1-8,41-44)? ');
        
if ex==1
   a1 = [5 0 0]', a2 = [7 2 -6]', a3 = [9 4 -8]'
elseif ex==2
   a1 = [0  2 3]', a2 =  [0 0 -8]', a3 = [-1 3 1]'
elseif ex==3
   a1 = [2 -3]', a2 = [-4 6]'
elseif ex==4
   a1 = [-1 3]', a2 = [-3 -9]'
elseif ex==5
   A = [0 -3 9;2 1 -7 ;-1 4 -5;1 -4 -2]    
elseif ex==6  
   A = [-4 -3 0;0 -1 5;1 1 -5;2 1 -10]    
elseif ex==7
   A = [1 4 -3 0;-2 -7 5 1;-4 -5 7 5]    
elseif ex==8   
   A = [1 -2 3 2;-2 4 -6 2;0 1 -1 3]    
elseif ex==41
   A = [3 -4 10 7 -4;-5 -3 -7 -11 15;4 3 5 2 1;8 -7 23 4 15]
elseif ex==42
   A = [12 10 -6 8 4 -14;-7 -6 4 -5 -7 9 ;9 9 -9 9 9 -18;-4 -3 -1 0 -8 1;8 7 -5 6 1 -11]  
elseif ex==43
   A =  [3 -4 10 7 -4;-5 -3 -7 -11 15;4 3 5 2 1;8 -7 23 4 15]
elseif ex==44
   A = [12 10 -6 8 4 -14;-7 -6 4 -5 -7 9 ;9 9 -9 9 9 -18;-4 -3 -1 0 -8 1;8 7 -5 6 1 -11]
else
   disp('No data for this exercise in Section 1.7.')    
end
