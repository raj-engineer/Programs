// Fibonacci series is − 0, 1, 1, 2, 3, 5, 8, 13, 21, ......

import Foundation

func fibonacci(limit:Int) -> [Int] {
    var a = 0
    var b = 1
    var c = 1
    var arr = [a]
    for _ in 1...limit {
        c = a+b
        a = b
        b = c
        arr.append(a)
    }
    return arr
}

//let result = fibonacci(limit: 8)
//print(result)
// Output: [0, 1, 1, 2, 3, 5, 8, 13, 21]
