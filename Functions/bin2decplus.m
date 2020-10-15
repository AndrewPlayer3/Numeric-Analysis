function total = bin2decplus(number)
    total = 0;
    location = 1;
    index = 1;
    power = 0;
    while(index < strlength(number) && number(index+1) ~= '.')
        power = power + 1;
        index = index + 1;
    end
    while(location < index)
        if(number(location) == '1') 
            total = total + 2^power; 
        end
        location = location + 1;
        power = power - 1;
    end
    if(number(index+1) == '.')
        power = -1;
        location = index+2;
        while(location < strlength(number)) 
            disp(location)
            total = total + 2^power; 
            location = location + 1;
            power = power - 1;
        end
    end
    return
end