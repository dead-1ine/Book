struct CoordinatePoint {
	var x: Int	// 저장 프로퍼티 
	var y: Int	// 저장 프로퍼티 

	// 대칭점을 구하는 메서드 - 접근자
	// Self는 타입 자기 자신을 뜻합니다.
	// Self 대신 CoordinatePoint를 사용해도 됩니다.
	func oppositePoint() -> Self {
		return CoordinatePoint(x: -x, y: -y)
	}

	// 대칭점을 설정하는 메서드 - 설정자
	mutating func setOppositePoint(_ opposite: CoordinatePoint) {
		x = -opposite.x
		y = -opposite.y
	}
}

var yangPosition: CoordinatePoint = CoordinatePoint(x: 10, y: 20)

// 현재 좌표
print(yangPosition)						// 10, 20

// 대칭 좌표
print(yangPosition.oppositePoint())		// -10, -20

// 대칭 좌표를 (15, 10)으로 설정하면 
yangPosition.setOppositePoint(CoordinatePoint(x: 15, y: 10))

// 현재 좌표는 -15, -10으로 설정됩니다.
print(yangPosition)		// -15, -10
