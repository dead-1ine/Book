func addThree(_ num: Int) -> Int {
	return num + 3
}

Optional(2).map(addThree) // Optional(5)

var value: Int? = 2
value.map{ $0 + 3 } // Optional(5)

value = nil
value.map{ $0 + 3 } // nil(== Optional<Int>.none)

