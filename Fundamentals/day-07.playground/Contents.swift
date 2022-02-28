import UIKit

// Using closures as parameters when they accept parameters
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car.")
}

// Using closures as parameters when they return values
func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("Portugal")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car."
}

// Shorthand parameter names
func newTravel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let newDescription = action("Brazil")
    print(newDescription)
    print("I arrived!")
}

newTravel {
   "I'm going to \($0) in my car"
}

// Closures with multiple parameters
func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let desc = action("London", 60)
    print(desc)
    print("I arrived!")
}

travel {
    "I'm going to \($0) at \($1) miles per hour."
}

// Returning closures from functions
func travel() -> (String) -> Void { // function that accepts no parameters, but returns a closure
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("Brazil")

// Capturing values
func traveling() -> (String) -> Void {
    var counter = 1
    
    return {
        print("\(counter). I'm going to \($0)")
              counter += 1
    }
}

result("Brazil")
result("Brazil")
result("Brazil")

