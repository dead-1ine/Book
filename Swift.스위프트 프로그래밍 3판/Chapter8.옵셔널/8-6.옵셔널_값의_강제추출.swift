var myName: String? = "Yang"

// 옵셔널이 아닌 변수에는 옵셔널 값이 들어갈 수 없습니다. 추출해서 할당해주어야 함
var yagom: Strign = myName!

myName = nil
yagom = myName! // 런타임 오류

// if 구문 등 조건물을 이용해서 조금 더 안전하게 처리할 수 있다
if myName != nil {
	print("My name is \(myName!)")
} else {
	print("myName == nil")
}
// myName == nil
