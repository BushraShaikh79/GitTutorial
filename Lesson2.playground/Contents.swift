import UIKit
import Foundation

var aa = [1, 2, 3, 4]
var aa2 = aa
aa2.append(5)
print(aa.count)
print(aa2.count)

//Example : Difference between Classes and structs
class Dog {
    var name: String = "" // classes needs initializers like init or initial default value
    init(name: String) {
        self.name = name
    }
    func classFunc() {
         
        print("classFunc")
    }
}


let dog = Dog(name: "Tuffy")
dog.name = "Bruno"
dog.classFunc()
struct Cat {
    var name: String
    
    mutating func structFunc() {
        print("structFunc")
    }
}

let cat = Cat(name: "Kitty")
//cat.structFunc()
//cat.name = "Manku" to work by this (<<) we need to create instance using var i.e. var cat = Cat(name: "Mubasshir") whereas in classes we ca

print("Cat : \(cat.name)")
weak var v: Girl?
//v = 10
print("V: \(v)")




var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)
func serve(customer customerProvider: @autoclosure () -> String) {
    print("Now serving \(customerProvider())!")
}
serve(customer: customersInLine.remove(at: 0))




//Example:1 typealias
typealias B = String
var t:B //TEST t = 10

//Example:2 Tuples
class Girl {
    
    func printing() -> String {
        return "printing"
    }
    
    static func stFunc() -> Int {
        return Int(34.67783687)
    }
}

var not_found = (404, 10.54, "Error", true, Girl().printing(), Girl.stFunc())
print("Tuples : \(not_found.5)\n\n")

//Example:3 Array
var z = [10, 20, 30, 40, 50, 60]
for zz in z {
    print("zz : \(zz)")
}

//Example:4 dictionary
var interestingNumbers = [
    "primes": [2, 3, 5, 7, 11, 13, 17],
    "triangular": [1, 3, 6, 10, 15, 21, 28],
    "hexagonal": [1, 6, 15, 28, 45, 66, 91]
]

for key in interestingNumbers.keys {
    interestingNumbers[key]?.sort(by: >)
}

print(interestingNumbers["primes"]!)


//Example:5 replace using 3rd variable
var a = 10, b = 20, c = 0
print("a : \(a) -- b : \(b)")
c = a
a = b
b = c
print("a : \(a) -- b : \(b)")

//replace without using 3rd variable
var x = 30, y = 40
x = x + y
y = x - y
x = x - y
print("without using 3rd variable >> x: \(x) -- y: \(y)")

//replace using Higher order function "swap")

swap(&x, &y) // swap requires inout parameter
print("using Higher order function >> x : \(x) -- y : \(y)")

//Example: 6 operators & conditional blocks
var g = 66 + 34
print("g : \(g)")

var p = 90
p = p * 70
print("p : \(p)")

var vv = "190"

if let output = Int(vv) //optional binding Int(string)
{
    print("output is an integer : \(output)")
} else {
     print("output is not an integer")
}

// switch with fallthrough
var ss = "Mubasshir"

switch ss {
case "Saima":
    print("Saima")
    fallthrough
case "Mubasshir":
    print("Mubasshir")
    fallthrough
case "Bushra":
    print("Bushra")
    fallthrough
case "Mustufa":
    print("Mustufa")
    fallthrough
case "Zidaan":
    print("Zidaan")
    fallthrough
default:
     print("default")
}

//Example:7 dictionary with print variation
var mDic = [1:"apple", 2:"banana", 3:"cherry"]

for (i,j) in mDic {
    print("i: \(i) || j: \(j)")
}
print("mDic first : \(mDic.first!)")
print("Hello Bushra", separator: "......", terminator: "!!")

//Example:8 Inheritance, using protocol(i.e. interface) and classes
class Test {
    
    class func testFunc(param:Int)
    {
        print("testFunc : int param \(param)")
    }
    
    static func staticFunc(param:String){
        print("staticFunc : string param \(param)")
    }
    
    class var i:Int {
        return 10
    }
    
    static var j = 20
    
    var k = 30
    
    func defaultFunc(){
        print("defaultFunc....!!!  \(k)")
    }
}

protocol Event
{
//    var ts: Int64 { get set }
    func accept(visitor: Int)
}

struct StructTest:Event {
//    var ts: Int64
    
    var sName:String
    init(sName:String) {
        self.sName = sName
    }
    
    func accept(visitor: Int) {
        print("protocol : \(visitor)")
    }
}

var struct_obj = StructTest(sName: "Bushra")
var struct_obj1 = struct_obj
struct_obj1.sName = "Aliya"
struct_obj1.accept(visitor: 10)

print("1st struct : \(struct_obj.sName)")
print("2nd struct : \(struct_obj1.sName)")

class ClassTest:Test {
    var name:String
    
    init(name:String){
        self.name = name
    }
    
    override func defaultFunc() {
        print("StructTest: defaultFunc")
    }
}

var obj = ClassTest(name: "Bushra")
var obj1 = obj
obj1.name = "Saima"
obj.defaultFunc()

print("1st class : \(obj.name)")
print("2nd class : \(obj1.name)")

class Examine:Test {
    
    override class func testFunc(param: Int) {
        print("Overriden testFunc with int param \(param)")
    }
    
    func exam(){
        Test.testFunc(param: 10)
        Test.testFunc(param: 1)
        Test.staticFunc(param: "Hello swift!!")
        Test.i
        Test.j
        Test().k
        Test().defaultFunc()
        self.defaultFunc()
        self.k = 40
    }
}

var exObj = Examine()
exObj.exam()
Examine.testFunc(param: 2)
print(exObj.k)

//Example:9 Immutable array
let array1 = ["First", "Second", "Third"] //we cannot append new elements to this array

//Mutable Array operations
var array2 = ["First", "Second", "Third"]
print("Initial array: \(array2)")

array2[2] = "Bushra"
print("Replaces last element by adding: \(array2)")

array2[1] = "Jennifer"
print("array2 replaces middle element by adding: \(array2)")

array2.insert("Aditya", at: 1)
print("array2 insert element: \(array2)")

array2.append(contentsOf: ["Arjun", "Zoya", "Noor"])
print("Append Array: \(array2)")

array2.append("Harshad")
print("Append element to array: \(array2)")

//Example:10 protocols and classes
protocol hello {
    func printHello()
}

class parentInherit {
    
    func methodOverride() {
        print("parentInherit methodOverride")
    }
}
class testProtocol: parentInherit, hello {
    func printHello() {
        print("testProtocol printHello")
    }
    
    
}

extension parentInherit {
}

//Example:11 enumerations
enum far: hello {
    func printHello() {
        print("enum protocol")
    }
    
    
    func enumFunc() -> String {
        return "enumFunc"
    }
    case abc
    case xyz
    
}

far.abc
//far.printHello()
//var v = far.enumFunc()
//print("V : \(v)")

//Example:12 inout parameter
func double(_ number: inout Int) {
    number *= 2
}

var number = 5
double(&number)
print(number)



for i in 10..0 {
    print("")
}



class Template {
    
}

func divide(param1: Int, param2: Int) -> Int
    {
        var x = param1
        var y = param2
        // handle divisibility by 0
        if (y == 0)
        {
            print("Error!! Divisible by 0")
        }

        // store sign of the result
        var sign = 1
        if (x * y < 0) {
            sign = -1
        }

        // convert both dividend and divisor to positive
        x = Int(x)
        y = Int(y)

        // initialize quotient by 0
        var quotient = 0

        // loop till dividend x is more than the divisor y
        while (x >= y) {
            x = x - y;        // perform reduction on dividend
            quotient += 1        // increase quotient by 1
        }

        print("Remainder is \(x)")
        return (sign * quotient)
    }


let quo = divide(param1: 11, param2: 2)
print("quo : \(quo)")
    

func calcAngle(param1: Double, param2: Double) -> Int
   {
    var hour = param1
    var minute = param2
       // validate the input
    if (hour < 0 || minute < 0 || hour > 12 || minute > 60){
           print("Wrong input")
    }

    if (hour == 12) {
           hour = 0
    }
    if (minute == 60)
      {
       minute = 0
       hour += 1
        if(hour > 12){
         hour = hour-12
       }
    }


       // Calculate the angles moved by hour and minute hands
       // with reference to 12:00
       var hour_angle = Int(0.5 * (hour*60 + minute));
       var minute_angle = Int(6*minute);

       // Find the difference between two angles
       var angle = abs(hour_angle - minute_angle);

       // smaller angle of two possible angles
       angle = min(360-angle, angle)

       return angle
   }
var newVal = calcAngle(param1: 10, param2: 30)
print("Angle: \(newVal)")

