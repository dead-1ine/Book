enum School: CaseIterable {
	case primary
	case elementary
	case middle
	case high
	case college
	case university
	case graduate
}

let allCases: [School] = School.allCases
print(allCases)
// [School.primary, School.elementary, School.middle, School.high, School.college, School.university, School.graduate]