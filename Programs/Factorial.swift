//find factorial of a number: using for loop
// 5! = 5*4*3*2*1 =  120

import Foundation

func factorial(num : Int)-> Int {
    // Check for positive integer
    if num <= 0 {
        return 1
    }
    
    var fact = num
    
    for i in 1..<num  {
        fact =  fact * i
    }
    
    return fact
}

// let result = factorial(num: 5)
// print(result)
// Output: 120
