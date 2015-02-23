function[mu, x_k, x_adj] = eig_approx(A, x0, t)

% This is the "Power method" based on section 5.8, it's not perfect 
% but good enough ! 

% Last number of "mu" should be the biggest eigenvalue.

x_adj (:, 1) = x0/max(x0);% Just make sure the initial vector meet 
mu(1) = max(x0);          % the condition. (most cases not necessary)

fig1 = figure;
hold on;
plot([0; x0(1)], [0; x0(2)]);

for(i = 1:t)
    x_k(:, i+1) = A * x_adj(:, i);
    mu(i+1) = max(x_k(:, i+1));
    x_adj(:, i+1) = x_k(:, i+1) / mu(i+1);
    
    plot([0; x_adj(1, i+1)], [0; x_adj(2, i+1)]);
end


    

