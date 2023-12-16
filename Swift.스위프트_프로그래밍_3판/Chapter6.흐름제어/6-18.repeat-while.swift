var names: [String] = ["John", "Jenny", "Joe", "Yang"]

repeat {
	print("Good bye \(names.removeFirst())")
		// removeFirst()는 요소를 삭제함과 동시에 삭제한 요소를 반환
} while names.isEmpty == false


