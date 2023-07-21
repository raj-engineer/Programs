import Foundation
func findPeakElement(_ nums: [Int]) -> [Int] {
    let count =  nums.count
    var peakElements = [Int]()
    
    // if arr have only one element, so first element will be the peak element
    if (count == 1) {
        peakElements.append(nums[0])
        return peakElements
    }
    
    for i in 0..<count {
        
        if (i == 0){
            if nums[i] > nums[i+1] {
                peakElements.append(nums[i])
            }
        }else if (i == count-1){
            if nums[i] > nums[i-1] {
                peakElements.append(nums[i])
            }
        }else{
            if (nums[i] > nums[i-1]) && (nums[i] > nums[i+1]){
                peakElements.append(nums[i])
            }
        }
    }
    
    return peakElements
}

/*
 let result = findPeakElement([10, 20, 15, 2, 23, 90, 67])
 print(result)
 Output : [20,90]
 */
