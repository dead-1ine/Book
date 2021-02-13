import Foundation

//MARK: - 익스텐션(Extensions)
// 이미 존재하는 클래스나 구조체, 열거형 등의 객체에 새로운 기능을 추가하여 확장해주는 구문
// 이미 존재하는 객체에 여러 가지 요소를 추가해준다는 점이 특징이지만, 자신의 독립적인 객체를 가지지 않고 다른 객체를 확장해준다는 특징때문에 확장 구문은 단순히 구문이라고 보기도, 객체의 하나로 보기도 어렵다.

// ! 라이브러리나 프레임워크에 포함된어 소스 코드에 직접 접근할 수 없는 객체라 할지라도 확장 구문을 이용하면 거의 제약 없이 새로운 기능을 추가할 수 있다는 점에서 익스텐션은 강력하다.

/*
    # 익스텐션을 통해 구현할 수 있는 대표적 특징
        - 새로운 연산 프로퍼티를 추가할 수 있다.
        - 새로운 메소드를 정의할 수 있다.
        - 새로운 초기화 구문을 추가할 수 있다.
        - 네 기존 객체를 수정하지 않고 프로토콜을 구현할 수 있다.
 */

/* # extension
    extension <확장할 기존 객체명> {
        // 추가할 기능에 대한 구현 코드
    }
*/
// extension은 독립적인 객체를 생성하는 구문이 아니다. 이미 정의되어 있는 기존 객체의 기능을 더 추가해주는 것일 뿐

// ! 익스텐션은 객체가 아니며 또한 타입으로 사용될 수도 없다.

//MARK: 9.2.1 익스텐션과 연산 프로퍼티
// 익스텐션을 이용하면 기존 객체에 프로퍼티를 추가할 수 있으나, 연산 프로퍼티만으로 제한된다.
// 대신 인스턴스 프로퍼티든 타입 프로퍼티든 연산 프로퍼티라면 모두 추가 가능

extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var desription: String {
        return "\(self)km는 \(self.km)m, \(self)cm는 \(self.cm)m, \(self)mm는 \(self.mm)m입니다."
    }
}

// 정의된 값에 대해 단위 변환을 처리해주는 역할
2.km
5.5.cm
125.mm
7.0.description

let distance = 42.0.km + 195.m
print("마라톤의 총 거리는 \(distance)m입니다.")


//MARK: - 9.2.2 익스텐션과 메소드

extension Int {
    func repeatRun(task: () -> Void) {
        for _ in 0 ..< self {
            task()
        }
    }
}

// 입력받은 함수는 Int 자료형에 할당된 값만큼 반복해서 실행하도록 구문이 작성되어 있다.
let d = 3
d.repeatRun(task: {
    print("반갑습니다!")
})
// 트레일링 클로저
d.repeatRun {
    print("반갑습니다.")
}

// 인스턴스 메소드는 익스텐션에서도 mutating 키워드를 사용하여 인스턴스 자신을 수정하도록 허용할수 있습니다.
extension Int {
    mutating func square() {
        self = self * self
    }
}

var value = 3
value.square()

// 상수나 리터럴은 오류
// let value = 3; value.square()
// 3.square()

// ! 익스텐션은 필요한 곳에서는 충분히 사용하되 남용하지 않고, 여기저기에 분산해서 작성하기보다는 전체적인 정의와 구조를 파악할 수 있는 위치에서 작성하는 것이 좋다.

//MARK: - 9.2.3 익스텐션을 활용한 코드 정리
// 메소드를 간략히 보여주는 정보창에서 extension을 이용하면 구분을 트리형으로 나눠 보여준다.
// 액션 메소드는 익스텐션에 작성할 수 없다.
// MAKR: 와 같이 활용하여, 코드를 간결하게 정리하고 유지보수를 쉽게 하는 데 큰 도움을 준다.



