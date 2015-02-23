function[U, Sigma, V_T] = SVD(A)

%V_T means transpose of V

m = size(A, 1); 
n = size(A, 2);
r = rank(A);
AA = A'*A;

V = zeros(n, n);
U = zeros(m, m);
Sigma = zeros(m, n);

% Get Sigma
[C, D] = eig(AA, 'vector');
sigma_2 = sort(D, 'descend'); 
sigma = abs(sqrt(sigma_2));

for i = 1:length(sigma_2)
    Sigma(i, i) = sigma(i);
end

% Get V_T (Tricky part is to shuffle the oder of V)
index = 1:n;
for i = 1:r
    j(i) = find(D == sigma_2(i));
    V(:, i) = C(:, j(i));
end


index_0 = index(~ismember(index, j));
for i = 1:n-r
    V(:, r+i) = C(:, index_0(i));
end
V_T = V';

% Get U
if (m<=n)
    for i = 1:m
       U(:, i) = A *V(:, i)/sigma(i);
    end
else
    for i = 1:r
        U(:, i) = A*V(:, i)/sigma(i);
    end
    for i = r+1:m
        U(:, i) = rand(m, 1);
    end
end

% Orthogonalize (using my own function)
U = orthogonalize(U); 

end

% Yeah !!~~ I did it !
% Results seems perfect, yet the process is far more than perfect. 


    
    


