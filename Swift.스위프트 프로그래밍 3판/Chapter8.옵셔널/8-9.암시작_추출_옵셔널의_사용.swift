var myName: String! = "Yang"
print(myName)
myName = nil

// 암시작 추출 옵셔널도 옵셔널이므로 당연히 바인딩을 사용할 수 있습니다.
if let name = myName {
    print("My name is \(name)")
} else {
    print("myName == nil")
}

myName.isEmpty // 오류 !
