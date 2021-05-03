var names: Array<String> = ["yang", "test", "gogo", "yagom"]

print(names[2])			// younghee
names[2] = "jenny"		// (2)
print(names[2])			// jenny
print(names[4])			// 인덱스의 범위를 벗어났기 때문에 오류가 발생합니다.
names[4] = "elsa"		// 인덱스의 범위를 벗어났기 때문에 오류가 발생합니다.
names.append(contentsOf: ["john", "max"])		// 맨 마지막에 john과 max가 추가됩니다.
names.insert("happy", at: 2)	// 인덱스 2에 삽입됩니다.
names.insert(contentsOf: ["jihee", "minsoo"], at: 5)

print(names[4])			// yagom
print(names.index(of: "yagom"))		// 0
print(names.index(of: "christal"))		// nil
print(names.first)						// yagom
print(names.last)						// max

let firstItem: String = names.removeFirst()	// (7)
let lastItem: String = names.removeLast()				// (8)
let indexZeroItem: String = names.remove(at: 0)				// (9)

print(firstItem)					// yagom
print(lastItem)						// max
print(indexZeroItem)				// chulsoo
print(names[1 ... 3])				// ["jenny", "yagom", "jihee"]