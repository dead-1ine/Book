func checkOptinalValue(value optionalValue: Any?) {
	switch optionalValue {
	case .none:
		print("This Optional variable is nil")
	case .some(let value):
		print("Value is \(value)")
	}
}

var myName: String? = "Yang"
checkOptionalValue(value: myName)

myName = nil
checkOptionalValue(value: myName)
