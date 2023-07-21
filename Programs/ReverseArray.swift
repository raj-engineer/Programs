import Foundation

// Reverse using swaping
func reverseBySwaping(_ s: inout [Character]) {
    var left = 0
    var right = s.count - 1
    
    while left < right {
        s.swapAt(left, right)
        left = left + 1
        right = right-1
    }
}

// Reverse using reversed function
func reverseByReversed(_ s: inout [String]) {
    s = s.reversed()
}

// Reverse using For loop
func reverseByForLoop(_ s: inout [String]) {
    var count = s.count-1
    
    for _ in 0...count {
        s.append(s[count])
        count = count-1
    }
    
    for _ in 0...(s.count/2)-1 {
        s.removeFirst()
    }
}

/*var str : [Character] = ["R","A","J"]
reverseBySwaping(&str)
print(str)
Output : ["J","A","R"]
 
 */
