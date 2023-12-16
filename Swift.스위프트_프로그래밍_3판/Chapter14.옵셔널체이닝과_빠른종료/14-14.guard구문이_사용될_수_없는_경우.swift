func enterClub(name: String?, age: Int?) {
    guard let name: String = name, let age: Int = age, age > 19,
        name.isEmpty == false else {
            print("You are too young to enter the club")
            return
        }

        print("Welcome \(name)!")
}

let first: Int = 3
let second: Int = 5

guard first > second else {
    // 여기에 들어올 제어문 전환 명령은 딱히 없습니다. 오류!
}
