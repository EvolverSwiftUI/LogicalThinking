import Foundation

let str = "AAABBBCCCDDDEEEAAAAAAAAAAAaaaaaabbbbbsssssszzzzzz"

var uniqueCharsArray: [Character] = []
var dict: [Character: Int] = [:]

for char in str {
    if uniqueCharsArray.contains(where: { $0 == char}) == false {
        uniqueCharsArray.append(char)
    }
}

print(uniqueCharsArray)

for char in uniqueCharsArray {
    var count = 0
    for element in str {
        if element == char {
            count = count + 1
        }
    }
    dict[char] = count
}

for (key, value) in dict {
    print("\(key)\(value)")
}





