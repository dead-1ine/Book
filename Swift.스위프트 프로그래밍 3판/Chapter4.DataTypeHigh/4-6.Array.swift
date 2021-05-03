// 대괄호를 사용하여 배열임을 표현합니다.
var names: Array<String> = ["yang", "test", "gogo", "yagom"]

// 위 선언과 정확히 동일한 표현입니다.
var names1: [String] = ["yang", "test", "gogo", "yagom"]

var emptyArray: [Any] = [Any]()		// Any 데이터를 요소로 갖는 빈 배열을 생성합니다.
var emptyArray1: [Any] = Array<Any>()// 위 선언과 정확히 같은 동작을 하는 코드입니다.

// 배열의 타입을 정확히 명시해줬다면 []만으로도 빈 배열을 생성할 수 있습니다.
var emptyArray2: [Any] = []
print(emptyArray.isEmpty)	// true
print(names.count)			// 4