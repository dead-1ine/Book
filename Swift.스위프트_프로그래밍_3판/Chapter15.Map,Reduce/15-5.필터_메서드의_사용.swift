// filter는 말 그대로 *컨테이너 내부의 값을 걸러서 추출*하는 역할을 하는 고차함수이다.
// 맵과 마찬가지로 새로운 컨ㄷ테이너에 값을 담아 변환.
// 차이점: 맵처럼 기존 값을 변경하는 것이 아니라, 특정 조건에 맞게 걸러내는 역할을 할 수 있다.

// filter 함수의 매개변수로 전달되는 함수의 반환 타입은 Bool이다.
// 해당 콘텐츠의 값을 갖고 새로운 컨테이너에 포함될 항목이라고 판단하면 true, 않으려면 false를 반환하면 됨 

let numbers: [Int] = [0, 1, 2, 3, 4, 5]

let evenNumbers: [Int] = numbers.filter { (number: Int) -> Bool in return number % 2 == 0
}

print(evenNumbers) // [0, 2, 4]

let oddNumbers: [Int] = numbers.filter{ $0 % 2 == 1 }
print(oddNumbers)
