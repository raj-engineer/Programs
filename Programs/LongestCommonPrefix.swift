// Write a function to find the longest common prefix string amongst an array of strings.
// If there is no common prefix, return an empty string "".

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    
    if strs.isEmpty { return "" }
    var common = strs[0]
    
    for ch in strs {
        while !ch.hasPrefix(common) {
            common = String(common.dropLast())
        }
    }
    return common
}


/* Input: let strs = ["flower","flow","flight"]
 let result = longestCommonPrefix(strs)
 print(result)
 Output: "fl"
 */
