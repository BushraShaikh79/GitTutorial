import UIKit

var str = "Hello, playground"

//EVEN ODD number using the modulo operator
print("Odd & Even number using the modulo operator")
var arr = [1,2,3,4,5,6]

for n in arr {
    if(n % 2 == 0){
        print("\(n) is even")
    }else{
        print("\(n) is odd")
    }
}

//Zindagi k ik ajeeb padao pr he hm.. na zameen ki gehraio ki koi hd he.. na aasmaano ki unchaio ki.. mojood he to bs apne hisse ka safar.. ye raahe kaha tk le jaye.. koi khabar nahi.. is raah ka ikhtetaam or safar ki manzil ka to koi nishaan hi nahi milta..k umid baandhi jaaye ya sabr kia jaaye.. shayad asal zindagi yahi he.. k bs hm safar ka maza lete hue ise guzar de.. kisi ko khush kr de or kisise khush hojaye, kisise maafi maang le or kisiko maaf kr de.

//Using isMultiple
print("Odd & Even number using isMultiple")
for n in arr {
    if(n.isMultiple(of: 2)){
        print("\(n) is even")
    }else{
        print("\(n) is odd")
    }
}

var arr1:[Double] = [1,2,3,4,5,6]
print("Odd & Even number using remainder")
for n in arr1 {
    if(n.remainder(dividingBy: 2) == 0){
        print("\(n) is even")
    }else{
        print("\(n) is odd")
    }
}

for i in 1...10
{
    if i % 3 == 0 {
        print("Fizz")
    } else {
        print(i)
    }
}

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

var c = Car()
c.currentSpeed = 25.0
c.gear = 5
print("Desc : \(c.description) :: \(c.gear)")

var interestingNumbers = [
    "primes": [2, 3, 5, 7, 11, 13, 17],
    "triangular": [1, 3, 6, 10, 15, 21, 28],
    "hexagonal": [1, 6, 15, 28, 45, 66, 91]
]

for key in interestingNumbers.keys {
    interestingNumbers[key]?.sort(by: >)
}

print(interestingNumbers["primes"]!)
