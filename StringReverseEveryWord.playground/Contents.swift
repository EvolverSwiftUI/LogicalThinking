import UIKit

let givenString = "Welcome To Logical Thinking"

func revereEveryWordOfString(_ str: String) -> String {
    
    var output = ""
    var outputArray: [String] = []
    let strArray = str.split(separator: " ")
    
    for word in strArray {
        var reversedWord = ""
        for char in word {
            reversedWord = String(char) + reversedWord
        }
        outputArray.append(reversedWord)
    }
    
    output = outputArray.joined(separator: " ")
    
    return output
}

let res = revereEveryWordOfString(givenString)

print(
    "WordReverseOfString",
    "\nInput: ",givenString,
    "\nOutput: ", res
)
