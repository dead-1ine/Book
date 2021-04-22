class Person {
    var name: String
    var age: Int?

    init(name: String) {
        self.name = name
    }
}

let yang: Person = Person(name: "yang")
print(yang.name)

print(yang.age) // nil

yang.age = 23
print(yang.age) // 23

yang.name = "Eric"
print(yang.name) // "Eric"

