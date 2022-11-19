import UIKit

var givenNumber = 5

func pattern_specialchars_08(number: Int) {
    for row in 1...givenNumber {
        for _ in stride(from: 1, through: (number - row), by: 1) {
            print("  ",terminator: "")
        }
        for _ in 1...(row*2-1) {
            print("* ",terminator: "")
        }
        print("")
    }
    
    for row in stride(from: number-1, through: 1, by: -1) {
        for _ in stride(from: 1, through: (number - row), by: 1) {
            print("  ",terminator: "")
        }
        for _ in 1...(row*2-1) {
            print("* ",terminator: "")
        }
        print("")
    }

}

pattern_specialchars_08(number: givenNumber)
print("")
print("")


func pattern_number_08(number: Int) {
    for row in 1...givenNumber {
        for _ in stride(from: 1, through: (number - row), by: 1) {
            print("  ",terminator: "")
        }
        for column in 1...(row*2-1) {
            print("\(column) ",terminator: "")
        }
        print("")
    }
    
    for row in stride(from: number-1, through: 1, by: -1) {
        for _ in stride(from: 1, through: (number - row), by: 1) {
            print("  ",terminator: "")
        }
        for column in 1...(row*2-1) {
            print("\(column) ",terminator: "")
        }
        print("")
    }

}

pattern_number_08(number: givenNumber)
print("")
print("")


func pattern_char_08(number: Int) {
    for row in 1...givenNumber {
        for _ in stride(from: 1, through: (number - row), by: 1) {
            print("  ",terminator: "")
        }
        for column in 1...(row*2-1) {
            let char = Character(
                Unicode.Scalar(64+column) ?? Unicode.Scalar(65)
            )
            print(char, separator: " ", terminator: "")
            print(" ", terminator: "")
        }
        print("")
    }
    
    for row in stride(from: number-1, through: 1, by: -1) {
        for _ in stride(from: 1, through: (number - row), by: 1) {
            print("  ",terminator: "")
        }
        for column in 1...(row*2-1) {
            let char = Character(
                Unicode.Scalar(64+column) ?? Unicode.Scalar(65)
            )
            print(char, separator: " ", terminator: "")
            print(" ", terminator: "")
        }
        print("")
    }

}

pattern_char_08(number: givenNumber)

/*
 
 OUTPUT:
 
        *
      * * *
    * * * * *
  * * * * * * *
* * * * * * * * *
  * * * * * * *
    * * * * *
      * * *
        *


        1
      1 2 3
    1 2 3 4 5
  1 2 3 4 5 6 7
1 2 3 4 5 6 7 8 9
  1 2 3 4 5 6 7
    1 2 3 4 5
      1 2 3
        1


        A
      A B C
    A B C D E
  A B C D E F G
A B C D E F G H I
  A B C D E F G
    A B C D E
      A B C
        A

 
 */
