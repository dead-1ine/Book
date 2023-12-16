var numbers: [Int] = [3, 2342, 6, 3252]

numbersLoop: for num in numbers {
	if num > 5 || num < 1 {
		continue numbersLoop
	}

	var count: Int = 0

	printLoop: while true {

		print(num)
		count += 1

		if count == num {
			break printLoop
		}
	}

removeLoop: while true {
		if numbers.first != num {
			break numbersLoop
		}
		numbers.removeFirst()
	}
}


