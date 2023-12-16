class Account {

    static let dollarExchangeRate: Double = 1000.0 // 타입 상수 

    var credit: Int = 0     // 저장 인스턴스 프로퍼티

    var dollarValue: Double {   // 연산 인스턴스 프로퍼티
        get {
            // Self.dollarExchangeRate 는
            // Account.dollarExchangeRate와 같은 표현입니다.
            return Double(credit) / Self.dollarExchangeRate
        }

        set {
            // Self.dollarExchangeRate는
            // Account.dollarExchangeRate와 같은 표현입니다.
            credit = Int(newValue * Account.dollarExchangeRate)
            print("잔액을 \(newValue)달러로 변경 중입니다.")
        }
    }
}
        
