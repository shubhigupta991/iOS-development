let myOptional : String?

myOptional = "Angela"

// Diferent ways of unwrapping optionals
// 1. Force Unwrapping (this method is a bit dangerous because it doesnt check for nil value)

let text1 : String = myOptional!

// 2. Check for nil value

if myOptional != nil {
    let text2 : String = myOptional!
    print(text2)
    print(myOptional!)
}

// 3.Optional Binding (simplfying case 2)

if let safeOptional = myOptional {
    let text2 : String = safeOptional
    print(text2)
    print(safeOptional)
}

// Nil Coalescing Operator (what if we want to provide a value if optional is nil this case deals with that problem)

let myOptional2 : String?

myOptional2 = nil

let text : String = myOptional2 ?? "I am the default"

print(text)


// if a struct object is defined as optional

struct MyOptional {
    var property = "123"
    func method() {
        print("I am struct method")
    }
}

let optional : MyOptional?

optional = MyOptional()

print(optional!.property)         // 1. Force Unwrapping

// 5. Optional Binding (Executes only if optional is not nil)

print(optional?.property)
optional?.method()
