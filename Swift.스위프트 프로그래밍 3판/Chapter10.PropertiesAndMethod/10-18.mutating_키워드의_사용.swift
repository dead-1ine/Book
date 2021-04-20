// 구조체나 열거형 등은 값 타입이므로 메서드 앞에 mutating 키워드를 붙여 해당 메서드가 인스턴스 내부의 값을 변경한다는 것을 명시해야 한다. 
struct LevelStruct {
    var level: Int = 0 {
        didSet {
            print("Level \(level)")
        }
    }

    mutating func levelUp() {
        print("Level UP!")
        level += 1
    }

    mutating func levelDown() {
        print("Level Down..")
        level -= 1
        if level < 0 {
            reset() 
        }
    }

    mutating func jumpLevel(to: Int) {
        print("Jump to \(to)")
        level = to
    }

    mutating func reset() {
        print("RESET!")
        level = 0
    }
}

var levelStructInstance: LevelStruct = LevelStruct()
levelStructInstance.levelUp()
// 1
levelStructInstance.levelDown()
// 0
levelStructInstance.levelDown()
// 1
levelStructInstance.jumpLevel(to: 3)
// 3
