function[dt,flops] = cofactor(A)

flops = 0;
n = size(A, 1);
if n == 1
    dt = A(1, 1);
else
    sign = 1;
    dt = 0;
    for j = 1:n
        % Remove correspond row and column
        if j == 1
            M = A([2:n], [2:n]);
        elseif j == n
            M = A([2:n], [1:n - 1]);
        else
            M = A([2:n], [1:j - 1, j + 1:n]);
        end
        % Make the recursive call to the determinant of M
        [dt1, newflops] = cofactor(M);
        % Build the expansion along the first row
        dt = dt + sign*A(1, j)*dt1;
        % Alternate the sign
        sign = -sign;
        % Update flops by counting the additions and multiplications
        flops = flops + newflops + 2;
    end
end
