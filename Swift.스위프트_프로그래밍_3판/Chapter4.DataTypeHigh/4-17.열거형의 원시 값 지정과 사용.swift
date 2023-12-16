// 열거형의 각 항목은 자체로도 하나의 값이지만 항목의 원시값도 가질 수 있습니다.
// 특정 타입으로 지정된 값을 가질 수 있다는 뜻
// 특정 타입의 값을 원시 값으로 가지고 싶다면 열거형 이름 오른쪽에 타입을 명시해주면 된다.
// rawValue : 원시값을 사용하고 싶다면 프로퍼티를 통해 가져올 수 있음

enum School: String {
	case primary = "유치원"
	case elementary = "초등학교"
	case middle = "중학교"
	case high = "고등학교"
	case college = "대학"
	case university = "대학교"
	case graduate = "대학원"
}

let highestEducationLevel: School = School.university
print("저의 최종학력은 \(highestEducationLevel.rawValue) 졸업입니다.")
// 저의 최종학력은 대학교 졸업입니다.

enum WeekDays: Character {
	case mon = "월", tue = "화", wed = "수", thu = "목", fri = "금", sat = "토", sun = "일"
}

let today: WeekDays = WeekDays.fri
print("오늘은 \(today.rawValue)요일입니다.");	// 오늘은 금요일입니다.