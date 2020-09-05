function [x, history] = HW2bisect(f, a, b, delta)
    
    %Nx2 Array containing the intervals from each step 
    history = [];
    
    %Root approximation
    x = 0;
    
    %If the function does not have opposite signs along the interval
    %the function algorithm will not work so we throw an error and return
    if ~(f(a) > 0 && f(b) < 0) && ~(f(a) < 0 && f(b) > 0)
        disp("ERROR: Function does not have opposite signs at: ")
        disp([a,b])
        return
    end
    
    %Main loop for the algorithm
    while(true)
        
        %Bisection step
        c = (a + b) / 2;

        %Every iteration adds a row to history with the current interval
        history = [history ;[a, b]];

        %If f(c) == 0 or it is less then or equal to the tolerance
        %we have found the root and can return
        if f(c) == 0
            x = c;
            return
        elseif abs(f(c)) <= delta
           x = c;
           return
        end

        %Maintain opposite signs
        if sign(f(a)) == sign(f(c))
           a = c;
        else
           b = c;
        end
    end
end

