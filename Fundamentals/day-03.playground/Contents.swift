import UIKit

// Arithmetic operators
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore

// Overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]

let beatles = firstHalf + secondHalf

// Compound assignment operators
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

// Comparison operators
let newFirstScore = 15
let newSecondScore = 8

if newFirstScore == newSecondScore {
    print("True")
} else {
    print("False")
}

if newFirstScore != newSecondScore {
    print("\(newFirstScore) is not equal to \(newSecondScore)") // True
} else {
    print("False")
}

newFirstScore < newSecondScore // False
newFirstScore >= newSecondScore // True

let firstName = "Taylor"
let lastName = "Swift"

firstName <= lastName // False

// Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces - lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// Combining conditions
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18") // False
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18") // True
}

// The ternary operator
let newFirstCard = 11
let newSecondCard = 10

print(newFirstCard == newSecondCard ? "Cards are the same" : "Cards are different")

if newFirstCard == secondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}

// Switch statements
let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    // fallthrough
default:
    print("Enjoy your day!")
}

// Range operators
let newScore = 84

switch newScore {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
