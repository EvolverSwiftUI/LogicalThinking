import Foundation

// String reverse
let givenString =  "level" //"Hello" // "racecar" // "liril"

func getReverseString(using str: String) -> String {
    var reverseString = ""
    for (index, element) in givenString.enumerated() {
        print("\(index)" + ":" + "\(element)")
            reverseString = "\(element)" + reverseString
    }
    return reverseString
}

// String is Palindrome or not
func checkGivenStringPalindrome(str: String) {
    let reveredString = getReverseString(using: givenString)
    print(reveredString)

    let res = (givenString == reveredString) ? "Gieven String is Palindrome." : "Gieven String is Not Palindrome."
    print(res)
}

checkGivenStringPalindrome(str: givenString)
