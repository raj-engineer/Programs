import Foundation

// Intersection of two sorted arrays
// 2 Pointer approach
// https://takeuforward.org/data-structure/intersection-of-two-sorted-arrays/
// Time Complexity: O(n) { Since the elements are compared within the single pass for both the arrays this approach would take a linear time and in the worst case O(n1+n2) where n1 = A.size() and n2 = B.size() }.

// Space Complexity: O(1) { There is no extra space used in the two-pointers approach }.
func intersectionOfArrays(arr1: [Int], arr2: [Int]) -> [Int] {
    var i = 0
    var j = 0
    var result = [Int]()
    while i < arr1.count && j < arr2.count {
        if arr1[i] < arr2[j] { i = i+1 }
        else if arr2[j] < arr1[i] { j = j+1 }
        else {
           //both elements are equal
            result.append(arr1[i])
            i = i+1
            j = j+1
        }
    }
    return result
}

let arr1 = [1,2,3,3,4,5,6,7]
let arr2 = [3,3,4,4,5,8]

let result = intersectionOfArrays(arr1: arr1, arr2: arr2)
print(result) // [3, 3, 4, 5]

