private typealias PointValue = Int

// 오류 - PointValue가 Point보다 접근수준이 낮기 때문에 원시 값으로 사용할 수 없습니다.
enum Point: PointValue {
    case x, y
}
