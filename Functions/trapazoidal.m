function I = trapazoidal(f, a, b, h)
    n = 1/h;
    x = linspace(a, b, n);
    I = (1/2)*f(a);
    for i = 1:(n-1)
        I = I + f(x(i));
    end
    I = h*(I + (1/2)*(f(b)));
end

