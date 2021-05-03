var myName: String? = "Yang"
var yourName: String? = nil

// friend에 바인딩 되지 않으므로 실행되지 않습니다.
if let name = myName, let friend = yourName {
    print("We are fried! \(name) & \(friend)")
}

yourName = "eric"

if let name = myName, let friend = yourName {
    print("We are friend! \(name) & \(friend)")
}
// We are friend! Yang & eric
