% Based on Chapter 5.6 (including the whole chapter)
function[P, C] = eig_plot(A, x, num, fill) 

% "x" can be multiple points represented by a matrix by columns.
% 'num' is total number of dots; 'fill' is first several dots be filled. 

% A is a transform from Space V to Space W (here two Space are 2-dimension)
% Eigenvectors of A are v1, v2, ... vn which form a basis for 
% B = {v1, v2, ... vn}, while P = [v1, v2, ... v3].

if (num < fill)
    disp('num must greater or equal to fill !')
    P = [];
    C = [];
else
    col = size(x, 2);
    [E, D] = eig(A);
    
    if ( imag(D(1, 1))~= 0 || imag(D(2, 2))~= 0 ) % Imaginary eigenvalue.
        
        P = [real(E(:, 2)), imag(E(:, 2))];
        C = inv(P) * A * P;
        
        % Transformation using A : x -> Ax
        fig1 = figure()
        for n = 1:col
            scatter(x(1, n), x(2, n), 100, 'd', 'filled');
            hold on
            
            for i = 1:fill
                t = A^i * x(:, n);
                scatter(t(1), t(2), 60, 'filled');
            end
            for i = fill:num
                t = A^i * x(:, n);
                scatter(t(1), t(2), 25);
            end
            axis('equal')
        end
        
        % Transformation using C : [x]B -> [Ax]B
        fig2 = figure()
        for n = 1:col
            scatter(x(1, n), x(2, n), 100, '^');
            hold on;
            
            x_B = inv(P) * x(:, n); % Change variable from x to u (see page 316), or say
            scatter(x_B(1), x_B(2), 100, 'd', 'filled');% "Decouple" (page 323)
            
            for i = 1:fill
                t = C^i * x_B;
                scatter(t(1), t(2), 60, 'filled');
                %s = P*t;   % Change back to x (if want to check, just delete '%')
                %scatter(s(1), s(2), 90, '*');
            end
            for i = fill:num
                t = C^i * x_B;
                scatter(t(1), t(2), 25);
                %s = P*t;
                %scatter(s(1), s(2), 80, '*');
            end
        
            axis('equal')
        end
        
    else    % Real eigenvalue.
        P = E;
        % Transformation using A : x -> Ax
        for n = 1:col
            fig1 = figure()
            scatter(x(1, n), x(2, n), 100, 'd', 'filled');
            hold on
            
            for i = 1:fill
                t = A^i * x(:, n);
                scatter(t(1), t(2), 60, 'filled');
            end
            for i = fill:num
                t = A^i * x(:, n);
                scatter(t(1), t(2), 25);
            end
            
            axis('equal')
        end
        
        % Transformation using C : [x]B -> [Ax]B
        fig2 = figure()
        for n = 1:col
            scatter(x(1, n), x(2, n), 100, '^');
            hold on;
            
            x_B = inv(P) * x(:, n); % Change variable from x to u (see page 316), or say
            scatter(x_B(1), x_B(2), 100, 'd', 'filled');% "Decouple" (page 323)
            
            for i = 1:fill
                t = D^i * x_B;
                scatter(t(1), t(2), 60, 'filled');
                %s = P*t;   % Change back to x (if want to check, just delete '%')
                %scatter(s(1), s(2), 90, '*');
            end
            for i = fill:num
                t = D^i * x_B;
                scatter(t(1), t(2), 25);
                %s = P*t;
                %scatter(s(1), s(2), 80, '*');
            end
            
            axis('equal')
        end
    end
end

end



