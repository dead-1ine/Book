let numbers: [Int?] = [2, nil, -4, nil, 100]

for number in numbers {
	switch number {
	case .some(let value) where value < 0:
		print("Negative value!! \(value)")
	case .some(let value) where value > 10:
		print("Large Value!! \(value)")

	case .some(let value):
		print("Value \(value)")

	case .none:
		print("nil")
	}
}

