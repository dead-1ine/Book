func enterClub(name: String?, age: Int?) {
    guard let name: String = name, let age: Int = age, age > 19,
        name.isEmpty == false else {
            print("You are too young to enter the club")
            return
        }

        print("Welcome \(name)!")
}
