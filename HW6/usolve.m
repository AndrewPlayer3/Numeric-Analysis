function x = usolve(U,y)
    x = zeros(1, length(y));
    n = length(y);
    x(n) = y(n)/U(n, n);
    for i = n-1:-1:1
        tmp = 0;
        for j = i+1:n
            tmp = tmp + U(i, j)*x(j);
        end
        x(i) = (y(i)-tmp) / U(i, i);
    end
    return
end

