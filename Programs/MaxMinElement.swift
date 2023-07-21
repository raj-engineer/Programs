//find the minimum and maximum element of an array
func findMinMaxElement(nums: [Int]) -> (max: Int, min: Int){
    var max = nums[0]
    var min = nums[0]
    
    for i in nums {
        // update max
        if max < i {
            max = i
        }
        // update min
        if min > i {
            min = i
        }
    }
    
    return (max, min)
}

/*
let result = findMinMaxElement(nums: [12, 1234, 45, 67, 1])
print("Max",result.max) // 1234
print("Min",result.min) // 1
*/
