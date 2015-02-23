function[S, C, D] = PCA(A)
% Principal Component Analysis

m = size(A, 1);
n = size(A, 2);

% Mean deviation form
X = A - diag(mean(A'))*ones(size(A))

% Covariance matrix
S = 1/(n-1) * X*X';

% Principle componets
[C, D] = eig(S);

end

