import UIKit

let givenStringsArray = ["eat","tea","tan","ate","nat","bat"]

func getAnagrams(fromArray arr: [String]) -> [[String]] {
    
    var output: [[String]] = []
    var dict: [String: [String]] = [:]
    for item in arr {
        let value = item
        let key = String(value.sorted()) // this is key point
        if let _ = dict[key] {
            dict[key]?.append(value)
        } else {
            dict[key] = [value]
        }
    }
    
    output = Array(dict.values)
    
    return output
}

let res = getAnagrams(fromArray: givenStringsArray)
print("Given Array:", givenStringsArray, "\nResult:", res)

