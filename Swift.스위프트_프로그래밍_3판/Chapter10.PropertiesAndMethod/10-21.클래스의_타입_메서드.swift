// 메서드 앞에 static 키워드를 사용하여 타입 메서드임을 명시함
// 클래스의 타입 메서드는 static 키워드와 class 키워드를 사용할 수 있는데,
// static으로 정의하면 상속 후 메서드 재정의가 불가능하고 class로 정의하면 상속 후 메서드 재정의가 가능합니다. 

// 타입 메서드는 인스턴스 메서드와는 달리 self 프로퍼티가 타입 그 자체를 가리킨다는 점이 다르다.
// 인스턴스 메서드에서는 self가 인스턴스를 가리킨다면 타입 메서드의 self는 타입을 가리킨다.

class AClass {
    static func staticTypeMethod() {
        print("AClass staticTypeMethod")
    }

    class func classTypeMethod() {
        print("AClass classTypeMethod")
    }
}

class BClass: AClass {
    /*
    // 오류 발생 재정의 불가
    override static func staticTypeMethod() {
    }
    */
    override class func classTypeMethod() {
        print("BClass classTypeMethod")
    }
}

AClass.staticTypeMethod() 
AClass.classTypeMethod()
BClass.classTypeMethod()


