syms e real positive
A = [1 1 1;2 3 4; 3+e 4 5];
A_inv = vpa(inv(A));
A_norm = sum(A(3, :));
for i = 1:3
    A_inv_norm(i) = vpa(sum(abs(A_inv(i,:))));
end
A_inv_norm = A_inv_norm(2);%In fact, I get this by computing by hand
                           %cause I don't know how to compare symbolic
                           %expressions ( Need restriction on 'e'? )
condition = vpa(A_norm * A_inv_norm);
cond_a = subs(condition, 10^-5); %So to check, and... I got it !
cond_b = subs(condition, 10^-8);
cond_c = subs(condition, 10^-11); 