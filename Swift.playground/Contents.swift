import Foundation

class Animal {
    var name: String
    
    init(n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("Typing away......")
    }
}

class Fish: Animal {
    func breathTaking() {
        print("Breathing under water")
    }
}
