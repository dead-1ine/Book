typealias VoidVoidClosure = () -> Void

func functionWithEscpaingClosure(completionHandler: @escpaing VoidVoidClosure) -> VoidVoidClosure {
    return completionHandler
}

class SomeClass {
    var x = 10

    func runNosescapeClosure() {
        // 비탈출 클로저에서 self 키워드 사용은 선택 사항입니다. 
        functionWithNoescapeClosure { x = 200 }
    }

    func runEscapingClosure() -> VoidVoidClosure {
        // 탈출 클로저에서는 명시적으로 self를 사용해야 합니다.
        return functionWithEscapingClosure { self.x = 100 }
    }
}

let instance: SomeClass = SomeClass()
instance.runNoescapeClosure()
print(instance.x)

let returnedClosure: VoidVoidClosure = instance.runEscapingClosure()
returnedClosure()
print(instance.x)
