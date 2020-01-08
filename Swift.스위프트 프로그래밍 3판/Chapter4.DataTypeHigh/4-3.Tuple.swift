// String, Int, Double 타입을 갖는 튜플
var person: (String, Int, Double) = ("TEST", 100, 182.5)

// 인덱스를 통해서 값을 빼 올 수 있습니다.
print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")

person.1 = 99
person.2 = 189.1

print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")
