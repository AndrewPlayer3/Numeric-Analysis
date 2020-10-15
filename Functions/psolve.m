function c = psolve(P, L, b)
    b = P * b;
    n = length(b);
    c = zeros(1, n);
    for i=1:n
        c(i) = b(i);
        for j=1:i-1
            c(i) = c(i) - L(i,j)*c(j);
        end
    end
end

