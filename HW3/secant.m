function [r,hist] = hw3secant(f, fp, x1, ftol, xtol, Nmax)
    
    %X_{k}
    current_value = x1;
    %X_{k-1}
    last_value = x1;
    
    iterations = 0;
    hist = [current_value];
    
    while(true)
        if(iterations > Nmax)
            error("Iteration Count Exceeded")
        end
        
        % Check if f(X_k) is sufficiently small
        if(abs(f(last_value)) < ftol)
            r = last_value;
            return
        end
        
        % Do the iteration
        last_value = current_value;
        current_value = current_value - f(current_value)/fp(current_value);
        iterations = iterations + 1;
        hist = [hist ;current_value];
        
        % Check if |X_(k) - X_(k-1)| is sufficiently small
        if(abs(current_value - last_value) < xtol)
            r = current_value;
            return
        end
    end
end


