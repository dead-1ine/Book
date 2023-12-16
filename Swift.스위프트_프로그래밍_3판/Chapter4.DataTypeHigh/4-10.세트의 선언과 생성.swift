// 4.4.3 세트
// 세트는 같은 타입의 데이터를 순서 없이 하나의 묶음으로 저장하는 형태의 컬랙션 타입
// * 순서가 중요하지 않거나 각 요소가 유일한 값이어야 하는 경우 사용 *

var names: Set<String> = Set<String>()		// 빈 세트 생성
var names1: Set<String> = []					// 빈 세트 생성

// Array와 마찬가지로 대괄호를 사용합니다. (1)
var names2: Set<String> = ["yagom", "chulsoo", "younghee", "yagom"]

// 그렇기 때문에 타입 추론을 사용하게 되면 컴파일러는 Set가 아닌 Array로 타입을 지정합니다.
var nubers = [100, 200, 300]
print(type(of: numbers))		// Array<Int>

print(names.isEmpty)			// false
print(names.count)				// 3 - 중복된 값은 허용되지 않아 yagom은 1개만 남습니다.
