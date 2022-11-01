import UIKit

let givenString1 = "{[({[()]})]}"
let givenString2 = "{(][)}"

let givenString = givenString2

func isBracketsBalanced(string: String) -> Bool {
    
    var isValid = false
    let dict: [String: String] = ["{": "}", "[": "]", "(": ")"]
    var stringArray: [String] = []
    let inputArray: [String] = ["{", "[", "("]
    
    for char in string {
        let charStr = String(char)
        if inputArray.contains(charStr) {
            stringArray.append(charStr)
        } else {
            if let charReturned = stringArray.last,
               dict[charReturned] == charStr {
                stringArray.removeLast()
            } else {
                return isValid
            }
        }
    }
    
    isValid = stringArray.isEmpty
    
    return isValid
}

let res = isBracketsBalanced(string: givenString)
print("Given Brackets Expression \(givenString) - isValid: ", res)


