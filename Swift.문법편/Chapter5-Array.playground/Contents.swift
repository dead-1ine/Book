// append(_ : ) : 입력된 값을 배열의 맨 뒤에 추가합니다.
// insert(_ : at: ) : 아이템을 배열의 맨 뒤가 아닌 원하는 위치에 직접 추가
// append(contentsOf: ) : 배열의 맨 마지막에 여러 개의 아이템(배열)을 추가

var cities = [String]() // []

cities.append("Seoul")
cities.append("New York")
cities.insert("Tokyo", at: 1)
cities.append(contentsOf: ["Dubai", "Sydney"])

// 인덱스 값을 직접 변경
cities[2] = "Madrid"
print(cities)

cities.insert("Seoul", at: 0)

//extension Array: RangeReplaceableCollection {
//    public init(repeating repeatedValue: Element, count: Int)
//}

var city = Array(repeating: "Test", count: 3)
// var city = [String](repeating: "Test", count: 3)

//MARK: - 범위 연산자를 이용한 인덱스 참조

var alphabet = ["a", "b", "c", "d" , "e"]

alphabet[0...2] // ["a", "b", "c"]
alphabet[2...3] // ["c", "d"]
alphabet[1..<3] // ["b", "c"]

// 범위 연산자를 활용한 값 변경
alphabet[1...2] = ["1", "2", "3"]
alphabet[2...4] = ["A"]
print(alphabet)








