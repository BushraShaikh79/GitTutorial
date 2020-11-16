//protocol ND TYPES OF PROTOCOL
import UIKit

//@objc protocol Tax {
   protocol Tax {
    var bn: Int {get set}
    func calculateTax()
//    func printTaxInfo()
    //@objc optional func printTaxInfo() //Non-class type 'Demo' cannot conform to class protocol 'Tax'
}

extension Tax {
    func printTaxInfo() {
            print("printTaxInfo + \(bn)")
        }
}

struct Invoice: Tax {
    var bn: Int
//    if non optional
//    func printTaxInfo() {
//        print("printTaxInfo")
//    }
    
    func calculateTax() {
        print("Demo: Tax")
    }
}

var invoice = Invoice(bn: 10)
invoice.bn = 20
invoice.printTaxInfo()

var ghj: Int?
if let roomCount = ghj {
    print("John's residence has \(roomCount) room(s).")
}
print("else")

var l1 = [10, nil, 45, 5, nil, 75]
print("compactMap: \(l1.compactMap({$0}))")
print("l1 map: \(l1.map({$0}))")
print("l1 flatMap: \(l1.flatMap({$0}))")

let bushr = l1[0] == 10 ? "success" : "fail"
 let defaultColorName = "Nil-Coalescing"
 var userDefinedColorName: String? //= "Bushra"  // defaults to nil

 var colorNameToUse = userDefinedColorName ?? defaultColorName
print("bbbb: \(bushr) : colorNameToUse:  \(colorNameToUse)")

class Parent {
    var pp = 10
    private var pi = 3.14
    fileprivate let const = 100
    let O = 20
    final var rr = 30
    final let tt = 30
    
    static var rr1 = 30
    static let tt1 = 30
}

//enum abd {
//    weak var ab = Parent()
//}
//
//
//var xc = abd()
//print("xc : \(xc?.ab)")

class Child: Parent {
    
    func printingValues() {
        print("internal access pp: \(pp)")
       // print("private access pi: \(pi)") 'pi' is inaccessible due to 'private' protection level
        print("fileprivate access const: \(const)")
        print("internal let access o: \(O)")
        rr = 40
        print("final var access rr: \(rr)")
        print("final let access tt: \(tt)")
        Parent.rr1 = 50
        print("static var access rr1: \(Parent.rr1)")
        print("static let access tt1: \(Parent.tt1)")
    }
}

Child().printingValues()

//Example: 1
class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}
let john = Person()
//force unwrapping
//let roomCount = john.residence!.numberOfRooms// this triggers a runtime error

//Optional chaining
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
// Prints "Unable to retrieve the number of rooms."

//Example: 2
var rr = ["a": "Apple", "b": "Banana", "c":"Cat", "default":"Not Found"]
print("RR : \(rr.keys.contains("a"))")

//Example: 3
class Device {
   var closure: (() -> ())?
    var name = "Abc"
    static let v = 10
    let vv = 20
   init() {
       self.closure = {
           print("inventory has \(self.name)")
       }
   }
}

var iPad:Device? = Device()
iPad?.closure?()
iPad = nil
print("Result ")

//Example: 4.What will be output for below code?

    print("Apple")
    DispatchQueue.main.async {
    print("iPod")
    DispatchQueue.main.async {
        print("iPhone")
    }
    DispatchQueue.global().sync {
        print("iPad")
    }
     print("Apple Watch")
 }
 print("Apple TV")

//Example: 5 High order functions

var ll1  = [12, 43, 1, nil, 35, nil, 17, 67]
var ll2  = [89, 65, 41, nil, 3, nil, 71, 24]
print([(ll1.compactMap({$0})), (ll2.compactMap({$0}))].flatMap({$0}).reduce(0){$0 + $1})

let listOne = [3, nil, 5, 7]
let listTwo = [4, 6, 2, 8, nil]
let result = [listOne.compactMap({ $0}),listTwo.compactMap({ $0})].flatMap({ $0}).reduce(0) { $0 + $1 }
print("Result : \(result)")

//Example: 6
class Starship {
    var type: String = ""
    var age: Int = 0
    
    init(type: String, age: Int){
        self.type = type
        self.age = age
    }
}

let serenity = Starship(type: "Firefly", age: 24)
print("serenity : \(serenity.type) :: \(serenity.age)")

struct Stars {
    var type: String = ""
    var age: Int = 0
}

let seren = Stars(type: "Firefly", age: 24)
print("Stars : \(seren.type) :: \(seren.age)")

var names : [String]?
names = ["Chris", "Joe", "Doug", "Jordan"]

if let name = names?[1] {
    print("Brought to you by \(name)")
}

var i = 2
repeat {
    print("before : \(i)")
    i *= i * 2
    print("after : \(i)")
} while i < 100
print(i)

//Example: 7
var str = "Hello, playground"
print(str[str.startIndex]) //output: H
//push pay load size, user defaults, NSNotification, ApplicationStates, GCD, ways to transfer data from 1 view controller to other, achieve this viewcontrollers push A-B-C-D-A, push notification, Difference between Delegate and NSNotification, weak and strong property, which is good strong or weak, ARC increase by using strong iboutlets, readonly property, readwrite property, Syntax for notification, GCD, Dispatche queue Synchrounous and asynchronous, internal DBs in iOS, webcalls, broadcast methods, which method get called after push notification received, if we uninstall the app and reinstall on same device.. the device token will remain same or it will get change, difference between MVVM and MVC

//Example: 8
func syncWork() {
    let northZone = DispatchQueue(label: "perform_task_with_team_north")
    let southtZone = DispatchQueue(label: "perform_task_with_team_south")
    
//    northZone.sync {
//        for num in 1...3{
//            print("north : \(num)", separator: " :: ", terminator: "!!!")
//        }
//    }
//
//    southtZone.sync {
//        for num in 1...3{
//            print("south : \(num)", separator: " :: ", terminator: "!!!")
//        }
//    }
    
    //Async task
    let dispatchQueue = DispatchQueue(label: "testQueue")
    dispatchQueue.async {
        var sum = 0
        for i in 1...10 {
            sum += i
            print("i: \(i)")
        }
        print("sum: \(sum)")
        }
    }
    syncWork()

//Example: 9
class Demo {
    let a = 10
    static let b = 20
}
print("a : \(Demo().a)")
print("b : \(Demo.b)")

   //Example: 10
var interestingNumbers = [
    "primes": [2, 3, 5, 7, 11, 13, 17],
    "triangular": [1, 3, 6, 10, 15, 21, 28],
    "hexagonal": [1, 6, 15, 28, 45, 66, 91]
]

for key in interestingNumbers.keys {
    interestingNumbers[key]?.sort(by: >)
}

print(interestingNumbers["primes"]!)
//output: [17, 13, 11, 7, 5, 3, 2]

//Example: 11
let label = "The width is "
let width = 94
let widthLabel = label + String(width) //"\(width)"

let arr = [11, 20, 31, 55, 67, 76, 88, 98]
let t1 = "less"
let t2 = "score"
let text = t1 + t2

for i in arr {
    if i > 50 {
        print("greater score")
    }else {
        print(t1,t2, separator: " ")
    }
}
/* output: less score
less score
less score
greater score
greater score
greater score
greater score
greater score */

//Example: 12
let string  = "this2009"//readLine(strippingNewline: true)!
let num = Int(string)

if num != nil {
    print("Valid Integer")
} else {
    print("Not Valid Integer")
}
//output: Not Valid Integer

//Example: 13
let mm = "   You can also add value  of a variable or   constant into the  string literal by using  string interpolation.. "
let nn = mm.split(separator: " ")
let oo = nn.joined(separator: ":#")
print(oo)

let limit = 2
for i in 1...limit {
    print("\(i): Hi Viren..")
}

let count = 10
for j in 1..<count {
    print("count : \(j)")
}

//Example: 14 dictionary and it's iteration
let numberOfLegs = ["chicken":2, "goat":4, "horse":4, "spider":6]
for (animalName, legCount) in numberOfLegs {
    print("Animal: \(animalName) [\(legCount)]")
}

for index in stride(from: 0, to: 10, by: 2) {
    print("index : \(index)")
}

for index in stride(from: 0, through: 15, by: 3) {
    print("index : \(index)")
}

//Example: 15
let approximateCount = 4
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")

//Example: 16
class Animal {
    func method(a: Int){
        print("method : \(a)")
    }
    
    static func staticMethod(a: Int) -> Int {
        let b = a + 10
        print("staticMethod In : \(b)")
        let c = a * 10
        return c
    }
    
    final func finalMethod() {
        print("final method")
    }
    //we cannot override static and final method in subclass
}

let aa = Animal()
aa.method(a: 10)
let tt = Animal.staticMethod(a: 6)
print("staticMethod out : \(tt)")

//Example: 17
for i in stride(from: 0, through: 15, by: 3) {
    print("i : \(i)")
}

//it skip last element of list
for i in stride(from: 0, to: 15, by: 3) {
    print("i : \(i)")
}

//Example: 18
let name = "" //:String? = nil
UserDefaults.standard.set(name, forKey: "name")

let default_name = (UserDefaults.standard.string(forKey: "name")) ?? "Not Found"
print("default_name 1: \(default_name)")
let check_name = name=="" ? "Empty" : UserDefaults.standard.string(forKey: "name")
print("check_name 2: \(check_name!)")

//Example: 19 check whether the varable is nil or not nil using if-let and guard
var someValue:Int?
var someAnotherValue:Int! = 10
       
//Optional binding
if let temp = someValue {
    print("Example: 19 It has some value \(temp)")
} else {
    print("Example: 19 doesn't contain value")
}
        
if let temp = someAnotherValue {
    print("Example: 19 It has some value \(temp)")
} else {
    print("Example: 19 doesn't contain value")
}

var bc: String?// = "Bushra"
if let temp = bc {
    print("We are source control \(temp)")
}


func testFunction() {
    let someValue:Int? = nil //80
    guard let temp = someValue else {
        print("testFunction: else condition in guard")
        return
    }
    print("testFunction: It has some value \(temp)")
}
testFunction()

//Example:20 A Swift enum can either have raw values or associated values.
//https://medium.com/@PhiJay/why-swift-enums-with-associated-values-cannot-have-a-raw-value-21e41d5ec11#:~:text=A%20Swift%20enum%20can%20either%20have%20raw%20values%20or%20associated%20values.&text=It's%20because%20of%20the%20definition,instead%20of%20the%20original%20value.

//It’s because of the definition of a raw value: A raw value is something that uniquely identifies a value of a particular type. “Uniquely” means that you don’t lose any information by using the raw value instead of the original value. It’s formalized in Swift with the RawRepresentable protocol

//Raw value
enum Airport: String {
    case munich = "MUC"
    case sanFrancisco = "SFO"
    case singapore = "SIN"
}

//associated values
enum LondonAirportName {
    case stansted
    case heathrow
    case gatwick
}

enum Airport2 {
    case munich
    case sanFrancisco
    case singapore
    case london(airportName: LondonAirportName)
}

//Example:21 Protocols it support multiple inheritance in swift. same as interface in java
protocol HelloPrinter {
    func sayHello()
}

extension HelloPrinter {
    func sayHello() {
        print("Hello")
    }
}
struct MyStruct: HelloPrinter {}

let myStruct = MyStruct()
myStruct.sayHello()

//Example:22 Scenario of extension
class A {
    class C {
    fileprivate var a = 10
    private var b = 45
    var c = 65
    }
}

class B {
    //Declaration is only valid at file scope
//    extension A {
//        func priting() {
//    //        print("Value of a: \(self.c)") //Value of type 'A' has no member 'c'
//        }
//    }
}

//Example:23 Any Vs AnyObject
var vv:[Any] = [1, "Abc", true, 5.0]
//var uu:[AnyObject] = ["sdx", Parent(), 1, 45.0]
//var uu:[AnyObject] = ["sdx" as? AnyObject, Parent(), 1 as? AnyObject, 45.0 as? AnyObject]
var uu:[AnyObject] = [Parent(), A()]
print("AnyObject: \(uu[0]) : \(uu[1])")

//Example:24 Generics Vs Any
func test1<T>(param1: T, param2: T) -> T {
    return param1
}

func test2(param1: Any, param2: Any) -> Any {
    return param1
}

func test3(param: Int) {
    
}

let val1 = test1(param1: 10, param2: 20)
let val2 = test2(param1: 10, param2: 12)
test3(param: val2 as! Int)
test3(param: val1)

//Example:25 Defer block & multiple defer block functionality
func testDeferBlock(param1: Int, param2: Int) {
    defer {
        print("Defer block 1")
    }
    defer {
        print("Defer block 2")
    }
    defer {
        print("Defer block 3")
    }
    let divide = param1/param2
    print("Division result: \(divide)")
}

testDeferBlock(param1: 10, param2: 2)


