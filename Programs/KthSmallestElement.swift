// program to find Kth largest and Kth smallest number in an array
    // Solution - using Quick Select algorithm,
    // first find the pivotIndex , then place the assuming pivot elemnt to its right position- right position is pivot index that we got.
    // for eah iteration we do the same untill
    func getKthSmallest(arr: inout [Int], k: Int, low: Int, high: Int) -> Int {
        let pivotPoint = getPivotPoint(arr: &arr, low: low, high: high)
        if (pivotPoint == k-1) { return arr[pivotPoint] }
        else if (pivotPoint < k-1) { return getKthSmallest(arr: &arr, k: k, low: pivotPoint+1, high: high) }
        else {
            return getKthSmallest(arr: &arr, k: k, low: low, high: pivotPoint-1)
        }
    }
    
    func getPivotPoint(arr: inout [Int], low: Int, high: Int)-> Int {
        let pivotElement = arr[high]
        var pivotPoint = low
        // comparing each element with pivot element
        for i in low...high {
            // to get Kth largest just replace < with >.
            if (arr[i] < pivotElement) {
                // swap
                var temp = arr[i]
                arr[i] = arr[pivotPoint]
                arr[pivotPoint] = temp
                pivotPoint =  pivotPoint+1
            }
        }
        // move the assumed pivotElement to its right position by swaping it with pivotPoint element.
        var temp = arr[pivotPoint]
        arr[pivotPoint] = arr[high]
        arr[high] = temp
        return pivotPoint
    }
