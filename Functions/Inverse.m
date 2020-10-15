function M = Inverse(A)
    [L, U] = LUNoPivot(A);
    n = length(A(1,:));
    M = eye(size(A));
    for i = [1:n]
        b = zeros(n);
        b(i,1) = 1;
        y = lsolve(L, b);
        x = usolve(U, y);
        M(:,i) = x;
    end
end

