enum Student {
    case elementary, middle, high
    case none

    // 사용자 정의 이니셜라이저가 있는 경우, init() 메서드를 구현해주어야 기본 이니셜라이절르 사용할 수 있습니다.
    init() {
        self = .none
    }

    init(koreanAge: Int) {
        switch koreanAge {
        case 8...13:
            self = .elementary
        case 14...16:
            self = .middle
        case 17...19:
            self = .high
        default:
            self = .none
        }
    }

    init(bornAt: Int, currentYear: Int) {
        self.init(koreanAge: currentYear - bornAt + 1)
    }
}
var younger: Student = Student(koreanAge: 16)
print(younger)  // middle

younger = Student(bornAt: 1998, currentYear: 2016)
print(younger) // high
