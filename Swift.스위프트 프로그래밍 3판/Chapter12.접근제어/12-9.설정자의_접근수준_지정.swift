public struct SomeType {
    // 비공개 접그수준 저장 프로퍼티 count
    private var count: Int = 0

    // 공개 접근수준 저장 프로퍼티 publicStoredProperty
    public var publicStoredProperty: Int = 0

    // 공개 접근수준 저장 프로퍼티 publicGetOnlyStoredProperty
    // 설정자는 비공개 접근수준
    public private(set) var publicGetOnlyStoredProperty: Int = 0

    // 내부 접근수준 저장 프로퍼티 internalComputedProperty
    internal var internalComputedProperty: Int {
        get {
            return count
        }
        set {
            count += 1
        }
    }


