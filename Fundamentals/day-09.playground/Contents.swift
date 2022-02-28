import UIKit

// Initializers
struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "Ana"

// Referring to the current instance
struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

// Lazy properties
struct FamilyTree {
    init() {
        print("Creating family tree")
    }
}

struct newPerson {
    var name: String
    var familyTree = FamilyTree()
   
    init(name: String) {
        self.name = name
    }
}

var ed = newPerson(name: "ED")
ed.familyTree

// Static properties and methods
struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

print(Student.classSize)

// Acess control
struct People {
    private var id: String
    
    init (id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let people = People(id: "123")
