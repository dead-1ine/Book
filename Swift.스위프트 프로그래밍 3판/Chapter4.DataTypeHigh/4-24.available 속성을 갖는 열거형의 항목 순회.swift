// 단순한 열거형에는 CaseIterable 프로토콜을 채택해주는 것만으로도 allCases 프로퍼티를 사용할 수 있습니다. 그렇지만 조금 복잡해지는 열거형은 그렇지 않을 수도 있습니다. 그 대표적인 예가 플랫폼별로 사용조건을 추가하는 경우입니다.

enum School: String, CaseIterable {
	case primary = "유치원"
	case elementary = "초등학교"
	case middle = "중학교"
	case high = "고등학교"
	case college = "대학"
	case university = "대학교"
	@available(iOS, obsoleted: 12.0)
	case graduate = "대학원"
	
	static var allCases: [School] {
		let all: [School] = [.primary,
							.elementary,
							.middle,
							.high,
							.college,
							.university]
		#if os(iOS)
		return all
		#else
		return all + [.graduate]
		#endif
	}
}

let allCases: [School] = School.allCases
print(allCases)
// 실행환경에 따라 다른 결과