extension Optional {
	func map<U>(f: (Wrapped) -> U) -> U? {
		switch self {
			case .some(let x): return f(x)
			case .none: return .none
		}
	}
}
