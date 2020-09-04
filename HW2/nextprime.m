function y=nextprime(x)
    while ~isprime(x)
        x = x + 1;
    end
    y = x;
end

