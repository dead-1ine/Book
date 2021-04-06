// 좌표
struct CoordinatePoint {
	var x: Int = 0
	var y: Int = 0
}

// 프로퍼티의 초깃값을 할당했다면 굳이 전달인자로 초깃값을 넘길 필요가 없습니다.
let yagomPoint: CoordinatePoint = CoordinatePoint()

// 물론 기존에 초깃값을 할당할 수 있는 이니셜라이저도 사용 가능합니다.
let wizplanPoint: CoordinatePoint = CoordinatePoint(x: 10, y: 5)

print("yagom's point : \(yagomPoint.x), \(yagomPoint.y)")
// yagom's point: 0, 0

print("wizplan's point : \(wizplanPoint.x), \(wizplanPoint.y)")
// wizplan's point : 10.5
// 사람의 위치 정보
class Position {
	var point: CoordinatePoint = CoordinatePoint()
	var name: String = "Unknown"
}

// 초깃값을 지정해줬다면 사용자 정의 이니셜라이저를 사용하지 않아도 됩니다.
let yagomPosition: Position = Position()

yagomPosition.point = yagomPoint
yagomPosition.name = "yagom"

