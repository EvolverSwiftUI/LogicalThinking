import UIKit


struct Student {
    var name: String
    var marks: String
    
    init(name: String, marks: String) {
        self.name = name
        self.marks = marks
    }
    
    // Struct don't have deinit method, but
    // Class have deinit method
    
    // Struct supports deep copy
    // Class supports shallow copy
    
    // Struct are value type
    // Class are reference type
    
    // Struct don't support inheritance
    // Class support inheritance
    
    // Struct stored in stack memory
    // Class stored in heap memory
    
    // Struct are thread safe
    // Class are not thread safe
    
    // Struct have default memberwise initializer
    // Class don't have default memberwise initializer
}

// String reverse
let givenString =  "$le,ve@l" //"Hello" //

func getReverseString(using str: String) -> String {
    var reverseString = ""
//    var specialSymbolsIndexArray = [Int]()
//    var specialSymbolsArray = [Character]()
    for (index, element) in givenString.enumerated() {
        print("\(index)" + ":" + "\(element)")
//        if (element >= "a" && element <= "z") || (element >= "A" && element <= "Z") {
            reverseString = "\(element)" + reverseString
//        } else {
//            reverseString = "\(element)" + reverseString
//
//            specialSymbolsIndexArray.append(index)
//            specialSymbolsArray.append(element)
//            print(specialSymbolsIndexArray)
//            print(specialSymbolsArray)
//        }
    }
    print(reverseString)

//    for index in specialSymbolsIndexArray {
//        let ele = specialSymbolsArray[index]
//        print(ele)
//        let index = reverseString.index(reverseString.startIndex, offsetBy: index)
//        print("\(index): \(ele)")
//        reverseString.insert(ele, at: index)
//    }

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
