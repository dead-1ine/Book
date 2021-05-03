class SomeClass {
	var someProperty: Any = 1
		func someMethod() {
			// some task...
		}
}

let myInstance: SomeClass = SomeClass()
/* SomeClass라는 이름의 클래스의 이니셜라이저를 호출하여
	myInstance라는 이름의 상수에 할당합니다.
	클래스의 이니셜라이저를 통해 메모리에 할당되고 초기화한 객체를 우리는 인스턴스라고 부릅니다.*/

myInstance.someProperty = 100	// 인스턴스의 프로퍼티에 값을 할당할 수도 있고
print(myInstance.someProperty)	// 값을 가져올 수도 있습니다.

myInstance.someMethod() // 인서튼서의 메서드를 호출하여 작업을 수행할 수 있도록 할 수 있다.
