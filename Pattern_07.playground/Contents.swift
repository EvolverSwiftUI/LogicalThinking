import UIKit

var givenNumber = 5

func pattrern_chars_07(number: Int) {
    for i in 1...givenNumber {
        for j in 1...i {
            let char = Character(
                Unicode.Scalar(64+j) ?? Unicode.Scalar(65)
            )
            print(char, separator: " ", terminator: "")
            print(" ", terminator: "")
        }
        print("")
    }
}

pattrern_chars_07(number: givenNumber)

/*
 output:
 
 A
 A B
 A B C
 A B C D
 A B C D E

 */
