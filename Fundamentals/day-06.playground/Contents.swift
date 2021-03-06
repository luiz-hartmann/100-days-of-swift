import UIKit

// Creating basic closures
let driving = {
    print("I'm driving in my car")
}

driving()

// Accepting parameters in a closure
let traveling = { (place: String) in
    print("I'm going to \(place) in my car")
}

traveling("Brazil")

// Returning values from a closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("Portugal")
print(message)

// Closures as parameters
func travel(action: () -> Void) {
    print("I'm getting to go.")
    action()
    print("I arrived!")
}

travel(action: driving)

// Trailing closure syntax
func newTravel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

newTravel {
    print("I'm driving in my car")
}

