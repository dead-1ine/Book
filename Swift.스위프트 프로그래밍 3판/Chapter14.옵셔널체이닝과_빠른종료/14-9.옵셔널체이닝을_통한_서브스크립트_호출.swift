let optionalArray: [Int]? = [1, 2, 3]
optionalArray?[1]   // 2

var optionalDictionary: [String: [Int]? = [String: [Int]]()
optionalDictionary?["numberArray"] = optionalArray
optionalDictionary?["numberArray"]?[2]  // 3
