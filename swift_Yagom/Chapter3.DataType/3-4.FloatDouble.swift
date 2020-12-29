// Float이 수용할 수 있는 범위를 넘어섭니다. 
// 자신이 감당할 수 있는 만큼만 남기므로 정확도가 떨어집니다. 

var floatValue: Float = 1234567890.1

// Double은 충분히 수용할 수 있습니다.
let doubleValue: Double = 1234567890.1

print("floatValue: \(floatValue) doubleValue: \(doubleValue)")

// Float이 수용할 수 있는 범위의 수로 변경합니다.
floatValue = 123456.1

// 문자열 보간법을 사용하지 않고 단순히 변수 또는 상수의 값만 보고 싶으면 
// print 함수의 전달인자로 변수 또는 상수를 전달하면 됩니다.
print(floatValue)
