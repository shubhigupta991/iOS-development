import Foundation

let names = ["Anna","Alex","Jack"]

for name in names {
    print("Hello \(name)")
}


var now = Date().timeIntervalSince1970
let oneSecondFromNow = now + 1


while now < oneSecondFromNow {
    now = Date().timeIntervalSince1970
    print("waiting...")
}

