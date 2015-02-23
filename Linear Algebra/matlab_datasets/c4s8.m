% data for Exercise Set 4.8

ex = input('Exercise number (7-16, 25-28)? ');

if ex==7
   disp('The auxiliary polynomial is stored in the vector p,')
   disp('   with coefficients in descending order.')
   disp('The command   roots(p)   will display the roots of the polynomial.')
   p = [1 -1 -4 4] 
elseif ex==8  
   disp('The auxiliary polynomial is stored in the vector p,')
   disp('   with coefficients in descending order.')
   disp('The command   roots(p)   will display the roots of the polynomial.')
   p = [1 -4 1 6] 
elseif ex==9
   p = [1 -2 25 -50] 
elseif ex==10
   p = [1 1 -8 -12] 
elseif ex==11
   p = [1 -3 0 4] 
elseif ex==12
   p = [1 0 -13 -0 36] 
elseif ex==13
   p = [1 -1 2/9] 
elseif ex==14 
   p = [1 -5 6] 
elseif ex==15
  p = [6 1 -2] 
elseif ex==16
   p = [1 0 -25] 
elseif ex==25
   p = [1 3 -4] 
elseif ex==26
   p = [1 -6 5]  
elseif ex==27
   p = [1 0 -4] 
elseif ex==28 
   p = [1 0 -25] 
else
   disp('No data for Section 4.8.')
end
