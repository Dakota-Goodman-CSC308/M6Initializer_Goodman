import UIKit

let a: Int? = 0
let b: Int! = 123
print(a)
print(b)

//let c: Int = a
let d: Int = b
//print(c)
print(d)

let x: Int! = 3
let y = x + 2
print(y)

let x2: Int! = nil
print(x2)
let z2 = x2 + 1
print(z2)

func f(_ n: Int) {print(n * 2)}
let a: Int! = 4
f(a)

var s: String! = "swift"
print(s!)
s = nil
print(s!)

var titleLabelText: String!
titleLabelText = "Hello"
print(titleLabelText)
titleLabelText = nil
print(titleLabelText!)

let p: Int! = 6
let q: Int? = p
if let unwrapped = q{
    print(unwrapped + 1)
} else {
    print("none")
}
