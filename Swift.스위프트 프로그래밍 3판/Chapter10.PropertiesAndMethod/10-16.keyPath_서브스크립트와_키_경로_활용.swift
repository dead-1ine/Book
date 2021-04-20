class Person {
    let name: String
    init(name: String) {
        self.name = name
    }
}

struct Stuff {
    var name: String
    var owner: Person
}

let yang = Person(name: "Yang")
let hana = Person(name: "Hana")
let macbook = Stuff(name: "MacBook Pro", owner: yang)
var iMac = Stuff(name: "iMac", owner: yang)
let iphone = Stuff(name: "iPhone", owner: hana)

let stuffNameKeyPath = \Stuff.name
let ownerKeyPath = \Stuff.onwer

// \Stuff.owner.name과 같은 표현이 됩니다.
let ownerNameKeyPath = ownerKeyPath.appending(path: \.name)

// 키 경로와 서브스크립트를 이용해 프로퍼티에 접근하여 값을 가져옵니다.
print(macbook[keyPath: stuffNameKeyPath])
print(iMac[keyPath: stuffNameKeyPath])
print(iPhone[keyPath: stuffNameKeyPath])

print(macbook[keyPath: ownerNameKeyPath])
print(iMac[keyPath: ownerNameKeyPath])
print(iPhone[keyPath: ownerNameKeyPath])

// 키 경로와 서브스크립트를 이용해 프로퍼티에 접근하여 값을 변경합니다.
iMac[keyPath: stuffNameKeyPath] = "iMac Pro"
iMac[keyPath: ownerKeyPath] = hana

print(iMac[keyPath: stuffNameKeyPath])
print(iMac[keyPath: ownerNameKeyPath])

// 상수로 지정한 값 타입과 읽기 전용 프로퍼티는 키 경로 서브스크립트로도 값을 바꿔줄 수 없습니다.
// macbook[keyPath: stuffNameKeyPath] = "macbook pro touch bar" // 오류 
// yang[keyPath: \Person.name] = "bear" // 오류 
