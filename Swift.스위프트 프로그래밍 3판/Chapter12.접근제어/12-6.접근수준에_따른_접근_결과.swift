// AClass.swift 파일과 Common.swift 파일이 같은 모듈에 속해 있을 경우

// AClass.swift 파일
class AClass {
    func internalMethod() {}
    fileprivate func filePrivateMethod() {}
    var internalProperty = 0
    fileprivate var filePrivateProperty = 0
}

// Common.swift 파일
let aInstance: AClass = AClass()
aInstance.internalMethod()              // 같은 모듈이므로 호출 가능 
aInstance.filePrivateMethod()           // 다른 파일이므로 호출 불가
aInstance.internalProperty = 1          // 같은 모듈이므로 접근 가능 
aInstance.filePrivateProperty = 1       // 다른 파일이므로 접근 불가
