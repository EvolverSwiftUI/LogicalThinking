import UIKit

let givenNumber = 5

func printPattern_SpecialChar_02(number: Int) {
    for row in 1...number {
        for _ in stride(from: number, through: row, by:-1) { // use stride when you decrease value
            print("*", terminator: "")
            print(" ", terminator: "")
        }
        print("\n")
    }
}

printPattern_SpecialChar_02(number: givenNumber)

// -------------------------------------------------
print("\n")

func printPattern_Number_02(number: Int) {
    for row in 1...number {
        for column in stride(from: number, through: row, by:-1) { // use stride when you decrease value
            print(number-column + 1, terminator: "")
            print(" ", terminator: "")
        }
        print("\n")
    }
}

printPattern_Number_02(number: givenNumber)

// -------------------------------------------------
print("\n")

func printPattern_Alphabet_02(number: Int) {
    for row in 1...number {
        for _ in stride(from: number, through: row, by:-1) { // use stride when you decrease value
            print("A", terminator: "")
            print(" ", terminator: "")
        }
        print("\n")
    }
}

printPattern_Alphabet_02(number: givenNumber)
