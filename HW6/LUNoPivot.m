function [L, U] = LUNoPivot(A)
    [m,n] = size(A);
    L = eye(size(A));
    U = A;
    for j=1:n-1
       for i=j+1:n
          mult = U(i,j)/U(j,j);
          U(i,:) = U(i,:) - mult*U(j,:);
          L(i, j) = mult;
       end
    end
end

