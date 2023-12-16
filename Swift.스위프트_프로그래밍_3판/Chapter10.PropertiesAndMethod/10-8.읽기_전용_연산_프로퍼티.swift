struct CoordinatePoint {
	var x: Int
	var y: Int

	// 대칭 좌표
	var oppositePoint: CoordinatePoint {
		// 접근자
		get {
			return CoordinatePoint(x: -x, y: -y)
		}
	}
}

var yangPosition: CoordinatePoint = CoordinatePoint(x: 10, y: 20)

print(yangPosition)

print(yangPosition.oppositePoint)

yangPosition.oppositePoint = CoordinatePoint(x: 15, y: 10)
