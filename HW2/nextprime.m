function y = nextprime(x)
    %isprime does not work for negative numbers
    %so we just return 2, the first prime number.
    if(x < 2)
        y = 2;
        return
    end
    while ~isprime(x)
        x = x + 1;
    end
    y = x;
end

