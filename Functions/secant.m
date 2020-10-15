function [r,history] = secant(f, x0, x1, ftol, xtol, Nmax)
    
    % If the signs are the same we cant do this
    if sign(f(x0)) == sign(f(x1))
        error("f(x0) * f(x1) >= 0");
    end
    
    history = [];
    r = 0;
    
    % Iteration Function
    iter = @(x, y) (x - (f(x)*(y - x))/(f(y) - f(x)));
    
    for i = 1:Nmax+1
        
        history = [history ;[x0, x1]];
        
        xn = iter(x0, x1);
        
        fxn = f(xn);
        
        % Switch the variables based on sign
        if sign(f(x0)*fxn) < sign(f(x1)*fxn)
            x1 = xn;
        else
            x0 = xn;
        end
        
        % Perform the tolerance checks
        r = xn;
        if abs(fxn) <= ftol
            return
        elseif abs(x0 - x1) <= xtol
            return
        end
    end
end

