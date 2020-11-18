// Functions

func greetings() {print("Hello")}

greetings()

func tilte(resource: String) {
    print(resource)
}

tilte(resource: "world!")

// Control Flow

var x = 0

if x < 2 {print(x)}
else if x == 2 {print(2)}
else {print("False")}

let loveScore = Int.random(in: 0...100)

func loveCalculator(){
    if loveScore == 100 {print("Kanye loves Kanye")}
    else {print("Forever alonee")}
}

func loveCalculator2(){
    switch loveScore {
    case 81...100:
        print("You love each other")
    case 41..<81:
        print("You go together like coke and mentos")
    case ...40:
        print("You will be forever alone")
    default:
        print("Error love score is out of range")
    }
}

loveCalculator2()
loveCalculator()

// Dictionaries

var phoneBook: [String: Int] = ["Clan": 7648950129, "Andrie": 2456976312, "Noha": 4563728192]
print(phoneBook["Clan"])
func exercise() {

    var stockTickers: [String: String] = [
        "APPL" : "Apple Inc",
        "HOG": "Harley-Davidson Inc",
        "BOOM": "Dynamic Materials",
        "HEINY": "Heineken",
        "BEN": "Franklin Resources Inc"
    ]
    
    stockTickers["WORK"] = "Slack Technologies Inc"
    stockTickers["BOOM"] = "DMC Global Inc"


    print(stockTickers["WORK"]!)
    print(stockTickers["BOOM"]!)
}

exercise()

// Optionals

var player1username: String? = nil     //defining optionals

player1username = "benIsGreat"

print(player1username!)           //unwrapping optionals

// 2D Arrays

let quiz = [
    ["Four + Two is equal to Six.", "True"],
    ["Five - Three is greater than One.","True"],
    ["Three + Eight is less than Ten.","False"]
]

print(quiz[1][0])

// Structures

struct Town{
    let name = "MyLand"
    var citizens = ["Shubhi", "John"]
    var resources = ["Grain" : 100, "Ore" : 42, "Wool" : 75]
    
    func fortify(){
        print("Increased Defense")
    }
}

var Town1 = Town()
Town1.citizens.append("Milly")
print(Town1.citizens)
Town1.fortify()

struct SecondTown{
    let name: String
    var citizens: [String]
    var resources: [String:Int]
    
    init(townName: String, people: [String], stats: [String:Int]) {
        name = townName
        citizens = people
        resources = stats
    }
    
    func fortify(){
        print("Increased Defense")
    }
}

var Town2 = SecondTown(townName: "DreamLand", people: ["Lily","Rose"], stats: ["Grains" : 50])
Town2.citizens.append("Lotus")
print(Town2.citizens.count)


struct ThirdTown{
    let name: String
    var citizens: [String]
    var resources: [String:Int]
    
    init(name: String, citizens: [String], resources: [String:Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    func fortify(){
        print("Increased Defense")
    }
}

var Town3 = ThirdTown(name: "Hill", citizens: ["Jack","Jill"], resources: ["Grains": 1000])
Town3.resources["Ores"] = 76
print(Town3.resources)

