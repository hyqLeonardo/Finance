% data for Exercise Set 2.4

ex = input('Exercise number (21,25)? ');

if ex==21
   A = [1 0;2 -1], M = [1 0 0 0;2 -1 0 0;1 0 -1 0;0 1 -2 1]
elseif ex==25
   A = [1 2 0 0 0;3 5 0 0 0;0 0 2 0 0;0 0 0 7 8;0 0 0 5 6]
else
   disp('No data for this exercise in Section 2.4.')
end