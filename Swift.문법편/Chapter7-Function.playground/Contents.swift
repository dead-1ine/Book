/*:
 # Function
 */
// 함수는 프로그램의 실행 과정 중에서 독립적으로 처리될 수 있는 부분을 분리하여 구조화한 객체를 의미합니다.
// 즉, 외부에 의존하는 부분 없이 툭 떼어 분리할 수 있는 실행 단위를 일종의 캡슐처럼 포장해놓은 것

//MARK: - 함수의 기본 개념
/*
 함수는 일반 함수와 사용자 정의 함수로 나뉜다.
 1. 일반 함수는 print()와 같은 것
 2. 사용자 정의 함수는 우리가 원하는 기능을 직접 만든 것
 */
/*:
 1. 동일한 코드가 여러 곳에서 사용될 때 이를 함수화하면 재작성할 필요 없이 함수 호출만으로 처리할 수 있습니다.
 2. 전체 프로세스를 하나의 소스코드에서 연속적으로 작성하는 것보다 기능 단위로 함수화하면가독성이 좋아지고, 코드와 로직을 이해하기 쉽습니다.
 3. 비즈니스 로직을 변경해야 할 때 함수 내부만 수정하면 되므로 유지보수가 용이합니다.
 */
//MARK: - 사용자 정의 함수
/*:
 func 함수이름(매개변수1: 타입, 매개변수2: 타입, ...) -> 반환타입 {
     실행 내용
     return 반환값
 }
 ---
 
 func 함수명( ) -> 반환타입 {
    실행내용
    return 반환값
 ---
*/

// 함수의 첫글자는 반드시 영어 또는 _ 로 시작.
func printHello() {
    print("안녕하세요.")
}
func sayHello() -> String {
    let returnValue = "Hello"
    return returnValue
}
func printHelloWithName(name: String) {
    print("\(name)님, 안녕하세요.")
}
func sayHelloWithName(name: String) -> String {
    let returnValue = "\(name)님, 안녕하세요."
    return returnValue
}

func hello(name: String?) {
    guard let _name = name else {
        return
    }
    
    print("\(_name)님, 안녕하세요.")
}

//MARK: - 함수의 호출
printHello()

let inputName = "홍길동"
printHelloWithName(name: inputName)

// 실제값은 리터럴이라고 함. (ex: 1, 2, "TEST")
printHelloWithName(name: "홍길동")

// amount, numberOfTimes는 매개변수명이자 동시에 인자 레이블로 간주됨
func incrementBy(amount: Int, numberOfTimes: Int) {
    var count = 0
    count = amount * numberOfTimes
}

incrementBy(amount: 5, numberOfTimes: 2)

func times(x: Int, y: Int) -> Int {
    return (x * y)
}
times(x: 5, y: 10)  // 함수의 이름만으로 호출한 구문
times(x:y:)(5, 10)  // 함수의 식별자를 사용하여 호출한 구문

//MARK: - 함수의 반환값과 튜플
// 함수는 반드시 하나의 값만을 반환해야 합니다. 여러 개의 값을 반환해야 한다면, 이 값들을 집단 자료형에 담아 반환해야 합니다. 이때 사용할 수 있는 것은 딕셔너리, 배열, 튜플, 또는 구조체나 클래스가 있습니다.

// 튜플을 사용하여 값을 반환할 때는 함수의 반환 타입을 튜플 형태로 정의해야 한다.
func getIndvINfo() -> (Int, String) {
    let height = 180
    let name = "DeadLine"
    
    return (height, name)
}

// 세 가지 이상도 마찬가지
func getUserInfo() -> (Int, Character, String) {
    
    // 데이터 타입이 String으로 추론되는 것을 방지하기 위해 타입 어노테이션 선언
    let gender: Character = "M"
    let height = 180
    let name = "DeadLine"
    
    return (height, gender, name)
}


// 튜플을 반환하는 변수를 받아 사용하는 방법
// 튜플을 반환하는 함수의 반환값을 대입 받은 변수나 상수는 튜플의 인덱스를 이용하여 튜플 내부의 요소를 사용할 수 있습니다.
var uInfo = getUserInfo()
uInfo.0 // 180
uInfo.1 // "M"
uInfo.2 // "DeadLine"

// 일부 필요하지 않은 튜플 항목은 앞에서 배운 대로 언더바를 이용하면 변수 할당 없이 건너뛰기 가능
var (height, _, name) = getUserInfo()

//MARK: - 튜플인자 사용하기
// 결과값을 바인딩하지 않아도 특정 변수명으로 바인딩된 튜플 인자를 사용할 수 있다
func getUserInfo1() -> (h: Int, g: Character, n: String) {
    
    let gender: Character = "M"
    let height = 180
    let name = "DeadLine"
    
    return (height, gender, name)
}

var result = getUserInfo1()

// 변수에 자동으로 바인딩
result.h // 180
result.g // "M"
result.n // "DeadLine"


//MARK: - TypeAlias
// 새로운 축약형 타입 정의
// 이름이 길거나 사용하기 복잡한 타입 표현을 새로운 타입명으로 정의해주는 문법
// typealias <새로운 타입이름> = <타입 표현>

typealias infoResult = (Int, Character, String)

func getUserINfo() -> infoResult {
    let gender: Character = "M"
    let height = 180
    let name = "DeadLine"
    
    return (height, gender, name)
}

let info = getUserINfo()

info.0 // 180
info.1 // "M"
info.2 // "DeadLine"

// 튜플 활용 가능
//typealias infoResult = (h: Int, g: Character, n: String)


//MARK: - 매개변수
// 내부 매개변수명, 외부 매개변수명

// 외부 매개변수 : 함수를 호출할 때 인자값에 대한 레이블 역할을 하며, 동시에 함수의 식별자 일부로 사용되기도 한다.
// 내부 매개변수 : 입력된 인자값을 함수 내부에서 참조하기 위해 사용하는 변수

// 외부 매개변수를 사용하지 않은 일반 함수
// 함수명: printHello(name:msg:)
func printHello(name: String, msg: String) {
    print("\(name)님, \(msg)")
}

printHello(name: "홍길동", msg: "안녕하세요")

// 외부 매개변수 지정
// 함수명: printHello(to:welcomeMessage:)
func printHello(to name: String, welcomeMessage msg: String) {
    print("\(name)님, \(msg)")
}

printHello(to: "홍길동", welcomeMessage: "안녕하세요.")


// 함수 호출 시 매개변수 생략 가능 (_)

func printHello(_ name: String, _ msg: String) {
    print("\(name)님, \(msg)")
}

// 언더바(_)는 "문법은 적용하되 사용하지 않는다, 생략하겠다."라는 의미

printHello("홍길동", "안녕")

// 매개변수 일부만 생략 가능
// 함수명 printHello(to:_:)
func printHello(to name: String, _ msg: String) {
    print("\(name)님, \(msg)")
}

printHello(to: "홍길동", "안녕하세요.")


//MARK: - 가변 인자
// 인자값의 입력 개수를 제한하지 않도록 함
// func 함수이름(매개변수 명: 매개변수 타입...)
// 입력된 인자값을 배열로 처리하며, 함수의 블록 내에서 for~in구문을 사용할 수 이싿.

// 개수의 제한 없이 점수를 입력받아 평균값을 산출하는 함수
func avg(score: Int...) -> Double {
    var total = 0
    for r in score {
        total += r
    }
    return (Double(total) / Double(score.count))
}

print(avg(score: 10,20,30,40))

// 가변 인자가 아니면 같은 결과를 얻기 위해 복잡한 과정을 거칠 수 도 있다.


//MARK: - 기본값을 갖는 매개변수
// 함수를 호출할 때 반드시 입력해야할 값이 아니라면 인자값을 생략할 수 있도록, 함수 정의 시 매개변수에 기본값을 지정할 수 있는 문법
// func 함수이름(매개변수: 타입 = 기본값) {
//      실행 내용
// }

// 이렇게 기본값이 입력된 매개변수는 인자값을 생략할 수 있다.

// 기본값이 지정된 함수
func echo(message: String, _ newline: Bool = true) {
    if newline == true {
        print(message, true)
    } else {
        print(message, false)
    }
}

echo(message: "Hello", false)

//MARK: - 매개변수의 수정
// 매개상수라는 말이 적합하다.
// base는 상수이므로 1을 더할 수 없다. - 오류
//func incrementBy(base: Int) -> Int {
//    base += 1
//    return base
//}

func incrementBy(base: Int) -> Int {
    var base = base
    base += 1
    return base
}

func descAge(name: String, _ paramAge: Int) -> String {
    var name = name
    var paramAge = paramAge
    
    // 입력된 값을 변경
    name = name + "님"
    paramAge += 1
    return "\(name)의 내년 나이는 \(paramAge)세 입니다."
}

//MARK: - InOut 매개변수
// 기본적으로 함수 내부에서 발생하는 사건은 함수 외부에 영향을 줄 수 없다.
var cnt = 30

func autoIncrement(value: Int) -> Int {
    var value = value
    value += 1
    
    return value
}

// 외부에서 입력한 인자값이 직접 함수 내부로 전달되는 것이 아니라 그 값이 복사된 다음 전달되기 때문
print(autoIncrement(value: cnt)) // 함수 내부의 value 변수값 : 31
print(cnt)  // 외부에서 정의된 cnt 변수값 : 30

// inout을 이용해 함수 내부에서 수정된 인자값을 함수 외부까지 전달할 수 있다.
func foo(paramCount: inout Int) -> Int {
    paramCount += 1
    return paramCount
}
/*
 inout 키워드가 붙은 매개변수는 인자값이 전달될 때 새로운 내부 상수를 만들어 복사하는 대신 인자값 자체를 함수 내부로 전달합니다. 함수 내부에서 사용하는 매개변수명이 외부의 변수명과 다를지라도 마찬가지이다.
 inout 키워드가 붙은 매개변수는 인자값으로 사용된 변수와 동일한 객체입니다. 단순히 값만 똑같은 복사 변수와는 다르다.

 inout 키워드의 정확한 의미는 값 자체를 전달하는 것이 아니라 값이 저장된 메모리 주소를 전달한다는 의미. ( C의 포인터와 유사 )
 인자값을 전달할 때 값이 아닌 주소를 전달하므로, inout 매개변수에 들어갈 인자값에는 주소 추출 연산자인 &를 붙여주어야 한다.
*/
var count = 30
// 함수를 호출할 때 인자값으로 사용된 변수 앞에 &를 붙이면 값이 아닌 주소가 전달되며, 이 주소를 읽기 위해 함수에서 inout 키워드가 추가된다.
print(foo(paramCount: &count)) // 함수 내부의 paramCount : 31
print(count) // 외부에서 정의된 count변수값 : 31

// 함수는 전달받은 메모리 주소를 통해 외부의 변수에 직접 접근할 수 있고, 값을 변경하면 그 결과가 외부 변수에도 바로 반영된다.
// 이처럼 주소를 전달하는 것을 '참조(Reference)에 의한 전달'이라고 하며, 기존처럼 값을 복사하여 전달하는 것을 '값에 의한 전달'이라고 한다.

// 함수 내부에서 원본 객체에 직접 값을 수정할 수 있어야 하므로 상수는 전달 대상이 될 수 없습니다. 같은 이유에서 리터럴 역시 전달 대상이 될 수 없습니다.

/*
 1. 상수 전달 불가
 2. 리터럴 전달 불가
 3. 변수만 전달 가능
 */

//MARK: - 변수의 생존 범위와 생명 주기
// 변수와 상수는 정의된 위치에 따라 사용할 수 있고, 생존할 수 있는 일정 영역을 부여받습니다.
// 이를 변수의 생존 범위, 또는 스코프(Scope)라고 합니다.

// 지역변수는 선언된 블록이 실행되면서 생겨났다가 실행 블록이 끝나면 제거됩니다. (변수의 생명주기)

do {
    do {
        var ccnt = 3
        ccnt += 1
        print(ccnt)
    }
    
//    ccnt += 1
//    print(ccnt) // 오류
}

// do블록은 단독으로 사용되었을 때 단순히 실행 블록을 구분하는 역할을 합니다.

func foo() -> Int {
    count += 1
    return count
}

func foo(count: Int) -> Int {
    var count = count
    count += 1
    return count
}

print(foo(count: count))
print(count)

/*
 1. 함수 내부에서 정의된 변수를 찾음
 2. 함수 외부에서 정의된 변수를 찾음
 3. 글로벌 범위에서 정의된 변수를 찾음
 4. import된 라이브러리 범위
 */


//MARK: - 일급 객체로서의 함수
/*
 1. 객체가 런타임에도 생성이 가능해야 한다.
 2. 인자값으로 객체를 전달할 수 있어야 한다.
 3. 반환값으로 객체를 사용할수 있어야 한다.
 4. 변수나 데이터 구조 안에 저장할 수 있어야 한다.
 5. 할당에 사용된 이름과 관계없이 고유한 구별이 가능해야 한다.
 */

// 함수가 일급 객체로 대우받으면 런타임에도 함수의 생성이 가능하고, 매개변수나 반환값으로 함수를 전달할 수 있으며, 함수를 변수나 데이터 구조안에 저잫ㅇ할 수 있을 뿐만 아니라 함수의 이름과 관게없이 고유한 구별이 가능합니다.

//MARK: -- 일급 함수의 특성 1. 변수나 상수에 함수를 대입할 수 있음

// 정수를 입력받는 함수
func foo(base: Int) -> String {
    return "결과값은 \(base + 1)입니다."
}
let fn1 = foo(base: 5)
// 결과값은 6입니다.

// 함수 자체를 변수에 할당하면 변수도 함수처럼 인자값을 받아 실행이 가능하고, 값을 반환할 수도 있습니다.

func foo(num: Int) -> Int {
    return num
}

let fn2 = foo(num:)
fn2(5)

// 함수에 결과값을 대입할때는 함수가 실행된다.
let fn3 = foo(base: 5)


// 함수를 대입하기 위해 알아야 할 것 '타입'
// 변수에 함수를 대입하면 합수 타입이 된다.

// (인자타입1, 인자타입2...) -> 반환타입

func boo(age: Int) -> String {
    return "TEST"
}
// (Int) -> String

// 상수에 대입
let fn: (Int) -> String = boo

func boo(age: Int, name: String) -> String {
    return "TEST"
}

// (Int, String) -> String

// 둘 중 아무거나 상yㅇ해도 상관 없음 하지만 아래쪽이 더 명확한 표현
let s: (Int, String) -> String = boo
// let s: (Int, String) -> String = boo(age:name:)

// boo - 함수의 이름
// boo(age:name:)- 함수의 식별자

/*
 : 둘 중 어느 함수를 가리키는 것인지 명확하지 않으므로 오류가 발생
func boo(age: Int) -> String {
    return "TEST"
}
func boo(age: Int, name: String) -> String {
    return "TEST"
}
 
 let t = boo // (x)
*/


// 해결방법 1) 타입 어노테이션을 통해 입력받을 함수의 타입을 지정
let t1: (Int, String) -> String = boo

// 해결방법 2) 함수의 식별값을 통해 입력받을 정확한 함수를 지정
let t2 = boo(age:name:)

// 함수의 식별자를 이용하여 정확한 함수 지정을 권장.

let fn03 = boo(age:name:)


// 튜플을 반환값으로 사용하는 함수
func foo(age: Int, name: String) -> (String, Int) {
    return (name, age)
}
// 함수타입 : (Int, String) -> (String, Int)

// 인자값이 없는 경우
func foo() -> String {
    return "EMPTY"
}
// () -> String

func boo(base: Int) {
    print("TEST")
}
// (Int) -> ()

// 반환값, 인자값이 모두 없는 경우
func too() {
    print("TEST")
}
// () -> ()


//MARK: - 일급 함수의 특성 2. 함수의 반환 타입으로 함수를 사용할 수 있음

// 함수가 함수를 반환
func desc() -> String {
    return "this is desc()"
}

func pass() -> String {
    return desc()
}

let p = pass()

//MARK: - 반환타입 표현해석

func plus(a: Int, b: Int) -> Int {
    return a + b
}

func minus(a: Int, b: Int) -> Int {
    return a - b
}

func time(a: Int, b: Int) -> Int {
    return a * b
}

func divide(a: Int, b: Int) -> Int {
    guard b != 0 else {
        return 0
    }
    return a / b
}

func calc(_ operand: String) -> (Int, Int) -> Int {
    
    switch operand {
        case "+":
            return plus
        case "-":
            return minus
        case "*":
            return time
        case "/":
            return divide
        default:
            return plus
    }
}

let c = calc("+")
c(3,4) // plus(3, 4) = 7

// 이렇게도 표현 가능(하지만 가독성을 이유로 위와 같이 표현 권장)
calc("+")(3,4)

//MARK: - 일급함수의 특성 3. 함수의 인자값으로 함수를 사용할 수 있음
// 함수를 인자값으로 사용할 수 있다.
// 함수를 인자값으로 전달할 떄 그 함수는 하나의 타입이 됩니다. 따라서 함수를 입력받는 인자값은 함수 타입으로 정의되어야 합니다.

// 함수를 인자값으로 전달하는 예제
func incr(param: Int) -> Int {
    return param + 1
}

// function fn에 incr 함수를 받을 수 있도록 같은 타입으로 만듬
func broker(base: Int, function fn: (Int) -> Int) -> Int {
    return fn(base)
}

broker(base: 3, function: incr) // 4

// 보통 이런 식으로 중개 역할을 하는 함수 : 브로커(Broker)
// 개발자들이 흔히 매직 코드라고 부르는 마법같은 코드를 작성할 때 자주 응용함

// 콜백함수를 사용하는 예제
func successThrough() {
    print("연산 처리가 성공했습니다.")
}

func failThrough() {
    print("처리 과정에 오류가 발생하였습니다.")
}

func divide(base: Int, success sCallBack: () -> Void, fail fCallBack: () -> Void) -> Int {
    
    // 입력값에 0이 입력되는 것을 방지
    guard base != 0 else {
        // fCallBack 매개변수에 대입된 함수를 실행한다
        fCallBack() // 실패 함수를 실행
        return 0
    }
    
    // return구문과 성공 함수를 실행하는 과정 사이에 발생할 수 있는 미묘한 타이밍 차이를 해결하기 위해 사용 defer
    // 함수나 메소드에서 코드의 흐름과 상관없이 가장 마지막에 실행되는 블록(지연 블록)
    // 항상 함수의 종료 직전에 실행되기에, 종료 시점에 맞추어 처리해야 할 구문이 있다면 우리는 어디에 작성해야 할지 고민하지 않고 defer블록에 넣어두기만 하면 됩니다.
    defer {
        sCallBack() // 성공 함수를 실행
    }
    return 100 / base
}

// 함수를 호출하는 부분으로, 연산에 성공하면 success, 실패하면 fail에 대입된 함수를 실행한다는 의미
divide(base: 30, success: successThrough, fail: failThrough)


/*: defer
 DEFINITION: 주로 함수가 연산을 처리하는 과정에 영향을 끼치지 않으면서 실행해야 할 다른 내용이 있을 때 사용하거나, 함수를 종료하기 직전에 정리해야 하는 변수나 상수값들을 처리하는 용도로 사용됩니다.
 다시말해, 함수를 종료하기 전에 처리해야 하는 변수나 상수들 중에서 처리 시점이 모두 달라서 적절한 처리 시점을 잡기 어려울 때 defer 구문을 통해 처리하면 된다는 뜻
 1. defer 블록은 작성된 위치와 순서에 상관없이 함수가 종료되기 직전에 실행된다.
 2. defer 블록을 읽기 전에 함수의 실행이 종료될 경우 defer 블록은 실행되지 않는다.
 3. 하나의 함수나 메소드 내에서 defer 블록을 여러 번 사용할 수 있다. 이때에는 가장 마지막에 작성된 defer블록부터 역순으로 실행된다.
 4. defer 블록을 중첩해서 사용할 수 있다. 이때에는 바깥쪽 defer 블록부터 실행되며 가장 안쪽에 있는 defer 블록은 가장 마지막에 실행된다.
 */
// 함수를 인자로 넘기는 가장 큰 목적은 함수 내부의 코드를 건드리지 않고도 외부에서 실행 흐름을 추가하기 위함입니다
// 결과적으로 함수의 재사용성이 높아진다.

// 재사용하지 않는 코드를 굳이 함수로 작성해야 한다는 것은 매우 비능률적이다.
// 이런 문제를 해결하고자 많은 함수형 언어세너는 익명 함수를 지원합니다.
// 익명함수는 쉽게 생각해서 일회용 함수라고 생각하면 됩니다. 함수의 형태를 가지지만 이름이 부여되지 않으며, 일회용이기 때문에 여러 가지 간편한 작성 형식을 따른다는 특성이 있다.

// 이를 클로저(Closure)라고 부른다.
// 클로저 예제
divide(base: 30,
       success: {
        () -> Void in
        print("연산 처리가 성공했습니다.")
       }, fail: {
        () -> Void in
        print("처리 과정에서 오류가 발생하였습니다.")
       }
)

// 함수 자체를 인자로 넘길 수 있다는 특성의 장점
/*
 1. 메소드를 검색하는 과정이 불필요
 2. 함수를 주고받을 수 있으므로 기존 함수를 데코레이션하는 문법 구현 가능
 */

//MARK: - 함수의 중첩 (중첩함수{Nested Funciton})
// 함수의 중첩 수는 제한이 없다.
// 내부 함수의 생명 주기(Life Cycle)
// 내부 함수는 일반저긍로 외부 함수를 거치지 않으면 접근할 수 없다. (함수의 은닉성)

// 외부 함수
func outer(base: Int) -> String {
    // 내부 함수
    func inner(inc: Int) -> String {
        return "\(inc)를 반환합니다."
    }
    let result = inner(inc: base + 1)
    return result
}
outer(base: 3)
// "4를 반환합니다."

// 내부 함수 반환 예제

func outer(param: Int) -> (Int) -> String {
    
    // 내부 함수
    func inner(inc: Int) -> String {
        return "\(inc)를 리턴합니다"
    }
    
    return inner
}

let fn11 = outer(param: 3) // outer()가 실행되고, 그 결과로 inner가 대입됩니다.
// 외부 함수에서 내부 함수를 반환하게 되면 외부 함수가 종료되더라도 내부 함수의 생명이 유지된다.
let fn21 = fn11(30)   // inner(inc: 30)과 동일합니다.

// 내부 함수에 외부 함수의 지역 상수, 또느 지역 변수가 참조 예제
func basic(param: Int) -> (Int) -> Int {
    // 여기부터
    let value = param + 20
    
    func append(add: Int) -> Int {
        return value + add
    } // 여기까지 클로저의 범위
    return append
}

let result1 = basic(param: 10)

// 실행되는 시점에서 value 상수가 존재하지 않는다.
result1(10)

// append 함수가 클로저를 갖기 때문.

























