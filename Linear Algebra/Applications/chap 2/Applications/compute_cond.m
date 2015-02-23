function [cond_num] = compute_cond(Matrix);

A = vpa(Matrix);
A_inv = vpa(inv(A));

A_norm = vpa(max(sum(abs(A), 2)));
A_inv_norm = vpa(max(sum(abs(A_inv), 2)));

cond_num = vpa(A_norm * A_inv_norm);
% I can't figure out why the result is just not the same as 
% matlab's command 'cond()', but the properties of the result
% remains the same.
% Oh, god, see Page 5 of the appication NOTES.
% Matlab implented a different method of computing condition number.