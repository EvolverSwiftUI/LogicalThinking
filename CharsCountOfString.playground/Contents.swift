import UIKit

var givenString = "Welcome To Logical Thinking 123456"

extension Character {
    
    var isChar: Bool {
        return (
            (self >= "a" && self <= "z") ||
            (self >= "A" && self <= "Z")
        )
    }
    
    var isVowel: Bool {
        return (
            self == "a" ||
            self == "e" ||
            self == "i" ||
            self == "o" ||
            self == "u"
        )
    }

    var isDigit: Bool {
        return (
            self >= "0" && self <= "9"
        )
    }
}

typealias CountTuple = (
    vowelsCount         : Int,
    consonantsCount     : Int,
    digitsCount         : Int,
    specialCharsCount   : Int
)

func get_Vowels_Consotants_Digits_And_SpecialChars_Count_Of_String(_ str: String) -> CountTuple {
    
    var counter: CountTuple = (0,0,0,0)
    
    for item in str {
        if item.isChar {
            let lowerCasedChar = Character(item.lowercased())
            if lowerCasedChar.isVowel {
                counter.vowelsCount += 1
            } else {
                counter.consonantsCount += 1
            }
        } else if item.isDigit {
            counter.digitsCount += 1
        } else {
            counter.specialCharsCount += 1
        }
    }
    
    return counter
}

let res = get_Vowels_Consotants_Digits_And_SpecialChars_Count_Of_String(givenString)

print(
    "Count of Vowels, Consonants, Digits and SpecialChars\n",
    "\nInput                : ", givenString,
    "\nVowelCount           : ", res.vowelsCount,
    "\nConsonantsCount      : ", res.consonantsCount,
    "\nDigitsCount          : ", res.digitsCount,
    "\nSpecialCharsCount    : ", res.specialCharsCount
)


//  Count of Vowels, Consonants, Digits and SpecialChars
//  Input                :  Welcome To Logical Thinking 123456
//  VowelCount           :  9
//  ConsonantsCount      :  15
//  DigitsCount          :  6
//  SpecialCharsCount    :  4
