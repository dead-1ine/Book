// 함수형 프로그래밍 패러다임
func doSomething() {
	print("do SomeThing")
}

func doAnotherThing() {
	print("do another thing")
}

func excute(tasks: [()-> Void]) {
	for task in tasks {
		task()
	}
}

excute(tasks: [doSomething, doAnotherThing])

