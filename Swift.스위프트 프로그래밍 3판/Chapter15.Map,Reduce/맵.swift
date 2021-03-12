// 맵이란, 자신을 호출할 때 매개변수로 전달된 함수를 실행하여 그 결과를 다시 반환해주는 함수

// 맵은 배열, 딕셔너리, 세트, 옵셔널 등에서 사용할 수 있다.
// 정확히는, Sequence, Collection 프로토콜을 따르는 타입과 옵셔널은 모두 맵을 사용할 수 있다.

// 맵을 사용하면 컨테이너가 담고 있던 각각의 값을 매개변수를 통해 받은 함수에 적용한 후 다시 컨테이너에 포장하여 반환한다. 
// 기존 컨테이의 값은 변경되지 않고 새로운 컨테이너가 생성되어 반환된다.

// 그래서 맵은 기존 데이터를 변형하는 데 많이 사용함

// 15-1 for-in 구문과 맵 메서드의 사용 비교
let numbers: [Int] = [0, 1, 2, 3, 4]

var doubledNumbers: [Int] = [Int]()
var strings: [String] = [String]()

// for 구문 사용
for number in numbers {
	doubledNumbers.append(number * 2)
	strings.append("\(number)")
}

print(doubledNumbers, strings)


// map 메서드 사용
doubledNumbers = numbers.map({ (number: Int) -> Int in 
	return number * 2
})
strings = numbers.map({ (number: Int) -> String in
	return "\(number)"
})

print(doubledNumbers, strings)
