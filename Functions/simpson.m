function I = simpson(f, a, b, h)
    n = 1/h;
    x = linspace(a, b, n);
    I = 0;
    for i = 1:((n/2)-1)
        I = I + 2*f(x(2*i));
    end
    for i = 1:(n/2)
        I = I + 4*f(x(2*i-1));
    end
    I = (h/3)*(f(a) + I + f(b));
end
