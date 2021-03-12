let alphabetDictionary: [String: String] = ["a":"A", "b":"B"]

var keys: [String] = alphabetDictionary.map { (tuple: (String, String)) -> 
	String in 
	return tuple.0
}

keys = alphabetDictionary.map{ $0.0 }

let values: [String] = alphabetDictionary.map{ $0.1 }
print(keys)
print(values)


var numberSet: Set<Int> = [1, 2, 3, 4, 5]
let resultSet = numberSet.map{ $0 * 2 }
print(resultSet)


let optionalInt: Int? = 3
let resultInt: Int? = optionalInt.map{ $0 * 2 }
print(resultInt)


let range: CountableClosedRange = (0...3)
let resultRange: [Int] = range.map{ $0 * 2 }
print(resultRange)


