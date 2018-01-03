//: # For Loops:
//: [Playground to accompany this tutorial article](https://troz.net/post/2016/learning-swift-for-loops/)
//:

//: ## Looping through a range:
//: Half-open range:
var result: [Int] = []
for x in 0 ..< 5 {
    result.append(x)
}
result

//: Closed range:
result = []
for x in 0 ... 5 {
    result.append(x)
}
result

//: ## Striding through a range:
//: stride(from:to:by:):
result = []
for x in stride(from: 0, to: 10, by: 2) {
    result.append(x)
}
result

//: stride(from:through:by:):
result = []
for x in stride(from: 0, through: 10, by: 2) {
    result.append(x)
}
result

//: stride by a negative amount:
result = []
for x in stride(from: 10, through: 0, by: -2) {
    result.append(x)
}
result

//: stride with floating point numbers:
var resultDouble: [Double] = []
let startingNumber = 0.1
for x in stride(from: startingNumber, through: 1.0, by: 0.2) {
    resultDouble.append(x)
}
resultDouble

//: Note that startingNumber has not changed.
startingNumber

//: ## Looping through a range using where:
result = []
for x in 0 ... 10 where x % 3 == 0 {
    result.append(x)
}
result

//: ## Looping through an array:
let arrayOfInts = [1, 2, 3, 4, 5, 6]
result = []
for x in arrayOfInts {
    result.append(x * 2)
}
result

//: ## Looping through a dictionary:
let myDict = [1: "one", 2: "two", 3: "three"]
var resultString: [String] = []
for (key, value) in myDict {
    resultString.append("\(key) = \(value)")
}
resultString

//: ## Looping through an array using enumerate():
let arrayOfNames = ["Andy", "Buzz", "Woody"]
resultString = []
for (index, element) in arrayOfNames.enumerated() {
    resultString.append("The name at index \(index) is \(element)")
}
resultString

//: ## Looping through an array of optionals:
let arrayWithOptionals: [String?] = ["Woody", nil, "Buzz", nil, "Rex"]
resultString = []
for case let name? in arrayWithOptionals {
    resultString.append(name)
}
resultString

//: ## Looping through an array with where:
resultString = []
for case let name? in arrayWithOptionals where name.count < 5 {
    resultString.append(name)
}
resultString
