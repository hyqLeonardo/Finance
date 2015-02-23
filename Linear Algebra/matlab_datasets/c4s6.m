% data for Exercise Set 4.6

ex = input('Exercise number (1-4, 32, 35-38)? ');

if ex==1
   A = [1 -4 9 -7;-1 2 -4 1;5 -6 10 7]
   B = [1 0 -1 5;0 -2 5 -6;0 0 0 0]
elseif ex==2
   A = [1 3 4 -1 2;2 6 6 0 -3;3 9 3 6 -3;3 9 0 9 0]
   B = [1 3 4 -1 2;0 0 1 -1 1;0 0 0 0 -5;0 0 0 0 0]
elseif ex==3
   A = [2 6 -6 6 3 6;-2 -3 6 -3 0 -6;4 9 -12 9 3 12;-2 3 6 3 3 -6]
   B = [2 6 -6 6 3 6;0 3 0 3 3 0;0 0 0 0 3 0;0 0 0 0 0 0]
elseif ex==4
   A = [1 1 -2 0 1 -2;1 2 -3 0 -2 -3;1 -1 0 0 1 6;1 -2 2 1 -3 0;1 -2 1 0 2 -1]
   B = [1 1 -2 0 1 -2;0 1 -1 0 -3 -1;0 0 1 1 -13 -1;0 0 0 0 1 -1;0 0 0 0 0 1]
elseif ex==32
   u = [1;2], A = [1 -3 4; 2 -6 8]
elseif ex==35
   A = [7 -9 -4 5 3 -3 -7;-4 6 7 -2 -6 -5 5;5 -7 -6 5 -6 2 8;
       -3 5 8 -1 -7 -4 8;6 -8 -5 4 4 9 3]
elseif ex==36
   disp('The Laydata4 command  A = randomint(6,7,4)  makes a 6x7 matrix of rank 4.')
elseif ex==37
   A = [7 -9 -4 5 3 -3 -7;-4 6 7 -2 -6 -5 5;5 -7 -6 5 -6 2 8;
       -3 5 8 -1 -7 -4 8;6 -8 -5 4 4 9 3]
   disp('Hint: If a,b,c are integers between 1 and 7, then the command')
   disp('     C = A(:,[a b c])')
   disp('creates a matrix formed from columns a,b,c of  A.')
elseif ex==38
   disp('The Laydata4 command  A = randomint(5,7,4)  makes a 5x7 matrix of rank 4.')
else
   disp('No data for this exercise in Section 4.6.')
end
