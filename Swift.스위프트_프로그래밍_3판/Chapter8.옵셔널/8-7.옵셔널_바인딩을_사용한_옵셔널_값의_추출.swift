var myName: String? = "yang"

// 옵셔널 바인등을 통한 임시 상수 할당
if let name = myName {
	print("My Name is \(name)")
} else {
	print("myName == nil")
}
// My name is yang

// 옵셔널 바인딩을 통한 임시 변수 할당
if var name = myName {
	name = "wizplan" // 변수이므로 내부에서 변경 가능
	print("My name is \(name)")
} else {
	print("myName == nil") 
}
