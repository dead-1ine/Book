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

    // 내부 접근수준 저장 프로퍼티 internalGetOnlyComputedProperty
    // 설정자는 비공개 접근수준
    internal private(set) var internalGetOnlyComputedProperty: Int {
        get {
            return count
        }
        set {
            count += 1
        }
    }
    // 공개 접근수준 서브스크립트 
    public subscript() -> Int {
        get {
            return count
        }
        set {
            count += 1
        }
    }

    // 공개 접근수준 서브스크립트
    // 설정자는 내부 접근수준 
    public internal(set) subscript(some: Int) -> Int {
        get {
            return count
        }
        set {
            count += 1
        }
    }
}

var someInstance: SomeType = SomeType()

// 외부에서 접근자, 설정자 모두 사용 가능
print(someInstance.publicStoredProperty)                // 0
someInstance.publicStoredProperty = 100

// 외부에서 접근자만 사용 가능
print(someInstance.publicGetOnlyStoredProperty)         // 0
// someInstance.publicGetOnlyStoredProperty = 100       // 오류 발생 

// 외부에서 접근자, 설정자 모두 사용 가능
print(someInstance.internalComputedProperty)            // 0  
someInstance.internalComputedProperty = 100

// 외부에서 접근자만 사용 가능
print(someInstance.internalGetOnlyComputedProperty)
// someInstance.internalGetOnlyComutedProperty = 100    // 오류 발생 

// 외부에서 접근자, 설정자 모두 사용 가능
print(someInstance[])                                   // 1
someInstance[] = 100

// 외부에서 접근자만, 같은 모듈 내에서는 설정자도 사용 가능
print(someInstance[0])                                  // 2
someInstance[0] = 100
