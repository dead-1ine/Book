class Person {
    var name: String

    init(name: String) {
        self.name = name
    }
}

struct Stuff {
    var name: String
    var owner: Person
}

print(type(of: \Person.name))   // ReferenceWritableKeyPath<Person, String>
print(type(of: \Stuff.name))    // WritableKeyPath<Stuff, String>

let keyPath = \Stuff.owner
let nameKeyPath = keyPath.appending(path: \.name)
