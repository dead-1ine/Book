//MARK: - 프로토콜 : 객체의 설계도
// 다른 객체지향 언어에서 인터페이스와 같다.

// ios는 특정 컨트롤에서 발생하는 각종 이벤트를 효율적으로 관리하기 위해 대리자(delegate)를 지정하여 이벤트 처리를 위임하고, 실제로 이벤트가 발생되면 위임된 대리자가 콜백 메소드를 호출해주는 델리게이트 패턴(Delegate Pattern)을 사용하는데, 이 패턴을 구현하기 위해 이용하는 것이 프로토콜이다.

// "프로토콜의 역할은 특정 기능이나 속성에 대한 설계도"

// 프로토콜은 구체적인 내용이 없는 프로퍼티나 메소드의 단순한 선언 형태로 구성되며, 구체적인 내용은 이 프로토콜을 이용하는 객체에서 담당한다. 중요한 것은 형식.

// 프로토콜에 선언된 프로퍼티나 메소드의 형식을 '명세'라고 부르고, 이 명세에 맞추어 실질적인 내용을 작성하는 것으ㄹ '프로토콜을 구현(Implement)한다'라고 한다.

// 프로토콜의 구현은 프로토콜을 상속받는 구조체나 클래스에서 담당한다.

//MARK: - 10.1 프로토콜의 정의
/*
    # 프로토콜의 구조
        protocol <프로토콜명> {
            <구현해야 할 프로퍼티 명세 1>
            <구현해야 할 프로퍼티 명세 2>
            ...
            <구현해야 할 메소드 명세 1>
            <구현해야 할 메소드 명세 2>
            ...
        }
 */

// 프로토콜을 구현한다는 것은 프로토콜에 선언된 명세에 따라 실질적으로 프로퍼티에 값을 할당하여 선언하거난 메소드의 내용을 작성하는 것을 의미한다
/*
    # 스위프트에서 구현할 수 있는 구현체들
        1. 구조체
        2. 클래스
        3. 열거형
        4. 익스텐션
 */

/* struct/class/enum/extension 객체형: 구현할 프로토콜명 {*/


//MARK: - 10.1.1 프로토콜 프로퍼티
// 프로퍼티에 선언되는 프로퍼티에는 초기값을 할당할 수 없다.
// 연산, 저장 프로퍼티인지 구분하지도 않는다.

protocol SomePropertyProtocol {
    var name: String { get set }
    var description: String { get }
}

// 실제로 내용을 선언한 것이 아니라, 이러이러한 종류의 프로퍼티가 선언될 것이라고 설명하는 의미이다.

// 프로퍼티의 명세에는 초기값을 할당하는 대신 읽기 전용/ 읽고 쓰기에 대한 여부를 get과 set 키워드로 표시해야 한다.

struct RubyMember: SomePropertyProtocol {
    var name = "홍길동"
    var description: String {
        return "Name: \(self.name)"
    }
}

// 프로토콜만 제대로 구현된다면 필요한 만큼 여분의 프로퍼티를 추가하여 사용할 수 있다.

//MARK: - 10.1.2 프로토콜 메소드
protocol SomeMethodProtocol {
    func execute(cmd: String)
    func showPort(p: Int) -> String
}

// ! 프로토콜은 구현해야 할 메소드에 대한 형식이자 명세서이며, 설계도라는 것을 염두에 두기 바란다.
// ! 메소드의 실질적인 내용 작성을 담당하는 것은 구현체, 즉 프로토콜을 구현하는 구조체나 클래스, 열거형 혹은 익스텐션의 역할이다.

struct RubyService: SomeMethodProtocol {
    func execute(cmd: String) {
        if cmd == "start" {
            print("실행합니다.")
        }
    }
    
    func showPort(p: Int) -> String {
        return "Port: \(p)"
    }
}

// 프로토콜의 일부를 구현하지 않고 누락하면 오류가 발생한다.
// 반대로 프로토콜에 정의되어 있지 않더라도 구현체에 임의로 메소드를 추가하는 것은 아무런 문제가 되지 않는다.

protocol NewMethodProtocol {
    mutating func execute(cmd command: String ,desc: String)
    func showPort(p: Int, memo desc: String) -> String
}

// 외부 매개변수명은 프로토콜을 그대로 따라야 하지만 내부 매개변수 명은 임의로 바꾸어 사용해도 된다.
struct RubyNewService: NewMethodProtocol {
    func execute(cmd command: String, desc: String) {
        if command == "start" {
            print("\(desc)를 실행합니다.")
        }
    }
    
    func showPort(p: Int, memo desc: String) -> String {
        return "Port: \(p), Memo: \(desc)"
    }
}

struct RubyNewService2: NewMethodProtocol {
    func execute(cmd comm: String, desc d: String) {
        if comm == "start" {
            print("\(d)를 실행합니다.")
        }
    }
    
    func showPort(p: Int, memo description: String) -> String {
        return "Port: \(p), Memo: \(description)"
    }
}

// 내부 매개변수의 경우에는 프로토콜을 그대로 따르지 않고 필요한 대로 변형하여 사용하는 것이 가능하다.
// 단, 어떤 경우에도 프로토콜에 정의도니 메소드명과 외부 파라미터명은 항상 그대로 따라야 한다.


//MARK: - 프로토콜에서의 mutating, static 사용

// 스위프트에서 구조체 내의 메소드가 프로퍼티를 변경하는 경우, 메소드 앞에 반드시 mutating 키워드를 붙여 이 메소드가 프로퍼티 값을 수정하는 메소드임을 표시하도록 강제하고 있습니다.

// 프로토콜에는 mutating이 없는데, 억지로 mutating 키워드를 붙여 메소드를 구현하면 컴파일러는 이를 인정하지 않으므로, 구현 대상이 누락되었다는 오류가 발생한다.

// 이런 면에서, 프로토콜은 자신을 구현하는 구조체가 마음대로 프로퍼티를 수정핮 ㅣ못하도록 통제할 수 있는 권한을 가지고 있다.

// 일반적으로 프로토콜의 메소드 선언에 mutating이 붙지 않는 것은 다음 두 가지 중 하나로 해석할 수 있다.

/*
    1. 구조체나 열거형 등 값 타입의 객체에서 내부 프로퍼티의 값을 변경하기를 원치 않을 때
    2. 주로 클래스를 대상으로 간주하고 작성된 프로토콜일 때
 */

// 프로토콜 메소드에 mutating 키워드가 있으면 이를 구현하는 구조체나 열거형에서도 mutating 키워드를 사용할 수 있다.
protocol MService {
    mutating func execute(cmd: String)
    func showPort(p: Int) -> String
}

struct RubyMService: MService {
    var paramCommand: String?
    
    mutating func execute(cmd: String) {
        self.paramCommand = cmd
        if cmd == "start" {
            print("실행")
        }
    }
    
    func showPort(p: Int) -> String {
        return "Port: \(p), now command: \(self.paramCommand!)"
    }
}

// MService 프로토콜을 구현하는 구조체지만, execute(cmd:) 메소드에 mutating 키워드가 붙어있지 않다.
// 실제 구현하는 쪽에서 프로퍼티의 변경이 없다면 굳이 붙이지 않고 생략해도 오류는 발생하지 않는다.
struct RubyMService2: MService {
    var paramCommand: String?
    
    func execute(cmd: String) {
        if cmd == "start" {
            print("실행")
        }
    }
    
    func showPort(p: Int) -> String {
        return "Port \(p), now command: \(self.paramCommand!)"
    }
}

// 클래스의 경우는 다르다.
// 클래스는 참조 타입의 객체이므로 메소드 내부에서 프로퍼티를 수정하더라도 mutating 키워드를 붙일 필요가 없다.
// mutating 키워드가 붙어있는 프로토콜 메소드를 구현할 때도 클래스에서는 프로퍼티의 수정 여부와 관계없이 mutating 키워드를 사용하지 않는다.
class RubyThread: MService {
    var paramCommand: String?
    
    func execute(cmd: String) {
        self.paramCommand = cmd
        
        if cmd == "start" {
            print("실행")
        }
    }
    
    func showPort(p: Int) -> String {
        return "Port : \(p), now command : \(self.paramCommand!)"
    }
}

// 타입 메소드나 타입 프로퍼티도 프로토콜에 정의할 수 있습니다. 프로토콜의 각 선언 앞에 static 키워드를 붙이면 된다.
// 클래스에서는 타입 메소드를 선언할 때 사용할 수 있는 또 다른 키워드인 class는 프로토콜에서 사용할 수 없다.
// 이유: 프로토콜은 구조체나 열거형, 그리고 클래스에 모두 사용할 수 있는 형식으로 정의되어야 하기 때문.

// 프로토콜에서 static 키워드로 선언되었더라도 실제로 클래스에서 구현할 때는 필요에 따라 static이나 class 키워드를 선택하여 사용할 수 있다.
// 물론 구조체나 열거형에서 구현할 때는 선택의 여지 없이 static 키워드를 붙여야 한다.

protocol SomeTypeProperty {
    static var defaultValue: String { get set }
    static func getDefaultValue() -> String
}

struct TypeStruct: SomeTypeProperty {
    static var defaultValue = "default"
    
    static func getDefaultValue() -> String {
        return defaultValue
    }
}

class ValueObject: SomeTypeProperty {
    static var defaultValue = "default"
    class func getDefaultValue() -> String {
        return defaultValue
    }
}

// class 키워드는 클래스에 국한된 반면 static 키워드는 구조체와 클래스, 그리고 열거형 등의 객체가 공통으로 사용하는 키워드이기 때문이다.
// 따라서 클래스에서 프로토콜을 구현할 때 필요에 따라 static 대신 class 키워드를 사용하는 것은 프로토콜 명세를 올바르게 구현하는 것을 간주된다.


//MARK: - 10.1.3 프로토콜과 초기화 메소드

// 기존 초기화 메소드와 같다
protocol SomeInitProtocol {
    init()
    init(cmd: String)
}

// ! 외부 매개변수명까지 완전히 일치해야 한다.
// 임의로 변경할 경우 프로토콜을 제대로 구현하지 않은 것으로 간주됨

// 클래스에서 초기화 메소드를 구현할 때에는 반드시 required 키워드를 붙여야 한다.

/*
    # 정리
        1. 구현되는 초기화 메소드의 이름과 매개변수명은 프로토콜의 명세에 작성된 것과 완전히 일치해야 함
        2. 프로토콜 명세에 선언된 초기화 메소드는 그것이 기본 제공되는 초기화 메소드일지라도 직접 구현해야 함
        3. 클래스에서 초기화 메소드를 구현할 때는 required 키워드를 붙여야 함
 */

// 위 기준에 따른 struct, class 구현
struct SInit: SomeInitProtocol {
    var cmd: String
    
    init() {
        self.cmd = "start"
    }
    
    init(cmd: String) {
        self.cmd = cmd
    }
}

class CInit: SomeInitProtocol {
    var cmd: String
    
    required init() {
        self.cmd = "start"
    }
    
    required init(cmd: String) {
        self.cmd = cmd
    }
}

// struct, class 모두 프로토콜에 구현된 초기화 메소드를 모두 구현해야 한다.
// 또한 클래스에는 초기화 메소드에 required 키워드까지 추가해야 한다.

// required 를 쓰는 이유
/*
    클래스는 상속과 프로토콜 구현이 동시에 가능한 객체이다.
    즉, 부모 클래스로부터 초기화 메소드, 메소드와 프로퍼티 등을 상속받으면서 동시에 프로토콜에 정의된 초기화 메소드, 프로퍼티나 메소드를 구현할 수 있다는 뜻이다.
    이때 부모 클래스로부터 물려받은 초기화 구문과 프로토콜로부터 구현해야 하는 초기화 메소드가 충돌하는 경우가 종종 생긴다.
 
    상속을 통해 초기화 메소드를 물려받았다 할지라도 구현해야 할 프로토콜 명세에 동일한 초기화 메소드가 선언되어 있다면, 이를 다시 구현해야 한다.
    이때 초기화 메소드에 required 키워드와 override 키워드를 모두 붙여줘야 한다.
 */
// init() 메소드를 가지는 프로토콜
protocol Init {
    init()
}

// init() 메소드를 가지는 부모 클래스
class Parent {
    init() {
    }
}

// 부모 클래스의 init() + 프로토콜의 init()
// 부모 클래스 입장에서 보면 자신이 물려준 init() 메소드가 Child 클래스에서 새롭게 정의된 셈이다.
// 이는 부모 클래스에 정의된 것과 동일한 형식으로 재정의된 것이므로 override 키워드를 붙여야 한다.
class Child: Parent, Init {
    override required init() {
        
    }
}

// 부모 클래스와 프로토콜 양쪽에서 같은 내용이 정의되어 있을 때 해당 클래스에서는 구현과 동시에 override 키워드를 붙여야 한다.
// 단, 일반 메소드나 연산 프로퍼티에 required 키워드를 붙이지 않는다.
// ! required 키워드는 초기화 메소드에만 붙인다.
//protocol Init {
//    func getValue()
//}
//
//class Parent {
//    func getValue() {
//    }
//}
//
//class Child: Parent, Init {
//    override func getValue() {
//    }
//}

// 단일 상속만 허용되는 클래스의 상속 개념과는 달리, 객체에서 구현할 수 있는 프로토콜의 개수에는 제한이 없다.
// 두 개 이상의 프로토콜을 구현하고자 할 때는 구현할 프로토콜들을 쉼표로 구분하여 나란히 작성한다.
struct MultiImplement: NewMethodProtocol, SomeInitProtocol {
    var cmd: String
    
    init() {
        self.cmd = "start"
    }
    
    init(cmd: String) {
        self.cmd = cmd
    }
    
    mutating func execute(cmd: String, desc: String) {
        self.cmd = cmd
        if cmd == "start" {
            print("시작")
        }
    }
    
    func showPort(p: Int, memo desc: String) -> String {
        return "Port : \(p), Memo: \(desc)"
    }
}

// 선언부에 클래스를 상속 받으려면, 프로토콜을 나열하기 전에 먼저 쓴다.
class BaseObject {
    var name: String = "홍길동"
}

//class MultiImplWIthInherit: BaseObject, SomeMethodProtocol, SomeInitProtocol {
//}


//MARK: - 10.2 타입으로서의 프로토콜
/*
    - 상수나 변수, 그리고 프로퍼이의 타입으로 사용할 수 있다
    - 함수, 메소드 또는 초기화 구문에서 매개변수 타입이나 반환 타입으로 프로토콜을 사용할 수 있다
    - 배열이나 사전, 혹은 다른 컨테이너의 타입으로 사용할 수 있다
 */

// 프로토콜 타입으로 정의된 변수나 상수에 할당된 객체는 프로토콜 이외에 구현체에서 추가한 프로퍼티나 메소드들을 컴파일러로부터 은닉해준다.
protocol Wheel {
    func spin()
    func hold()
}

class Bicycle: Wheel {
    var moveState = false
    
    func spin() {
        self.pedal()
    }
    
    func hold() {
        self.pullBreak()
    }
    
    func pedal() {
        self.moveState = true
    }
    
    func pullBreak() {
        self.moveState = false
    }
}

// 일반적인 경우의 선언
let trans = Bicycle()

trans.moveState
trans.pedal()
trans.pullBreak()
trans.spin()
trans.hold()

// 클래스가 Wheel 프로토콜을 구현하고 있으므로 상수 trans1의 타입 어노테이션에 프로토콜을 사용하여 다음과 같이 할당 가능
let trans1: Wheel = Bicycle()

// 이렇게 선언하면, trans1이 사용할 수 있는 메소드는 두가지 뿐
trans1.spin()
trans1.hold()

// trans1 상수가 Wheel 타입이기 때문에, 나머지 프로퍼티나 메소드는 컴파일러로부터 은닉된다.
// trans1 상수는 여기에 할당된 인스턴스가 무엇이는 Wheel 프로토콜을 구현한 것이기만 하면 된다.

// 이처럼 객체 본래 타입이 아니라 프로토콜 타입으로 선언한 변수나 상수에 할당받아 사용하는 것은 특정 프로토콜을 구현한 모든 클래스나 구조체를 변수나 상수에 할당할 수 있다는 장점이 있다.

protocol A {
    func doA()
}

protocol B {
    func doB()
}

class Impl: A, B {
    func doA() {
    }
    func doB() {
    }
    func desc() -> String {
        return "Class instance method"
    }
}

// ipl 변수의 타입으로 사용된 A & B는 두 프로토콜 모두를 포함하는 객체 타입이라는 뜻이다.
var ipl: A & B = Impl()
ipl.doA()
ipl.doB()

// 정리: 타입으로 프로토콜이 선언되면, 해당 프로토콜의 메소드와 프로퍼티만 접근할 수 있다.


//MARK: - 10.3 델리게이션







































































































































