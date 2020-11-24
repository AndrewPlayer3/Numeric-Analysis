function Q = quad4th(f, a, b, x)
    n = length(x);
    B = zeros(n, n);
    bv = zeros(n, 1);
    for i = 1:n
        B(i,:) = x.^(i-1);
        bv(i) = b^(i)/i - a^(i)/i;f = 
    end
    A = B\bv;
    disp(A);
    Q = arrayfun(f,x)*A;
end

