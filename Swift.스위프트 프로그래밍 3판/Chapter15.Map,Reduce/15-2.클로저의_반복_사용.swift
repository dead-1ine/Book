let evenNumbers: [Int] = [0, 2, 4, 6, 8]
let oddNumbers: [Int] = [0, 1, 3, 5, 7]
let multiplyTwo: (Int) -> Int = { $0 * 2 }

let doubledEvenNumbers = evenNumbers.map(multiplyTwo)
print(doubledEvenNumbers)

let doubledOddNumbers = oddNumbers.map(multiplyTwo)
print(doubledOddNumbers)
