class Person {
    let name: String
    var age: Int?

    init(name: String) {
        self.name = name
    }
}

let yang: Person = Person(name: "Yang")
yang.name = "Eric"  // Error
