// 스위프트에서 제공하는 특별한 성격의 집단 자료형
// 여러 가지 타입의 아이템을 저장할 수 있지만, 일단 선언되고 나면 상수적 성격을 띠므로 더 이상 값을 추가하거나 삭제하는 등의 변경이 불가
// 튜플의 특징 : 타입과 관계없이 저장 가능하나 오직 최초에 선언된 상태의 아이템만 사용할 수 있고 수정이나 삭제, 추가 등의 변경을 할 수 없다.

// (<튜플아이템>, <튜플아이템>)

let tupleValue = ("a", "b", 1, 2.5, true)

tupleValue.0 // "a"
tupleValue.1 // "b"
tupleValue.2 // 1
tupleValue.3 // 2.5
tupleValue.4 // true

// 타입 어노테이션
var tpl01: (Int, Int) = (100, 200)
var tpl02: (Int, String, Int) = (100, "A", 200)
var tpl03: (Int, (String, String)) = (100, ("t", "v"))
var tpl04: (String) = ("TEST")  // 문자열로 들어감

let tupleValue1: (String, Character, Int, Float, Bool) = ("a", "b", 1, 2.5, true)
// 타입을 따로 지정하지 않으면 b가 String으로 들어가며, 2.5는 Double로 들어감
// 의도치 않은 타입 추론을 방지하기 위해 타입 어노테이션을 사용한다.

// 바인딩
let (a, b, c, d, e) = tupleValue1
print(a, b, c, d, e)

// 튜플은 순회특성 사용불가, 메소드는 인덱스 뿐

// 결과값으로 튜플을 반환하는 함수
func getTupleValue() -> (String, String, Int) {
    return ("t", "v", 100)
}

// 함수가 반환하는 튜플을 튜플 상수로 바인딩
var (a1, b1, c1) = getTupleValue()

// 튜플에서 반환되는 아이템 중 일부만 필요할 경우 언더바(_)로 대체 가능
// 아이템의 개수는 맞아야함.
(a1, b1, _) = getTupleValue()

// 튜플을 사용하면 반환할 데이터들을 단순히 괄호로 묶는 것만으로 자료형이 만들어지므로 코드가 매우 단순해진다는 이점이 생긴다.
// 아이템을 수정하거나 추가 삭제할 수 없다는 제약에도 불구하고 튜플이 활용되는 이유.


