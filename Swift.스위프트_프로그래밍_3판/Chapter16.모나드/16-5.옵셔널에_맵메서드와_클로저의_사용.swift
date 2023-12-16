var value: Int? = 2
value.map{ $0 + 3 } // Optional(5)

value = nil
value.map{ $0 + 3 } // nil(== Optional<Int>.none)
