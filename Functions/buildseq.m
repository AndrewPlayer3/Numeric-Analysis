function x = buildseq(n)
    x = [1:n];
    for i = 2:n
        x(i) = (1/2)*x(i-1)+1;
    end
end

