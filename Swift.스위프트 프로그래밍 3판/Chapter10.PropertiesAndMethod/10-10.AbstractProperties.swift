class Account {
	var credit: Int = 0 { // 저장 프로퍼티
		willSet {
			print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
		}

		didSet {
			print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
		}
	}

	var dollarValue: Double { // 연산 프로퍼티
		get {
			return Double(credit) / 1000.0
		}

		set {
			credit = Int(newValue * 1000) 
			print("잔액을 \(newValue)달러로 변경 중입니다.")
		}
	}
}

class ForeignAccount: Account {
	override var dollarValue: Double {
		willSet {
			print("잔액이 \(dollarValue)달러에서 \(newValue)달러로 변경될 예정입니다.")
		}

		didSet {
			print("잔액이 \(oldValue)달러에서 \(dollarValue)달러로 변경되었습니다.")
		}
	}
}

let myAccount: ForeignAccount = ForeignAccount()
// 잔액이 0원에서 1000원으로 변경
myAccount.credit = 1000
// 잔액이 0원에서 1000원으로 변경

myAccount.dollarValue = 2 // 잔액을 2.0달러로 변경 중입니다.
