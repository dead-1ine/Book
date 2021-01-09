// 딕셔너리는 각 값에 키로 접근할 수 있습니다. 딕셔너리 내부에서 키는 유일해야 하며, 값은 유일하지 않습니다. 딕셔너리는 배열과 다르게 딕셔너리 내부에 없는 키로 접근해도 오류가 발생하지 않습니다. 다만 nil을 반환할 뿐. 
// removeValue(forKey:) : 특정 키에 해당하는 값 제거
var numberForName: [String: Int] = ["chulsoo": 200, "minji": 1, "max": 999]

print(numberForName["chulsoo"])	// 200
print(numberxForName["minji"])	// 1

numberForName["chulsoo"] = 150	// (2)
print(numberForName["chulsoo"])	// 150

numberForName["max"] = 999		// max라는 키로 999라는 값을 추가해줍니다.
print(numberForName["max"])		// 999

print(numberForName.removeValue(forKey: "yagom"))	// 100 (4)

// 위에서 yagom 키에 해당하는 값이 이미 삭제되었으므로 nil이 반환됩니다.
// 키에 해당하는 값이 없으면 기본값을 돌려주도록 할 수도 있습니다.
print(numberForName.removeValue(forKey: "yagom"))

// yagom 키에 해당하는 값이 없으면 기본으로 0이 반환됩니다.
print(numberForName["yagom", default: 0])	// 0