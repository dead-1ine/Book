// 개념적으로 구주체와 클래스는 하나의 큰 코드 블록.
// 클래스와 구조체는 다른 종류의 객체에 의존하지 않고도 자체적으로 값을 저자하거나 함수적인 기능을 구현할 수 있다.
// 독자적인 프로세스 수행 능력 덕분에 매우 강력한 사용성을 지니는 이들 객체는 스위프트가 언어적으로 유연성을 가질 수 있게 해주는 근간을 이룹니다.
// 유연성 : 코드를 떼어서 다른 곳으로 옮기거나 새로운 코드를 추가하기 쉽다는 뜻
//          의존성의 반대 개념

// 똑같은 변수와 상수라도 구조체와 클래스 내우베엇 정의되면 프로퍼티(Properties)라는 이름을 가진다.
// 속성 변수 또는 상수라고 불리기도 함
// 함수도 마찬가지로 구조체와 클래스 내부에 정의되면 펑선(Function)이 아니라 메소드(Method)라고 불린다.
// 이는 변수와 상수, 함수가 구조체나 클래스 안에 들어가면서 특별한 성격을 갖기 때문

// 프로퍼티와 메소드를 합해서 구조체나 클래스의 멤버(Member)라고 표현하는데, 이는 프로퍼티와 메소드가 구조체를 이루는 핵심 요소이기 때문

// 스위프트는 기본적으로 객체지향 언어이며, 객체를 만들어내는 주요 대상이 바로 구조체와 클래스이다.


//MARK: - 구조체 VS 클래스
/* # 구조체와 클래스의 공통점
     1. 프로퍼티: 변수나 상수를 사용하여 값을 저장
     2. 메소드: 함수를 사용하여 기능을 제공
     3. 서브스크립트: 속성값에 접근할 수 있는 방법을 제공
     4. 초기화 블록: 객체를 원하는 초기 상태로 설정
     5. 확장: 객체에 함수적 기능을 추가
     6. 프로토콜: 특정 형식의 함수적 표준을 제공
 */

/* # 구조체와 클래스의 차이점
    클래스의 기능 범위가 구조체보다 크다.
    구조체는 할 수 없지만, 클래스는 할 수 있는 기능들은 다음과 같다.
    1. 상속: 클래스의 특성을 다른 클래스에게 물려줄 수 있다.
    2. 타입 캐스팅: 실행 시 컴파일러가 클래스 인스턴스의 타입을 미리 파악하고 검사할 수 있다.
    3. 소멸화 구문: 인스턴스가 소멸되기 직전에 처리해야 할 구문을 미리 등록해 놓을 수 있다.
    4. 참조에 의한 전달: 클래스 인스턴스가 전달될 때에는 참조 형식으로 제공되며, 이때 참조가 가능한 개수는 제약이 없다.
 */

//MARK: - 구조체와 클래스의 기본 개념

// 클래스와 구조체의 이름은 UpperCamelCase로 짓는 것이 관례
/* 구조체의 정의 형식
        struct 구조체_이름 {
            // 구조체 정의 내용
        }
 */
/* 클래스의 정의 형식
        class 클래스_이름 {
            // 클래스 정의 내용
        }
 */

//MARK: - 메소드와 프로퍼티
// 구조체와 클래스에서는 변수나 상수를 정의하여 내부적인 값을 저장할 수 있습니다.
// 이렇게 구조체와 클래스 내부에서 정의된 변수나 상수를 프로퍼티(Property), 또는 속성이라고 한다.
// 또한, 함수를 정의하여 특정 기능을 정의할 수도 있는데, 이를 메소드(Method)라고 한다.

// 프로퍼티와 메소드가 정의된 구조체와 클래스
struct Resolution {
    var width = 0
    var height = 0
    
    func desc() -> String {
        return "Resolution 구조체"
    }
}

class VideoMode {
    var interlaced = false
    var frameRate = 0.0
    var name: String?
    
    var res = Resolution()
    
    func desc() -> String {
        return "VideoMode 클래스"
    }
}


//MARK: - 인스턴스
// 구조체나 클래스는 실행할 수 있는 객체가 아니라, 값을 담을 수 있는 실질적인 그릇을 만들어내기 위한 일종의 틀이다.
// 이때 틀을 이용하여 찍어낸 그릇을 인스턴스(Instance)라고 한다.
// 타입의 설계도를 사용하여 메모리 공간을 할당받은 것

// 구조체와 클래스의 인스턴스 생성 방법(인스턴스 생성 구문)
let insRes = Resolution()

let insVMode = VideoMode()

// 위 예제에서 선언된 프로퍼티는 오직 인스턴스를 통해서만 접근할 수 있다.
// <인스턴스 이름>.<프로퍼티 이름>

let width = insRes.width
print("insRes.width = \(width)")

// 객체에 정의된 프로퍼티가 서브 프로퍼티를 가지고 있는 객체
// <인스턴스 이름>.<프로퍼티 이름>.<프로퍼티의 서브 프로퍼티 이름>
let vMode = VideoMode()
print("vMode 인스턴스의 width 값은 \(vMode.res.width)입니다")

// 추가된 프로퍼티 res는 VideoMode 클래스의 프로퍼티이자 동시에 Resolution 구조체의 인스턴스이다.

// 점 구문을 이용하여 인스턴스의 프로퍼티에 값을 할당
vMode.name = "Sample"
vMode.res.width = 1280

print("\(vMode.name!) 인스턴스의 width 값은 \(vMode.res.width)입니다.")
// 이러한 방식을 사슬이 계속 연결되는 방식과 비슷하다 하여 체인(Chain)이라고 한다.

// 먼저 vMode.res를 변수에 대입하고
var res = vMode.res
// 이어서 변수의 프로퍼티에 접근하여 값을 대입
res.width = 1280

// 스위프트에서는 연속된 프로퍼티의 타입을 컴파일러가 모두 체크하고 있으므로 개별적인 할당 과정 없이도 연속적인 참조가 가능합니다.


//MARK: - 초기화

// 스위프트에서 옵셔널 타입으로 선언되지 않은 모든 프로퍼티는 명시적으로 초기화해 주어야 합니다.
// 초기화되지 않은 프로퍼티가 있을 경우 컴파일러는 이를 컴파일 오류로 처리합니다.
// 두가지의 명시적인 초기화
// 1. 프로퍼티를 선언하면서 동시에 초기값을 지정하는 경우
// 2. 초기화 메소드 내에서 프로퍼티의 초기값을 지정하는 경우

// 옵셔널 타입으로 선언된 프로퍼티는 초기값이 지정되지 않을 경우 자동으로 nil로 초기화되기 때문에 컴파일 오류를 피할 수 있습니다.

// 구조체는 모든 프로퍼티의 값을 인자값으로 입력받아 초기화하는 기본 초기화 구문을 자동으로 제공.
// 프로퍼티를 보통 멤버 변수라고 부르기에, 이 초기화 구문을 멤버와이즈 초기화 구문(Meberwise Initializer)라고 부른다.

// width와 height를 매개변수로 하여 Resolution 인스턴스를 생성
let defaultRes = Resolution(width: 1024, height: 768)
// 멤버와이즈 초기화 구문이다.

print("width: \(defaultRes.width), height: \(defaultRes.height)")

/* Resolution() // 기본 초기화 구문. 내부적으로 프로퍼티를 초기화하지 않음
 Resolution(width:height:) // 모든 프로퍼티의 초기값을 입력받는 멤버와이즈 초기화 구문. 내부적으로 모든 프로퍼티를 초기화함 */

// 클래스는 멤버와이즈 형식의 초기화 구문이 제공되지 않음.
// 클래스는 빈 괄호 형태의 기본 초기화 구문뿐이다. 이마저도 모든 프로퍼티가 선언과 동시에 초기화되어 있을 때만 사용할 수 있다.

//: ## 클래스의 프로퍼티와 초기화 구문에 대한 두 가지 원칙
//:  1) 모든 프로퍼티는 정의할 때 초기값을 주던가, 아니면 옵셔널 타입으로 선언한다.
//:  2) 인스턴스를 생성할 때에는 클래스명 뒤에 ()를 붙여준다.


//MARK: - 구조체의 값 전달 방식 : 복사에 의한 전달

// 구조체와 클래스의 결정적 차이 중의 하나가 바로 값을 전달하는 방식이다.
// 구조체 - 복사에 의한 전달(값 타입)
let hd = Resolution(width: 1920, height: 1000)
var cinema = hd

// Resolution은 구조체이므로 hd를 cinema에 대입하는 시점에서 기존 인스턴스의 복사본이 하나 더 만들어진 다음, 이 복사본이 cinema 변수에 대입됩니다. hd와 cinema는 같은 width, height 값을 가지고 있지만, 값만 같을 뿐 실제로는 별개인 인스턴스가 대입되어 있습니다.


// 영화에 맞는 비율을 넣음
cinema.width = 2048
print("cinema 인스턴스의 width 값은 \(cinema)입니다.")

// hd 변수에 저장된 width 프로퍼티의 값
print("hd 인스턴스의 width 값은 \(hd.width)입니다.")

// 원래의 값이 바뀌지 않은 그대로 이다.
// hd 인스턴스를 cinema에 할당해주는 시점에 새로운 복사본이 만들어지면서 hd에 저장되어 있던 값들은 모두 새로운 cinema 인스턴스로 복사되었고, 이후로 두 인스턴스는 완전히 분리되었습니다. 이 때문에 hd에 저장된 인스턴스는 cinema 인스터스의 값 변화에 영향을 받지 않은 채로 기존값을 유지하게 됨
// cinema 인스턴스에서 발생하는 값의 변경은 hd 인스턴스에 아무런 영향을 미치지 못하고 ,마찬가지로 hd 인스턴스에 변경이 발생해도 영향을 미치지 않음.

// 정리: 구조체는 객체를 복사하여 대입되는 것이므로, 서로의 작용이 일어나지 않음

//MARK: - 클래스의 값 전달 방식 : 참조에 의한 전달

// 클래스는 메모리 주소 참조에 의한 전달 방식을 사용한다. 참조타입(Reference Type)
// 참조: 인스턴스가 저장된 메모리 주소 정보가 전달됨.
// 스위프트에서는 클래스 타입일 경우 항상 메모리 주소를 사용하여 객체 자체를 전달한다.

let video = VideoMode()
video.name = "Original Video Instance"

print("Video.name = \(video.name!)")

// 다른 상수에 할당
let dvd = video
dvd.name = "DVD Video Instance"

print("Video.name = \(video.name)")

// 우리가 변경하지 않은 Video 상수의 프로퍼티에서도 값이 변경됨

func changeName(v: VideoMode) {
    v.name = "Function Video Instance"
}

// 함수 내부에서 매개변수 v의 프로퍼티를 수정하는 것은 곧 video 인스턴스를 직접 수정하는 것과 같다.
changeName(v: video)
print("Video인스턴스의 name값은 \(video.name!)입니다.")

// 함수의 인자값 타입 func changeName(v: VideoName)

// 기본적인 타입은 원시타입이라고 함(Primitive type)
// 클래스와 구조체로 새로운 자료형을 만들 수 있다.

// 반면, 구조체는 값의 할당이 곧 복사이므로 하나의 인스턴스는 오로지 하나의 변수/상수만이 참조할 수 있다.

// ARC(Auto Reference Counter): 지금 클래스 인스턴스를 참조하는 곳이 모두 몇 군데인지 자동으로 카운트해주는 객체
// 이 객체는 인스턴스를 모니터링하면서 변수나 상수, 함수의 인자값으로 할당되면 카운트를 1 증가시키고 해당 변수나 상수들이 종료되면 카운트를 1 감소시키는 작업을 계속하면서 인스턴스의 참조 수를 계산, 이 과정에서 인스턴스의 참조 카운트가 0이 되면 메모리 해제 대상으로 간주하여 적절히 메모리에서 해제함.

// 인스턴스 비교 연산자
// 동일비교 ===, 아닌지 비교 !==

if video === dvd {
    print("===")
} else {
    print("!==")
}

// 새로운 인스턴스를 새로 할당
let vs = VideoMode()
let ds = VideoMode()

if (vs === ds) {
    print("===")
} else {
    print("!==")
}

// 이처럼 클래스 인스턴스의 비교 구문을 사용할때는 값의 비교가 아닌 메모리 주소의 일치 여부, 즉 객체의 동일성 여부에 근거하게 된다는 점을 주의해야 함

// 클래스와 구조체는 주로 우리가 프로그램을 작성하는 과정에서 원하는 대로 데이터 형식을 정의하기 위해 사용합니다.
/**
    ## 다음 조건에 하나 이상 해당되는 경우라면 *구조체*를 사용
        1. 서로 연관된 몇 개의 기본 데이터 타입들을 캡슐화하여 묶는 것이 목적일 때
        2. 캡슐화된 데이터에 상속이 필요하지 않을 때
        3. 캡슐화된 데이터를 전달하거나 할당하는 과정에서 참조 방식보다는 값이 복사되는 것이 합리적일 때
        4. 캡슐화된 원본 데이터를 보존해야 할 때
*/

//MARK: - 프로퍼티(속성)

// 값을 저장하기 위한 목적으로 클래스와 구조체 내에서 정의된 변수나 상수이나 일부 역할에 불과
// 클래스나 구조체에서 프로퍼티가 하는 정확한 역할은 값을 제공하는 것

/**
    ## 프로퍼티의 두가지 종류
        1. 저장 프로퍼티
            - 입력된 값을 저장하거나 저장된 값을 제공하는 역할
            - 상수 및 변수를 사용해서 정의 가능
            - 클래스와 구조체에서는 사용이 가능하지만, 열거형에서는 사용할 수 없음
        2. 연산 프로퍼티
            - 특정 연산을 통해 값을 만들어 제공하는 역할
            - 변수만 사용해서 정의 간으
            - 클래스, 구조체, 열거형 모두에서 사용 가능
 
    설명: 이 둘은 대체로 클래스나 구조체를 바탕으로 만들어진 개별 인스턴스에 소속되어 값을 저장하거나 연산 처리하는 역할을 합니다.
         프로퍼티를 사용하려면 인스턴스가 필요함.
        이렇게 인스턴스에 소속되어 있는 프로퍼티를 *인스턴스 프로퍼티*라고 한다.
    타입 프로퍼티(Type Properties): 일부 프로퍼티, 클래스와 구조체 자체에 소속되어 값을 가진다.
 */

class OnCreate {
    init() {
        print("OnCreate")
    }
}

class LazyTest {
    var base = 0
    lazy var late = OnCreate()
    
    init() {
        print("Lazy Test")
    }
}

let lz = LazyTest()

// 지연 프로퍼티는 호출이 발생할 때 값을 평가하여 초기화되며, 두번째 호출부터는 처음 초기화된 값을 그대로 사용할 뿐 다시 초기화되지는 않습니다.
lz.late


//MARK: - 클로저를 이용한 저장 프로퍼티 초기화

/*
 let/var 프로퍼티명: 타입 {
    정의 내용
    return 반환값
 }()
 */
// 이렇게 정의된 클로저 구문은 클래스나 구조체의 인스턴스가 생성될 때 함께 실행되어 초기값을 반환하고, 그 이후로 재실행되지 않는다.
// 연산 프로퍼티가 참조될 때마다 매번 재평가된 값을 반환하는 것과 다르다.

// 클로저를 활용한 초기화
class PropertyInit {
    // 저장 프로퍼티 - 인스턴스 생성 시 최초 한 번만 실행
    var value01: String! = {
        print("value01 Execute")
        return "value01"
    }()
    
    // 저장 프로퍼티
    let value02: String! = {
        print("value02 Execute")
        return "value02"
    }()
    
    // 지연 프로퍼티
    lazy var value03: String! = {
        print("value03 Execute")
        return "value03"
    }()
    
}

let s = PropertyInit()

// 저장 프로퍼티를 단순히 참조만 하면 아무런 로그도 출력되지 않음.
// 이는 저장 프로퍼티에 정의된 클로저 구문이 더 이상 재실행되지 않기 때문.
s.value01
s.value02


//MARK: - lazy 구문
// 기본적으로 저장 프로퍼티에 사용되는 구문
// 실제로 참조되는 시점에서 초기화
// 정리: lazy 키워드로 정의한 저장 프로퍼티는 최초 한 번만 로직이 실행되고, 실제 참조되는 시점에 맞추어 초기화되기 때문에 메모리 낭비를 줄일 수 있다.
/**
    ''''
    lazy var 프로퍼티명: 타입 = {
        정의 내용
    }
    ''''
 */
// lazy로 선언된 프로퍼티는 실행되지 않음.
let s1 = PropertyInit()

// 직접 참조
s1.value03

// 한번 더 참조
s1.value03
// 클로저가 실행되지 않음. 저장 프로퍼티의 특성상 최초에 값이 평가되고 나면 이후로는 값이 재평가되지 않기 때문.


//MARK: - 연산 프로퍼티

// 다른 프로퍼티에 의존적이거나, 혹은 특정 연산을 통해 얻을 수 있는 값을 정의할 때 사용
// (예: 나이. 나이는 출생 연도에 의존적이며, 현재 연도를 기준으로 계산해야 하므로 매년 값이 달라진다.
/**:
        ...
        class/struct/enum 객체명 {
            var 프로퍼티명: 타입 {
                get {
                    필요한 연산 과정
                    return 반환값
                }
                set(매개변수명) {
                    필요한 연산구문
                }
            }
        }
        ...
 */

struct UserInfo {
    // 저장 프로퍼티: 태어난 연도
    var birth: Int!
    
    // 연산 프로퍼티: 올해가 몇년도인지 계산
    var thisYear: Int! {
        get {
            let df = DateFormatter()
            df.dateFormat = "yyyy"
            return Int(df.string(from: Date()))
        }
    }
    
    // 연산 프로퍼티: 올해 - 태어난 연도 + 1
    var age: Int {
        get {
            return (self.thisYear - self.birth) + 1
        }
    }
}

let info = UserInfo(birth: 1999)
print("기입된 연도를 기준으로 당신의 나이는 \(info.age)")


//// 특정 사각형에 대한 정보를 저자하는 구조체에서 연산 프로퍼티를 사용하여 사각형의 중심 좌표를 구하는 예제
//struct Rect {
//    // 사각형이 위치한 기준 좌표
//    var originX: Double = 0.0, originY: Double = 0.0
//
//    // 가로 세로 길이
//    var sizeWidth: Double = 0.0, sizeHeight: Double = 0.0
//
//    // 사각형의 x 좌표 중심
//    var centerX: Double {
//        get {
//            return self.originX + (sizeWidth / 2)
//        }
//        set(newCenterX) {
//            originX = newCenterX - (sizeWidth / 2)
//        }
//    }
//
//    // 사각형의 Y 좌표 중심
//    var centerY: Double {
//        get {
//            return self.originY + (self.sizeHeight / 2)
//        }
//        set(newCenterY) {
//            self.originY = newCenterY - (self.sizeHeight / 2)
//        }
//    }
//}

//var square = Rect(originX: 0.0, originY: 10.0, sizeWidth: 10.0, sizeHeight: 10.0)
//print("Square.centerX")


// 객체지향형으로 정의
struct Position {
    var x: Double = 0.0
    var y: Double = 0.0
}

struct Size {
    var width: Double = 0.0
    var height: Double = 0.0
}


// 객체지향 형의 Rectangle
struct Rectangle {
    // 사각형이 위치한 기준 좌표
    var origin = Position()
    // 가로 세로 길이
    var size = Size()
    // 사각형의 X 좌표 중심
    // 연산 프로퍼티는 활용하기에 따라 다른 저장 프로퍼티의 값을 변경함
    var center: Position {
        get {
            let centerX = self.origin.x + (self.size.width / 2)
            let centerY = self.origin.y + (self.size.height / 2)
            return Position(x: centerX, y: centerY)
        }
        // center는 타입이 정해져 있으므로 파라미터 타입은 필요 없다.
        set(newCenter) {
            self.origin.x = newCenter.x - (size.width / 2)
            self.origin.y = newCenter.y - (size.height / 2)
        }
    }
    
    // 읽기 전용 (Read-Only) 속성으로 정의된 center 프로퍼티
    var _center: Position {
        get {
            let centerX = self.origin.x + (self.size.width / 2)
            let centerY = self.origin.y + (self.size.height / 2)
            return Position(x: centerX, y: centerY)
        }
    }
    
    // get 생략 가능
    // 연산 프로퍼티를 지원하지 않는 언어들은 get,set메서드로 구현됨
    var center_: Position {
        let centerX = self.origin.x + (self.size.width / 2)
        let centerY = self.origin.y + (self.size.height / 2)
        return Position(x: centerX, y: centerY)
    }
}

let p = Position(x: 0.0, y: 0.0)
let s2 = Size(width: 10.0, height: 10.0)

var square = Rectangle(origin: p, size: s2)
print("square.centerX = \(square.center.x), square.centerY = \(square.center.y)")

// 중심 좌표의 값 변경
square.center = Position(x: 20.0, y: 20.0)
print("square.x = \(square.origin.x), square.y = \(square.origin.y)")


//MARK: - 프로퍼티 옵저버
// 특정 프로퍼티를 관찰하다가 값이 변경되면 반응한다.
// 저장 프로퍼티에 값을 대입하는 구문이 수행되거나, 연산 프로퍼티에서 set구문이 실행되는 모든 경우에 프로퍼티 옵저버가 호출된다.

/**
    프로퍼티 옵저버의 종류
        willSet: 프로퍼티의 값이 변경되기 직전에 호출되는 옵저버
        didSet: 프로퍼티의 값이 변경된 직후에 호출되는 옵저버
 */
// willSet 옵저버를 구현해 둔 프로퍼티에 값을 대입하면 그 값이 프로퍼티에 대입되기 직전에 willSet 옵저버가 실행된다. 이때 프로퍼티에 대입되는 값이 옵저버의 실행 블록에 매개상수 형식으로 함께 전달된다. 프로퍼티의 값이 변경되기 전에 처리해야 한다면 사용
/**
    # willSet 옵저버 정의 구문
        var <프로퍼티명> : <타입> [ = 초기값 ] {
            willSet [<인자명>] {
                <프로퍼티 값이 변경되기 전에 실행할 내용>
            }
        }
 */

// didSet 옵저버는 프로퍼티에 값이 할당된 직후에 호출된다. 새로 할당된 값이 아닌 기존에 저장되어 있던 값이 매개상수 형태로 전달됨
/**
    # didSet 옵저버 정의 구문
        var <프로퍼티명> : <타입> [ = 초기값 ] {
            didSet [<인자명>] {
                <프로퍼티 값이 변경되기 전에 실행할 내용>
            }
        }
 */

// 항상 옵저버 두가지를 모두 사용할 필요는 없으며, 한가지씩 따로 사용 가능

// 저장 프로퍼티에 구현
struct Job {
    var income: Int = 0 {
        willSet(newIncome) {
            print("이번 달 월급은 \(newIncome)원입니다.")
        }
        didSet {
            if income > oldValue {
                print("월급이 \(income - oldValue)원 증가하셨네요. 소득세가 상향조절될 예정입니다.")
            } else {
                print("저런, 월급이 삭감되었군요.")
            }
        }
    }
}

// 초기값과 함께 인스턴스 생성
var job = Job(income: 10000000)
// 월급 상향
job.income = 20000000

// 월급 삭감
job.income = 15000000


//MARK: - 타입 프로퍼티
// 인스턴스를 생성하지 않고 클래스나 구조체 자체에 값을 저장하는 것
// 클래스나 구조체의 인스턴스에 속하는 값이 아니라 클래스나 구조체 자체에 속하는 값이므로 인스턴스를 생성하지 않고 클래스나 구조체 자체에 저장하게 되며, 저장된 값은 모든 인스턴스가 공통으로 사용할 수 있다.
// 인스턴스 프로퍼티는 개별 인스턴스마다 다른 값을 저장할 수 있어서 하나의 인스턴스에서 변경한 프로퍼티의 값은 그 인스턴스 내에서만 유지될 뿐 나머지 인스턴스에 영향을 미치지 않지만, *타입 프로퍼티는 인스턴스가 아무리 많더라도 모든 인스턴스가 하나의 값을 공용으로 사용한다.*
// 이 값은 복사된 것이 아니라 실제로 하나의 값이므로 하나의 인스턴스에서 타입 프로퍼티의 값을 변경하면 나머지 인스턴스들이 일괄적으로 변경된 값을 적용받는다. *이러한 특성 때문에 타입 프로퍼티는 특정 클래스나 구조체. 그리고 열거형에서 모든 인스턴스들이 공유해야 하는 값을 정의할 때 유용하다.*

/**:
    # 클래스 내에서
        static let/var 프로퍼티명 = 초기값
    # 또는
        class let/var 프로퍼티명: 타입 {
            get {
                return 반환값
            }
            set {
            }
        }
 */

// 타입 프로퍼티를 선언한 예
struct Foo {
    // 타입 저장 프로퍼티
    static var sFoo = "구조체 타입 프로퍼티값"
    
    // 타입 연산 프로퍼티
    static var cFoo: Int {
        return 1
    }
}

class Boo {
    // 타입 저장 프로퍼티
    static var sFoo = "클래스 타입 프로퍼티값"
    
    // 타입 연산 프로퍼티
    static var cFoo: Int {
        return 10
    }
    
    // 재정의 가능한 타입 연산 프로퍼티
    class var oFoo: Int {
        return 100
    }
}

// 별도의 인스턴스 생성 없이 사용 가능. 클래스나 구조체 자체에 점 구문을 이용하여 타입 프로퍼티를 참조하면 된다.
print(Foo.sFoo)

Foo.sFoo = "새로운 값"
print(Foo.sFoo)

print(Boo.sFoo)

print(Boo.cFoo)

// 타입 프로퍼티는 인스턴스에 속하지 않는 값이므로 만약 인스턴스를 생성한 다음 점 구문을 이용하여 타입 프로퍼티를 읽으려 하면 선언되지 않은 프로퍼티라는 오류가 발생한다.
// 타입 프로퍼티는 반드시 클래스나 구조체 또는 열거형 자체와 함께 사용해야 한다.


//MARK: - 메소드
// 일종의 함수로서, 클래스나 구조체, 열거형과 같은 객체 내에서 함수가 선언될 경우 메소드라고 칭한다.
// 즉, 메소드는 특정 타입의 객체 내부에서 사용하는 함수

// 크게 인스턴스 메소드, 타입 메소드로 구분

//MARK: # 인스턴스 메소드
// 인스턴스 메소드는 같은 객체 내에서 정의된 다른 인스턴스 메소드나 인스턴스 프로퍼티에 접근할 수 있도록 권한이 부여되며, 해당 메소드가 속한 인스턴스를 통해서만 호출될 수 있습니다.
// 인스턴스 없이 독립적으로 호출될 수 없음.

// 인스턴스 메소드 선언
struct Resolution {
    var width = 0
    var height = 0
    
    // 구조체의 요약된 설명을 리턴해주는 인스턴스 메소드
    func desc() -> String { "이 해상도는 가로 \(self.width) X \(self.height)로 구성됩니다." }
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
    
    // 클래스의 요약된 설명을 리턴해주는 인스턴스 메소드
    func desc() -> String {
        if self.name != nil {
            return "이 \(self.name!) 비디오 모드는 \(self.frameRate)의 프레임 비율로 표시됩니다."
        } else {
            return "이 비디오 모드는 \(self.frameRate)의 프레임 비율로 표시됩니다."
        }
    }
}

/**
    # 일반 함수와의 차이 3.
        - 구조체와 클래스 인스턴스에 소속된다
        - 메소드 내에서 정의된 변수와 상수뿐만 아니라 클래스 범위에서 정의된 프로퍼티도 모두 참조할 수 있다
        - self 키워드를 사용할 수 있다
 */
// self.width : 자신의 인스턴스에 속한 width 프로퍼티
var res = Resolution()
res.width

// 일반 변수에는 self 키워드를 붙일 수 없기 때문에 self 키워드가 붙은 변수는 프로퍼티로 판단.
struct _Resolution {
    var width = 0
    var height = 0
    
    func judge() -> Bool {
        let width = 30
        return self.width == width
    } // false
}

// 특정 동작이 발생한 횟수를 카운트하는 객체
class Counter {
    // 카운트를 저장할 프로퍼티
    var count = 0
    
    // 카운트를 1 증가
    func increment() {
        self.count += 1
    }
    // 입력된 값만큼 카운트를 증가
    func incrementBy(amount: Int) {
        self.count += amount
    }
    // 카운트를 0으로 초기화
    func reset() {
        self.count = 0
    }
}

// Counter 클래스의 인스턴스를 생성. 초기 카운터 값은 0
let counter = Counter()

// 카운터 값을 증가. 이제 카운터 값은 1
counter.increment()

// 카운터 값을 5만큼 증가. 이제 카운터 값은 6
counter.incrementBy(amount: 5)

// 카운터 값을 초기화. 이제 카운터 값은 0
counter.reset()


// !(주의할 점) 구조체나 열거형의 인스턴스 메소드 내부에서 프로퍼티의 값을 수정할 때는 반드시 메소드의 앞에 'mutating'이라는 키워드를 추가해야 한다.
// mutating 키워드를 사용하여 내부 프로퍼티 값을 수정하는 메소드라는 것을 컴파일러에 알려주어야 한다.

struct Point {
    var x = 0.0, y = 0.0
    mutating func moveByX(x deltaX: Double, y deltaY: Double) {
        self.x += deltaX
        self.y += deltaY
    }
}
var point = Point(x: 10.5, y: 12.0)
point.moveByX(x: 3.0, y: 4.5)
print("이제 새로운 좌표는 (\(point.x), \(point.y))입니다.")

// 이와는 달리 클래스의 인스턴스 메소드에서는 프로퍼티를 수정할 때 별도의 키워드를 필요로 하지 않음.
class Location {
    var x = 0.0, y = 0.0
    
    func moveByX(x deltaX: Double, y deltaY: Double) {
        self.x += deltaX
        self.y += deltaY
    }
}
var loc = Location()
loc.x = 10.5
loc.y = 12.5
loc.moveByX(x: 3.0, y: 4.5)
print("이제 새로운 좌표는 (\(loc.x), \(loc.y))입니다.")


//MARK: # 타입 메소드
// 인스턴스를 생성하지 않아도 호출할 수 있다.
// 클래스 모두 타입 메소드를 선언할 때는 static 키워드를 사용.
// 반면 하위 클래스에서 재정의 가능한 타입 메소드를 선언할 때는 class 키워드를 사용.

// 타입 메소드를 선언하고 호출하는 예제
class _Foo {
    // 타입 메소드 선언
    class func fooTypeMethod() {
        // 타입 메소드의 구현 내용
    }
}

let f = _Foo()
//f.fooTypeMethod() // 오류: 접근 불가
_Foo.fooTypeMethod()

// 타입 메소드를 사용하여 객체의 값을 변경하면 해당 객체 타입을 사용하는 모든 곳에서 변경된 값이 적용된다.
// ! 타입 메소드를 선언하고 사용할 때는 반드시 이러한 영향 범위를 고려하여 사용해야 함.
// ! 타입 메소드에서는 인스턴스 프로퍼티를 참조할 수 없다. 타입 메소드 자체에 인스턴스가 존재하지 않기 때문. 따라서 타입 메소드에서 사용할 수 있는 프로퍼티는 오직 타입 프로퍼티뿐.


//MARK: - 상속(Inheritance)

// 말 그대로 하나의 클래스가 다른 클래스에게 무엇인가를 물려줄 수 있다는 것.
// 정의: "한 클래스가 다른 클래스에서 정의된 프로퍼티나 메소드를 물려받아 사용하는 것"

// - 프로퍼티와 메소드를 물려준 클래스는 부모 클래스 = 상위 클래스 = 슈퍼 클래스 = 기본 클래스
// - 프로퍼티와 메소드를 물려받은 클래스는 자식 클래스 = 하위 클래스 = 서브 클래스 = 파생 클래스

// 어떠한 클래스도 상속받지 않은 클래스: 기본 클래스
class A {
    var name = "Class A"
    
    var description: String {
        return "This class name is \(self.name)"
    }
    
    func foo() {
        print("\(self.name)'s method foo is called")
    }
}

// 클래스를 할당하여, 정의된 각종 인스턴스 프로퍼티를 참조하거나 인스턴스 메소드를 호출할 수 있다.
let a = A()
a.name
a.description
a.foo()


//MARK: # 서브 클래싱
// 서브클래싱이란, 기존에 있는 클래스를 기반으로 하여 새로운 클래스를 작성하는 과정을 의미
// ! 스위프트는 단일 상속만 지원된다.(다중 상속에서 발생하는 메소드나 프로퍼티의 중첩 및 충돌을 방지)

// 앞에서 작성한 클래스 A를 사용하여 서브클래싱
class B: A {
    var prop = "Class B"
    
    func boo() -> String { "Class B prop = \(self.prop)" }
}

// 자신의 구문은 당연히 자유롭게 이용
let b = B()
b.prop
b.boo()
// A의 프로퍼티와 메소드
b.name
b.foo()

b.name = "Class C"
b.foo()

// '탈 것' 클래스
class Vehicle {
    var currentSpeed = 0.0
    
    var description: String {
        return "시간당 \(self.currentSpeed)의 속도로 이동"
    }
    
    func makeNoise() {
        // 임의의 교통수단 자체는 경적을 울리는 기능이 필요없다.
    }
}

// 간단한 인스턴스
let baseVehicle = Vehicle()
baseVehicle.description

// 서브클래싱
class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true

// 자전거 객체의 현재 속도를 설정
bicycle.currentSpeed = 20.0
print("자전거: \(bicycle.description)")

// Bicycle을 부모클래스로 하여 새로운 클래스를 서브클래싱
// (Bicycle의 프로퍼티나 메소드뿐만 아니라 Vehicle까지 모두 상속받음)
class Tandem: Bicycle {
    var passengers: Int = 0
}

let tandem = Tandem()

// 당연하게 부모클래스까지 모두 사용 가능
tandem.hasBasket = true
tandem.passengers = 2
tandem.currentSpeed = 14.0
print("Tandem: \(tandem.description)")


//MARK: - 오버라이딩(덮어쓰기)
// 자식 클래스에서 재정의된 메소드나 프로퍼티는 부모 클래스로부터 물려받은 내용을 덮어쓴다.
// override키워드를 사용하여 재정의함.
// 부모 클래스나 그 이상의 상위 클래스에 반드시 선언되어 있고, 이를 재정의할 때만 붙일 수 있는 키워드

// 프로퍼티를 오버라이딩할 때는 상위 클래스에서 저장 프로퍼티였건, 연산 프로퍼티였건 관계없이 연산 프로퍼티의 형태로 오버라이딩해야 합니다. 저장 프로퍼티를 저장 프로퍼티로 오버라이딩하는 것은 아무런 의미가 없다.(오버라이딩 대신 값만 다시 할당하는 것으로 충분하므로.)
// 연산 프로퍼티를 저장 프로퍼티로 오버라이딩하는 것은 연산 프로퍼티 자체를 오버라이딩하는 것으로 충분히 가능

// ! 본래 저장 프로퍼티는 읽고 쓰기가 모두 허용되는 만큼, 연산 프로퍼티로 오버라이딩할 경우 get, set 구문을 모두 제공해야 한다.
// ! 읽기 전용으로 정의된 연산 프로퍼티를 읽기-쓰기가 가능한 형태로 바꾸는 것도 가능

/**
    # 프로퍼티 오버라이딩 시 허용되는 것
        - 저장 프로퍼티를 get, set 구문이 모두 있는 연산 프로퍼티로 오버라이딩하는 것
        - get, set 구문이 모두 제공되는 연산 프로퍼티를 get, set 구문이 모두 제공되는 연산 프로퍼티로 오버라이딩하는 것
        - get 구문만 제공되는 연산 프로퍼티를 get, set 구문이 모두 제공되는 연산 프로퍼티로 오버라이딩하는 것
        - get 구문만 제공되는 연산 프로퍼티를 get 구문만 제공되는 연산 프로퍼티로 오버라이딩하는 것
    # 프로퍼티 오버라이딩 시 허용되지 않는 것
        - 저장 프로퍼티를 저장 프로퍼티로 오버라이딩하는 것
        - get, set구문과 관계없이 연산 프로퍼티를 저장 프로퍼티로 오버라이딩하는 것
        - get, set 구문을 모두 제공하는 연산 프로퍼티를 get 구문만 제공되는 연산 프로퍼티로 오버라이딩하는 것
 */
// 정리: 프로퍼티 오버라이딩은 상위 클래스의 기능을 하위 클래스가 확장, 또는 변경하는 방식으로 되어야지, 제한하는 방식으로는 안된다는 것

class Car: Vehicle {
    var gear = 0
    var engineLevel = 0
    
    override var currentSpeed: Double {
        get {
            return Double(self.engineLevel * 50)
        }
        set {
            // 아무것도 하지 않음
        }
    }
    override var description: String {
        get {
            return "Car : engineLevel = \(self.engineLevel), so currentSpeed = \(self.currentSpeed)"
        }
        set {
            print("New Value is \(newValue)")
        }
    }
}

let c = Car()

c.engineLevel = 5
c.currentSpeed
c.description = "New Class Car"

print(c.description)

// 현재 속도가 변할 때 그에 따라 기어 수도 함께 변경될 수 있도록 currentSpeed속성에 didSet 옵저버를 추가
class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            self.gear = Int(currentSpeed / 10.0) + 1
        }
    }
}

// 메소드 오버라이딩의 주의점
// 오버라이딩 대상이 되는 메소드의 매개변수 개수나 타입, 그리고 반환 타입은 변경할 수 없다.
// 메소드 오버라이딩을 통해 변경할 수 있는 것은 오로지 내부 구문. 매개변수 타입이나 반환 타입은 반드시 그대로 유지해야 한다.

class Bike: Vehicle {
    override func makeNoise() {
        print("빠라빠라빠라밤")
    }
}

let bk = Bike()
bk.makeNoise()

// 오버로딩(Overloading): 같은 메소드 이름이지만 매개변수의 변화만으로 새로운 메소드를 만들어 적재할 수 있도록 지원하는 문법.

// 부모 클래스는 오버라이딩 영향을 받지 않는다. 물론 부모 클래스를 상속받은 다른 클래스들에게도 역시 오버라이딩이 적용되지 않는다.

// 각각의 서브클래싱
class HybridCar: Car {
    // 아무것도 추가하지 않음
}

class KickBoard: Vehicle {
    // 아무것도 추가하지 않음
}
// 중간에 오버라이딩 되었기에 결과가 다름.
let h = HybridCar()
h.description

// 최종적 상위클래스인 Vehicle
let k = KickBoard()
k.description


//MARK: # super
// 부모 클래스 레벨에서 정의된 프로퍼티나 메소드를 호출


//MARK: - 오버라이딩 막기(final)
// 중요한 메소드를 잊고 오버라이딩하면 예를 들어 보안상의 위험이 도래함

// 정의한 메소드나 프로퍼티가 하위 클래스에서 오버라이딩되는 것을 원치 않는다면 프로퍼티나 메소드를 정의하는 키워드 앞에 final 키워드를 붙인다.
// 이렇게 final 키워드가 붙은 프로퍼티나 메소드는 상수적인 성격이 되므로 더는 하위 클래스에서 오버라이드 할 수 없다.

class _Vehicle {
    final var currentSpeed = 0.0
    final var description: String {
        get {
            return "시간당 \(self.currentSpeed)의 속도로 이동하고 있습니다."
        }
    }
    final func makeNoise( ) {
        
    }
}
// 오버라이딩을 시도하면 컴파일러는 오버라이드할 수 없다는 오류를 표시함.

// final 키워드는 클래스 자체에 붙일 수도 있다.
// final 키워드가 붙은 클래스는 상속 자체가 차단되어, 어떤 클래스도 이 클래스를 서브클래싱할 수 없게 된다. 단지 인스턴스로 만들어 사용할 수만 있게 제한됨.
// final class는 이 클래스에 대해 더는 수정하거나 기능을 변경하기를 원하지 않을 때 사용된다.
// 하위에서 상속받아 기능을 수정하면 안되는 클래스가 있다면 반드시 final로 선언하여 상속을 제한해야 한다.
 

//MARK: - 타입 캐스팅

class Vehicle1 {
    var currentSpeed = 0.0
    
    func accelerate() {
        self.currentSpeed += 1
    }
}
class Car: Vehicle1 {
    var gear: Int {
        return Int(self.currentSpeed / 20) + 1
    }
    
    func wiper() {
        // 창을 닦는다.
    }
}
// Car 클래스의 인스턴스를 할당받지만 Vehicle 타입으로 선언되었다.
// Car 클래스는 Vehicle의 프로퍼티와 메소드를 상속받았으므로 이러한 구문이 허용됨.
let trans: Vehicle1 = Car()

// 하지만 반대는 불가하다.
//let car: Car = Vehicle1() // Error!

// ! 상속을 거듭해갈수록 하위 클래스는 상위 클래스보다 점차 구체화되어가며, 상대적으로 상위 클래스는 하위 클래스보다 추상화되어 갑니다.

class Car: Vehicle1 {
    // 아무내용 작성안함
}
// 이처럼 클래스의 인스턴스를 할당하기 위해서는 해당 변수나 상수가 적어도 인스턴스의 타입과 같거나 그보다 상위 클래스 타입이어야 한다.
let car: Car = Vehicle1()

// 상위 클래스에 해당하는 타입은 모두 사용할 수 있다
class SUV: Car {
    var fourWheel = false
}
// 상위 클래스는 타입으로 자유롭게 할당 가능
let jeep: Vehicle1 = SUV()

// 상위 클래스 타입으로 선언하면 할수록 사용할 수 있는 메소드와 프로퍼티, 초기화 구문의 범위는 점점 줄어들겠지만, 이 변수에 할당할 수 있는 객체의 종류는 늘어납니다. 상위 클래스를 상속받은 모든 클래스의 인스턴스를 할당 가능하므로.
// 사용이유: 함수나 메소드의 인자값을 정의할 때 하위 클래스 타입으로 선언하는 것보다 상위 클래스 타입으로 선언하면 인자값으로 사용할 수 있는 객체의 범위가 훨씬 넓어집니다

// SUV 타입은 구체화된 클래스 형태이므로 SUV 클래스이거나 적어도 이 클래스를 상속받은 하위 클래스의 인스턴스만 인자값으로 사용할 수 있다.
func move(param: SUV) {
    param.accelerate()
}

// 다음과 같이 인자값 타입을 바꾸면 훨씬 넓은 범위의 객체를 인자로 받을 수 있음
func move(param: Vehicle) {
    param.accelerate()
}
// 이처럼 함수나 메소드의 인자값으로 상위 클래스 타입을 선언하게 되면 훨씬 적은 제약으로 객체를 사용할 수 있다.

// 배열과 딕셔너리도 마찬가지이다.
// 이처럼 정의했다면 SUV타입의 인스턴스만 배열에 추가 가능
var list = [SUV]()
list.append(SUV())

// 상위 클래스로 지정했다면 하위 클래스도 모두 저장 가능
var list = [Vehicle1]()

list.append(Vehicle1())
list.append(Car())
list.append(SUV())

// 정리: 하위 클래스 타입 대신 상위 클래스를 타입으로 선언하여 사용하면 주어진 조건을 만족하면서도 훨씬 다양한 객체를 활용할 수 있다.


//MARK: # 타입 비교 연산
// 타입 비교 연산자 is는 변수나 상수 또는 인스턴스의 값을 비교하는 것이 아니라 타입이 일치하는지 비교하여 결과를 Bool형으로 돌려줌
/** 인스턴스(또는 변수, 상수) is 비교대상 타입 */
// 왼쪽 피연산자의 타입이 비교대상 타입과 일치하거나 비교대상의 하위 클래스일 경우 TRUE

SUV() is SUV // true

SUV() is Car // true
SUV() is Vehicle // true

//Car() is Vehicle1() // true
Car() is SUV // false


// ! 변수가 선언된 타입을 기준으로 비교하는 것이 아니라 변수에 할당된 실제 인스턴스를 기준으로 타입을 비교함
let myCar: Vehicle = SUV()

if myCar is SUV {
    print("myCar는 SUV 타입입니다.")
} else {
    print("myCar는 SUV 타입이 아닙니다.")
}

// 타입 비교 연산자는 그 안에 대입된 실제 값의 타입을 비교하기 때문에 결과가 true가 나옴
// Vehicle의 탈을 뒤집어쓴 SUV 인스턴스를 SUV 타입과 비교한 것이므로.

// 당연하게 Car와 SUV는 같은 Vehicle을 상속받지만 서로 다른 타입이므로 false
let newCar: Vehicle = Car()

if newCar is SUV {
    print("newCar is SUV")
} else {
    print("newCar isn't SUV Type")
}


//MARK: # 타입 캐스팅 연산

// 컴파일러는 해당 상수를 Vehicle 타입으로 간주합니다. 타입 어노테이션이 실제 대입된 타입보다 우선시 되기 때문.
let someCar: Vehicle = SUV()

// 일반적으로 타입 캐스팅은 상속 관계에 있는 타입들 사이에서 허용된다.

/*
    # 업 캐스팅
        - 하위 클래스 타입을 상위 클래스 타입으로 변환할 때
        - 캐스팅하기 전 타입이 하위 클래스, 캐스팅한 후 타입이 상위 클래스일 때
        - 캐스팅한 결과, 캐스팅하기 전 타입보다 추상화될 때
        - 일반적으로 캐스팅 과정에서 오류가 발생할 가능성이 없음
 
    # 다운 캐스팅
        - 상위 클래스 타입을 하위 클래스 타입으로 캐스팅할 때
        - 캐스팅하기 전 타입이 상위 클래스, 캐스팅한 후 타입이 하위 클래스
        - 캐스팅한 결과, 캐스팅하기 전 타입보다 구체화될 때
        - 캐스팅 과정에서 오류가 발생할 가능성이 있음
        - 오류에 대한 처리 방식에 따라 옵셔널 캐스팅과 강제 캐스팅으로 나누어짐
 */
// 실제로 우리가 다루는 대두사의 캐스팅은 다운 캐스팅이며, 부모 클래스 타입을 자식 클래스 타입으로 변환하는 것은 오류소지가 있다.
// as? : 옵셔널 타입을 의미
// as! : 강제 해재 연산자

// 업 캐스팅: 객체 as 변환할 타입
// 다운 캐스팅: as? (결과는 옵셔널 타입) as! (결과는 일반 타입)















































