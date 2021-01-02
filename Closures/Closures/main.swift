import Foundation

func calculator(n1: Int, n2: Int, operation: (Int,Int) -> Int) -> Int {
    return operation(n1,n2)
}

func add(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

func multiply(number1: Int, number2: Int) -> Int {
    return number1 * number2
}

let result1 = calculator(n1: 5, n2: 10, operation: multiply(number1:number2:))
let result2 = calculator(n1: 5, n2: 10, operation: add(number1:number2:))

let result3 = calculator(n1: 5, n2: 10, operation: {(no1,no2) in no1*no2})
let result4 = calculator(n1: 5, n2: 10, operation: {(no1,no2) in no1+no2})

let result5 = calculator(n1: 5, n2: 10, operation: {$0 * $1})
let result6 = calculator(n1: 5, n2: 10, operation: {$0 + $1})

let result7 = calculator(n1: 5, n2: 10){$0 + $1}
print(result1,result2,result3,result4,result5,result6,result7)

//Another example

let array = [1,2,3,4,5]

let result = array.map{$0 + 1}
print(result)

let newArray = array.map{"\($0)"}
print(newArray)
