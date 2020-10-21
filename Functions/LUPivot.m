function [L, U, P] = LUNoPivot(A)
    
    % Inititialize Everything
    [m,n] = size(A);
    L = eye(size(A));
    P = [1:n];
    U = A;
    
    for j = 1:n-1
        
        % Get the pivot
        [a, b] = max(abs(U(j:n,j)));
        
        % Swap the rows of U, L, and P
        U([j,b+j-1],j:n)   = U([b+j-1,j],j:n);
        L([j,b+j-1],1:j-1) = L([b+j-1,j],1:j-1);
        P(1,[j,b+j-1])     = P(1,[b+j-1,j]);

        % Compute the U and L entries
        for i = j+1:n
            L(i,j) = U(i,j)/U(j,j);
            U(i,j:n) = U(i,j:n) - L(i,j)*U(j,j:n);
        end
    end
end