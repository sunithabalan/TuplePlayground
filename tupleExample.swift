import Foundation

//TupleCreation
let train = ("SuperFast", 10)
print("We're looking for \(train.0) in a platform \(train.1)")


//Accessing and changing the Value

//copying of distance tuple to speed tuple

var distance = (x: 0, y: 0)
var speed = distance
speed.x = 40
speed.y = 50
print(distance) // ((x: 0, y: 0)
print(speed) // (x: 40, y: 50)


//changing the value

var productNumber = (12,13)
productNumber.0 = 15
productNumber.1 = 16
print(productNumber)//(15,16)


//Multiple Assignment

let flag = (0, false, "Hello")

let flag: (Int, Bool, String) = (0, false, "Hello")


//A tuple inside another tuple:
let flag: (Int, (Bool, String)) = (1, (false, "Hello"))
print(flag.0) // print: “1”
print(flag.1.0) // print: “false”
print(flag.1.1) // print: “Hello”


//labeling the elements

var person = (firstName: "Rajesh", lastName: "Kannan")
var firstName = person.firstName // Rajesh
var lastName = person.lastName // Kannan


//Decomposing the tuple

let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found"

//Usage of Underscore

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// Prints "The status code is 404"

// using index and key value(iteration)

let drivers = ["Magnussen", "Raikkonen"]
for (index, name) in drivers.enumerated()
{
    print("\(name) has position \(index)")
}


//Swaping the two values

var lengthOfShape  = 5 
var lengthOfCube = 4 
(lengthOfCube, lengthOfShape) = (lengthOfSquare, lengthOfCube)

//usage of tuple
struct Train {
    var trainName:String
    var trainNumber:Int
}
let train = Train(trainName: "SuperFast", trainNumber: 330)
print("We're looking for \(train.trainName)")


//typealiasexample

typealias Train = (trainName: String, trainNumber: Int)
let train:Train = ("SabariExpress", 737)
print("We're looking for \(train.trainName)...")
