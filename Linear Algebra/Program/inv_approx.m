function[mu, v, x_adj, y_k] = inv_approx(A, x0, alpha, t)

% This is the "Inverse Power Method" based on section 5.8 
% "t" is the number of for loop, equal to "k" in the book.

% Last number of "mu" should be the biggest eigenvalue.

x_adj (:, 1) = x0/max(x0); % Just make sure the initial vector meet 
mu(1) = max(x0);           % the condition.

B = inv([A - alpha * eye(size(A, 1))]);
y_k(:, 1) = B * x_adj;
mu(1) = max(y_k(:, 1));
v(1) = alpha + (1/mu(1));

fig1 = figure;
hold on;
plot([0; x0(1)], [0; x0(2)]);

for(i = 1:t)
    y_k(:, i+1) = B * x_adj(:, i);
    mu(i+1) = max(y_k(:, i+1));
    x_adj(:, i+1) = y_k(:, i+1) / mu(i+1);
    v(i+1) = alpha + 1/mu(i+1);
    
    plot([0; x_adj(1, i+1)], [0; x_adj(2, i+1)]);
end

% Seems perfect this time !