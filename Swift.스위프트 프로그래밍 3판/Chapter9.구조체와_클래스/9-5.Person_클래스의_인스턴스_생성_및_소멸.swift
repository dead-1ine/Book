// deinit : 인스턴스가 소멸되기 직전에 호출되는 메서드
// 클래스당 하나만 구현할 수 있으며, 매개변수와 반환 값을 가질 수 없다.
class Person {
    var height: Float = 0.0
    var weight: Float = 0.0

    deinit {
        print("Person 클래스의 인스턴스가 소멸됩니다.")
    }
}

var yang: Person? = Person()
yang = nil  // Person 클래스의 인스턴스가 소멸됩니다.
