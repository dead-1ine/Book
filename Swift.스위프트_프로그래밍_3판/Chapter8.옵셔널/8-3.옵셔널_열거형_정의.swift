public enum Optional<Wrapped>: ExpressibleByNilLiteral {
	case none
	case some(Wrapped)
	public init(_ some: Wrapped)
	/// 중략..
}
