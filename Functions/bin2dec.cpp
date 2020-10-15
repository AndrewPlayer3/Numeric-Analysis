#include <iostream>
#include <math.h>

// This function takes a double binary number 
// and converts it to a double decimal number

double bin2dec(std::string number) {
    double total = 0;
    int location = 0;
    int index = 0;
    int power = 0;
    while(number[index+1] != '.' 
        && index < number.size()) {
        power++;
        index++;
    }
    while(location < index) {
        if(number[location++] == '1') {
            total += pow(2, power); 
        }
        power--;
    }
    if(number[index+1] == '.') {
        power = -1;
        location = index+2;
        while(location < number.size()) {
            if(number[location++] == '1') {
                total += pow(2, power); 
            }
            power--;
        }
    }
    return total;
}

int main() {
    std::string bin = "0.00011001100110011001100"; // Should equal 50
    double dec = bin2dec(bin);
    std::cout << dec << std::endl;
    return 0;
}
