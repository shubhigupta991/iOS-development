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
