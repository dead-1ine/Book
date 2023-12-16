// 초기화 후에 값이 확정되지 않은 저장 프로퍼티는 존재할 수 없습니다.
// 프로퍼티를 정의할 떄 프로퍼티 기본값을 할당하면 이니셜라이저에서 따로 초깃값을 할당하지 않더라도 프로퍼티 기본값으로 저장 프로퍼티의 값이 초기화됩니다.

struct Area {
    var squareMeter: Double

    init() {
        squareMeter = 0.0 // SquareMeter의 초깃값 할당 
    }
}

let room: Area = Area()
print(room.suqareMeter) // 0.0
