// 언어 차원에서프로그램의 안정성을 높이기 위해 사용하는 개념
// 옵셔널의 개념: 'nil'을 사용할 수 있는 타입과 사용할 수 없는 타입을 구분하고 ,사용할 수 있는 타입을 가리켜 옵셔널 타입이라고 부른다.

let v = Int("123")
type(of: v)

// 옵셔널 타입의 선언
// 옵셔널 타입은 선언하면 자동으로 nil로 초기화된다.
var optInt: Int?

//MARK: - 옵셔널 값 처리
//extension Int {
//    public init?(_ text: String, radix: Int = default)
//}
// 옵셔널 타입은 연산을 지원하지 않는다.

//MARK: - 옵셔널 언래핑(Optional Unwrapping)
/*
 옵셔널 해제 방법
    1. 명시적 해제
            강제 해제
            비강제 해제
 
    2. 묵시적 해제
            컴파일러에 의한 자동 해제
            !연산자를 사용한 자동 해제
 */

// 옵셔널 강제 해제
var optInteger: Int? = 3

print("옵셔널 자체의 값: \(optInteger)")
print("!로 강제 해제한 값: \(optInteger!)")

// 강제 해제 시 옵셔널 값이 nil이라면 오류가 발생
var str = "123"
var intFromStr = Int(str)

// 안전한 옵셔널 해제
if intFromStr != nil {
    print("값이 변환되었습니다. 변환된 값은 \(intFromStr!)입니다.")
} else {
    print("값 변환에 실패하였습니다.")
}

//MARK: - 옵셔널 바인딩(Optional Binding)
// if구문내에서 조건식 대신 옵셔널 값을 일반 변수나 상수에 할당하는 구문을 사용하는 방식
// 조건문 내에서 일반 상수에 옵셔널 값을 대입하는 방식

if let intFromstr = Int(str) {
    print("값이 변환되었습니다. 변환된 값은 \(intFromStr)입니다.")
} else {
    print("값 변환에 실패하였습니다.")
}

func intStr(str: String) {
    
    guard let intFromStr = Int(str) else {
        print("값 변환에 실패하였습니다.")
        return
    }
    
    print("값이 변환되었습니다. 변환된 값은 \(intFromStr)입니다.")
}
// 절대 nil이 들어가지 않을 것이라는 보장이 있을 때만 강제 해제 연산자를 사용할것

/*
 1. 딕셔너리에 키로 접근하면 그 결과값은 옵셔널 타입으로 반환됩니다.
 2. 딕셔너리에 키로 사용될 수 있는 값은 HashTable 프로토콜이 구현된 모든 자료형입니다.
 3. 딕셔너리에서 값을 읽을 때에는 존재하지 않는 키를 사용할 가능성이 있습니다.
 4. 이 경우 딕셔너리는 주어진 키에 값이 비어있거나 입력된 키가 아예 없다는 것을 표현하기 위해 nil을 반환해야 합니다.
*/
var capital = ["KR": "SEOUL", "EN": "LONDON", "FR": "PARIS"]

print(capital["KR"])
print(capital["KR"]!)

// 위 코드를 보완
if (capital["KR"] != nil) {
    print(capital["KR"]!)
}
// 또는
if let val = capital["KR"] {
    print(val)
}

// **옵셔널 타입에서 !연산자를 사용할 때는 반드시 nil 점검을 해주어야 오류를 미연에 방지할 수 있다.

//MARK: - 컴파일러에 의한 옵셔널 자동 해제
// 명시적으로 강제 해제를 하지 않아도 컴파일러에서 자동으로 옵셔널을 해제해 주는 경우가 있다.
let optInt1 = Int("123")

if((optInt1!) == 123) {
    print("optInt == 123")
} else {
    print("optInt != 123")
}

// 강제 해제하지 않은 옵셔널 타입과 정수 123을 비교
if (optInt1 == 123) {
    print("optInt == 123")
} else {
    print("optInt != 123")
}
// 실제 결과는 optInt == 123이 나옴 (예상과 다름)

// 명시적으로 옵셔널 객체를 강제 해제하지 않아도 한쪽이 옵셔널, 다른 한쪽이 일반 타입이라면 자동으로 옵셔널 타입을 해제하여 비교 연산을 수행합니다.
let tempInt = Int("123")

// 전부 true
tempInt == 123
tempInt == Optional(123)
tempInt! == 123
tempInt! == Optional(123)

//MARK: - 옵셔널의 묵시적 해제(Implicitly Unwrapped Optional)

// 묵시적 옵셔널의 선언
var str1: String! = "Swift Optional"
print(str1)

// !로 선언한 묵시적 옵셔널은 일반 변수처럼 다루기 가능
var value01: Int? = 10
//value01 + 5 // 오류

var value02: Int! = 10
value02 + 5 // 15

// 옵셔널의 묵시적 해제 선언에 염두해야 할 것
// 변수의 값이 nil이 될 가능성이 있다면 묵시적 옵셔널 해제를 사용하지 않아야 한다.

// "형식상 옵셔널로 정의해야 하지만, 실제로 사용할 때에는 절대 nil값이 대입될 가능성이 없는 변수일 때"

var value: Int! = Int("123")

// 묵시적 옵셔널이 유용하게 사용되는 경우는 클래스 또는 구조체 내
// 멤버 변수를 정의할 때 선언과 초기화를 분리시켜야 하는 경우에 해당

// 옵셔널의 강점
// 1. 안정성
// 2. 안정성을 담보하는 과정에서 표현되는 코드의 간결성

// 옵셔널 체이닝
//myDelegate?.scrollViewDidScroll?(myScrollView)































