// doSomething 함수와 doAnotherThing 함수를 모두 처리하고 싶을 경우

// 명령어 프로그래밍 패러다임
func doSomething() {
	print("do Something")
}

func doAnotherThing() {
	print("do Another Thing")
}

func excuteAll() {
	doSomething()
	doAnotherThing()
}

excuteAll()
//////////////////////////////

// 두 수의 합을 구하고 싶은 경우

// 명령형 프로그래밍 패러다임
func sum(first: Int, second: Int) -> Int {
	return first + second
}

sum(first: 10, second: 5)

