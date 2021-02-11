// 고유 키와 그에 대응하는 값을 연결하여 데이터를 저장하는 자료형
// 인덱스 정수 대신 문자열 등의 고유 키를 사용한다는 차이를 제외하면 배열과 아주 흡사한 자료형

// [키: 데이터, 키: 데이터]

/*
 1. 하나의 키는 하나의 데이터에만 연결됩니다.
 2. 하나의 딕셔너리에서 키는 중복될 수 없습니다. 중복해서 선언하면 아이템 추가가 아니라 수정이 이루어져 기존 키에 연결된 데이터가 제거됩니다.
 3. 저장할 수 있는 데이터 타입에는 제한이 없지만, 하나의 딕셔너리에 저장하는 데이터 타입은 모두 일치해야 합니다.
 4. 딕셔너리의 아이템에는 순서가 없지만 키에는 내부적으로 순서가 있으므로 for~in 구문을 이용한 순회탐색을 할 수 있습니다.
 5. 딕셔너리에서 사용할 수 있는 키의 타입은 거의 제한이 없으나 해시연산이 가능한 타입이어야 합니다.
 */

var capital = ["KR": "SEOUL", "EN": "LONDON", "FR": "PARIS"]

capital["KR"]
capital["EN"]
capital["FR"]

// 배열과 마찬가지로, 딕셔너리 역시 처음부터 필요한 모든 데이터를 입력한 상태로 사용하는 경우는 많지 않음

//MARK: - 딕셔너리의 초기화
// 형식: Dictionary<키의 타입, 값의 타입>()
// <>은 제네릭.

// 간결한 선언 : [키 타입: 값 타입]()

var Test = [String: String]()

capital = [String: String]()

//MARK: - 딕셔너리에 동적으로 아이템 추가하기

var newCapital = [String: String]()
newCapital["JP"] = "TOKYO"

// .isEmpty , .count
if newCapital.isEmpty {
    print("newCapital은 비어있습니다.")
} else {
    print("딕셔너리의 현재 크기는 \(newCapital.count) 입니다.")
}

// 메소드를 사용하여 동적으로 값을 할당
// updateValue(_: forKey: )
// <딕셔너리 객체>.updateValue(<저장할 데이터>, forKey: <데이터를 참조 및 저장하는 데 사용할 키>)
newCapital.updateValue("OTTAWA", forKey: "CA")
newCapital.updateValue("BEIJING", forKey: "CN")

// 저장된 아이템 제거
// 1. removeValue(forKey:)
// 2. = nil 할당

newCapital["CN"] = nil

// "CA"에 해당하는 값을 삭제하고, 반환된 값을 removedValue에 할당
if let removedValue = newCapital.removeValue(forKey: "CA") {
    print("삭제된 값은 \(removedValue)입니다.")
} else {
    print("아무 것도 삭제되지 않았습니다.")
}

//MARK: - 딕셔너리의 순회 탐색

for row in newCapital {
    // 딕셔너리에서 꺼낸 키-값 한 쌍이 담긴 row 상수를 튜플로 받는다.
    let (key, value) = row
    print("현재 데이터는 \(key): \(value)입니다.")
}

// 위 구문보다 간결
for (key, value) in newCapital {
    print("현재 데이터는 \(key) : \(value)입니다.")
}

// 딕셔너리를 순회탐색하면 입력한 값의 순서대로 탐색되지 않음.
// 고유 키에 대한 해시 처리 값을 기준으로 내부 정렬하기 때문

// 이들 자료형은 다른 데이터를 관리하기 때문에 컨테이너 타입이라고 불림
// 실제 앱을 만들 때 상당히 많은 데이터들이 집단 자료형을 이용하여 저장되기 때문에, 이들 자료형의 특성과 속성들을 잘 이해하는 것이 중요하다.

/*
 배열 : 순서 있는 데이터들을 저장할 때 사용하며 중복된 값을 저장할 수 있다. 저장된 데이터는 인덱스로 관리된다.
 집합 : 순서 없는 데이터를 저장할 떄 사용하며, 중복된 값은 한 번만 저장된다.
 딕셔너리 : 순서 없는 데이터를 키-값 형태로 저장할 때 사용하며, 중복된 값을 저장할 수 있지만 중복된 키를 사용할 수는 없다.
 튜플 : 데이터를 나열해서 소괄호로 묶어 사용하며, 내부적으로 순서가 있지만, 순회 처리를 지원하지는 않는다. 서로 다른 타입의 데이터를 저장할 수 있다.
 */




















