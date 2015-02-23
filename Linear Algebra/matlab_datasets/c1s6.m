% data for Exercise Set 1.6
       
ex = input('Exercise number (1-15)? ');
       
if ex==1 | ex==2
   A = [.8 -.7 0;-.8 .7 0]   
elseif ex==3
   A = [.9 -.1 -.2 0;-.8 .9 -.4 0;-.1 -.8 .6 0]   
elseif ex==4
   A = [.70 -.15 -.20 -.20 0;-.10 .85 -.15 -.10 0;-.60 -.50 .55 -.50 0;0 -.20 -.20 .80 0]
elseif ex==5
   A = [.8 -.35 -.1 -.2 0; -.2 .9 -.2 -.3 0; -.3 -.35 .5 -.2 0; -.3 -.2 -.2 .7 0], B= [.8 -.35 -.1 -.2 0; -.1 .9 -.2 -.3 0; -.4 -.35 .5 -.2 0; -.3 -.2 -.2 .7 0]
elseif ex==6
   v1 = [2 3 0]', v2 = [0 0 1]', v3 = [1 0 0]', v4 = [0 2 1]'
    disp('Order of elements: Al O C')
 M=[v1 v2 -v3 -v4 zeros(3,1)]  
elseif ex==7
   v1 = [1 1 1 3]', v2 = [0 8 6 7]', v3 = [3 5 6 7]', v4 = [0 2 0 1]', v5 = [0 0 1 2]'
   disp('Order of elements: Na H C O')
   disp('For help constructing the appropriate matrix M, see the construction for Exercise 6, or check the Study Guide.')
elseif ex==8
   v1 = [3 1 0 0]', v2 = [0 3 1 1]', v3 = [2 1 0 0]', v4 = [0 0 1 0]',v5= [0 2 0 1]'
   disp('order of elements: H O Ca C')
   disp('For help constructing the appropriate matrix M, see the construction for Exercise 6, or check the Study Guide.')
elseif ex==9
   v1 = [2 3 0 0]', v2 = [0 0 2 1]', v3 = [1 0 3 3]', v4 = [0 1 2 0]'
   disp('Order of elements: B S H O')
   disp('For help constructing the appropriate matrix M, see the construction for Exercise 6, or check the Study Guide.')
elseif ex==10
   v1 = [1 6 0 0 0]', v2 = [0 0 1 2 8]', v3 = [3 0 0 0 4]', v4 = [0 0 2 0 3]', v5 = [0 0 0 1 2]', v6 = [0 1 0 0 1]' ,
   disp('order of elements: Pb N Cr Mn O')
   disp('For help constructing the appropriate matrix M, see the construction for Exercise 6, or check the Study Guide.')
elseif ex==11
   v1 = [1 1 0 0 0 0]',  v2 = [0 0 2 10 35 0]', v3 = [0 1 0 0 4 2]', 
   v4 = [1 0 0 0 4 1]',  v5 = [0 0 1 0 0 3]', v6 = [0 3 0 1 12 0]',  v7 = [0 0 0 0 1 2]'
   disp('order of elements: Mn S As Cr O H')
   disp('For help constructing the appropriate matrix M, see the construction for Exercise 6, or check the Study Guide.')
elseif ex==12
   A = [1 -1 0 1 0; 0 1 -1 0 100; 0 0 1 -1 -80]
elseif ex==13
   A = [1 -1 0 0 0 0 -50; 0 1 -1 1 -1 0 0; 0 0 0 0 1 -1 60; 0 0 0 1 0 -1 50; 1 0 -1 0 0 0 -40]
elseif ex==14
   A = [1 0 0 0 1 80; 1 1 0 -1 0 -100; 0 1 -1 0 0 -90; 0 0 1 -1 -1 -90]
elseif ex==15
   A = [1 0 0 0 0 -1 60; -1 1 0 0 0 0 -70; 0 -1 1 0 0 0 100; 0 0 -1 1 0 0 -90; 0 0 0 -1 1 0 80; 0 0 0 0 -1 1  -80]
else
   disp('No data for this exercise in Section 1.6.') 
end
