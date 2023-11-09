// binarySearch
func binarySearchAlgo(arr: [Int], element:Int)-> Int? {
    var low = 0
    var high = arr.count-1
    while low <= high {
        let mid = (low+high)/2
        if arr[mid] == element { return mid } // Found the element
        else if arr[mid] < element { low = mid+1 }  // Searching in the right side of mid
        else {
            // Searching in the left side of mid
            high =  mid-1
        }
    }
    // Element not found
    return nil
}

let arr = [4, 6, 8, 24, 67, 90]
if let indexValue = binarySearchAlgo(arr: arr, element: 24) {
   print("Found at index: \(indexValue)")
} else {
   print("Not found")
}
