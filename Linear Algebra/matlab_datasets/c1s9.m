%data for Exercise Set 1.9
           
ex = input('Exercise number (21,22,25-27,37-40)? ');
           
if ex==21     
   A = [1 1;4 5], u = [3 8]'    
elseif ex==22  
   A = [2 -1;-3 1;2 -3], u = [0 -1 -4]'       
elseif ex==25     
   A = [1 2 0 0;0 0 0 0;0 2 0 1 ;0  1 0 -1] 
elseif ex==26 
   A = [1 -2 3;4 9 -8]      
elseif ex==27
   A = [1 -5 4;0 1 -6]
elseif ex==37
   A = [-5 6 -5 -6; 8 3 -3 8; 2 9 5 -12; -3 2 7 -12]
elseif ex==38
   A = [7 5 9 -9;5 6 4 -4;4 8 0 7;-6 -6 6 5]
elseif ex==39
   A = [4 -7 3 7 5;6 -8 5 12 -8;-7 10 -8 -9 14;3 -5 4 2 -6;-5 6 -6 -7 3]
elseif ex==40      
   A = [9 43 5 6 -1;14 15 -7 -5 4;-8 -6 12 -5 -9;-5 -6 -4 9 8;13 14 15 3 11]
else
   disp('No data for this exercise in Section 1.9.')
end
