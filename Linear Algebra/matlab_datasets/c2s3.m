% data for Exercise Set 2.3

ex = input('Exercise number (1-10,33,34,41-45)? ');

if ex==1
   A = [5 7;-3 -6]
   disp('Think before you compute.') 
elseif ex==2
   A = [-4 2;6 -3]
   disp('Think before you compute.') 
elseif ex==3
   A = [3 0 0;-3 -4 0;8 5 -3]
   disp('Think before you compute.') 
elseif ex==4 
   A = [-5 1 4;0 0 0;1 4 9]
   disp('Think before you compute.') 
elseif ex==5 
   A = [3 0 -3;2 0 4;-4 0 7] 
elseif ex==6 
   A = [1 -3 -6;0 4 3;-3 6 0] 
elseif ex==7 
   A = [-1 -3 0 1;3 5 8 -3;-2 -6 3 2;0 -1 2 1]  
elseif ex==8
   A = [ 3 4 7 4;0 1 4 6;0 0 2 8;0 0 0 1]
   disp('Think before you compute.') 
elseif ex==9 | ex==42
   A = [4 0 -3 -7;-6 9 9 9;7 -5 10 19;-1 2 4 -1]
elseif ex==10 | ex==43
   A = [5 3 1 7 9;6 4 2 8 -8;7 5 3 10 9;9 6 4 -9 -5;8 5 2 11 4] 
elseif ex==33
   A = [-5 9;4 -7]
elseif ex==34
   A = [2 -8;-2 7]
elseif ex==41
   A = [4.5 3.1;1.6 1.1], b1 = [19.249;6.843], b2 = [19.25;6.84]
elseif ex==44
   A = hilb(5)
   disp('To display A in rational format, enter')
   disp('       format rat, A  ')
   disp('  The command   format   will return to short decimal display.')
elseif ex==45
   A = hilb(12)
   disp('To display A in rational format, enter')
   disp('       format rat, A  ')
   disp('  The command   format   will return to short decimal display.')
else
   disp('No data for this exercise in Section 2.3.')
end
