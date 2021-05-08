private class AClass {
    // 공개 접근수준을 부여해도 AClass의 접근수준이 비공개 접근수준이므로 
    // 이 메서드의 접근수준도 비공개 접근수준으로 취급됩니다.
    public func someMethod() {
        // ...
    }

    // AClass의 접근 수준이 비공개 접근수준이므로 
    // 공개 접근 수준 함수의 매개변수나 반환 값 타입으로 사용할 수 없습니다.
    public func someFunction(a: AClass) -> AClass { // 오류 발생
        return a
    }
