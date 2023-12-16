struct CoordinatePoint {
	var x: Int		// 저장 프로퍼티
	var y: Int		// 저장 프로퍼티

	// 대칭 좌표
	var oppositePoint: CoordinatePoint {	// 연산 프로퍼티		// 접근자
		get {
			// 이곳에서 return 키워드를 생략할 수 있습니다.
			return CoordinatePoint(x: -x, y: -y)
		}

		// 설정자 
		set {
			x = -newValue.x
			y = -newValue.y
		}
	}
}
