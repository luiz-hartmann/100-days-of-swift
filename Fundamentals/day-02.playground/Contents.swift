import UIKit

// Arrays
let a = "A"
let b = "B"
let c = "C"
let d = "D"

let result = [a, b, c, d]
result[2]

let oddNumbers = [2, 4, 6, 8, 10]
print(oddNumbers[0])

// Sets
let num = Set([1, 1, 1, 2, 3, 4, 5]) // Remove valores duplicados e retorna os itens de forma desordenada

// Tuples
var name = (first: "Taylor", last: "Swift")
name.0
name.last

// Arrays vs sets vs tuples
let address = (house: 777, street: "Taylor Swift Avenue", city: "Nashville")

let set = Set(["aardvark", "astronaut", "azalea"])

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]
heights["Ed Sheeran"]

// Dictionary default values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Charlotte", default: "Unknown"] // Default é 'Unknown'

// Empty collections
var teams = [String: String]()
teams["Justin"] = "Purple"

var results = [Int: Int]()
results[100] = 1000

var words = Set<String>()
var numbers = Set<Int>()

// Enumerations
enum Result {
    case sucess
    case failure
}

let sucessResult = Result.sucess
let failedResult = Result.failure
print("\(sucessResult) and \(failedResult)")

// Enum associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "One Punch Man")

// Enum raw values
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let mercury = Planet(rawValue: 1)
