% data for Exercise Set 1.2 
   
ex = input('Exercise number (3,4,7-14,33,34)? ');

if ex==3
   M = [1 2 4 8;2 4 6 8;3 6 9 12]
elseif ex==4
   M = [1 2 4 5;2 4 5 4;4 5 4 2]   
elseif ex==7    
   M = [1 3 4 7;3 9 7 6]    
elseif ex==8    
   M = [1 -3 0 -5;-3 7 0 9]     
elseif ex==9    
   M = [0 1 -2 3;1 -3 4 -6]   
elseif ex==10
   M = [1 -2 -1 4;-2 4 -5 6] 
elseif ex==11
   M = [3 -2 4 0;9 -6 12 0;6 -4 8 0] 
elseif ex==12
   M = [1 0 -9 0 4;0 1 3 0 -1;0 0 0 1 -7;0 0 0 0 1] 
elseif ex==13
   M = [1 -3 0 -1 0 -2;0 1 0 0 -4 1;0 0 0 1 9 4;0 0 0 0 0 0] 
elseif ex==14
   M = [1 0 -5 0 -8 3;0 1 4 -1 0 6;0 0 0 0 1 0;0 0 0 0 0 0] 
elseif ex==33
   M = [1 1 1 6;1 2 4 15;1 3 9 28] 
elseif ex==34
   t = [0; 2; 4; 6; 8; 10]; f = [0; 2.9; 14.8; 39.6; 74.3; 119];
   M = [ones(6,1) t t.*t t.^3 t.^4 t.^5 f]
   disp('To view the entries of M in rational form, enter')
   disp('        format rat, M')
   disp('  The command   format short   returns the display to short decimal format.')
else
   disp('No data for this exercise in Section 1.2.')  
end
