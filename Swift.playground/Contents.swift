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

let shubhi = Human(n: "Shubhi")
let jack = Human(n: "Jack")
let nemo = Fish(n: "Nemo")

let neighbours = [shubhi,jack,nemo]

// is as! as? keyword
if neighbours[0] is Human {
    print("First Neighbour is human")
}

func findNemo(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            let fish = animal as! Fish
            fish.breathTaking()
        }
    }
}

findNemo(from: neighbours)

if let fish = neighbours[1] as? Fish {
    fish.breathTaking()
}else {
    print("Casting has failed")
}
