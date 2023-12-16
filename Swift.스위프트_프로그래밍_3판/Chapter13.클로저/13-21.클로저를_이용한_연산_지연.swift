// 대기 중인 손님들입니다.
var customersInLine: [String] = ["YoangWha", "SangYong", "SungHun", "HaMi"]
print(customersInLine.count) // 4

// 클로저를 만들어두면 클로저 내부의 코드를 미리 실행(연산)하지 않고 가지고만 있습니다.
let customerProvider: () -> String = {
    return customersInLine.removeFirst()
}
print(customersInLine.count) // 4

// 실제로 실행합니다.
print("Now serving \(customerProvider())!") 
print(customersInLine.count) // 3
