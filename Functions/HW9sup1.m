function A = HW9sup1(alpha, beta)
    A = zeros(5,5);
    for i = 1:5
        for j = 1:5
            if i == j
                A(i, j) = 1;
            end
            if i == (j - 1)
                A(i, j) = -1;
            end
        end
    end
    A(1, 4) = alpha - beta;
    A(1, 5) = beta;
end

