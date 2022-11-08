import UIKit

let givenNumber = 5

func printPattern_SpecialChar_01(number: Int) {
    for _ in 0..<number {
        for _ in 0..<number {
            print("*", terminator: "")
            print(" ", terminator: "")
        }
        print("\n")
    }
}
printPattern_SpecialChar_01(number: givenNumber)


// ---------------------------------------------------
print("\n")
print("\n")

func printPattern_Number_01(number: Int) {
    for _ in 1...number {
        for _ in 1...number {
            print("1", terminator: "")
            print(" ", terminator: "")
        }
        print("\n")
    }
}
printPattern_Number_01(number: givenNumber)


// ---------------------------------------------------
print("\n")
print("\n")

func printPattern_Char_01(number: Int) {
    for _ in 0..<number {
        for _ in 0..<number {
            print("A", terminator: "")
            print(" ", terminator: "")
        }
        print("\n")
    }
}
printPattern_Char_01(number: givenNumber)


