function x = HW9sup3(n)
    x = zeros(n+1, 1);
    for i = 0:n
        x(i+1) = i/n;
    end
end