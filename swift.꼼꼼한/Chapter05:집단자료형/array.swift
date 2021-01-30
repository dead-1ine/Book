// cities 배열을 타입 추론으로 선언 후 초기화
var cities = ["Seoul", "New York", "LA", "Santiago"]

// 배열을 참조하는 법
print(cities[0],	// Seoul
cities[1],	// New York
cities[2],	// LA
cities[3])	// Santiago

print(cities.count) // 배열의 길이는 4

// 배열 순회 탐색
let length = cities.count

for i in 0..<length {
	print("\(i)번째 배열 원소는 \(cities[i])")
}

// for i in 0..<cities.count 도 가능하지만 실행 속도를 떨어트림

// Iterator
for row in cities {
	print("배열 원소는 \(row) 입니다.")
}

// index(of: _)
for row in cities {
	let index = cities.index(of: row)
	print("\(index!)번째 배열 원소는 \(row)입니다.")
}


