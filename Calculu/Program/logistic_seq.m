function[p] = logistic_seq(p0, k, n)
p(1) = p0;
for i = 2:n
    p(i) = k*p(i-1)*(1-p(i-1));
end

plot(1:n, p);
p = p(end)
end