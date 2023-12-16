/*
	세트에 요소를 추가하고 싶다면 
	insert(_:)
	
	요소를 삭제하고 싶다면
	remove(_:)
*/

var names: Set<String> = ["yagom", "chulsoo", "younghee", "yagom"]

print(names.count)			// 3
names.insert("jenny")		// (2)
print(names.count)			// 4

print(names.remove("chulsoo"))	// chulsoo (3)
print(names.remove("john"))		// nil