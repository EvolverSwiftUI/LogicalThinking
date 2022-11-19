import UIKit

var givenNumber = 5

func pattern_specialchars_09(number: Int) {
    for row in 1...number {
        for _ in 1...row {
            print("* ", terminator: "")
        }
        print("")
    }
    for row in stride(from: number-1, through: 1, by: -1) {
        for _ in 1...row {
            print("* ", terminator: "")
        }
        print("")
    }
}

pattern_specialchars_09(number: givenNumber)
print("")
print("")

func pattern_numbers_09(number: Int) {
    for row in 1...number {
        for column in 1...row {
            print("\(column) ", terminator: "")
        }
        print("")
    }
    for row in stride(from: number-1, through: 1, by: -1) {
        for column in 1...row {
            print("\(column) ", terminator: "")
        }
        print("")
    }
}

pattern_numbers_09(number: givenNumber)
print("")
print("")


func pattern_chars_09(number: Int) {
    for row in 1...number {
        for column in 1...row {
            let char = Character(
                Unicode.Scalar(64+column) ?? Unicode.Scalar(65)
            )
            print(char, separator: " ", terminator: "")
            print(" ", terminator: "")
        }
        print("")
    }
    for row in stride(from: number-1, through: 1, by: -1) {
        for column in 1...row {
            let char = Character(
                Unicode.Scalar(64+column) ?? Unicode.Scalar(65)
            )
            print(char, separator: " ", terminator: "")
            print(" ", terminator: "")
        }
        print("")
    }
}

pattern_chars_09(number: givenNumber)


/*
 
output:
 
 *
 * *
 * * *
 * * * *
 * * * * *
 * * * *
 * * *
 * *
 *


 1
 1 2
 1 2 3
 1 2 3 4
 1 2 3 4 5
 1 2 3 4
 1 2 3
 1 2
 1


 A
 A B
 A B C
 A B C D
 A B C D E
 A B C D
 A B C
 A B
 A

 
*/
