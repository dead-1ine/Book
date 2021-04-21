struct BasicInformation {
    var name: String
    var age: Int
}

// 프로퍼티 이름(name, age)으로 자동 생성된 이니셜라이저를 사용하여 구조체를 생성합니다.
var yangInfo: BasicInformation = BasicInformation(name: "Yang", age: 99)
yangInfo.age = 100  // 변경 가능 !
yangInfo.name = "Seba"  // 변경 가능 ! 

let sebaInfo: BasicInformation = BasicInformation(name: "Seba", age: 99)
