function A = makePolyMatrix(rows, cols)
    A = zeros(cols, rows);
    x = [0:0.02:1];
    for i = 1:cols
        for j = 1:rows
            A(i,j) = x(i)^(j-1);
        end
    end
end

