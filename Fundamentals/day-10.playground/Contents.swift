import UIKit

// Creating your own classes
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

// Class inheritance
class Poodle: Dog {
    
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

// Overriding methods
class newDog {
    func makeNoise() {
        print("Woof!")
    }
}

class newPoodle: newDog {
    override func makeNoise() {
        print("Yip!")
    }
}

let newPoppy = newPoodle()
newPoppy.makeNoise()

// Final classes
final class Cat {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// Copying objects
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)

// Deinitializers
class People {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let people = People()
    people.printGreeting()
}

// Mutability
class newSinger {
    var name = "Taylor Swift"
}

let taylor = newSinger()
taylor.name = "Ed Sheeran"
print(taylor.name)

