function[O, param] = orthogonalize(A)

% The matrix param is something like the L matrix in LU decomposition.

m = size(A, 1);
n = size(A, 2);
O = zeros(m, n);
param = zeros(n, n);

len = sqrt(A(:, 1)'*A(:, 1));
O(:, 1) = A(:, 1)/len;

for i = 2:n
    test = 0;
    for j = 1:i-1
        test = test+abs(A(:, i)'*A(:, i-j));
    end
    
    if (test ~= 0)
        proj = zeros(m, 1);
        
        for j = 1:i-1
            len_2 = O(:, i-j)'*O(:, i-j);
            param(i-j, i) = A(:, i)'*O(:, i-j)/len_2;
            proj = proj + param(i-j, i)*O(:, i-j);
        end
        O(:, i) = A(:, i) - proj;
        O(:, i) = O(:, i)/sqrt(O(:, i)'*O(:, i));
        
    else 
        len = sqrt(A(:, i)'*A(:, i));
        O(:, i) = A(:, i)/len;
    end
    
end

end

        
        
            