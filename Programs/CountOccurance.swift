// Count number of occurrences (or frequency) in a sorted array
// Find first and last positions of an element in a sorted array
// using binary search
// Time Complexity: O(Logn)
// Auxiliary Space: O(1), as no extra space is used
// Programming Paradigm: Divide & Conquer

//Steps
//1) Use Binary search to get index of the first occurrence of x in arr[].
//2) Use Binary search to get index of the last occurrence of x in arr[].
//3) Return (Last – First + 1);
import Foundation
func findOccurance(arr: [Int], element:Int, which occurance: String)-> Int {
    var res = -1
    var low = 0
    var high = arr.count-1
    while low <= high {
        let mid = (low+high)/2
        if arr[mid] == element {
            
            if occurance == "First"{
                res = mid
                high = mid-1
            } else if occurance == "Last"{
                res = mid
                low = mid+1
            }else {
                print("Nothing")
            }
        }
        else if arr[mid] < element { low = mid+1 }  // Searching in the right side of mid
        else {
            // Searching in the left side of mid
            high =  mid-1
        }
    }
    return res
}

func countOccurrences(arr: [Int], x: Int ) -> Int {
    var count = 0
    let first = findOccurance(arr: arr, element: x, which: "First")
    let last = findOccurance(arr: arr, element: x, which: "Last")
    print("First Occurrence = ",first)
    print("last Occurrence = ",last)
    count =  (last-first)+1
    return count
}

let arr  = [1, 1, 2, 2, 2, 2, 3]
let count = countOccurrences(arr: arr, x: 2)
print(count)
