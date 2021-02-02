// 집합은 같은 타입의 서로 다른 값을 중복 없이 저장하고자 할 때 사용하는 집단 자료형
// 배열을 사용하기에는 순서가 그다지 중요하지 않은 데이터들이거나 중복 없이 한 번만 저장되어야 하는 데이터들을 다룰 때 배열 대신 사용하는 자료형

var genres: Set = ["Classic", "Rock", "Balad"]

// 타입추론이 없는 선언
//var g: Set<String> = []
// Only 선언
//var genre = Set<String>()

// var genres: Set<String> = ["Classic", "Rock", "Balad"]

// 값 추가
genres.insert("EDM")

// .isEmpty .count
if genres.isEmpty {
    print("집합이 비어있습니다.")
} else {
    print("집합에는 \(genres.count) 개의 아이템이 있습니다.")
}

// 집합 순회 탐색
for g in genres {
    print("\(g)")
}

// .sorted()
for g in genres.sorted() {
    print("\(g)")
}

// 집합의 동적 추가와 삭제
genres.insert("Jazz")   // (inserted true, memberAfterInsert "Jazz")
// Set는 중복 불가로 inserted false가 나옴
genres.insert("Rock")   // (inserted false, memberAfterInsert "Rock")

// remove(_ : )
if let removedItem = genres.remove("Rock") {
    print("아이템 \(removedItem)의 삭제가 완료되었습니다.")
} else {
    print("삭제할 값이 집합에 존재하지 않습니다.")
}

// removeAll()
genres.removeAll()

if genres.isEmpty {
    print("모든 아이템이 삭제되었습니다.")
} else {
    print("아직 \(genres.count)개의 아이템이 남아있습니다.")
}

// contains() : 인자값으로 입력된 데이터를 사용하여 해당 집합 내에서 일치하는 아이템이 있는지 검색 후 true, false 반환

if genres.contains("Rock") {
    print("Rock 아이템이 저장되어 있습니다.")
} else {
    print("Rock 아이템이 저장되어 있지 않습니다.")
}

//MARK: - 집합 연산

// intersection(_ : ) : 교집합
// symmetricDifference(_ : ) : 양쪽 집합 중에서 어느 한쪽에만 있는 아이템을 선택하여 새로운 집합을 만들어줌, 양쪽 집합 모두에 공통으로 있는 아이템 제외
// union(_ : ) : 합집합
// subtract(_ : ) : 차집합

var oddDigits: Set = [1, 3, 5, 7, 9]    // 홀수
let evenDigits: Set = [0, 2, 4, 6, 8]   // 짝수
let primeDigits: Set = [2, 3, 5, 7]     // 소수

oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.symmetricDifference(primeDigits).sorted()
// [1, 2, 9]
oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

oddDigits.subtract(primeDigits)
oddDigits.sorted()
// [1, 9]

// isSubset(of:) : 주어진 집합의 값 전체가 특정 집합에 포함되는지 판단 true, false
// isSuperset(of:) : 주어진 집합이 특정 집합의 모든 값을 포함하는 판단 true, false
// isStrictSubset(of:), isStrictSuperset(of:) : 더 엄격하게 판단하여 정확히 부분집합, 또는 상위집합일 때만 true를 반환
// isDisjoint(with:) : 두 집합 사이의 공통 값을 확인하여 아무런 공통 값이 없을 때 true를, 공통 값이 하나라도 있으면 false를 반환

let A: Set = [1, 3, 5, 7, 9]
let B: Set = [3, 5]
let C: Set = [3, 5]
let D: Set = [2, 4, 6]

B.isSubset(of: A)   // true
A.isSubset(of: B)   // true
C.isStrictSubset(of: A) // true
C.isStrictSubset(of: B) // false
A.isDisjoint(with: D)   // true

// 배열의 손쉬운 중복제거
var A1 = [4, 2, 5, 1, 7, 4, 9, 11, 3, 5, 4]

let B1 = Set(A1)
A1 = Array(B1)
// A = Array(Set(A))











