% data for Exercise Set 5.5

ex = input('Exercise number (1-20, 27,28)? ');

if ex==1
   A = [1 -2;1 3] 
elseif ex==2
   A = [3 -3;3 3] 
elseif ex==3
   A = [5 1 ;-8 1] 
elseif ex==4
   A = [1 -2;1 3] 
elseif ex==5
   A = [3 1;-2 5] 
elseif ex==6
   A = [7 -5;1 3] 
elseif ex==7
   A = [sqrt(3) -1;1 sqrt(3)] 
elseif ex==8
   A = [3 3*sqrt(3); -3*sqrt(3) 3] 
elseif ex==9
   A=[0 2 ;-2 0]
elseif ex==10
   A = [0 .5;-.5 0] 
elseif ex==11
     A = [-sqrt(3) 1;-1 -sqrt(3)] 
elseif ex==12
   A = [3 -sqrt(3) ;sqrt(3) 3] 
elseif ex==13
   A = [1 -2;1 3] 
elseif ex==14
   A = [3 -3;1 1] 
elseif ex==15
   A = [0 5;-2 2] 
elseif ex==16
   A = [4 -2;1 6] 
elseif ex==17
   A = [-11 -4;20 5] 
elseif ex==18
   A = [3 -5;2 5]  
elseif ex==19
   A = [1.52 -.7;.56 .4] 
elseif ex==20
   A = [-3 -8;4 5] 
elseif ex==27
   A = [26 33 23 20;-6 -8 -1 -13;-14 -19 -16 3;-20 -20 -20 -14]
elseif ex==28
    A = [7 11 20 17;-20 -40 -86 -74;0 -5 -10 -10;10 28 60 53]
  
else
   disp('No data for this exercise in Section 5.5.')
end
