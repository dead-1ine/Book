/*
    자바의 this와 같이 인스턴스 자기 자신을 가리키는 프로퍼티
    self 프로퍼티는 인스턴스를 더 명확히 지칭하고 싶을 떄 사용

    찾는 순서 :
        1. 메서드 내부의 지역변수
        2. 메서드 매개변수
        3. 인스턴스의 프로퍼티
*/
class LevelClass {
    var level: Int = 0

    func jumpLevel(to level: Int) {
        print("Jump to \(level)")
        self.level = level
    }
}
